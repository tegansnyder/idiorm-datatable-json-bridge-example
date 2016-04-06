<?php
namespace Tegdesign\IdiormDatatableBridgeExample;
use ORM, ORMDatatableBridge;

class Example {

	public function getTableResults($params = array()) {

		$raw_query_cond = array();

		// override limit when querying just for column names
		if (!empty($params['just_columns'])) {
			$params['limit'] = 1;
		}

		if (!empty($params['search'])) {

			$search_able_columns = [
				'full_name',
				'email',
				'country'
			];

			foreach ($search_able_columns as $sc) {
				$search_cond[] = '`' . $sc . '`' . ' LIKE :search_val';
			}

			$raw_query_cond[] = [
				'val' => '%' . $params['search'] . '%',
				'key' => 'search_val',
				'cond' => 'WHERE (' . implode(' OR ', $search_cond) . ')'
			];

		}

    	if (!empty($params['order_by'])) {

    		$column_names = $this->getTableResults(
    			[
					'just_columns' => true
				]
			);

    		foreach ($params['order_by'] as $oc) {

				$column_name = $column_names[$oc['column']]['data'];

				if ($oc['dir'] == 'asc') {
					$raw_query_cond[] = [
						'val' => $column_name,
						'key' => 'order_by_column',
						'cond' => 'ORDER BY :order_by_column ASC'
					];
				} else {
					$raw_query_cond[] = [
						'val' => $column_name,
						'key' => 'order_by_column',
						'cond' => 'ORDER BY :order_by_column DESC'
					];
				}

    		}
		}

    	if (!empty($params['limit'])) {
			$raw_query_cond[] = [
				'val' => $params['limit'],
				'key' => 'limit',
				'cond' => 'LIMIT :limit'
			];
    	}

    	if (!empty($params['start'])) {
			$raw_query_cond[] = [
				'val' => $params['start'],
				'key' => 'offset',
				'cond' => 'OFFSET :offset'
			];
    	}

    	$tbl_name = 'example_data';
		$sql = 'SELECT * FROM `' . $tbl_name . '`';

		$raw_bindings = array();
		foreach ($raw_query_cond as $cond) {
			$raw_bindings[$cond['key']] = $cond['val'];
			$sql .= ' ' . $cond['cond'] . ' ';
		}
		$sql = trim($sql);

		$tbl = ORMDatatableBridge::for_table($tbl_name);

		$tbl = $tbl->raw_query($sql, $raw_bindings);

    	if (isset($params['output']) && $params['output'] == 'json') {

    		if (isset($params['just_columns'])) {

    			if (isset($params['hide_columns'])) {

	    			$tbl = $tbl->get_datatable(
						array(
							'include_columns' => true,
							'hide_columns' => $params['hide_columns']
						)
					);

    			} else {
					$tbl = $tbl->get_datatable(
						array(
							'include_columns' => true
						)
					);
				}

				$tbl = json_decode($tbl, true);
				$tbl = $tbl['columns'];
				$tbl = json_encode($tbl);

			} else {

				$tbl = $tbl->get_datatable(
					[
						'wrap_columns' => [
						    [
						        'key' => 'email',
						        'column_template' => '<a href="mailto:{{email}}">{{email}}</a>'
						    ],
						],
						'wrap_all' => [
						    'columns' => '<section class="value">{{column_data}}</section>'
						]
					]
				);

			}

    	} else {

    		if (isset($params['just_columns'])) {

    			if (isset($params['hide_columns'])) {

	    			$tbl = $tbl->get_datatable(
						array(
							'include_columns' => true,
							'hide_columns' => $params['hide_columns']
						)
					);

    			} else {

	    			$tbl = $tbl->get_datatable(
						array(
							'include_columns' => true
						)
					);

    			}

				$tbl = json_decode($tbl, true);
				$tbl = $tbl['columns'];

    		} else {

    			$tbl = $tbl->find_array();

    		}

    	}

		return $tbl;
	}

}