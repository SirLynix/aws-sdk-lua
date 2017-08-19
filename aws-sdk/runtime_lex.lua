--- GENERATED CODE - DO NOT MODIFY
-- Amazon Lex Runtime Service (runtime.lex-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "runtime.lex",
	service_abbreviation = "",
	service_full_name = "Amazon Lex Runtime Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "runtime.lex-2016-11-28",
}

local keys = {}
local asserts = {}

keys.LimitExceededException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Exceeded a limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * retryAfterSeconds [String] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p> Request validation failed, there is no usable message in the context, or the bot build failed. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provdide an argument table when creating BadRequestException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(t)
	return t
end

keys.PostTextRequest = { ["inputText"] = true, ["userId"] = true, ["botName"] = true, ["sessionAttributes"] = true, ["botAlias"] = true, nil }

function asserts.AssertPostTextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostTextRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	assert(struct["inputText"], "Expected key inputText to exist in table")
	if struct["inputText"] then asserts.AssertText(struct["inputText"]) end
	if struct["userId"] then asserts.AssertUserId(struct["userId"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["sessionAttributes"] then asserts.AssertStringMap(struct["sessionAttributes"]) end
	if struct["botAlias"] then asserts.AssertBotAlias(struct["botAlias"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostTextRequest[k], "PostTextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostTextRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * inputText [Text] <p>The text that the user entered (Amazon Lex interprets this text).</p>
-- * userId [UserId] <p>The ID of the client application user. The application developer decides the user IDs. At runtime, each request must include the user ID. Typically, each of your application users should have a unique ID. Note the following considerations: </p> <ul> <li> <p> If you want a user to start a conversation on one device and continue the conversation on another device, you might choose a user-specific identifier, such as a login or Amazon Cognito user ID (assuming your application is using Amazon Cognito). </p> </li> <li> <p> If you want the same user to be able to have two independent conversations on two different devices, you might choose a device-specific identifier, such as device ID, or some globally unique identifier. </p> </li> </ul>
-- * botName [BotName] <p>The name of the Amazon Lex bot.</p>
-- * sessionAttributes [StringMap] <p> By using session attributes, a client application can pass contextual information in the request to Amazon Lex For example, </p> <ul> <li> <p>In Getting Started Exercise 1, the example bot uses the <code>price</code> session attribute to maintain the price of the flowers ordered (for example, "Price":25). The code hook (the Lambda function) sets this attribute based on the type of flowers ordered. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html">Review the Details of Information Flow</a>. </p> </li> <li> <p>In the BookTrip bot exercise, the bot uses the <code>currentReservation</code> session attribute to maintain slot data during the in-progress conversation to book a hotel or book a car. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html">Details of Information Flow</a>. </p> </li> <li> <p>You might use the session attributes (key, value pairs) to track the requestID of user requests.</p> </li> </ul> <p> Amazon Lex simply passes these session attributes to the Lambda functions configured for the intent.</p> <p>In your Lambda function, you can also use the session attributes for initialization and customization (prompts and response cards). Some examples are:</p> <ul> <li> <p> Initialization - In a pizza ordering bot, if you can pass the user location as a session attribute (for example, <code>"Location" : "111 Maple street"</code>), then your Lambda function might use this information to determine the closest pizzeria to place the order (perhaps to set the storeAddress slot value). </p> </li> <li> <p> Personalize prompts - For example, you can configure prompts to refer to the user name. (For example, "Hey [FirstName], what toppings would you like?"). You can pass the user name as a session attribute (<code>"FirstName" : "Joe"</code>) so that Amazon Lex can substitute the placeholder to provide a personalize prompt to the user ("Hey Joe, what toppings would you like?"). </p> </li> </ul> <note> <p> Amazon Lex does not persist session attributes. </p> <p> If you configure a code hook for the intent, Amazon Lex passes the incoming session attributes to the Lambda function. If you want Amazon Lex to return these session attributes back to the client, the Lambda function must return them. </p> <p> If there is no code hook configured for the intent, Amazon Lex simply returns the session attributes back to the client application. </p> </note>
-- * botAlias [BotAlias] <p>The alias of the Amazon Lex bot.</p>
-- Required key: botName
-- Required key: botAlias
-- Required key: userId
-- Required key: inputText
-- @return PostTextRequest structure as a key-value pair table
function M.PostTextRequest(args)
	assert(args, "You must provdide an argument table when creating PostTextRequest")
	local t = { 
		["inputText"] = args["inputText"],
		["userId"] = args["userId"],
		["botName"] = args["botName"],
		["sessionAttributes"] = args["sessionAttributes"],
		["botAlias"] = args["botAlias"],
	}
	asserts.AssertPostTextRequest(t)
	return t
end

keys.DependencyFailedException = { ["Message"] = true, nil }

function asserts.AssertDependencyFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyFailedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DependencyFailedException[k], "DependencyFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyFailedException
-- <p> One of the downstream dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example, if Amazon Lex does not have sufficient permissions to call a Lambda function, it results in Lambda throwing an exception. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DependencyFailedException structure as a key-value pair table
function M.DependencyFailedException(args)
	assert(args, "You must provdide an argument table when creating DependencyFailedException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDependencyFailedException(t)
	return t
end

keys.RequestTimeoutException = { ["message"] = true, nil }

function asserts.AssertRequestTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeoutException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestTimeoutException[k], "RequestTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeoutException
-- <p>The input speech is too long.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return RequestTimeoutException structure as a key-value pair table
function M.RequestTimeoutException(args)
	assert(args, "You must provdide an argument table when creating RequestTimeoutException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestTimeoutException(t)
	return t
end

keys.LoopDetectedException = { ["Message"] = true, nil }

function asserts.AssertLoopDetectedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoopDetectedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoopDetectedException[k], "LoopDetectedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoopDetectedException
-- <p>Lambda fulfilment function returned <code>DelegateDialogAction</code> to Amazon Lex without changing any slot values. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return LoopDetectedException structure as a key-value pair table
function M.LoopDetectedException(args)
	assert(args, "You must provdide an argument table when creating LoopDetectedException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertLoopDetectedException(t)
	return t
end

keys.PostContentRequest = { ["contentType"] = true, ["userId"] = true, ["botAlias"] = true, ["accept"] = true, ["inputStream"] = true, ["botName"] = true, ["sessionAttributes"] = true, nil }

function asserts.AssertPostContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostContentRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	assert(struct["inputStream"], "Expected key inputStream to exist in table")
	if struct["contentType"] then asserts.AssertHttpContentType(struct["contentType"]) end
	if struct["userId"] then asserts.AssertUserId(struct["userId"]) end
	if struct["botAlias"] then asserts.AssertBotAlias(struct["botAlias"]) end
	if struct["accept"] then asserts.AssertAccept(struct["accept"]) end
	if struct["inputStream"] then asserts.AssertBlobStream(struct["inputStream"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["sessionAttributes"] then asserts.AssertString(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostContentRequest[k], "PostContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostContentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentType [HttpContentType] <p> You pass this values as the <code>Content-Type</code> HTTP header. </p> <p> Indicates the audio format or text. The header value must start with one of the following prefixes: </p> <ul> <li> <p>PCM format</p> <ul> <li> <p>audio/l16; rate=16000; channels=1</p> </li> <li> <p>audio/x-l16; sample-rate=16000; channel-count=1</p> </li> </ul> </li> <li> <p>Opus format</p> <ul> <li> <p>audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=1; frame-size-milliseconds=1.1</p> </li> </ul> </li> <li> <p>Text format</p> <ul> <li> <p>text/plain; charset=utf-8</p> </li> </ul> </li> </ul>
-- * userId [UserId] <p>ID of the client application user. Typically, each of your application users should have a unique ID. The application developer decides the user IDs. At runtime, each request must include the user ID. Note the following considerations:</p> <ul> <li> <p> If you want a user to start conversation on one device and continue the conversation on another device, you might choose a user-specific identifier, such as the user's login, or Amazon Cognito user ID (assuming your application is using Amazon Cognito). </p> </li> <li> <p> If you want the same user to be able to have two independent conversations on two different devices, you might choose device-specific identifier, such as device ID, or some globally unique identifier. </p> </li> </ul>
-- * botAlias [BotAlias] <p>Alias of the Amazon Lex bot.</p>
-- * accept [Accept] <p> You pass this value as the <code>Accept</code> HTTP header. </p> <p> The message Amazon Lex returns in the response can be either text or speech based on the <code>Accept</code> HTTP header value in the request. </p> <ul> <li> <p> If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex returns text in the response. </p> </li> <li> <p> If the value begins with <code>audio/</code>, Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech (using the configuration you specified in the <code>Accept</code> header). For example, if you specify <code>audio/mpeg</code> as the value, Amazon Lex returns speech in the MPEG format.</p> <p>The following are the accepted values:</p> <ul> <li> <p>audio/mpeg</p> </li> <li> <p>audio/ogg</p> </li> <li> <p>audio/pcm</p> </li> <li> <p>text/plain; charset=utf-8</p> </li> <li> <p>audio/* (defaults to mpeg)</p> </li> </ul> </li> </ul>
-- * inputStream [BlobStream] <p> User input in PCM or Opus audio format or text format as described in the <code>Content-Type</code> HTTP header. </p>
-- * botName [BotName] <p>Name of the Amazon Lex bot.</p>
-- * sessionAttributes [String] <p>You pass this value in the <code>x-amz-lex-session-attributes</code> HTTP header. The value must be map (keys and values must be strings) that is JSON serialized and then base64 encoded.</p> <p> A session represents dialog between a user and Amazon Lex. At runtime, a client application can pass contextual information, in the request to Amazon Lex. For example, </p> <ul> <li> <p>You might use session attributes to track the requestID of user requests.</p> </li> <li> <p>In Getting Started Exercise 1, the example bot uses the price session attribute to maintain the price of flowers ordered (for example, "price":25). The code hook (Lambda function) sets this attribute based on the type of flowers ordered. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html">Review the Details of Information Flow</a>. </p> </li> <li> <p>In the BookTrip bot exercise, the bot uses the <code>currentReservation</code> session attribute to maintains the slot data during the in-progress conversation to book a hotel or book a car. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html">Details of Information Flow</a>. </p> </li> </ul> <p> Amazon Lex passes these session attributes to the Lambda functions configured for the intent In the your Lambda function, you can use the session attributes for initialization and customization (prompts). Some examples are: </p> <ul> <li> <p> Initialization - In a pizza ordering bot, if you pass user location (for example, <code>"Location : 111 Maple Street"</code>), then your Lambda function might use this information to determine the closest pizzeria to place the order (and perhaps set the storeAddress slot value as well). </p> <p> Personalized prompts - For example, you can configure prompts to refer to the user by name (for example, "Hey [firstName], what toppings would you like?"). You can pass the user's name as a session attribute ("firstName": "Joe") so that Amazon Lex can substitute the placeholder to provide a personalized prompt to the user ("Hey Joe, what toppings would you like?"). </p> </li> </ul> <note> <p> Amazon Lex does not persist session attributes. </p> <p> If you configured a code hook for the intent, Amazon Lex passes the incoming session attributes to the Lambda function. The Lambda function must return these session attributes if you want Amazon Lex to return them to the client. </p> <p> If there is no code hook configured for the intent Amazon Lex simply returns the session attributes to the client application. </p> </note>
-- Required key: botName
-- Required key: botAlias
-- Required key: userId
-- Required key: contentType
-- Required key: inputStream
-- @return PostContentRequest structure as a key-value pair table
function M.PostContentRequest(args)
	assert(args, "You must provdide an argument table when creating PostContentRequest")
	local t = { 
		["contentType"] = args["contentType"],
		["userId"] = args["userId"],
		["botAlias"] = args["botAlias"],
		["accept"] = args["accept"],
		["inputStream"] = args["inputStream"],
		["botName"] = args["botName"],
		["sessionAttributes"] = args["sessionAttributes"],
	}
	asserts.AssertPostContentRequest(t)
	return t
end

keys.ResponseCard = { ["genericAttachments"] = true, ["version"] = true, ["contentType"] = true, nil }

function asserts.AssertResponseCard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResponseCard to be of type 'table'")
	if struct["genericAttachments"] then asserts.AssertgenericAttachmentList(struct["genericAttachments"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResponseCard[k], "ResponseCard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResponseCard
-- <p>If you configure a response card when creating your bots, Amazon Lex substitutes the session attributes and slot values that are available, and then returns it. The response card can also come from a Lambda function ( <code>dialogCodeHook</code> and <code>fulfillmentActivity</code> on an intent).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * genericAttachments [genericAttachmentList] <p>An array of attachment objects representing options.</p>
-- * version [String] <p>The version of the response card format.</p>
-- * contentType [ContentType] <p>The content type of the response.</p>
-- @return ResponseCard structure as a key-value pair table
function M.ResponseCard(args)
	assert(args, "You must provdide an argument table when creating ResponseCard")
	local t = { 
		["genericAttachments"] = args["genericAttachments"],
		["version"] = args["version"],
		["contentType"] = args["contentType"],
	}
	asserts.AssertResponseCard(t)
	return t
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provdide an argument table when creating NotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>Internal service error. Retry the call.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provdide an argument table when creating InternalFailureException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(t)
	return t
end

keys.Button = { ["text"] = true, ["value"] = true, nil }

function asserts.AssertButton(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Button to be of type 'table'")
	assert(struct["text"], "Expected key text to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["text"] then asserts.AssertButtonTextStringWithLength(struct["text"]) end
	if struct["value"] then asserts.AssertButtonValueStringWithLength(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Button[k], "Button contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Button
-- <p>Represents an option to be shown on the client platform (Facebook, Slack, etc.)</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * text [ButtonTextStringWithLength] <p>Text that is visible to the user on the button.</p>
-- * value [ButtonValueStringWithLength] <p>The value sent to Amazon Lex when a user chooses the button. For example, consider button text "NYC." When the user chooses the button, the value sent can be "New York City."</p>
-- Required key: text
-- Required key: value
-- @return Button structure as a key-value pair table
function M.Button(args)
	assert(args, "You must provdide an argument table when creating Button")
	local t = { 
		["text"] = args["text"],
		["value"] = args["value"],
	}
	asserts.AssertButton(t)
	return t
end

keys.UnsupportedMediaTypeException = { ["message"] = true, nil }

function asserts.AssertUnsupportedMediaTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedMediaTypeException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedMediaTypeException[k], "UnsupportedMediaTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedMediaTypeException
-- <p>The Content-Type header (<code>PostContent</code> API) has an invalid value. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return UnsupportedMediaTypeException structure as a key-value pair table
function M.UnsupportedMediaTypeException(args)
	assert(args, "You must provdide an argument table when creating UnsupportedMediaTypeException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedMediaTypeException(t)
	return t
end

keys.BadGatewayException = { ["Message"] = true, nil }

function asserts.AssertBadGatewayException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadGatewayException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadGatewayException[k], "BadGatewayException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadGatewayException
-- <p>Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return BadGatewayException structure as a key-value pair table
function M.BadGatewayException(args)
	assert(args, "You must provdide an argument table when creating BadGatewayException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertBadGatewayException(t)
	return t
end

keys.ConflictException = { ["message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p> Two clients are using the same AWS account, Amazon Lex bot, and user ID. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provdide an argument table when creating ConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictException(t)
	return t
end

keys.GenericAttachment = { ["buttons"] = true, ["imageUrl"] = true, ["attachmentLinkUrl"] = true, ["subTitle"] = true, ["title"] = true, nil }

function asserts.AssertGenericAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenericAttachment to be of type 'table'")
	if struct["buttons"] then asserts.AssertlistOfButtons(struct["buttons"]) end
	if struct["imageUrl"] then asserts.AssertStringUrlWithLength(struct["imageUrl"]) end
	if struct["attachmentLinkUrl"] then asserts.AssertStringUrlWithLength(struct["attachmentLinkUrl"]) end
	if struct["subTitle"] then asserts.AssertStringWithLength(struct["subTitle"]) end
	if struct["title"] then asserts.AssertStringWithLength(struct["title"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenericAttachment[k], "GenericAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenericAttachment
-- <p>Represents an option rendered to the user when a prompt is shown. It could be an image, a button, a link, or text. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * buttons [listOfButtons] <p>The list of options to show to the user.</p>
-- * imageUrl [StringUrlWithLength] <p>The URL of an image that is displayed to the user.</p>
-- * attachmentLinkUrl [StringUrlWithLength] <p>The URL of an attachment to the response card.</p>
-- * subTitle [StringWithLength] <p>The subtitle shown below the title.</p>
-- * title [StringWithLength] <p>The title of the option.</p>
-- @return GenericAttachment structure as a key-value pair table
function M.GenericAttachment(args)
	assert(args, "You must provdide an argument table when creating GenericAttachment")
	local t = { 
		["buttons"] = args["buttons"],
		["imageUrl"] = args["imageUrl"],
		["attachmentLinkUrl"] = args["attachmentLinkUrl"],
		["subTitle"] = args["subTitle"],
		["title"] = args["title"],
	}
	asserts.AssertGenericAttachment(t)
	return t
end

keys.PostContentResponse = { ["contentType"] = true, ["slotToElicit"] = true, ["dialogState"] = true, ["intentName"] = true, ["audioStream"] = true, ["inputTranscript"] = true, ["slots"] = true, ["message"] = true, ["sessionAttributes"] = true, nil }

function asserts.AssertPostContentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostContentResponse to be of type 'table'")
	if struct["contentType"] then asserts.AssertHttpContentType(struct["contentType"]) end
	if struct["slotToElicit"] then asserts.AssertString(struct["slotToElicit"]) end
	if struct["dialogState"] then asserts.AssertDialogState(struct["dialogState"]) end
	if struct["intentName"] then asserts.AssertIntentName(struct["intentName"]) end
	if struct["audioStream"] then asserts.AssertBlobStream(struct["audioStream"]) end
	if struct["inputTranscript"] then asserts.AssertString(struct["inputTranscript"]) end
	if struct["slots"] then asserts.AssertString(struct["slots"]) end
	if struct["message"] then asserts.AssertText(struct["message"]) end
	if struct["sessionAttributes"] then asserts.AssertString(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostContentResponse[k], "PostContentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostContentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * contentType [HttpContentType] <p>Content type as specified in the <code>Accept</code> HTTP header in the request.</p>
-- * slotToElicit [String] <p> If the <code>dialogState</code> value is <code>ElicitSlot</code>, returns the name of the slot for which Amazon Lex is eliciting a value. </p>
-- * dialogState [DialogState] <p>Identifies the current state of the user interaction. Amazon Lex returns one of the following values as <code>dialogState</code>. The client can optionally use this information to customize the user interface. </p> <ul> <li> <p> <code>ElicitIntent</code> – Amazon Lex wants to elicit the user's intent. Consider the following examples: </p> <p> For example, a user might utter an intent ("I want to order a pizza"). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialog state. </p> </li> <li> <p> <code>ConfirmIntent</code> – Amazon Lex is expecting a "yes" or "no" response. </p> <p>For example, Amazon Lex wants user confirmation before fulfilling an intent. Instead of a simple "yes" or "no" response, a user might respond with additional information. For example, "yes, but make it a thick crust pizza" or "no, I want to order a drink." Amazon Lex can process such additional information (in these examples, update the crust type slot or change the intent from OrderPizza to OrderDrink). </p> </li> <li> <p> <code>ElicitSlot</code> – Amazon Lex is expecting the value of a slot for the current intent. </p> <p> For example, suppose that in the response Amazon Lex sends this message: "What size pizza would you like?". A user might reply with the slot value (e.g., "medium"). The user might also provide additional information in the response (e.g., "medium thick crust pizza"). Amazon Lex can process such additional information appropriately. </p> </li> <li> <p> <code>Fulfilled</code> – Conveys that the Lambda function has successfully fulfilled the intent. </p> </li> <li> <p> <code>ReadyForFulfillment</code> – Conveys that the client has to fullfill the request. </p> </li> <li> <p> <code>Failed</code> – Conveys that the conversation with the user failed. </p> <p> This can happen for various reasons, including that the user does not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or if the Lambda function fails to fulfill the intent. </p> </li> </ul>
-- * intentName [IntentName] <p>Current user intent that Amazon Lex is aware of.</p>
-- * audioStream [BlobStream] <p>The prompt (or statement) to convey to the user. This is based on the bot configuration and context. For example, if Amazon Lex did not understand the user intent, it sends the <code>clarificationPrompt</code> configured for the bot. If the intent requires confirmation before taking the fulfillment action, it sends the <code>confirmationPrompt</code>. Another example: Suppose that the Lambda function successfully fulfilled the intent, and sent a message to convey to the user. Then Amazon Lex sends that message in the response. </p>
-- * inputTranscript [String] <p>Transcript of the voice input to the operation.</p>
-- * slots [String] <p>Map of zero or more intent slots (name/value pairs) Amazon Lex detected from the user input during the conversation.</p>
-- * message [Text] <p> Message to convey to the user. It can come from the bot's configuration or a code hook (Lambda function). If the current intent is not configured with a code hook or if the code hook returned <code>Delegate</code> as the <code>dialogAction.type</code> in its response, then Amazon Lex decides the next course of action and selects an appropriate message from the bot configuration based on the current user interaction context. For example, if Amazon Lex is not able to understand the user input, it uses a clarification prompt message (For more information, see the Error Handling section in the Amazon Lex console). Another example: if the intent requires confirmation before fulfillment, then Amazon Lex uses the confirmation prompt message in the intent configuration. If the code hook returns a message, Amazon Lex passes it as-is in its response to the client. </p>
-- * sessionAttributes [String] <p> Map of key/value pairs representing the session-specific context information. </p>
-- @return PostContentResponse structure as a key-value pair table
function M.PostContentResponse(args)
	assert(args, "You must provdide an argument table when creating PostContentResponse")
	local t = { 
		["contentType"] = args["contentType"],
		["slotToElicit"] = args["slotToElicit"],
		["dialogState"] = args["dialogState"],
		["intentName"] = args["intentName"],
		["audioStream"] = args["audioStream"],
		["inputTranscript"] = args["inputTranscript"],
		["slots"] = args["slots"],
		["message"] = args["message"],
		["sessionAttributes"] = args["sessionAttributes"],
	}
	asserts.AssertPostContentResponse(t)
	return t
end

keys.NotAcceptableException = { ["message"] = true, nil }

function asserts.AssertNotAcceptableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAcceptableException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAcceptableException[k], "NotAcceptableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAcceptableException
-- <p>The accept header in the request does not have a valid value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return NotAcceptableException structure as a key-value pair table
function M.NotAcceptableException(args)
	assert(args, "You must provdide an argument table when creating NotAcceptableException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotAcceptableException(t)
	return t
end

keys.PostTextResponse = { ["slotToElicit"] = true, ["dialogState"] = true, ["intentName"] = true, ["responseCard"] = true, ["slots"] = true, ["message"] = true, ["sessionAttributes"] = true, nil }

function asserts.AssertPostTextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostTextResponse to be of type 'table'")
	if struct["slotToElicit"] then asserts.AssertString(struct["slotToElicit"]) end
	if struct["dialogState"] then asserts.AssertDialogState(struct["dialogState"]) end
	if struct["intentName"] then asserts.AssertIntentName(struct["intentName"]) end
	if struct["responseCard"] then asserts.AssertResponseCard(struct["responseCard"]) end
	if struct["slots"] then asserts.AssertStringMap(struct["slots"]) end
	if struct["message"] then asserts.AssertText(struct["message"]) end
	if struct["sessionAttributes"] then asserts.AssertStringMap(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PostTextResponse[k], "PostTextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostTextResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * slotToElicit [String] <p>If the <code>dialogState</code> value is <code>ElicitSlot</code>, returns the name of the slot for which Amazon Lex is eliciting a value. </p>
-- * dialogState [DialogState] <p> Identifies the current state of the user interaction. Amazon Lex returns one of the following values as <code>dialogState</code>. The client can optionally use this information to customize the user interface. </p> <ul> <li> <p> <code>ElicitIntent</code> – Amazon Lex wants to elicit user intent. </p> <p>For example, a user might utter an intent ("I want to order a pizza"). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialogState.</p> </li> <li> <p> <code>ConfirmIntent</code> – Amazon Lex is expecting a "yes" or "no" response. </p> <p> For example, Amazon Lex wants user confirmation before fulfilling an intent. </p> <p>Instead of a simple "yes" or "no," a user might respond with additional information. For example, "yes, but make it thick crust pizza" or "no, I want to order a drink". Amazon Lex can process such additional information (in these examples, update the crust type slot value, or change intent from OrderPizza to OrderDrink).</p> </li> <li> <p> <code>ElicitSlot</code> – Amazon Lex is expecting a slot value for the current intent. </p> <p>For example, suppose that in the response Amazon Lex sends this message: "What size pizza would you like?". A user might reply with the slot value (e.g., "medium"). The user might also provide additional information in the response (e.g., "medium thick crust pizza"). Amazon Lex can process such additional information appropriately. </p> </li> <li> <p> <code>Fulfilled</code> – Conveys that the Lambda function configured for the intent has successfully fulfilled the intent. </p> </li> <li> <p> <code>ReadyForFulfillment</code> – Conveys that the client has to fulfill the intent. </p> </li> <li> <p> <code>Failed</code> – Conveys that the conversation with the user failed. </p> <p> This can happen for various reasons including that the user did not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or the Lambda function failed to fulfill the intent. </p> </li> </ul>
-- * intentName [IntentName] <p>The current user intent that Amazon Lex is aware of.</p>
-- * responseCard [ResponseCard] <p>Represents the options that the user has to respond to the current prompt. Response Card can come from the bot configuration (in the Amazon Lex console, choose the settings button next to a slot) or from a code hook (Lambda function). </p>
-- * slots [StringMap] <p> The intent slots (name/value pairs) that Amazon Lex detected so far from the user input in the conversation. </p>
-- * message [Text] <p> A message to convey to the user. It can come from the bot's configuration or a code hook (Lambda function). If the current intent is not configured with a code hook or the code hook returned <code>Delegate</code> as the <code>dialogAction.type</code> in its response, then Amazon Lex decides the next course of action and selects an appropriate message from the bot configuration based on the current user interaction context. For example, if Amazon Lex is not able to understand the user input, it uses a clarification prompt message (for more information, see the Error Handling section in the Amazon Lex console). Another example: if the intent requires confirmation before fulfillment, then Amazon Lex uses the confirmation prompt message in the intent configuration. If the code hook returns a message, Amazon Lex passes it as-is in its response to the client. </p>
-- * sessionAttributes [StringMap] <p>A map of key-value pairs representing the session-specific context information.</p>
-- @return PostTextResponse structure as a key-value pair table
function M.PostTextResponse(args)
	assert(args, "You must provdide an argument table when creating PostTextResponse")
	local t = { 
		["slotToElicit"] = args["slotToElicit"],
		["dialogState"] = args["dialogState"],
		["intentName"] = args["intentName"],
		["responseCard"] = args["responseCard"],
		["slots"] = args["slots"],
		["message"] = args["message"],
		["sessionAttributes"] = args["sessionAttributes"],
	}
	asserts.AssertPostTextResponse(t)
	return t
end

function asserts.AssertHttpContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpContentType to be of type 'string'")
end

--  
function M.HttpContentType(str)
	asserts.AssertHttpContentType(str)
	return str
end

function asserts.AssertButtonTextStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected ButtonTextStringWithLength to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ButtonTextStringWithLength(str)
	asserts.AssertButtonTextStringWithLength(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.UserId(str)
	asserts.AssertUserId(str)
	return str
end

function asserts.AssertIntentName(str)
	assert(str)
	assert(type(str) == "string", "Expected IntentName to be of type 'string'")
end

--  
function M.IntentName(str)
	asserts.AssertIntentName(str)
	return str
end

function asserts.AssertStringUrlWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected StringUrlWithLength to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringUrlWithLength(str)
	asserts.AssertStringUrlWithLength(str)
	return str
end

function asserts.AssertButtonValueStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected ButtonValueStringWithLength to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ButtonValueStringWithLength(str)
	asserts.AssertButtonValueStringWithLength(str)
	return str
end

function asserts.AssertBotAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected BotAlias to be of type 'string'")
end

--  
function M.BotAlias(str)
	asserts.AssertBotAlias(str)
	return str
end

function asserts.AssertStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithLength to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithLength(str)
	asserts.AssertStringWithLength(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertText(str)
	assert(str)
	assert(type(str) == "string", "Expected Text to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Text(str)
	asserts.AssertText(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertDialogState(str)
	assert(str)
	assert(type(str) == "string", "Expected DialogState to be of type 'string'")
end

--  
function M.DialogState(str)
	asserts.AssertDialogState(str)
	return str
end

function asserts.AssertAccept(str)
	assert(str)
	assert(type(str) == "string", "Expected Accept to be of type 'string'")
end

--  
function M.Accept(str)
	asserts.AssertAccept(str)
	return str
end

function asserts.AssertBotName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotName to be of type 'string'")
end

--  
function M.BotName(str)
	asserts.AssertBotName(str)
	return str
end

function asserts.AssertStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected StringMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.StringMap(map)
	asserts.AssertStringMap(map)
	return map
end

function asserts.AssertBlobStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BlobStream to be of type 'string'")
end

function M.BlobStream(blob)
	asserts.AssertBlobStream(blob)
	return blob
end

function asserts.AssertgenericAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected genericAttachmentList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertGenericAttachment(v)
	end
end

--  
-- List of GenericAttachment objects
function M.genericAttachmentList(list)
	asserts.AssertgenericAttachmentList(list)
	return list
end

function asserts.AssertlistOfButtons(list)
	assert(list)
	assert(type(list) == "table", "Expected listOfButtons to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertButton(v)
	end
end

--  
-- List of Button objects
function M.listOfButtons(list)
	asserts.AssertlistOfButtons(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "runtime.lex.amazonaws.com"
		end
	end
	local ss = { "runtime.lex" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call PostContent asynchronously, invoking a callback when done
-- @param PostContentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PostContentAsync(PostContentRequest, cb)
	assert(PostContentRequest, "You must provide a PostContentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PostContent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/bot/{botName}/alias/{botAlias}/user/{userId}/content", PostContentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PostContent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PostContentRequest
-- @return response
-- @return error_message
function M.PostContentSync(PostContentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PostContentAsync(PostContentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PostText asynchronously, invoking a callback when done
-- @param PostTextRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PostTextAsync(PostTextRequest, cb)
	assert(PostTextRequest, "You must provide a PostTextRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PostText",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/bot/{botName}/alias/{botAlias}/user/{userId}/text", PostTextRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PostText synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PostTextRequest
-- @return response
-- @return error_message
function M.PostTextSync(PostTextRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PostTextAsync(PostTextRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
