% include('inc/page_header.tpl')
        <div class="x_panel help">
          <div class="x_title">
            <h2><span class="glyphicon glyphicon-info-sign" aria-hidden="true" title="{{_('Information')}}"></span> {{_('Help')}}<small></small></h2>
            <ul class="nav navbar-right panel_toolbox">
              <li>
                <a class="collapse-link"><i class="fa fa-chevron-down"></i></a>
              </li>
              <li>
                <a class="close-link"><i class="fa fa-close" title="{{_('Close')}}"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <p>{{_('Here you can configure your TerrariumPI server.')}} {{!_('Required fields are marked with \'%s\'.') % ('<span class="required">*</span>',)}}</p>
            <ul>
              <li>
                <strong>{{_('Weather location')}}</strong>: {{!translations.get_translation('weather_field_location')}}
                <ul>
                  <li><strong>YR.no</strong>: https://www.yr.no/place/[COUNTRY]/[PROVANCE]/[CITY]</li>
                  <li><strong>Weather underground</strong>: http://api.wunderground.com/api/[YOUR_API_KEY]/<strong>geolookup/astronomy/hourly10day</strong>/q/[COUNTRY]/[CITY].json</li>
                  <li><strong>OpenWeatherMap</strong>: https://api.openweathermap.org/data/2.5/weather?q=[CITY],[COUNTRY_2LETTER]&units=metric&appid=[YOUR_API_KEY]</li>
                </ul>
              </li>
              <li>
                <strong>{{_('Wind speed indicator')}}</strong>: {{translations.get_translation('weather_field_wind_speed')}}
              </li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2 id="deviceid">{{_('TerrariumPI')}} <small>{{title}}</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li>
                    <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
                <form action="/api/config/system" class="form-horizontal form-label-left" data-parsley-validate="" method="put">
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="language">{{_('Language')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <div class="form-group" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_language')}}">
                        <select class="form-control" required="required" name="language" tabindex="-1" placeholder="{{_('Select an option')}}">
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="location">{{_('Weather location')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" id="location" name="location" required="required" type="text" placeholder="{{_('Weather location')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{!translations.get_translation('weather_field_location')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="windspeed">{{_('Wind speed indicator')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <div class="form-group" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('weather_field_wind_speed')}}">
                        <select class="form-control" name="windspeed" required="required" tabindex="-1" placeholder="{{_('Select an option')}}">
                          <option value="ms">{{_('m/s')}}</option>
                          <option value="kmh">{{_('Km/h')}}</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="temperature_indicator">{{_('Temperature indicator')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <div class="form-group" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_temperature_indicator')}}">
                        <select class="form-control" required="required" name="temperature_indicator" tabindex="-1" placeholder="{{_('Select an option')}}">
                          <option value="C">{{_('Celsius')}}</option>
                          <option value="F">{{_('Fahrenheit')}}</option>
                        </select>
                      </div>
                    </div>
                  </div>



                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="admin">{{_('Admin name')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="admin" required="required" type="text" placeholder="{{_('Admin name')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_admin')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="new_password">{{_('New admin password')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="new_password" type="password" placeholder="{{_('New admin password')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_new_password')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="cur_password">{{_('Current admin password')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="cur_password" type="password" placeholder="{{_('Current admin password')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_current_password')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{_('Always authenticate')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_always_authentication')}}">
                      <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default"><input name="always_authenticate" type="radio" value="true">{{_('Yes')}}</label>
                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default"><input name="always_authenticate" type="radio" value="false">{{_('No')}}</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="soundcard">{{_('Soundcard')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <div class="form-group" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_soundcard')}}">
                        <select class="form-control" required="required" name="soundcard" tabindex="-1" placeholder="{{_('Select an option')}}">
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="power_usage">{{_('Pi power usage in W')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="power_usage" required="required" type="text" pattern="[0-9\.]+" placeholder="{{_('Pi power usage in W')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_pi_power')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="power_price">{{_('Power price')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="power_price" required="required" type="text" pattern="[0-9\.]+" placeholder="{{_('Power price')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_power_price')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="water_price">{{_('Water price')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="water_price" required="required" type="text" pattern="[0-9\.]+" placeholder="{{_('Water price')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_water_price')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="host">{{_('IP or hostname')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="host" required="required" type="text" placeholder="{{_('IP or hostname')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_hostname')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="port">{{_('Port number')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="port" required="required" type="text" placeholder="{{_('Port number')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_port_number')}}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="owfs_port">{{_('OWFS server port')}}</label>
                    <div class="col-md-7 col-sm-6 col-xs-10">
                      <input class="form-control" name="owfs_port" type="text" placeholder="{{_('OWFS server port')}}" data-toggle="tooltip" data-placement="right" title="" data-original-title="{{translations.get_translation('system_field_owfs_port')}}">
                    </div>
                  </div>
                  <div class="ln_solid"></div>
                  <div class="form-group">
                    <div class="col-md-11 col-sm-11 col-xs-12 text-center">
                      <button class="btn btn-success" type="submit">{{_('Submit')}}</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <script type="text/javascript">
          $(document).ready(function() {
            init_form_settings('system');

            var language_selector = $("select[name='language']").select2({
                placeholder: '{{_('Select an option')}}',
                allowClear: false,
                minimumResultsForSearch: Infinity
            });

            var windspeed_indicator = $("select[name='windspeed']").select2({
                placeholder: '{{_('Select an option')}}',
                allowClear: false,
                minimumResultsForSearch: Infinity
            });

            var temperature_indicator = $("select[name='temperature_indicator']").select2({
                placeholder: '{{_('Select an option')}}',
                allowClear: false,
                minimumResultsForSearch: Infinity
            });

            var soundcard_selector = $("select[name='soundcard']").select2({
                placeholder: '{{_('Select an option')}}',
                allowClear: false,
                minimumResultsForSearch: Infinity
            });

            $.get('/api/audio/hardware',function(data) {
              $(Object.keys(data.audiohardware)).each(function(index,hardware_device){
                soundcard_selector.append($('<option>').attr({'value':hardware_device}).text(data.audiohardware[hardware_device].name));
              });

              $.get('/api/config/weather',function(data) {
                $('input[name="location"]').val(data.location);
                windspeed_indicator.val(data.windspeed).trigger('change');

                $.get($('form').attr('action'),function(data){
                  $.each(data.available_languages,function(index,value){
                    language_selector.append($('<option>').attr({'value':value}).text(value));
                  });
                  language_selector.val(data.language).trigger('change');
                  soundcard_selector.val(data.soundcard).trigger('change');
                  temperature_indicator.val(data.temperature_indicator).trigger('change');
                  $.each(Object.keys(data), function(key,value){
                    var config_field = $('form [name="' + value + '"]');
                    if (config_field.length >= 1) {
                      switch (config_field.prop('type').toLowerCase()) {
                        case 'text':
                          config_field.val(data[value]);
                          break;

                        case 'radio':
                          $('input[name="' + value + '"][value="' + data[value] + '"]').attr('checked','checked').parent().addClass('active');
                          break;

                        case 'select-one':
                        case 'select-multiple':
                          config_field.val(data[value]).trigger('change');
                          break;
                      }
                    }
                  });
                  setContentHeight();
                });
              });
            });
          });
        </script>
% include('inc/page_footer.tpl')
