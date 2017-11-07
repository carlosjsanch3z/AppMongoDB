% include('views/base.tpl')
% include('views/head.tpl')


                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    % if var == 1 :
                    <p style="color:red">El usuario es invalido</p>
                    % end 
                    <div class="account-holder">
                        <h3>BBDD Restaurantes en EEUU</h3>
                        <br>
                        <div class="row">
                            <form action="/login" method="post">
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label required" for="name"> Name<sup style="color:red">*</sup></label>
                                        <input id="name" name="name" type="text" class="form-control" placeholder="Enter Your Name">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label required" for="password">Password<sup style="color:red">*</sup></label>
                                        <input id="password" name="password" type="password" class="form-control" placeholder="password">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label required" for="borough">Borough<sup style="color:red">*</sup></label>
                                        <input id="phone" name="borough" type="text" class="form-control" placeholder="Enter Borough">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                                    <div class="form-group">
                                        <label class="control-label required" for="cuisine">Cuisine<sup style="color:red">*</sup></label>
                                        <input id="email" name="cuisine" type="text" class="form-control" placeholder="Enter Cuisine">
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
                                    <button class="btn btn-primary btn-block">Join & Select</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                </div>
