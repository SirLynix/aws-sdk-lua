--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Queue Service (sqs-2012-11-05)

local M = {}

M.metadata = {
	api_version = "2012-11-05",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sqs",
	service_abbreviation = "Amazon SQS",
	service_full_name = "Amazon Simple Queue Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sqs-2012-11-05",
}

local keys = {}
local asserts = {}

keys.UnsupportedOperation = { nil }

function asserts.AssertUnsupportedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperation[k], "UnsupportedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperation
-- <p>Error code 400. Unsupported operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UnsupportedOperation structure as a key-value pair table
function M.UnsupportedOperation(args)
	assert(args, "You must provdide an argument table when creating UnsupportedOperation")
	local t = { 
	}
	asserts.AssertUnsupportedOperation(t)
	return t
end

keys.PurgeQueueInProgress = { nil }

function asserts.AssertPurgeQueueInProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueInProgress to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PurgeQueueInProgress[k], "PurgeQueueInProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueInProgress
-- <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PurgeQueueInProgress structure as a key-value pair table
function M.PurgeQueueInProgress(args)
	assert(args, "You must provdide an argument table when creating PurgeQueueInProgress")
	local t = { 
	}
	asserts.AssertPurgeQueueInProgress(t)
	return t
end

keys.MessageAttributeValue = { ["BinaryListValues"] = true, ["StringValue"] = true, ["DataType"] = true, ["BinaryValue"] = true, ["StringListValues"] = true, nil }

function asserts.AssertMessageAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageAttributeValue to be of type 'table'")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["BinaryListValues"] then asserts.AssertBinaryList(struct["BinaryListValues"]) end
	if struct["StringValue"] then asserts.AssertString(struct["StringValue"]) end
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["BinaryValue"] then asserts.AssertBinary(struct["BinaryValue"]) end
	if struct["StringListValues"] then asserts.AssertStringList(struct["StringListValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageAttributeValue[k], "MessageAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageAttributeValue
-- <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BinaryListValues [BinaryList] <p>Not implemented. Reserved for future use.</p>
-- * StringValue [String] <p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII Printable Characters</a>.</p>
-- * DataType [String] <p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p> <p>You can also append custom labels. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-data-types-validation">Message Attribute Data Types and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- * BinaryValue [Binary] <p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>
-- * StringListValues [StringList] <p>Not implemented. Reserved for future use.</p>
-- Required key: DataType
-- @return MessageAttributeValue structure as a key-value pair table
function M.MessageAttributeValue(args)
	assert(args, "You must provdide an argument table when creating MessageAttributeValue")
	local t = { 
		["BinaryListValues"] = args["BinaryListValues"],
		["StringValue"] = args["StringValue"],
		["DataType"] = args["DataType"],
		["BinaryValue"] = args["BinaryValue"],
		["StringListValues"] = args["StringListValues"],
	}
	asserts.AssertMessageAttributeValue(t)
	return t
end

keys.SetQueueAttributesRequest = { ["QueueUrl"] = true, ["Attributes"] = true, nil }

function asserts.AssertSetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetQueueAttributesRequest[k], "SetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetQueueAttributesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue whose attributes are set.</p> <p>Queue URLs are case-sensitive.</p>
-- * Attributes [QueueAttributeMap] <p>A map of attributes to set.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>SetQueueAttributes</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: an integer from 0 to 20 (seconds). The default is 0. </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: an integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attribute applies only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
-- Required key: QueueUrl
-- Required key: Attributes
-- @return SetQueueAttributesRequest structure as a key-value pair table
function M.SetQueueAttributesRequest(args)
	assert(args, "You must provdide an argument table when creating SetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertSetQueueAttributesRequest(t)
	return t
end

keys.GetQueueAttributesRequest = { ["QueueUrl"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertGetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueAttributesRequest[k], "GetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue whose attribute information is retrieved.</p> <p>Queue URLs are case-sensitive.</p>
-- * AttributeNames [AttributeNameList] <p>A list of attributes for which to retrieve information.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note> <p>The following attributes are supported:</p> <ul> <li> <p> <code>All</code> - Returns all values. </p> </li> <li> <p> <code>ApproximateNumberOfMessages</code> - Returns the approximate number of visible messages in a queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> - Returns the approximate number of messages that are waiting to be added to the queue. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> - Returns the approximate number of messages that have not timed-out and aren't deleted. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>CreatedTimestamp</code> - Returns the time when the queue was created in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>DelaySeconds</code> - Returns the default delay on the queue in seconds.</p> </li> <li> <p> <code>LastModifiedTimestamp</code> - Returns the time when the queue was last changed in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>MaximumMessageSize</code> - Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.</p> </li> <li> <p> <code>MessageRetentionPeriod</code> - Returns the length of time, in seconds, for which Amazon SQS retains a message.</p> </li> <li> <p> <code>Policy</code> - Returns the policy of the queue.</p> </li> <li> <p> <code>QueueArn</code> - Returns the Amazon resource name (ARN) of the queue.</p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - Returns the length of time, in seconds, for which the <code>ReceiveMessage</code> action waits for a message to arrive. </p> </li> <li> <p> <code>RedrivePolicy</code> - Returns the parameters for dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>VisibilityTimeout</code> - Returns the visibility timeout for the queue. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Returns whether the queue is FIFO. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> <note> <p>To determine whether a queue is <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> </li> <li> <p> <code>ContentBasedDeduplication</code> - Returns whether content-based deduplication is enabled for the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul>
-- Required key: QueueUrl
-- @return GetQueueAttributesRequest structure as a key-value pair table
function M.GetQueueAttributesRequest(args)
	assert(args, "You must provdide an argument table when creating GetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["AttributeNames"] = args["AttributeNames"],
	}
	asserts.AssertGetQueueAttributesRequest(t)
	return t
end

keys.SendMessageBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertSendMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertSendMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchResult[k], "SendMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Successful [SendMessageBatchResultEntryList] <p>A list of <code> <a>SendMessageBatchResultEntry</a> </code> items.</p>
-- * Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items with error details about each message that can't be enqueued.</p>
-- Required key: Successful
-- Required key: Failed
-- @return SendMessageBatchResult structure as a key-value pair table
function M.SendMessageBatchResult(args)
	assert(args, "You must provdide an argument table when creating SendMessageBatchResult")
	local t = { 
		["Successful"] = args["Successful"],
		["Failed"] = args["Failed"],
	}
	asserts.AssertSendMessageBatchResult(t)
	return t
end

keys.CreateQueueRequest = { ["Attributes"] = true, ["QueueName"] = true, nil }

function asserts.AssertCreateQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	if struct["QueueName"] then asserts.AssertString(struct["QueueName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueRequest[k], "CreateQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [QueueAttributeMap] <p>A map of attributes with their corresponding values.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>CreateQueue</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). The default is 0 (zero). </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: An integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Designates a queue as FIFO. Valid values: <code>true</code>, <code>false</code>. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the <code>MessageGroupId</code> for your messages explicitly.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. Valid values: <code>true</code>, <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
-- * QueueName [String] <p>The name of the new queue. The following limits apply to this name:</p> <ul> <li> <p>A queue name can have up to 80 characters.</p> </li> <li> <p>Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> </li> <li> <p>A FIFO queue name must end with the <code>.fifo</code> suffix.</p> </li> </ul> <p>Queue names are case-sensitive.</p>
-- Required key: QueueName
-- @return CreateQueueRequest structure as a key-value pair table
function M.CreateQueueRequest(args)
	assert(args, "You must provdide an argument table when creating CreateQueueRequest")
	local t = { 
		["Attributes"] = args["Attributes"],
		["QueueName"] = args["QueueName"],
	}
	asserts.AssertCreateQueueRequest(t)
	return t
end

keys.RemovePermissionRequest = { ["QueueUrl"] = true, ["Label"] = true, nil }

function asserts.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Label"] then asserts.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionRequest[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue from which permissions are removed.</p> <p>Queue URLs are case-sensitive.</p>
-- * Label [String] <p>The identification of the permission to remove. This is the label added using the <code> <a>AddPermission</a> </code> action.</p>
-- Required key: QueueUrl
-- Required key: Label
-- @return RemovePermissionRequest structure as a key-value pair table
function M.RemovePermissionRequest(args)
	assert(args, "You must provdide an argument table when creating RemovePermissionRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["Label"] = args["Label"],
	}
	asserts.AssertRemovePermissionRequest(t)
	return t
end

keys.DeleteMessageBatchRequestEntry = { ["ReceiptHandle"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchRequestEntry[k], "DeleteMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequestEntry
-- <p>Encloses a receipt handle and an identifier for it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReceiptHandle [String] <p>A receipt handle.</p>
-- * Id [String] <p>An identifier for this particular receipt handle. This is used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- Required key: Id
-- Required key: ReceiptHandle
-- @return DeleteMessageBatchRequestEntry structure as a key-value pair table
function M.DeleteMessageBatchRequestEntry(args)
	assert(args, "You must provdide an argument table when creating DeleteMessageBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = args["ReceiptHandle"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteMessageBatchRequestEntry(t)
	return t
end

keys.SendMessageBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertSendMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertSendMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchRequest[k], "SendMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue to which batched messages are sent.</p> <p>Queue URLs are case-sensitive.</p>
-- * Entries [SendMessageBatchRequestEntryList] <p>A list of <code> <a>SendMessageBatchRequestEntry</a> </code> items.</p>
-- Required key: QueueUrl
-- Required key: Entries
-- @return SendMessageBatchRequest structure as a key-value pair table
function M.SendMessageBatchRequest(args)
	assert(args, "You must provdide an argument table when creating SendMessageBatchRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["Entries"] = args["Entries"],
	}
	asserts.AssertSendMessageBatchRequest(t)
	return t
end

keys.ChangeMessageVisibilityBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertChangeMessageVisibilityBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchResult[k], "ChangeMessageVisibilityBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Successful [ChangeMessageVisibilityBatchResultEntryList] <p>A list of <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> items.</p>
-- * Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
-- Required key: Successful
-- Required key: Failed
-- @return ChangeMessageVisibilityBatchResult structure as a key-value pair table
function M.ChangeMessageVisibilityBatchResult(args)
	assert(args, "You must provdide an argument table when creating ChangeMessageVisibilityBatchResult")
	local t = { 
		["Successful"] = args["Successful"],
		["Failed"] = args["Failed"],
	}
	asserts.AssertChangeMessageVisibilityBatchResult(t)
	return t
end

keys.CreateQueueResult = { ["QueueUrl"] = true, nil }

function asserts.AssertCreateQueueResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueResult to be of type 'table'")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueResult[k], "CreateQueueResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueResult
-- <p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the created Amazon SQS queue.</p>
-- @return CreateQueueResult structure as a key-value pair table
function M.CreateQueueResult(args)
	assert(args, "You must provdide an argument table when creating CreateQueueResult")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
	}
	asserts.AssertCreateQueueResult(t)
	return t
end

keys.PurgeQueueRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertPurgeQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurgeQueueRequest[k], "PurgeQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the queue from which the <code>PurgeQueue</code> action deletes messages.</p> <p>Queue URLs are case-sensitive.</p>
-- Required key: QueueUrl
-- @return PurgeQueueRequest structure as a key-value pair table
function M.PurgeQueueRequest(args)
	assert(args, "You must provdide an argument table when creating PurgeQueueRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
	}
	asserts.AssertPurgeQueueRequest(t)
	return t
end

keys.ReceiptHandleIsInvalid = { nil }

function asserts.AssertReceiptHandleIsInvalid(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptHandleIsInvalid to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReceiptHandleIsInvalid[k], "ReceiptHandleIsInvalid contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptHandleIsInvalid
-- <p>The receipt handle provided isn't valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReceiptHandleIsInvalid structure as a key-value pair table
function M.ReceiptHandleIsInvalid(args)
	assert(args, "You must provdide an argument table when creating ReceiptHandleIsInvalid")
	local t = { 
	}
	asserts.AssertReceiptHandleIsInvalid(t)
	return t
end

keys.InvalidAttributeName = { nil }

function asserts.AssertInvalidAttributeName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAttributeName to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidAttributeName[k], "InvalidAttributeName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAttributeName
-- <p>The attribute referred to doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidAttributeName structure as a key-value pair table
function M.InvalidAttributeName(args)
	assert(args, "You must provdide an argument table when creating InvalidAttributeName")
	local t = { 
	}
	asserts.AssertInvalidAttributeName(t)
	return t
end

keys.ChangeMessageVisibilityBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertChangeMessageVisibilityBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchRequest[k], "ChangeMessageVisibilityBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue whose messages' visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- * Entries [ChangeMessageVisibilityBatchRequestEntryList] <p>A list of receipt handles of the messages for which the visibility timeout must be changed.</p>
-- Required key: QueueUrl
-- Required key: Entries
-- @return ChangeMessageVisibilityBatchRequest structure as a key-value pair table
function M.ChangeMessageVisibilityBatchRequest(args)
	assert(args, "You must provdide an argument table when creating ChangeMessageVisibilityBatchRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["Entries"] = args["Entries"],
	}
	asserts.AssertChangeMessageVisibilityBatchRequest(t)
	return t
end

keys.ReceiveMessageRequest = { ["QueueUrl"] = true, ["ReceiveRequestAttemptId"] = true, ["MaxNumberOfMessages"] = true, ["WaitTimeSeconds"] = true, ["MessageAttributeNames"] = true, ["VisibilityTimeout"] = true, ["AttributeNames"] = true, nil }

function asserts.AssertReceiveMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiveRequestAttemptId"] then asserts.AssertString(struct["ReceiveRequestAttemptId"]) end
	if struct["MaxNumberOfMessages"] then asserts.AssertInteger(struct["MaxNumberOfMessages"]) end
	if struct["WaitTimeSeconds"] then asserts.AssertInteger(struct["WaitTimeSeconds"]) end
	if struct["MessageAttributeNames"] then asserts.AssertMessageAttributeNameList(struct["MessageAttributeNames"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["AttributeNames"] then asserts.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiveMessageRequest[k], "ReceiveMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are received.</p> <p>Queue URLs are case-sensitive.</p>
-- * ReceiveRequestAttemptId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of <code>ReceiveMessage</code> calls. If a networking issue occurs after a <code>ReceiveMessage</code> action, and instead of a response you receive a generic error, you can retry the same action with an identical <code>ReceiveRequestAttemptId</code> to retrieve the same set of messages, even if their visibility timeout has not yet expired.</p> <ul> <li> <p>You can use <code>ReceiveRequestAttemptId</code> only for 5 minutes after a <code>ReceiveMessage</code> action.</p> </li> <li> <p>When you set <code>FifoQueue</code>, a caller of the <code>ReceiveMessage</code> action can provide a <code>ReceiveRequestAttemptId</code> explicitly.</p> </li> <li> <p>If a caller of the <code>ReceiveMessage</code> action doesn't provide a <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a <code>ReceiveRequestAttemptId</code>.</p> </li> <li> <p>You can retry the <code>ReceiveMessage</code> action with the same <code>ReceiveRequestAttemptId</code> if none of the messages have been modified (deleted or had their visibility changes).</p> </li> <li> <p>During a visibility timeout, subsequent calls with the same <code>ReceiveRequestAttemptId</code> return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p>If a caller of the <code>ReceiveMessage</code> action is still processing messages when the visibility timeout expires and messages become visible, another worker reading from the same queue can receive the same messages and therefore process duplicates. Also, if a reader whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.</p> <p>To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.</p> </important> </li> <li> <p>While messages with a particular <code>MessageGroupId</code> are invisible, no more messages belonging to the same <code>MessageGroupId</code> are returned until the visibility timeout expires. You can still receive messages with another <code>MessageGroupId</code> as long as it is also visible.</p> </li> <li> <p>If a caller of <code>ReceiveMessage</code> can't track the <code>ReceiveRequestAttemptId</code>, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.</p> </li> </ul> <p>The length of <code>ReceiveRequestAttemptId</code> is 128 characters. <code>ReceiveRequestAttemptId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>ReceiveRequestAttemptId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter">Using the ReceiveRequestAttemptId Request Parameter</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- * MaxNumberOfMessages [Integer] <p>The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values are 1 to 10. Default is 1.</p>
-- * WaitTimeSeconds [Integer] <p>The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than <code>WaitTimeSeconds</code>.</p>
-- * MessageAttributeNames [MessageAttributeNameList] <p>The name of the message attribute, where <i>N</i> is the index.</p> <ul> <li> <p>The name can contain alphanumeric characters and the underscore (<code>_</code>), hyphen (<code>-</code>), and period (<code>.</code>).</p> </li> <li> <p>The name is case-sensitive and must be unique among all attribute names for the message.</p> </li> <li> <p>The name must not start with AWS-reserved prefixes such as <code>AWS.</code> or <code>Amazon.</code> (or any casing variants).</p> </li> <li> <p>The name must not start or end with a period (<code>.</code>), and it should not have periods in succession (<code>..</code>).</p> </li> <li> <p>The name can be up to 256 characters long.</p> </li> </ul> <p>When using <code>ReceiveMessage</code>, you can send a list of attribute names to receive, or you can return all of the attributes by specifying <code>All</code> or <code>.*</code> in your request. You can also use all message attributes starting with a prefix, for example <code>bar.*</code>.</p>
-- * VisibilityTimeout [Integer] <p>The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a <code>ReceiveMessage</code> request.</p>
-- * AttributeNames [AttributeNameList] <p>A list of attributes that need to be returned along with each message. These attributes include:</p> <ul> <li> <p> <code>All</code> - Returns all values.</p> </li> <li> <p> <code>ApproximateFirstReceiveTimestamp</code> - Returns the time the message was first received from the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>ApproximateReceiveCount</code> - Returns the number of times a message has been received from the queue but not deleted.</p> </li> <li> <p> <code>SenderId</code> </p> <ul> <li> <p>For an IAM user, returns the IAM user ID, for example <code>ABCDEFGHI1JKLMNOPQ23R</code>.</p> </li> <li> <p>For an IAM role, returns the IAM role ID, for example <code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.</p> </li> </ul> </li> <li> <p> <code>SentTimestamp</code> - Returns the time the message was sent to the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>MessageDeduplicationId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action.</p> </li> <li> <p> <code>MessageGroupId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action. Messages with the same <code>MessageGroupId</code> are returned in sequence.</p> </li> <li> <p> <code>SequenceNumber</code> - Returns the value provided by Amazon SQS.</p> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>ContentBasedDeduplication</code> </p> </li> <li> <p> <code>DelaySeconds</code> </p> </li> <li> <p> <code>FifoQueue</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>MaximumMessageSize</code> </p> </li> <li> <p> <code>MessageRetentionPeriod</code> </p> </li> <li> <p> <code>Policy</code> </p> </li> <li> <p> <code>QueueArn</code>, </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> </p> </li> <li> <p> <code>RedrivePolicy</code> </p> </li> <li> <p> <code>VisibilityTimeout</code> </p> </li> </ul>
-- Required key: QueueUrl
-- @return ReceiveMessageRequest structure as a key-value pair table
function M.ReceiveMessageRequest(args)
	assert(args, "You must provdide an argument table when creating ReceiveMessageRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["ReceiveRequestAttemptId"] = args["ReceiveRequestAttemptId"],
		["MaxNumberOfMessages"] = args["MaxNumberOfMessages"],
		["WaitTimeSeconds"] = args["WaitTimeSeconds"],
		["MessageAttributeNames"] = args["MessageAttributeNames"],
		["VisibilityTimeout"] = args["VisibilityTimeout"],
		["AttributeNames"] = args["AttributeNames"],
	}
	asserts.AssertReceiveMessageRequest(t)
	return t
end

keys.ReceiveMessageResult = { ["Messages"] = true, nil }

function asserts.AssertReceiveMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageResult to be of type 'table'")
	if struct["Messages"] then asserts.AssertMessageList(struct["Messages"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiveMessageResult[k], "ReceiveMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageResult
-- <p>A list of received messages.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Messages [MessageList] <p>A list of messages.</p>
-- @return ReceiveMessageResult structure as a key-value pair table
function M.ReceiveMessageResult(args)
	assert(args, "You must provdide an argument table when creating ReceiveMessageResult")
	local t = { 
		["Messages"] = args["Messages"],
	}
	asserts.AssertReceiveMessageResult(t)
	return t
end

keys.SendMessageBatchResultEntry = { ["MD5OfMessageBody"] = true, ["MD5OfMessageAttributes"] = true, ["Id"] = true, ["SequenceNumber"] = true, ["MessageId"] = true, nil }

function asserts.AssertSendMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	assert(struct["MD5OfMessageBody"], "Expected key MD5OfMessageBody to exist in table")
	if struct["MD5OfMessageBody"] then asserts.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["SequenceNumber"] then asserts.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchResultEntry[k], "SendMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResultEntry
-- <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- * MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- * Id [String] <p>An identifier for the message in this batch.</p>
-- * SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. As <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- * MessageId [String] <p>An identifier for the message.</p>
-- Required key: Id
-- Required key: MessageId
-- Required key: MD5OfMessageBody
-- @return SendMessageBatchResultEntry structure as a key-value pair table
function M.SendMessageBatchResultEntry(args)
	assert(args, "You must provdide an argument table when creating SendMessageBatchResultEntry")
	local t = { 
		["MD5OfMessageBody"] = args["MD5OfMessageBody"],
		["MD5OfMessageAttributes"] = args["MD5OfMessageAttributes"],
		["Id"] = args["Id"],
		["SequenceNumber"] = args["SequenceNumber"],
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendMessageBatchResultEntry(t)
	return t
end

keys.InvalidBatchEntryId = { nil }

function asserts.AssertInvalidBatchEntryId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBatchEntryId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidBatchEntryId[k], "InvalidBatchEntryId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBatchEntryId
-- <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidBatchEntryId structure as a key-value pair table
function M.InvalidBatchEntryId(args)
	assert(args, "You must provdide an argument table when creating InvalidBatchEntryId")
	local t = { 
	}
	asserts.AssertInvalidBatchEntryId(t)
	return t
end

keys.ChangeMessageVisibilityRequest = { ["QueueUrl"] = true, ["ReceiptHandle"] = true, ["VisibilityTimeout"] = true, nil }

function asserts.AssertChangeMessageVisibilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	assert(struct["VisibilityTimeout"], "Expected key VisibilityTimeout to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityRequest[k], "ChangeMessageVisibilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue whose message's visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- * ReceiptHandle [String] <p>The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the <code> <a>ReceiveMessage</a> </code> action.</p>
-- * VisibilityTimeout [Integer] <p>The new value for the message's visibility timeout (in seconds). Values values: <code>0</code> to <code>43200</code>. Maximum: 12 hours.</p>
-- Required key: QueueUrl
-- Required key: ReceiptHandle
-- Required key: VisibilityTimeout
-- @return ChangeMessageVisibilityRequest structure as a key-value pair table
function M.ChangeMessageVisibilityRequest(args)
	assert(args, "You must provdide an argument table when creating ChangeMessageVisibilityRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["ReceiptHandle"] = args["ReceiptHandle"],
		["VisibilityTimeout"] = args["VisibilityTimeout"],
	}
	asserts.AssertChangeMessageVisibilityRequest(t)
	return t
end

keys.BatchResultErrorEntry = { ["Message"] = true, ["SenderFault"] = true, ["Code"] = true, ["Id"] = true, nil }

function asserts.AssertBatchResultErrorEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchResultErrorEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["SenderFault"], "Expected key SenderFault to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["SenderFault"] then asserts.AssertBoolean(struct["SenderFault"]) end
	if struct["Code"] then asserts.AssertString(struct["Code"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchResultErrorEntry[k], "BatchResultErrorEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchResultErrorEntry
-- <p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>A message explaining why the action failed on this entry.</p>
-- * SenderFault [Boolean] <p>Specifies whether the error happened due to the sender's fault.</p>
-- * Code [String] <p>An error code representing why the action failed on this entry.</p>
-- * Id [String] <p>The <code>Id</code> of an entry in a batch request.</p>
-- Required key: Id
-- Required key: SenderFault
-- Required key: Code
-- @return BatchResultErrorEntry structure as a key-value pair table
function M.BatchResultErrorEntry(args)
	assert(args, "You must provdide an argument table when creating BatchResultErrorEntry")
	local t = { 
		["Message"] = args["Message"],
		["SenderFault"] = args["SenderFault"],
		["Code"] = args["Code"],
		["Id"] = args["Id"],
	}
	asserts.AssertBatchResultErrorEntry(t)
	return t
end

keys.SendMessageResult = { ["MD5OfMessageBody"] = true, ["MD5OfMessageAttributes"] = true, ["SequenceNumber"] = true, ["MessageId"] = true, nil }

function asserts.AssertSendMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageResult to be of type 'table'")
	if struct["MD5OfMessageBody"] then asserts.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["SequenceNumber"] then asserts.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageResult[k], "SendMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageResult
-- <p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- * MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- * SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- * MessageId [String] <p>An attribute containing the <code>MessageId</code> of the message sent to the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon SQS Developer Guide</i>. </p>
-- @return SendMessageResult structure as a key-value pair table
function M.SendMessageResult(args)
	assert(args, "You must provdide an argument table when creating SendMessageResult")
	local t = { 
		["MD5OfMessageBody"] = args["MD5OfMessageBody"],
		["MD5OfMessageAttributes"] = args["MD5OfMessageAttributes"],
		["SequenceNumber"] = args["SequenceNumber"],
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendMessageResult(t)
	return t
end

keys.DeleteMessageBatchRequest = { ["QueueUrl"] = true, ["Entries"] = true, nil }

function asserts.AssertDeleteMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then asserts.AssertDeleteMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchRequest[k], "DeleteMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- * Entries [DeleteMessageBatchRequestEntryList] <p>A list of receipt handles for the messages to be deleted.</p>
-- Required key: QueueUrl
-- Required key: Entries
-- @return DeleteMessageBatchRequest structure as a key-value pair table
function M.DeleteMessageBatchRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteMessageBatchRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["Entries"] = args["Entries"],
	}
	asserts.AssertDeleteMessageBatchRequest(t)
	return t
end

keys.QueueDoesNotExist = { nil }

function asserts.AssertQueueDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDoesNotExist to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueDoesNotExist[k], "QueueDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDoesNotExist
-- <p>The queue referred to doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return QueueDoesNotExist structure as a key-value pair table
function M.QueueDoesNotExist(args)
	assert(args, "You must provdide an argument table when creating QueueDoesNotExist")
	local t = { 
	}
	asserts.AssertQueueDoesNotExist(t)
	return t
end

keys.SendMessageRequest = { ["QueueUrl"] = true, ["MessageDeduplicationId"] = true, ["MessageBody"] = true, ["DelaySeconds"] = true, ["MessageAttributes"] = true, ["MessageGroupId"] = true, nil }

function asserts.AssertSendMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["MessageDeduplicationId"] then asserts.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then asserts.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then asserts.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["MessageGroupId"] then asserts.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageRequest[k], "SendMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue to which a message is sent.</p> <p>Queue URLs are case-sensitive.</p>
-- * MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of sent messages. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, any messages sent with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- * MessageBody [String] <p>The message to send. The maximum string size is 256 KB.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important>
-- * DelaySeconds [Integer] <p> The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- * MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- * MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
-- Required key: QueueUrl
-- Required key: MessageBody
-- @return SendMessageRequest structure as a key-value pair table
function M.SendMessageRequest(args)
	assert(args, "You must provdide an argument table when creating SendMessageRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["MessageDeduplicationId"] = args["MessageDeduplicationId"],
		["MessageBody"] = args["MessageBody"],
		["DelaySeconds"] = args["DelaySeconds"],
		["MessageAttributes"] = args["MessageAttributes"],
		["MessageGroupId"] = args["MessageGroupId"],
	}
	asserts.AssertSendMessageRequest(t)
	return t
end

keys.MessageNotInflight = { nil }

function asserts.AssertMessageNotInflight(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageNotInflight to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MessageNotInflight[k], "MessageNotInflight contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageNotInflight
-- <p>The message referred to isn't in flight.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return MessageNotInflight structure as a key-value pair table
function M.MessageNotInflight(args)
	assert(args, "You must provdide an argument table when creating MessageNotInflight")
	local t = { 
	}
	asserts.AssertMessageNotInflight(t)
	return t
end

keys.GetQueueAttributesResult = { ["Attributes"] = true, nil }

function asserts.AssertGetQueueAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesResult to be of type 'table'")
	if struct["Attributes"] then asserts.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueAttributesResult[k], "GetQueueAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesResult
-- <p>A list of returned queue attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [QueueAttributeMap] <p>A map of attributes to their respective values.</p>
-- @return GetQueueAttributesResult structure as a key-value pair table
function M.GetQueueAttributesResult(args)
	assert(args, "You must provdide an argument table when creating GetQueueAttributesResult")
	local t = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetQueueAttributesResult(t)
	return t
end

keys.ListDeadLetterSourceQueuesRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertListDeadLetterSourceQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeadLetterSourceQueuesRequest[k], "ListDeadLetterSourceQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of a dead letter queue.</p> <p>Queue URLs are case-sensitive.</p>
-- Required key: QueueUrl
-- @return ListDeadLetterSourceQueuesRequest structure as a key-value pair table
function M.ListDeadLetterSourceQueuesRequest(args)
	assert(args, "You must provdide an argument table when creating ListDeadLetterSourceQueuesRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
	}
	asserts.AssertListDeadLetterSourceQueuesRequest(t)
	return t
end

keys.Message = { ["Body"] = true, ["ReceiptHandle"] = true, ["MD5OfBody"] = true, ["MD5OfMessageAttributes"] = true, ["MessageId"] = true, ["Attributes"] = true, ["MessageAttributes"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then asserts.AssertString(struct["Body"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["MD5OfBody"] then asserts.AssertString(struct["MD5OfBody"]) end
	if struct["MD5OfMessageAttributes"] then asserts.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["MessageId"] then asserts.AssertString(struct["MessageId"]) end
	if struct["Attributes"] then asserts.AssertMessageSystemAttributeMap(struct["Attributes"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- <p>An Amazon SQS message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [String] <p>The message's contents (not URL-encoded).</p>
-- * ReceiptHandle [String] <p>An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.</p>
-- * MD5OfBody [String] <p>An MD5 digest of the non-URL-encoded message body string.</p>
-- * MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- * MessageId [String] <p>A unique identifier for the message. A <code>MessageId</code>is considered unique across all AWS accounts for an extended period of time.</p>
-- * Attributes [MessageSystemAttributeMap] <p> <code>SenderId</code>, <code>SentTimestamp</code>, <code>ApproximateReceiveCount</code>, and/or <code>ApproximateFirstReceiveTimestamp</code>. <code>SentTimestamp</code> and <code>ApproximateFirstReceiveTimestamp</code> are each returned as an integer representing the <a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds.</p>
-- * MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @return Message structure as a key-value pair table
function M.Message(args)
	assert(args, "You must provdide an argument table when creating Message")
	local t = { 
		["Body"] = args["Body"],
		["ReceiptHandle"] = args["ReceiptHandle"],
		["MD5OfBody"] = args["MD5OfBody"],
		["MD5OfMessageAttributes"] = args["MD5OfMessageAttributes"],
		["MessageId"] = args["MessageId"],
		["Attributes"] = args["Attributes"],
		["MessageAttributes"] = args["MessageAttributes"],
	}
	asserts.AssertMessage(t)
	return t
end

keys.OverLimit = { nil }

function asserts.AssertOverLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OverLimit to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OverLimit[k], "OverLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OverLimit
-- <p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OverLimit structure as a key-value pair table
function M.OverLimit(args)
	assert(args, "You must provdide an argument table when creating OverLimit")
	local t = { 
	}
	asserts.AssertOverLimit(t)
	return t
end

keys.GetQueueUrlRequest = { ["QueueName"] = true, ["QueueOwnerAWSAccountId"] = true, nil }

function asserts.AssertGetQueueUrlRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["QueueName"] then asserts.AssertString(struct["QueueName"]) end
	if struct["QueueOwnerAWSAccountId"] then asserts.AssertString(struct["QueueOwnerAWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueUrlRequest[k], "GetQueueUrlRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueName [String] <p>The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> <p>Queue names are case-sensitive.</p>
-- * QueueOwnerAWSAccountId [String] <p>The AWS account ID of the account that created the queue.</p>
-- Required key: QueueName
-- @return GetQueueUrlRequest structure as a key-value pair table
function M.GetQueueUrlRequest(args)
	assert(args, "You must provdide an argument table when creating GetQueueUrlRequest")
	local t = { 
		["QueueName"] = args["QueueName"],
		["QueueOwnerAWSAccountId"] = args["QueueOwnerAWSAccountId"],
	}
	asserts.AssertGetQueueUrlRequest(t)
	return t
end

keys.GetQueueUrlResult = { ["QueueUrl"] = true, nil }

function asserts.AssertGetQueueUrlResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlResult to be of type 'table'")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueUrlResult[k], "GetQueueUrlResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlResult
-- <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html">Responses</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the queue.</p>
-- @return GetQueueUrlResult structure as a key-value pair table
function M.GetQueueUrlResult(args)
	assert(args, "You must provdide an argument table when creating GetQueueUrlResult")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
	}
	asserts.AssertGetQueueUrlResult(t)
	return t
end

keys.DeleteQueueRequest = { ["QueueUrl"] = true, nil }

function asserts.AssertDeleteQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteQueueRequest[k], "DeleteQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQueueRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue to delete.</p> <p>Queue URLs are case-sensitive.</p>
-- Required key: QueueUrl
-- @return DeleteQueueRequest structure as a key-value pair table
function M.DeleteQueueRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteQueueRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
	}
	asserts.AssertDeleteQueueRequest(t)
	return t
end

keys.BatchRequestTooLong = { nil }

function asserts.AssertBatchRequestTooLong(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRequestTooLong to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchRequestTooLong[k], "BatchRequestTooLong contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRequestTooLong
-- <p>The length of all the messages put together is more than the limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchRequestTooLong structure as a key-value pair table
function M.BatchRequestTooLong(args)
	assert(args, "You must provdide an argument table when creating BatchRequestTooLong")
	local t = { 
	}
	asserts.AssertBatchRequestTooLong(t)
	return t
end

keys.InvalidMessageContents = { nil }

function asserts.AssertInvalidMessageContents(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMessageContents to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidMessageContents[k], "InvalidMessageContents contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMessageContents
-- <p>The message contains characters outside the allowed set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidMessageContents structure as a key-value pair table
function M.InvalidMessageContents(args)
	assert(args, "You must provdide an argument table when creating InvalidMessageContents")
	local t = { 
	}
	asserts.AssertInvalidMessageContents(t)
	return t
end

keys.ListQueuesRequest = { ["QueueNamePrefix"] = true, nil }

function asserts.AssertListQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesRequest to be of type 'table'")
	if struct["QueueNamePrefix"] then asserts.AssertString(struct["QueueNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesRequest[k], "ListQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueNamePrefix [String] <p>A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.</p> <p>Queue names are case-sensitive.</p>
-- @return ListQueuesRequest structure as a key-value pair table
function M.ListQueuesRequest(args)
	assert(args, "You must provdide an argument table when creating ListQueuesRequest")
	local t = { 
		["QueueNamePrefix"] = args["QueueNamePrefix"],
	}
	asserts.AssertListQueuesRequest(t)
	return t
end

keys.InvalidIdFormat = { nil }

function asserts.AssertInvalidIdFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdFormat to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidIdFormat[k], "InvalidIdFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdFormat
-- <p>The receipt handle isn't valid for the current version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidIdFormat structure as a key-value pair table
function M.InvalidIdFormat(args)
	assert(args, "You must provdide an argument table when creating InvalidIdFormat")
	local t = { 
	}
	asserts.AssertInvalidIdFormat(t)
	return t
end

keys.AddPermissionRequest = { ["QueueUrl"] = true, ["AWSAccountIds"] = true, ["Actions"] = true, ["Label"] = true, nil }

function asserts.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	assert(struct["AWSAccountIds"], "Expected key AWSAccountIds to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["AWSAccountIds"] then asserts.AssertAWSAccountIdList(struct["AWSAccountIds"]) end
	if struct["Actions"] then asserts.AssertActionNameList(struct["Actions"]) end
	if struct["Label"] then asserts.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionRequest[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue to which permissions are added.</p> <p>Queue URLs are case-sensitive.</p>
-- * AWSAccountIds [AWSAccountIdList] <p>The AWS account number of the <a href="http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a> who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html">Your AWS Identifiers</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- * Actions [ActionNameList] <p>The action the client wants to allow for the specified principal. The following values are valid:</p> <ul> <li> <p> <code>*</code> </p> </li> <li> <p> <code>ChangeMessageVisibility</code> </p> </li> <li> <p> <code>DeleteMessage</code> </p> </li> <li> <p> <code>GetQueueAttributes</code> </p> </li> <li> <p> <code>GetQueueUrl</code> </p> </li> <li> <p> <code>ReceiveMessage</code> </p> </li> <li> <p> <code>SendMessage</code> </p> </li> </ul> <p>For more information about these actions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes">Understanding Permissions</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>Specifying <code>SendMessage</code>, <code>DeleteMessage</code>, or <code>ChangeMessageVisibility</code> for <code>ActionName.n</code> also grants permissions for the corresponding batch versions of those actions: <code>SendMessageBatch</code>, <code>DeleteMessageBatch</code>, and <code>ChangeMessageVisibilityBatch</code>.</p>
-- * Label [String] <p>The unique identification of the permission you're setting (for example, <code>AliceSendMessage</code>). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p>
-- Required key: QueueUrl
-- Required key: Label
-- Required key: AWSAccountIds
-- Required key: Actions
-- @return AddPermissionRequest structure as a key-value pair table
function M.AddPermissionRequest(args)
	assert(args, "You must provdide an argument table when creating AddPermissionRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["AWSAccountIds"] = args["AWSAccountIds"],
		["Actions"] = args["Actions"],
		["Label"] = args["Label"],
	}
	asserts.AssertAddPermissionRequest(t)
	return t
end

keys.ListDeadLetterSourceQueuesResult = { ["queueUrls"] = true, nil }

function asserts.AssertListDeadLetterSourceQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesResult to be of type 'table'")
	assert(struct["queueUrls"], "Expected key queueUrls to exist in table")
	if struct["queueUrls"] then asserts.AssertQueueUrlList(struct["queueUrls"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeadLetterSourceQueuesResult[k], "ListDeadLetterSourceQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesResult
-- <p>A list of your dead letter source queues.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * queueUrls [QueueUrlList] <p>A list of source queue URLs that have the <code>RedrivePolicy</code> queue attribute configured with a dead letter queue.</p>
-- Required key: queueUrls
-- @return ListDeadLetterSourceQueuesResult structure as a key-value pair table
function M.ListDeadLetterSourceQueuesResult(args)
	assert(args, "You must provdide an argument table when creating ListDeadLetterSourceQueuesResult")
	local t = { 
		["queueUrls"] = args["queueUrls"],
	}
	asserts.AssertListDeadLetterSourceQueuesResult(t)
	return t
end

keys.QueueNameExists = { nil }

function asserts.AssertQueueNameExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueNameExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueNameExists[k], "QueueNameExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueNameExists
-- <p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return QueueNameExists structure as a key-value pair table
function M.QueueNameExists(args)
	assert(args, "You must provdide an argument table when creating QueueNameExists")
	local t = { 
	}
	asserts.AssertQueueNameExists(t)
	return t
end

keys.BatchEntryIdsNotDistinct = { nil }

function asserts.AssertBatchEntryIdsNotDistinct(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchEntryIdsNotDistinct to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.BatchEntryIdsNotDistinct[k], "BatchEntryIdsNotDistinct contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchEntryIdsNotDistinct
-- <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return BatchEntryIdsNotDistinct structure as a key-value pair table
function M.BatchEntryIdsNotDistinct(args)
	assert(args, "You must provdide an argument table when creating BatchEntryIdsNotDistinct")
	local t = { 
	}
	asserts.AssertBatchEntryIdsNotDistinct(t)
	return t
end

keys.DeleteMessageBatchResultEntry = { ["Id"] = true, nil }

function asserts.AssertDeleteMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchResultEntry[k], "DeleteMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResultEntry
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [String] <p>Represents a successfully deleted message.</p>
-- Required key: Id
-- @return DeleteMessageBatchResultEntry structure as a key-value pair table
function M.DeleteMessageBatchResultEntry(args)
	assert(args, "You must provdide an argument table when creating DeleteMessageBatchResultEntry")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteMessageBatchResultEntry(t)
	return t
end

keys.EmptyBatchRequest = { nil }

function asserts.AssertEmptyBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmptyBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EmptyBatchRequest[k], "EmptyBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmptyBatchRequest
-- <p>The batch request doesn't contain any entries.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EmptyBatchRequest structure as a key-value pair table
function M.EmptyBatchRequest(args)
	assert(args, "You must provdide an argument table when creating EmptyBatchRequest")
	local t = { 
	}
	asserts.AssertEmptyBatchRequest(t)
	return t
end

keys.ListQueuesResult = { ["QueueUrls"] = true, nil }

function asserts.AssertListQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesResult to be of type 'table'")
	if struct["QueueUrls"] then asserts.AssertQueueUrlList(struct["QueueUrls"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesResult[k], "ListQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesResult
-- <p>A list of your queues.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrls [QueueUrlList] <p>A list of queue URLs, up to 1,000 entries.</p>
-- @return ListQueuesResult structure as a key-value pair table
function M.ListQueuesResult(args)
	assert(args, "You must provdide an argument table when creating ListQueuesResult")
	local t = { 
		["QueueUrls"] = args["QueueUrls"],
	}
	asserts.AssertListQueuesResult(t)
	return t
end

keys.SendMessageBatchRequestEntry = { ["MessageDeduplicationId"] = true, ["MessageBody"] = true, ["DelaySeconds"] = true, ["MessageAttributes"] = true, ["Id"] = true, ["MessageGroupId"] = true, nil }

function asserts.AssertSendMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageDeduplicationId"] then asserts.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then asserts.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then asserts.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["MessageGroupId"] then asserts.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessageBatchRequestEntry[k], "SendMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequestEntry
-- <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, subsequent messages with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- * MessageBody [String] <p>The body of the message.</p>
-- * DelaySeconds [Integer] <p>The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- * MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- * Id [String] <p>An identifier for a message in this batch used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- * MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
-- Required key: Id
-- Required key: MessageBody
-- @return SendMessageBatchRequestEntry structure as a key-value pair table
function M.SendMessageBatchRequestEntry(args)
	assert(args, "You must provdide an argument table when creating SendMessageBatchRequestEntry")
	local t = { 
		["MessageDeduplicationId"] = args["MessageDeduplicationId"],
		["MessageBody"] = args["MessageBody"],
		["DelaySeconds"] = args["DelaySeconds"],
		["MessageAttributes"] = args["MessageAttributes"],
		["Id"] = args["Id"],
		["MessageGroupId"] = args["MessageGroupId"],
	}
	asserts.AssertSendMessageBatchRequestEntry(t)
	return t
end

keys.ChangeMessageVisibilityBatchRequestEntry = { ["ReceiptHandle"] = true, ["VisibilityTimeout"] = true, ["Id"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then asserts.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchRequestEntry[k], "ChangeMessageVisibilityBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequestEntry
-- <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReceiptHandle [String] <p>A receipt handle.</p>
-- * VisibilityTimeout [Integer] <p>The new value (in seconds) for the message's visibility timeout.</p>
-- * Id [String] <p>An identifier for this particular receipt handle used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- Required key: Id
-- Required key: ReceiptHandle
-- @return ChangeMessageVisibilityBatchRequestEntry structure as a key-value pair table
function M.ChangeMessageVisibilityBatchRequestEntry(args)
	assert(args, "You must provdide an argument table when creating ChangeMessageVisibilityBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = args["ReceiptHandle"],
		["VisibilityTimeout"] = args["VisibilityTimeout"],
		["Id"] = args["Id"],
	}
	asserts.AssertChangeMessageVisibilityBatchRequestEntry(t)
	return t
end

keys.TooManyEntriesInBatchRequest = { nil }

function asserts.AssertTooManyEntriesInBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyEntriesInBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyEntriesInBatchRequest[k], "TooManyEntriesInBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyEntriesInBatchRequest
-- <p>The batch request contains more entries than permissible.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyEntriesInBatchRequest structure as a key-value pair table
function M.TooManyEntriesInBatchRequest(args)
	assert(args, "You must provdide an argument table when creating TooManyEntriesInBatchRequest")
	local t = { 
	}
	asserts.AssertTooManyEntriesInBatchRequest(t)
	return t
end

keys.QueueDeletedRecently = { nil }

function asserts.AssertQueueDeletedRecently(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDeletedRecently to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.QueueDeletedRecently[k], "QueueDeletedRecently contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDeletedRecently
-- <p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return QueueDeletedRecently structure as a key-value pair table
function M.QueueDeletedRecently(args)
	assert(args, "You must provdide an argument table when creating QueueDeletedRecently")
	local t = { 
	}
	asserts.AssertQueueDeletedRecently(t)
	return t
end

keys.DeleteMessageBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertDeleteMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then asserts.AssertDeleteMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageBatchResult[k], "DeleteMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResult
-- <p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Successful [DeleteMessageBatchResultEntryList] <p>A list of <code> <a>DeleteMessageBatchResultEntry</a> </code> items.</p>
-- * Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
-- Required key: Successful
-- Required key: Failed
-- @return DeleteMessageBatchResult structure as a key-value pair table
function M.DeleteMessageBatchResult(args)
	assert(args, "You must provdide an argument table when creating DeleteMessageBatchResult")
	local t = { 
		["Successful"] = args["Successful"],
		["Failed"] = args["Failed"],
	}
	asserts.AssertDeleteMessageBatchResult(t)
	return t
end

keys.ChangeMessageVisibilityBatchResultEntry = { ["Id"] = true, nil }

function asserts.AssertChangeMessageVisibilityBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeMessageVisibilityBatchResultEntry[k], "ChangeMessageVisibilityBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResultEntry
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [String] <p>Represents a message whose visibility timeout has been changed successfully.</p>
-- Required key: Id
-- @return ChangeMessageVisibilityBatchResultEntry structure as a key-value pair table
function M.ChangeMessageVisibilityBatchResultEntry(args)
	assert(args, "You must provdide an argument table when creating ChangeMessageVisibilityBatchResultEntry")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertChangeMessageVisibilityBatchResultEntry(t)
	return t
end

keys.DeleteMessageRequest = { ["QueueUrl"] = true, ["ReceiptHandle"] = true, nil }

function asserts.AssertDeleteMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["QueueUrl"] then asserts.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then asserts.AssertString(struct["ReceiptHandle"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMessageRequest[k], "DeleteMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- * ReceiptHandle [String] <p>The receipt handle associated with the message to delete.</p>
-- Required key: QueueUrl
-- Required key: ReceiptHandle
-- @return DeleteMessageRequest structure as a key-value pair table
function M.DeleteMessageRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteMessageRequest")
	local t = { 
		["QueueUrl"] = args["QueueUrl"],
		["ReceiptHandle"] = args["ReceiptHandle"],
	}
	asserts.AssertDeleteMessageRequest(t)
	return t
end

function asserts.AssertQueueAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueAttributeName to be of type 'string'")
end

--  
function M.QueueAttributeName(str)
	asserts.AssertQueueAttributeName(str)
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

function asserts.AssertMessageAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageAttributeName to be of type 'string'")
end

--  
function M.MessageAttributeName(str)
	asserts.AssertMessageAttributeName(str)
	return str
end

function asserts.AssertMessageSystemAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageSystemAttributeName to be of type 'string'")
end

--  
function M.MessageSystemAttributeName(str)
	asserts.AssertMessageSystemAttributeName(str)
	return str
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertQueueAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected QueueAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertQueueAttributeName(k)
		asserts.AssertString(v)
	end
end

function M.QueueAttributeMap(map)
	asserts.AssertQueueAttributeMap(map)
	return map
end

function asserts.AssertMessageSystemAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageSystemAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertMessageSystemAttributeName(k)
		asserts.AssertString(v)
	end
end

function M.MessageSystemAttributeMap(map)
	asserts.AssertMessageSystemAttributeMap(map)
	return map
end

function asserts.AssertMessageBodyAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageBodyAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMessageAttributeValue(v)
	end
end

function M.MessageBodyAttributeMap(map)
	asserts.AssertMessageBodyAttributeMap(map)
	return map
end

function asserts.AssertBinary(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Binary to be of type 'string'")
end

function M.Binary(blob)
	asserts.AssertBinary(blob)
	return blob
end

function asserts.AssertMessageAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageAttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessageAttributeName(v)
	end
end

--  
-- List of MessageAttributeName objects
function M.MessageAttributeNameList(list)
	asserts.AssertMessageAttributeNameList(list)
	return list
end

function asserts.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChangeMessageVisibilityBatchRequestEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchRequestEntry objects
function M.ChangeMessageVisibilityBatchRequestEntryList(list)
	asserts.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	return list
end

function asserts.AssertDeleteMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeleteMessageBatchResultEntry(v)
	end
end

--  
-- List of DeleteMessageBatchResultEntry objects
function M.DeleteMessageBatchResultEntryList(list)
	asserts.AssertDeleteMessageBatchResultEntryList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertBatchResultErrorEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchResultErrorEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchResultErrorEntry(v)
	end
end

--  
-- List of BatchResultErrorEntry objects
function M.BatchResultErrorEntryList(list)
	asserts.AssertBatchResultErrorEntryList(list)
	return list
end

function asserts.AssertChangeMessageVisibilityBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChangeMessageVisibilityBatchResultEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchResultEntry objects
function M.ChangeMessageVisibilityBatchResultEntryList(list)
	asserts.AssertChangeMessageVisibilityBatchResultEntryList(list)
	return list
end

function asserts.AssertBinaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BinaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBinary(v)
	end
end

--  
-- List of Binary objects
function M.BinaryList(list)
	asserts.AssertBinaryList(list)
	return list
end

function asserts.AssertMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.MessageList(list)
	asserts.AssertMessageList(list)
	return list
end

function asserts.AssertSendMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSendMessageBatchRequestEntry(v)
	end
end

--  
-- List of SendMessageBatchRequestEntry objects
function M.SendMessageBatchRequestEntryList(list)
	asserts.AssertSendMessageBatchRequestEntryList(list)
	return list
end

function asserts.AssertActionNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ActionNameList(list)
	asserts.AssertActionNameList(list)
	return list
end

function asserts.AssertAWSAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AWSAccountIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AWSAccountIdList(list)
	asserts.AssertAWSAccountIdList(list)
	return list
end

function asserts.AssertQueueUrlList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueUrlList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.QueueUrlList(list)
	asserts.AssertQueueUrlList(list)
	return list
end

function asserts.AssertSendMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSendMessageBatchResultEntry(v)
	end
end

--  
-- List of SendMessageBatchResultEntry objects
function M.SendMessageBatchResultEntryList(list)
	asserts.AssertSendMessageBatchResultEntryList(list)
	return list
end

function asserts.AssertDeleteMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeleteMessageBatchRequestEntry(v)
	end
end

--  
-- List of DeleteMessageBatchRequestEntry objects
function M.DeleteMessageBatchRequestEntryList(list)
	asserts.AssertDeleteMessageBatchRequestEntryList(list)
	return list
end

function asserts.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueueAttributeName(v)
	end
end

--  
-- List of QueueAttributeName objects
function M.AttributeNameList(list)
	asserts.AssertAttributeNameList(list)
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
			return "sqs.amazonaws.com"
		end
	end
	local ss = { "sqs" }
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
--- Call CreateQueue asynchronously, invoking a callback when done
-- @param CreateQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateQueueAsync(CreateQueueRequest, cb)
	assert(CreateQueueRequest, "You must provide a CreateQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateQueueRequest
-- @return response
-- @return error_message
function M.CreateQueueSync(CreateQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateQueueAsync(CreateQueueRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueueAttributes asynchronously, invoking a callback when done
-- @param GetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueAttributesAsync(GetQueueAttributesRequest, cb)
	assert(GetQueueAttributesRequest, "You must provide a GetQueueAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQueueAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueueAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueueAttributesRequest
-- @return response
-- @return error_message
function M.GetQueueAttributesSync(GetQueueAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueueAttributesAsync(GetQueueAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetQueueAttributes asynchronously, invoking a callback when done
-- @param SetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetQueueAttributesAsync(SetQueueAttributesRequest, cb)
	assert(SetQueueAttributesRequest, "You must provide a SetQueueAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetQueueAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetQueueAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetQueueAttributesRequest
-- @return response
-- @return error_message
function M.SetQueueAttributesSync(SetQueueAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetQueueAttributesAsync(SetQueueAttributesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueueUrl asynchronously, invoking a callback when done
-- @param GetQueueUrlRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueUrlAsync(GetQueueUrlRequest, cb)
	assert(GetQueueUrlRequest, "You must provide a GetQueueUrlRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetQueueUrl",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQueueUrlRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueueUrl synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueueUrlRequest
-- @return response
-- @return error_message
function M.GetQueueUrlSync(GetQueueUrlRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueueUrlAsync(GetQueueUrlRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMessageBatch asynchronously, invoking a callback when done
-- @param DeleteMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageBatchAsync(DeleteMessageBatchRequest, cb)
	assert(DeleteMessageBatchRequest, "You must provide a DeleteMessageBatchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMessageBatchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMessageBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMessageBatchRequest
-- @return response
-- @return error_message
function M.DeleteMessageBatchSync(DeleteMessageBatchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMessageBatchAsync(DeleteMessageBatchRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessageBatch asynchronously, invoking a callback when done
-- @param SendMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageBatchAsync(SendMessageBatchRequest, cb)
	assert(SendMessageBatchRequest, "You must provide a SendMessageBatchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SendMessageBatchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendMessageBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessageBatchRequest
-- @return response
-- @return error_message
function M.SendMessageBatchSync(SendMessageBatchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessageBatchAsync(SendMessageBatchRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeadLetterSourceQueues asynchronously, invoking a callback when done
-- @param ListDeadLetterSourceQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeadLetterSourceQueuesAsync(ListDeadLetterSourceQueuesRequest, cb)
	assert(ListDeadLetterSourceQueuesRequest, "You must provide a ListDeadLetterSourceQueuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDeadLetterSourceQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeadLetterSourceQueuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeadLetterSourceQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeadLetterSourceQueuesRequest
-- @return response
-- @return error_message
function M.ListDeadLetterSourceQueuesSync(ListDeadLetterSourceQueuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeadLetterSourceQueuesAsync(ListDeadLetterSourceQueuesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeMessageVisibility asynchronously, invoking a callback when done
-- @param ChangeMessageVisibilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityAsync(ChangeMessageVisibilityRequest, cb)
	assert(ChangeMessageVisibilityRequest, "You must provide a ChangeMessageVisibilityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibility",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ChangeMessageVisibilityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeMessageVisibility synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeMessageVisibilityRequest
-- @return response
-- @return error_message
function M.ChangeMessageVisibilitySync(ChangeMessageVisibilityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeMessageVisibilityAsync(ChangeMessageVisibilityRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddPermissionRequest
-- @return response
-- @return error_message
function M.AddPermissionSync(AddPermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(AddPermissionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeMessageVisibilityBatch asynchronously, invoking a callback when done
-- @param ChangeMessageVisibilityBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityBatchAsync(ChangeMessageVisibilityBatchRequest, cb)
	assert(ChangeMessageVisibilityBatchRequest, "You must provide a ChangeMessageVisibilityBatchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibilityBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ChangeMessageVisibilityBatchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeMessageVisibilityBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeMessageVisibilityBatchRequest
-- @return response
-- @return error_message
function M.ChangeMessageVisibilityBatchSync(ChangeMessageVisibilityBatchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeMessageVisibilityBatchAsync(ChangeMessageVisibilityBatchRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessage asynchronously, invoking a callback when done
-- @param SendMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageAsync(SendMessageRequest, cb)
	assert(SendMessageRequest, "You must provide a SendMessageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SendMessageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessageRequest
-- @return response
-- @return error_message
function M.SendMessageSync(SendMessageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessageAsync(SendMessageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteQueue asynchronously, invoking a callback when done
-- @param DeleteQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteQueueAsync(DeleteQueueRequest, cb)
	assert(DeleteQueueRequest, "You must provide a DeleteQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteQueueRequest
-- @return response
-- @return error_message
function M.DeleteQueueSync(DeleteQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteQueueAsync(DeleteQueueRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PurgeQueue asynchronously, invoking a callback when done
-- @param PurgeQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PurgeQueueAsync(PurgeQueueRequest, cb)
	assert(PurgeQueueRequest, "You must provide a PurgeQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurgeQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PurgeQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurgeQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurgeQueueRequest
-- @return response
-- @return error_message
function M.PurgeQueueSync(PurgeQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurgeQueueAsync(PurgeQueueRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReceiveMessage asynchronously, invoking a callback when done
-- @param ReceiveMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReceiveMessageAsync(ReceiveMessageRequest, cb)
	assert(ReceiveMessageRequest, "You must provide a ReceiveMessageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReceiveMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ReceiveMessageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReceiveMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReceiveMessageRequest
-- @return response
-- @return error_message
function M.ReceiveMessageSync(ReceiveMessageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReceiveMessageAsync(ReceiveMessageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMessage asynchronously, invoking a callback when done
-- @param DeleteMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageAsync(DeleteMessageRequest, cb)
	assert(DeleteMessageRequest, "You must provide a DeleteMessageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMessageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMessage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMessageRequest
-- @return response
-- @return error_message
function M.DeleteMessageSync(DeleteMessageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMessageAsync(DeleteMessageRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQueues asynchronously, invoking a callback when done
-- @param ListQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListQueuesAsync(ListQueuesRequest, cb)
	assert(ListQueuesRequest, "You must provide a ListQueuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListQueuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQueuesRequest
-- @return response
-- @return error_message
function M.ListQueuesSync(ListQueuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQueuesAsync(ListQueuesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemovePermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionRequest
-- @return response
-- @return error_message
function M.RemovePermissionSync(RemovePermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(RemovePermissionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
