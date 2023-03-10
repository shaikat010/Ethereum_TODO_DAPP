
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract sales_counter{
    int no_sales = 0;
    int[] public sold_item_id;
    int sale_amount = 0;
    address owner = 0x55c18fbF72EBcb055082104fab3840807F680a78;

    function make_sale_record(int a, int price) public {

        sold_item_id.push(a);

        no_sales++;

        sale_amount = sale_amount + price;
    }

    function get_no_sales() public view returns(int){
        require(msg.sender == owner, "Only onwer of store can call this function!");
        return no_sales;
    }


}