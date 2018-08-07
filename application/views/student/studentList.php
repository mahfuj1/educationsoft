<script>
$(document).ready(function (){
    

$(".practical").keyup(function (){
    var isTyping = $(this).val(); 
//    var data = 'result=' + isTyping;
//    var msg = $('#msg');
    $.ajax({
        type: 'POST',
        url: "includes/control.php",
        data: data,
        cache: false,
        success: function(){  
           msg.html(html);
        }
    });
});
});

</script>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> Student List</h1>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Student List
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">  

                                <table width="100%" class="table table-bordered " id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Student Id</th>
                                            <th>Student Name</th>
                                            <th>Contact Number</th>
                                            <th>Email</th>

                                            <th width="200" class="text-center">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php for ($i = 0; $i < sizeof($students); $i++) { ?> 
                                            <tr>
                                                <td><?php echo $i + 1; ?></td>
                                                <td><?php echo $students[$i]->student_id; ?></td>
                                                <td><?php echo $students[$i]->student_name; ?></td>
                                                <td><?php echo $students[$i]->mobile_no; ?></td>
                                                <td><?php echo $students[$i]->email; ?></td>
                                                <td>
                                                    <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                                        <a href="<?php echo base_url(); ?>students/edit/<?php echo $students[$i]->s_id; ?>" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i> Edit</a>
                                                        <a href="<?php echo base_url(); ?>students/view_details/<?php echo $students[$i]->s_id; ?>" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i> View</a>
                                                        <a href="" class="btn btn-warning btn-sm"><i class="fa fa-print"></i> Print</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                             
                                    </tbody>
                                </table>





                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
