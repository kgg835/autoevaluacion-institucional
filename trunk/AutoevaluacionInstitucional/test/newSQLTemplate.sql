select caracteristica.id from caracteristica where caracteristica.factor_id = (select caracteristica.factor_id from caracteristica where caracteristica.id = 1)
