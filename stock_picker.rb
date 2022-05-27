def stock_picker(array)
  gain = buyer = seller = 0
  array.each.with_index do |e, buyer_id|
    array[buyer_id..].each.with_index do |e2, seller_id|
      if array[seller_id + buyer_id] - array[buyer_id] > gain
        gain = array[seller_id + buyer_id] - array[buyer_id]
        buyer = buyer_id
        seller = seller_id + buyer_id
      end;end;end;[buyer,seller];end;
p stock_picker [17,3,6,9,15,8,6,1,10]
