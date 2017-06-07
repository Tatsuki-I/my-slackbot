module Echo where

import Web.Slack
import Web.Slack.Message

echoBot :: SlackBot ()
echoBot (Message cid _ msg _ _ _) = sendMessage cid msg
echoBot _ = return ()
