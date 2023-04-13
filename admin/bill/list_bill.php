<div class="container-fluid">
    <div class="khung_list_title" style="width: 100%;height: 50px;">
        <h1>Danh sách sản phẩm</h1>
    </div>
    <div class="khung_list_sp" style="width: 100%;height: 3000px;">

        <div class="xuatsp" style="width: 100%; height: 800px;">
            <table  style="width: 100%; height: 50%; text-align: center;">
<<<<<<< HEAD
                <tr style="border-bottom: 1px solid #B2B2B2; background-color: #ced3d894;">
                    <th>MÃ ĐƠN HÀNG</th>
                    <th>TÊN KHÁCH HÀNG</th>

                    <th>SỐ LƯƠNG HÀNG</th>
                    <th>TỔNG TIỀN</th>
                    <th>TÌNH TRẠNG ĐƠN HÀNG</th>
                    <th>NGÀY ĐẶT HÀNG</th>
                    <th>THAO TÁC</th>
                </tr>
                <?php
                foreach ($list_bill as $key) {
                    extract($key);
                    $suasp = "index.php?act=suabill&id_bill=".$key["id_bill"];

                    $slhang = dem_sl_mat_hang($key["id_bill"]);
                    $status_product = get_ttdh($key["status_bill"]);
                    echo '
=======
                        <tr style="border-bottom: 1px solid #B2B2B2; background-color: #ced3d894;">
                            <th>MÃ ĐƠN HÀNG</th>
                            <th>TÊN KHÁCH HÀNG</th>
                            
                            <th>SỐ LƯƠNG HÀNG</th>
                            <th>TỔNG TIỀN</th>
                            <th>TÌNH TRẠNG ĐƠN HÀNG</th>
                            <th>NGÀY ĐẶT HÀNG</th>
                            <th>THAO TÁC</th>
                        </tr>
                        <?php 
                            foreach ($list_bill as $key) {
                                extract($key);
                                $suasp = "index.php?act=suabill&id_bill=".$key["id_bill"];

                                $slhang = dem_sl_mat_hang($key["id_bill"]);
                                $status_product = get_ttdh($key["status_bill"]);
                                echo '
>>>>>>> a56fb4959576ef3ee75e4294aa53f9fb4e71b7c6
                                <tr style="border-bottom: 1px solid #B2B2B2;">
                                <td> ' . $key["id_bill"].'</td>
                                <td>' . $key["name_bill"] .'</td>
                                <td>' . $slhang .'</td>
                                <td>' .  number_format($key["tongtien_bill"]) .'</td>
                                <td>' . $status_product .'</td>
                                <td>' . $key["ngaydathang"] .'</td>                                
                                <td>
                                <a href="'.$suasp.'">
                                <input type="button" value="chi tiết" class="check" style="color: #fff;background-color: #28b779;border-color: #28b779; border-radius: 2px; width: 60px; height: 35px; cursor: pointer;">
                                </a>
<<<<<<< HEAD
                         
=======
                           
>>>>>>> a56fb4959576ef3ee75e4294aa53f9fb4e71b7c6
                                </td>
                                
                            </tr>
                                ';
                }

                ?>

            </table>
        </div>
    </div>
</div>