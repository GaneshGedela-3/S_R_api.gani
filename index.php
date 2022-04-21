<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL); 



require 'vendor/autoload.php';
    $app = new Slim\App([
        'settings' => [
            'displayErrorDetails' => true,
            'debug'               => false,
        ]
    
    ]);

// $app = new \Slim\App;
include 'src/config/db.php';
include 'src/common/token_validation.php';
include 'src/config/config.php';
include 'src/common/validator.php';
include 'src/common/generic.php';
include 'src/common/sequence.php';
include 'src/common/specifications.php';
include 'src/common/pc_qualities.php';
include 'src/common/purchase_types.php';
include 'src/common/sales_types.php';
include 'src/common/sc_qualities.php';
include 'src/common/cpc_specs_iso.php';
include 'src/common/finiancial_year.php';
include 'src/common/business_no_validator.php';
include 'src/common/business_no.php';
include 'src/common/xlsxwriter.class.php';
include 'src/common/send_email.php';

include 'src/routes/vendor.php';
include 'src/routes/customer.php';
include 'src/routes/currency.php';
include 'src/routes/user.php';
include 'src/routes/purchase_contract.php';
include 'src/routes/sale_contract.php';
include 'src/routes/mines.php';
include 'src/routes/business_number.php';
include 'src/routes/countries.php';
include 'src/routes/business_no_mother_vessel.php';
include 'src/routes/business_no_barge.php';
include 'src/routes/purchase_financials.php';
include 'src/routes/sales_financials.php';
include 'src/routes/vendor_adv_contract.php';
include 'src/routes/pc_adv_payments.php';
include 'src/routes/barge_purchase_payment_posting.php';
include 'src/routes/barge_sales_payment_posting.php';
include 'src/routes/business_no_mv_quality_result.php';
include 'src/routes/barge_sales_financials_invoices.php';
include 'src/routes/mv_purchase_financials.php';
include 'src/routes/mv_purchase_financials2.php';
include 'src/routes/mv_purchase_financials3.php';
include 'src/routes/mv_purchase_financials4.php';
include 'src/routes/barge.php';
include 'src/routes/barge2.php';
include 'src/routes/barge3.php';
include 'src/routes/barge4.php';
include 'src/routes/barge5.php';
include 'src/routes/budget_costing.php';
include 'src/routes/indirect_expenditure.php';
include 'src/routes/reports.php';
include 'src/routes/reports2.php';
include 'src/routes/reports3.php';
include 'src/routes/reports4.php';
include 'src/routes/reports5.php';
include 'src/routes/scripts.php';
include 'src/routes/services.php';
include 'src/routes/coal_indexes.php';
include 'src/routes/payments.php';


date_default_timezone_set($TIME_ZONE);
/*
$app->get('/sql_version', function (Request $request, Response $response){
    $db = new db();
    $db = $db->connect();
    $body = $request->getBody();
    $body_data[] = json_decode($body, true);
    foreach ($body_data as $coal_payment_posting_request){
  
      $get_coal_payment_posting_query = "SELECT * FROM db_update";
      $get_coal_payment_posting_stmt = $db->prepare($get_coal_payment_posting_query);
      $get_coal_payment_posting_stmt->execute();
      $get_coal_payment_posting_result = $get_coal_payment_posting_stmt->fetch(PDO::FETCH_OBJ);
      $get_coal_payment_posting_result_encode = json_encode($get_coal_payment_posting_result);
      $coal_payment_posting_data = json_decode($get_coal_payment_posting_result_encode, true);    
      return json_encode($coal_payment_posting_data['last_updated_date']);
    }
  });*/
$app->run();
