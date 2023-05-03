-- Add this to you'r database 


---███████╗░██████╗██╗░░██╗  ░██╗░░░░░░░██╗███████╗██╗░██████╗░██╗░░██╗████████╗
--██╔════╝██╔════╝╚██╗██╔╝  ░██║░░██╗░░██║██╔════╝██║██╔════╝░██║░░██║╚══██╔══╝
--█████╗░░╚█████╗░░╚███╔╝░  ░╚██╗████╗██╔╝█████╗░░██║██║░░██╗░███████║░░░██║░░░
--██╔══╝░░░╚═══██╗░██╔██╗░  ░░████╔═████║░██╔══╝░░██║██║░░╚██╗██╔══██║░░░██║░░░
--███████╗██████╔╝██╔╝╚██╗  ░░╚██╔╝░╚██╔╝░███████╗██║╚██████╔╝██║░░██║░░░██║░░░
--╚══════╝╚═════╝░╚═╝░░╚═╝  ░░░╚═╝░░░╚═╝░░╚══════╝╚═╝░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░

INSERT INTO `items` (`name`, `label`, `weight`) VALUES
  ('phone_module ', 'Module de réparation', 1),
  ('brokephone', 'Téléphone oxydé', 1),
  ('brokepinkphone', 'Téléphone oxydé', 1),
  ('brokegoldphone', 'Téléphone oxydé', 1)
;


--███████╗░██████╗██╗░░██╗  ██╗░░░░░██╗███╗░░░███╗██╗████████╗
--██╔════╝██╔════╝╚██╗██╔╝  ██║░░░░░██║████╗░████║██║╚══██╔══╝
--█████╗░░╚█████╗░░╚███╔╝░  ██║░░░░░██║██╔████╔██║██║░░░██║░░░
--██╔══╝░░░╚═══██╗░██╔██╗░  ██║░░░░░██║██║╚██╔╝██║██║░░░██║░░░
--███████╗██████╔╝██╔╝╚██╗  ███████╗██║██║░╚═╝░██║██║░░░██║░░░
--╚══════╝╚═════╝░╚═╝░░╚═╝  ╚══════╝╚═╝╚═╝░░░░░╚═╝╚═╝░░░╚═╝░░░

INSERT INTO `items` (`name`, `label`, `limit`) VALUES
  ('phone_module ', 'Module de réparation', 10),
  ('brokephone', 'Téléphone oxydé', 10),
  ('brokepinkphone', 'Téléphone oxydé', 10),
  ('brokegoldphone', 'Téléphone oxydé', 10)
;


--░██████╗░░██████╗░░░░░░██╗███╗░░██╗██╗░░░██╗███████╗███╗░░██╗████████╗░█████╗░██████╗░██╗░░░██╗
--██╔═══██╗██╔════╝░░░░░░██║████╗░██║██║░░░██║██╔════╝████╗░██║╚══██╔══╝██╔══██╗██╔══██╗╚██╗░██╔╝
--██║██╗██║╚█████╗░█████╗██║██╔██╗██║╚██╗░██╔╝█████╗░░██╔██╗██║░░░██║░░░██║░░██║██████╔╝░╚████╔╝░
--╚██████╔╝░╚═══██╗╚════╝██║██║╚████║░╚████╔╝░██╔══╝░░██║╚████║░░░██║░░░██║░░██║██╔══██╗░░╚██╔╝░░
--░╚═██╔═╝░██████╔╝░░░░░░██║██║░╚███║░░╚██╔╝░░███████╗██║░╚███║░░░██║░░░╚█████╔╝██║░░██║░░░██║░░░
--░░░╚═╝░░░╚═════╝░░░░░░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░

["phone_module"] = {
        ["name"] = "phone_module",
        ["label"] = "Module de réparation", -- change the label
        ["weight"] = 300,
        ["type"] = "item",
        ["image"] = "phone_module.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Un module de réparation pour votre téléphone cassé." -- change the description or translate
    },

["brokephone"] = {
        ["name"] = "brokephone",
        ["label"] = "Téléphone oxidé", -- change the label
        ["weight"] = 700,
        ["type"] = "item",
        ["image"] = "brokephone.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Vous êtes vraiment aller vous baigné avec votre téléphone ...?" -- change the description or translate
    },
["brokepinkphone"] = {
        ["name"] = "brokepinkphone",
        ["label"] = "Téléphone oxidé",
        ["weight"] = 700,
        ["type"] = "item",
        ["image"] = "brokepinkphone.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Vous êtes vraiment aller vous baigné avec votre téléphone ...?"
    },
["brokegoldphone"] = {
        ["name"] = "brokegoldphone",
        ["label"] = "Téléphone oxidé",
        ["weight"] = 700,
        ["type"] = "item",
        ["image"] = "brokegoldphone.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Vous êtes vraiment aller vous baigné avec votre téléphone ...?"
    },