FWConfig = {}

FWConfig.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- Gets max players from config file, default 48
FWConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
FWConfig.UpdateInterval = 5                             -- how often to update player data in minutes
FWConfig.StatusInterval = 5000                          -- how often to check hunger/thirst status in milliseconds

FWConfig.Money = {}
FWConfig.Money.MoneyTypes = { cash = 500, bank = 5000, crypto = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
FWConfig.Money.DontAllowMinus = { 'cash', 'crypto' }                -- Money that is not allowed going in minus
FWConfig.Money.PayCheckTimeOut = 10                                 -- The time in minutes that it will give the paycheck
FWConfig.Money.PayCheckSociety = false                              -- If true paycheck will come from the society account that the player is employed at, requires qb-management

FWConfig.Player = {}
FWConfig.Player.HungerRate = 4.2 -- Rate at which hunger goes down.
FWConfig.Player.ThirstRate = 3.8 -- Rate at which thirst goes down.
FWConfig.Player.Bloodtypes = {
    'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-',
}

FWConfig.Server = {}                                    -- General server config
FWConfig.Server.Closed = false                          -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
FWConfig.Server.ClosedReason = 'Server Closed'          -- Reason message to display when people can't join the server
FWConfig.Server.Uptime = 0                              -- Time the server has been up.
FWConfig.Server.Whitelist = false                       -- Enable or disable whitelist on the server
FWConfig.Server.WhitelistPermission = 'admin'           -- Permission that's able to enter the server when the whitelist is on
FWConfig.Server.PVP = true                              -- Enable or disable pvp on the server (Ability to shoot other players)
FWConfig.Server.Discord = ''                            -- Discord invite link
FWConfig.Server.CheckDuplicateLicense = true            -- Check for duplicate rockstar license on join
FWConfig.Server.Permissions = { 'god', 'admin', 'mod' } -- Add as many groups as you want here after creating them in your server.cfg

FWConfig.Commands = {}                                  -- Command Configuration
FWConfig.Commands.OOCColor = { 255, 151, 133 }          -- RGB color code for the OOC command

FWConfig.Notify = {}

FWConfig.Notify.NotificationStyling = {
    group = false,      -- Allow notifications to stack with a badge instead of repeating
    position = 'right', -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true     -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
FWConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'check_circle'
    },
    primary = {
        classes = 'primary',
        icon = 'notifications'
    },
    warning = {
        classes = 'warning',
        icon = 'warning'
    },
    error = {
        classes = 'error',
        icon = 'error'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}
