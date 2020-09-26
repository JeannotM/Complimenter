local complimentFinished = {"Wowziees!!","Wow, you really showed them","DAAYYUMMM","Nice going!","You did it!","You destroyed them!","Zoinks!","I'm proud of you","I like your style","Pretty inspiring","You're doing so well", "I knew you could do it!", "I never doubted you"};
local complimentHealer = {"You have impeccable manners","So thoughtful","You are a pretty smart cookie","Very nice of you","Good!"};
local complimentBattle = {"You can do it!", "Beat them up!", "They shall not kill!!", "Kick it's ass!", "I believe you can do it!", "LERROOOOYYYYYY JEEENKINSSSS!"};
local complimentFailed = {"awhh, You'll get them next time!"};
local complimentRandom = {"How are you today?", "Did you know that coupled sea others hold hands so they don't drift apart?", "Did you know that the voices behind Mickey Mouse and Minnie Mouse got married in real life?", "Did you know that gorillas hum when they eat their favorite food?", "Did you know that in 2008, Norway knighted a penguin?", "A group of pugs is called a grumble", "Are ya winning son?", "Let's compliment someone for their skills!"} -- wholesome facts
local color = "|cFFb491c8";

--  

local f = CreateFrame("Frame");
f:RegisterEvent("QUEST_COMPLETE");
f:RegisterEvent("PLAYER_LEVEL_UP");
f:RegisterEvent("ACHIEVEMENT_EARNED");
f:RegisterEvent("PLAYER_ENTER_COMBAT");
f:RegisterEvent("PLAYER_PVP_KILLS_CHANGED");
f:RegisterEvent("BOSS_KILL");

-- |caarrggbb

local function OnEvent(self, event)
    local random = math.random(100);
    if random > 60 then
        if event == "QUEST_COMPLETE" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
        elseif event == "PLAYER_LEVEL_UP" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
        elseif event == "ACHIEVEMENT_EARNED" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
        elseif event == "PLAYER_ENTER_COMBAT" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentBattle[math.random(6)]);
        elseif event == "BOSS_KILL" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
        elseif event == "PLAYER_PVP_KILLS_CHANGED" then
            DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
        end
    end
    
    if random == 1 then
        DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentRandom[math.random(8)]);
    end
end

-- local function RandomCompliment()
--     if(false){
--         DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentRandom[math.random(10)]);
--     }
-- end

-- local function PrintMessage(){
--     DEFAULT_CHAT_FRAME:AddMessage("[".. color .."SkinnyJeans|r] says: " .. complimentFinished[math.random(10)]);
-- }

f:SetScript("OnEvent", OnEvent);