%from pymongo import MongoClient
%client = MongoClient("mongodb://"+str(u)+":"+str(p)+"@172.22.200.44:27017/test")
%db = client.test
%collection = db.restaurants
%restaurants = collection.find({"borough":b.title(),"cuisine":c.title()})

% include('views/base.tpl')
% include('views/head.tpl')

<div class="container">
        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
                <h3>Se han encontrado : <b>{{restaurants.count()}}</b></h3>
                <ul class="event-list">
                    % for r in restaurants :
                    <li>
                        <time datetime="2018-10-29">
                            <span class="day">{{len(r['grades'])}}</span>
                            <span class="month">Grades</span>
                        </time>
                        <img alt="dj-set" src="static/img/{{c.title()}}.jpg" />
                        <div class="info">
                            
                            <div class="row">
                                <div class="col-sm-10">
                                    <h2 class="title">{{r['name']}}</h2>
                                </div>
                                <div class="col-sm-2">
                                    <img alt="germany" class="flag" src="https://workmall.com/flags/united_states_flag_files/us-s.gif" />
                                </div>  
                            </div>
                            <div class="row">
                                <div class="col-sm-3">Tipo de Cocina:</div>
                                <div class="col-sm-9">{{r['cuisine']}}</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">Ciudad:</div>
                                <div class="col-sm-9">{{r['borough']}}</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">Direccion:</div>
                                <div class="col-sm-9">{{r['address']['street']}}, {{r['address']['zipcode']}}</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">Coordenadas:</div>
                                <div class="col-sm-9">{{r['address']['coord'][0]}},{{r['address']['coord'][1]}}</div>
                            </div>                          
                        </div>
                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span class="fa fa-facebook"></span></a></li>
                                <li class="twitter" style="width:34%;"><a href="#twitter"><span class="fa fa-twitter"></span></a></li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-soundcloud"></span></a></li>
                            </ul>
                        </div>
                    </li>  
                    % end                                 
                </ul>
            </div>
        </div>
    </div>
