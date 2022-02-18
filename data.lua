local Constants = require 'constants'

local entity = table.deepcopy(data.raw['constant-combinator']['constant-combinator'])
entity.name = Constants.EntityName
entity.icon = Constants.GraphicsPath .. 'icons/monitor.png'
entity.minable.result = Constants.EntityName
entity.item_slot_count = 16
entity.sprites.north.layers[1].filename = Constants.GraphicsPath .. 'entity/monitor.png'
entity.sprites.south.layers[1].filename = Constants.GraphicsPath .. 'entity/monitor.png'
entity.sprites.east.layers[1].filename = Constants.GraphicsPath .. 'entity/monitor.png'
entity.sprites.west.layers[1].filename = Constants.GraphicsPath .. 'entity/monitor.png'
entity.sprites.north.layers[1].hr_version.filename = Constants.GraphicsPath
                                                         .. 'entity/hires/monitor.png'
entity.sprites.west.layers[1].hr_version.filename = Constants.GraphicsPath
                                                        .. 'entity/hires/monitor.png'
entity.sprites.south.layers[1].hr_version.filename = Constants.GraphicsPath
                                                         .. 'entity/hires/monitor.png'
entity.sprites.east.layers[1].hr_version.filename = Constants.GraphicsPath
                                                        .. 'entity/hires/monitor.png'

local item = table.deepcopy(data.raw['item']['constant-combinator'])
item.name = Constants.EntityName
item.icon = entity.icon
item.icon_size = entity.icon_size
item.icon_mipmaps = entity.icon_mipmaps
item.place_result = Constants.EntityName
item.subgroup = 'circuit-network'
item.order = 'c[combinators]-m[metalab]'
item.stack_size = 10

local recipe = table.deepcopy(data.raw['recipe']['constant-combinator'])
recipe.name = Constants.EntityName
recipe.result = Constants.EntityName
table.insert(
    data.raw['technology'][Constants.Technology].effects,
        {type = 'unlock-recipe', recipe = Constants.EntityName}
)

data:extend({entity, item, recipe})
