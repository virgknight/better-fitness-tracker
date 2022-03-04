@body_parts.each do |body_part|
    json.set! body_part.id do 
        json.partial! "api/body_parts/body_part", body_part: body_part
    end
end