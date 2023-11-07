use context essentials2021
include image

table_flagg = 
  table: Land, bakgrunnsfarge, korsfarge
    row: "Norge", "red", "blue,white"
    row: "Sverige", "blue", "yellow,yellow"
    row: "Finland", "white", "blue,blue"
    row: "Danmark", "red", "white,white"
    row: "Island", "blue", "red,white"
    row: "Faeroyene", "white", "red,blue"
    row: "Aaland", "blue", "red,yellow"
  end

fun tegn_flagg(Land):
  if Land == "Norge":
    block:
      bakgrunnsfarge = table_flagg.row-n(0)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(0)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
  else if Land == "Sverige":
    block:
      bakgrunnsfarge = table_flagg.row-n(1)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(1)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
  else if Land == "Finland":
    block:
      bakgrunnsfarge = table_flagg.row-n(2)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(2)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
  else if Land == "Danmark":
    block:
      bakgrunnsfarge = table_flagg.row-n(3)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(3)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
  else if Land == "Island":
    block:
      bakgrunnsfarge = table_flagg.row-n(4)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(4)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
    else if Land == "Faeroyene":
    block:
      bakgrunnsfarge = table_flagg.row-n(5)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(5)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
    end
  else if Land == "Aaland":
    block:
      bakgrunnsfarge = table_flagg.row-n(6)["bakgrunnsfarge"]
      korsfarge = string-split(table_flagg.row-n(6)["korsfarge"], ",")
      overlay(
        rectangle(240, 160, "outline", "black"),
        place-image(
          rotate(90, rectangle(20, 320, "solid", korsfarge.first)),
          90, 80,
          place-image(
            rectangle(20, 320, "solid", korsfarge.first),
            70, 0,
            place-image(
              rotate(90, rectangle(40, 320, "solid", korsfarge.get(1))),
              90, 80,
              place-image(
                rectangle(40, 320, "solid", korsfarge.get(1)),
                70, 0,
                rectangle(240, 160, "solid", bakgrunnsfarge))))))
      
    end
  else:
    "feil"
  end
end

tegn_flagg("Norge")
tegn_flagg("Finland")
tegn_flagg("Sverige")
tegn_flagg("Faeroyene")
tegn_flagg("Aaland")


