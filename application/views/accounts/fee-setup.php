<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Fee Setup Form </h1>
                <div class="col-md-8">  
                    <div class="panel panel-default">
                        <!-- Default panel contents --> 
                        <div class="panel-heading">Fee Setup Form </div>
                        <div class="panel-body">
                            <form action="<?php echo base_url(); ?>fee_setup/save" method="post">
                                <div class="form-group">
                                    <label for="ProgramName">Program Name</label>
                                    <select class="form-control" required="" name="program_name">
                                        <?php for ($i = 0; $i < sizeof($programs); $i++) { ?> 
                                            <option value="<?php echo $programs[$i]->program_id; ?>"><?php echo $programs[$i]->program_name; ?></option>
                                        <?php } ?>
                                    </select>

                                </div> 
                                <div class="form-group">
                                    <label for="Session">Session</label>
                                    <select class="form-control" name="session">
                                        <option selected="" value="">Select Session</option>
                                        <?php for ($i = 0; $i < sizeof($sections); $i++) { ?> 
                                            <option value="<?php echo $sections[$i]->session_id; ?>"><?php echo $sections[$i]->year; ?></option>
                                        <?php } ?>
                                    </select>
                                </div> 
                                <div class="form-group">
                                    <label for="Semester">Semester</label>
                                    <select class="form-control" required="" name="semester">
                                        <?php for ($i = 0; $i < sizeof($semesters); $i++) { ?> 
                                            <option value="<?php echo $semesters[$i]->semester_id; ?>"><?php echo $semesters[$i]->semester_name; ?></option>
                                        <?php } ?>
                                    </select>
                                </div> 

                                <div class="form-group">
                                    <label for="Semester-fee">Semester Fee</label>
                                    <input type="number" class="form-control txt" required="" id="semester-fee" value=" " name="semester-fee" placeholder="00.00 TK">
                                </div> 


                                <div class="form-group">

                                    <label for="Semester">URC Cost (Per Credit)</label>
                                    <input type="number" class="form-control txt" required="" id="Semester" value=" " name="semester" placeholder="00.00 TK">
                                </div> 
                                <div class="form-group">
                                    <label for="Semester">DC Cost (Per Credit) </label>
                                    <input type="number" class="form-control txt" required="" id="Semester" value=" " name="semester" placeholder="00.00 TK">
                                </div> 
                                <div class="form-group">
                                    <label for="Semester">Other's Fee</label>
                                    <input type="number" class="form-control txt" required="" id="Semester" value=" " name="semester" placeholder="00.00 TK">
                                </div> 
                                <div class="form-group">
                                    <table width="100%" class="table" style="border: none !important;">
                                        <tr>
                                            <td width="80%">
                                                <label for="discount">Discount</label>
                                                <input type="number" class="form-control discount" required="" id="discount" value=" " name="semester" placeholder="00.00 TK"></td>
                                            <td width="20%">
                                                <label for="Semester">Type</label>
                                                <select class="form-control" name="type">
                                                    <option value="percent">( % ) Percent</option>
                                                    <option value="flat">Flat</option>
                                                </select>

                                            </td>
                                        </tr>
                                    </table>

                                </div> 

                                <div class="form-group">
                                    <label for="Semester">Total</label>
                                    <input type="number" class="form-control txt" required="" id="total" value=" " readonly="" name="semester" placeholder="00.00 TK">
                                </div> 
                                <button type="submit" class="btn btn-primary mb-2">Submit</button>
                            </form>
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


<script>
    $(document).ready(function () {

        //iterate through each textboxes and add keyup
        //handler to trigger sum event
        $(".txt").each(function () {

            $(this).keyup(function () {
                calculateSum();
            });
        });

    });

    function calculateSum() {

        var sum = 0;
        //iterate through each textboxes and add the values
        $(".txt").each(function () {

            //add only if the value is number
            if (!isNaN(this.value) && this.value.length != 0) {
                sum += parseFloat(this.value);
            }

        });
        //.toFixed() method will roundoff the final sum to 2 decimal places
        
        
        $("#total").val(sum.toFixed(2));
    }
</script>
 