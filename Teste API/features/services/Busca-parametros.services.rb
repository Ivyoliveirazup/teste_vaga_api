#encoding: UTF-8

class ServiceOMDB
  include HTTParty
  # debug_output $stdout
  base_uri 'http://www.omdbapi.com/'
  format :json
  headers "Content-Type" => "application/json;charset=utf-8"

  def search_paramiter_type
    self.class.get('', :query => { apiKey: "52ec71bf", s: "300", type: $type, y: $y, page: $page,
                                   callback: $callback, v: $v, r: $r})
  end
end

