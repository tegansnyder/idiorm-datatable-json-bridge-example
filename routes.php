<?php

$app->get("/", function () use ($app) {

	$example = new \Tegdesign\IdiormDatatableBridgeExample\Example;

	// gets the column names
	$datatable_ajax_columns = $example->getTableResults( 
		[
			'just_columns' => true
		]
	);

	// order by rank, then by search volume
	$datatable_order = [
		[1, 'desc']
	];

	$app->render(
		'index.html',
		[
			'action_name' => 'home',
			'datatable_ajax' => '/table_ajax',
			'datatable_ajax_columns' => $datatable_ajax_columns,
			'datatable_order' => $datatable_order,
			'simple_ajax_mode' => true,
		]
	);

});

$app->get('/table_ajax', function () use ($app) {

	$get = $app->request()->get();

	$params = [
		'output' => 'json',
		'start' => $get['start'],
		'limit' => $get['length']
	];

	if (!empty($get['search']['value'])) {
		$params['search'] = $get['search']['value'];
	}

	$n = 0;
	foreach ($get['order'] as $oc) {
		$params['order_by'][$n] = [
			'column' => $oc['column'],
			'dir' => $oc['dir']
		];
		$n = $n + 1;
	}

	$example = new \Tegdesign\IdiormDatatableBridgeExample\Example;
	$json = $example->getTableResults($params);

	header("Content-Type: application/json");
	echo $json;
	exit();

})->name('table_ajax');