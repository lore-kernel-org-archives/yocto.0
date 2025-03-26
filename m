Return-Path: <w.egorov@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13C84C36008
	for <webhook@archiver.kernel.org>; Wed, 26 Mar 2025 07:13:57 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.131])
 by mx.groups.io with SMTP id smtpd.web10.16647.1742973215035118448
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Mar 2025 00:13:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@phytec.de header.s=selector2 header.b=L2IaNfEa;
 spf=pass (domain: phytec.de, ip: 40.107.20.131, mailfrom: w.egorov@phytec.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lq+tZdtpqsW8koepez9/vA4/2E7Z5z93J1YoskPQGd0qTEK8Z0iPtvHd1Llqvp5ZBwFvehfKFBmk909nAjOW3OHn0TN8hmq2MpIRj3UuxUcf74Aj+cu1j9VZFh5JdbMQskNaNI77Xjc6bqMHk8jgouAcKual9QrOcAeMLuhrPGs+fFReciuawCMqa3BhIFsW5wsEi6VS39PpTZHu2IrSTIPk/4gf60OOa0vTN6CBKckNOMEztMPyEyywxg5e8uqkAc0FOYCiHTvphBdq12XOMFLxZnsezk143mUkOeOgQqAk7CdSnfVQYKBfDaak3lxHHbunXGUdUcJSfMnXm9JExA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2FF/ivbhshCT5xBTfSUka5a/g14h1ogQWAaVHxFJjZ8=;
 b=q96T/n4HiMqOFzzJwlRA6iOYRN/VzDHnZ7/QAB7xCBZkNIF91F8Da/1Bz945NuSO3d4FfdHD+iuHrP+w1spr7uG/ykQ/un2RnazrrP+RXselQJSLrUFkq+A1eT/STp7TAFgAClJVGrpqlTQNECkFY8GPdOPC93G9Y92k+GNnTsDBZRXEFjr5buNdF1Lm+yUMP3vWl6F/Y9QmvJq6gE+bsmyCJRCw+sekkgnMIZn5qZKx9nwDsYZsvhehdgmZe4rhAXwRl+KkFo3I5aAel4zi/GsObRe08NYNHcXWIOtjDmSIIbIVTgyTF/ZNMqYBADOJcvkb6O1bvgTBTdi6y40Gkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2FF/ivbhshCT5xBTfSUka5a/g14h1ogQWAaVHxFJjZ8=;
 b=L2IaNfEaVqam07W68gZU0utkqF/H2rnZ9qn5jxPcv9JkDUk/vh3yzZBonKBw2RbOqx6/yt2AivgQM0fxu3CoU3M5xEuY0VHY4L0nEXw5vq6lUkEikNjp1dW161aJA8aCHRqdEOsTDIqhNacE7CIDWEMcWeTBB7b3YA/WkG2W2qefrdwiGdkmUYM92a+ydKnHjts74Tj7bRryZ0mOEawf1bXVdYZw9I3tQkbmQwybdKUMTzAbFs+z717cf7Km/OgLx5tIBVKUH0byxsIyQIqO+Sn7XS/+eupHyzXO4T3rjZjuTxonMnSatduykS+g98MV8zlfAiOG01pJeoPTopOR8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from DB9P195MB1444.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:33e::16)
 by PAWP195MB2471.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:360::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 26 Mar
 2025 07:13:31 +0000
Received: from DB9P195MB1444.EURP195.PROD.OUTLOOK.COM
 ([fe80::f79f:1750:8791:4336]) by DB9P195MB1444.EURP195.PROD.OUTLOOK.COM
 ([fe80::f79f:1750:8791:4336%6]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 07:13:30 +0000
Message-ID: <bcbe7705-b5ea-4745-9f31-ac5e2c638f17@phytec.de>
Date: Wed, 26 Mar 2025 15:13:26 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: yocto@lists.yoctoproject.org
From: Wadim Egorov <w.egorov@phytec.de>
Subject: Yocto git servers down?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR06CA0225.apcprd06.prod.outlook.com
 (2603:1096:4:68::33) To DB9P195MB1444.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:33e::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P195MB1444:EE_|PAWP195MB2471:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a353efc-6e9b-45df-f12f-08dd6c35b654
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q2xCNmhKNUcxUmtCT043Rno4ODgyRE5TanpkMmFlYWxQdDRrTWFDTUFlbUx5?=
 =?utf-8?B?Z2k5VDk5QnNWTVRUUklTQTVCc2JuaEF4TkQ2ZWFvNUFCYjRIK3ltaHZ2TTB4?=
 =?utf-8?B?KzhlUy8yb0pBUGgwd2ltaFlnUUxGc3FocVdnTEdHR2FJbGc2VXdBOGZxeUVx?=
 =?utf-8?B?WVVWbFdvYW1iQTlSMVpGTUI2UjZiTHZzR2UzM2Nxa3g1SDJEcUo2Qjl4L2xK?=
 =?utf-8?B?Wk51dWF4eElKK1NFc1RkQlZVUmlYdnZ4a2Q5QThaTVhIUnpnOFlRMVpHOGtx?=
 =?utf-8?B?d1RXMlArN0ZMRGRMc3NQSUdER0t3TFp0clJ5VXFwblo0bmsxTXZRbm5paVJP?=
 =?utf-8?B?SnRpU21SbE03QVpUcGcwMmVWRjh4N3hTVGIyTHNKWGkrWGRRSXgvRXZQSkQ0?=
 =?utf-8?B?OWt0czhUL29vcjMyNlBPcEJERkh3dy9LNzlCOG52ZWx5SjVPb3VBbFZrb1FF?=
 =?utf-8?B?dEpzblJqZVlrKzRoRFhVK3h3RnpONmRqdURtTkFLWFhCemZLeXpEQkNvb1d4?=
 =?utf-8?B?SUxiRFlaVFdzYkFYdGh0NWdqbEdkZjBEVUlFb2lXcUhrbkxGMU1ZampUWGxk?=
 =?utf-8?B?MHFSbC9BcW5qM2RTNGdiTUdBWW5uS3hUZlFhRzRIM2VIV3N0RlhrWHU4TE01?=
 =?utf-8?B?VzZ2TU1TK2Nad3hOenMzY2xLbUNwb0d0Y0JKU0NYYUorTEpURW9FVU1BejdQ?=
 =?utf-8?B?bFFta05ZZEtkY2h6alhaOHZqMS83QzRDUFh3bjZiV0JjZVJZU0IzR0hadWFp?=
 =?utf-8?B?MFpEc2I0T3RlZkVSaElCMDhxMk1peXFXT2NQOVA5eFh0UGtFb2FGaEZsRkQ0?=
 =?utf-8?B?dWlEdkYyTlVtTWZscEREQkVkekorWS9kYWgrL3pEY0o5RjlnOG42UVFZeGFH?=
 =?utf-8?B?NXBHbXR5WHNDLzhkNkZhTVI5S2NpaERwakJ0dXV6Z3RTVHFRQlZWZU52OHBv?=
 =?utf-8?B?Nlh2MGZaSEFxV1VxZzRLVFliSW1pY1FxWFk2Vk5YTmJZbDdEeGJ0VXhxcHhz?=
 =?utf-8?B?WVdTdm9lUHZYSThkTUVJWVI5OHY4a2dUNlIyc1YrRXByZDV5NUJjZjY4bytB?=
 =?utf-8?B?UnMzTCtPZnRQbDNFSDJ6YU90aWZpbm52N0tHRGpDQnpGcXdGSFJQZWIvY3Bt?=
 =?utf-8?B?U0V5ZDY0alRKSGp6bmhxcnBIcnpROTdoWWMrekdhQk5VY0U3K0lVRU9oMGxt?=
 =?utf-8?B?WmJUaXRWR2NIamxMVjNGZ3Flay9JamRzNnVNbEwycGJ5dW90MDhLNjlSUjYv?=
 =?utf-8?B?U3U2QzlybmpzeU01NUVvMnlERlhZKzhqUTZCQVlaMFZoQ2VMWVVINEpQQ3Rs?=
 =?utf-8?B?TGtBcEJ0WTFYRGRuNUVOdzNRYitrSzl3T24zV0M3RGFCRi9Fc0lQR0RxV2dS?=
 =?utf-8?B?VlJJcVFrL21HVytDeFJOKzVKbHNTamFWdktzRlEyRWdJUjh4cFhOaU5wY1pX?=
 =?utf-8?B?Mit0WkRWRzhwemdjOFF5dHBGT0J5Q2RxQzVtRVQ5cGROMDBhc2dCVUxlR3k4?=
 =?utf-8?B?VUJ0K29ZS3h6VzFHNXRzbno5aGtWb2RqU2hKVmFuVWI1YzNtOFg4MUYzQVpM?=
 =?utf-8?B?SElabks4cmgwRXJyTXVzSDJLUFJKanRldnk2YlE1M2lLTlRDRVYrNWgxUG5O?=
 =?utf-8?B?RVVld0ZKRmpMRmRHK1UweS9GOEJrVG5DYVhCdXJ4elF5M2w0UmJ3UVFsa2Jw?=
 =?utf-8?B?Y0hYYytTc3JZekJFWjN5NXdIMlZnSUJZdlpzL3hUd2RTMXlmNC9wcEpnZXdk?=
 =?utf-8?B?VUdFN0dxcy9HNjVDUFFwT1hXZTVXV3FldmJLYWVSQjdJK1pRODBQYXVqMm9n?=
 =?utf-8?B?aERiNUg2dDk3NVpvc1VLaThuaVFhUDdqaVd2UEs3eWNFNU9CTXF3RElvU0NO?=
 =?utf-8?B?Z2pvTHE1S0lJQ05MbmpXNXlGUWlRTkJCdzd3QUN3UzBEdXc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P195MB1444.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YUdyMXRPWmRvT1c4amNaNkhNVGNyREx5R1VSL2lEWW45czB5ZmlHa2s1QkZy?=
 =?utf-8?B?ZWxLdzVwM1VXS05PMFJEVk1BRk1QSzBKRVpYbC9EN1VVOFJZa2NBOVhKMkxv?=
 =?utf-8?B?RThyTGZPalIyMXVmNCtlcW5wOCs2TVdqS0RoU1d1R2diLzJ1WFNhc0QxNGNu?=
 =?utf-8?B?eHFDR3A0SS8wZW5SbUhNZXRkd1dFWThVMjVnSC8zT2UwNjVhdzFSUkQ3bjF4?=
 =?utf-8?B?dlF4QW0rY1NkRTYxTk9rNXliK0ZWZXpGY3ZmVzIxeGMvU3RWdHJrRlNVMzBa?=
 =?utf-8?B?L2JLWFYxQ0RrYVc0WnlUYlN5TGFtWUk5Y09BYno4aHkvcnFGamJ0NzJnWnI5?=
 =?utf-8?B?cWdMV253dWVNc0FHYUx5Y2Q0dFlCU05md0twVkhsK1orNnQ2WjR5elhNK3RW?=
 =?utf-8?B?bjlHam1KanhxRWdVK1AxMGhlRWJsTWVydmJqTzBHSjByb0lsazFHT3hCVWJv?=
 =?utf-8?B?R0RSNkFFcU9jdi9kYXpUVUVjNzVjQjAzV0s1eXBoakFIOStsWVRrMG1jWlZB?=
 =?utf-8?B?VG52VXVQUkw4czBxYVpHU25iam5BVjlzSWVMancvQytRUktJYzBlVFIvTGQ1?=
 =?utf-8?B?MXFWQnRBbml2dktRN2J1VDRjSWZSZGJ3YlJnMCt3SGNHWnFqWVNvUzlNYVVF?=
 =?utf-8?B?QTZwVUJ0amVsem96eEo3ZUFYMENaSGFNbnFKNkVmSlFvdEFuaUdnVkhLOHhi?=
 =?utf-8?B?UmtVMG1aWVRwSnRuSHNTZDZ3R25icFBIOUkvaVI3bUtNRFhqRUFJV2Vnc291?=
 =?utf-8?B?YW94VUJpeDhtOVVuYnduTGYyeVlRU3Fqa3lPN2FDUVU3RlVsQUU0WXRMWTNH?=
 =?utf-8?B?bG5BUG9KSS9pY0RDK1lGYlFhZDVhdS9hUENZMmpVdXg2RHFhbVNlZU5KT1kv?=
 =?utf-8?B?RzNTN1VqYTRpNnVmME1mSCtRS21CUE9VazhsczlyTVV0VW1QS3VnNFZEbUMz?=
 =?utf-8?B?cnpjcWN2VUQ0eXk5MWp2dFd0K3llUnYzU013VC8rWkZMR282YThFcys3NGRa?=
 =?utf-8?B?dWJDWjlhajFyUTNZWVZvaDF2M1lVd0xqYlh2MThmNjRVQ1R5TWpiYlUyRjha?=
 =?utf-8?B?Sjl1R2E0QjVXQldPbmNETWNLZWJzMlROWWk2SnY3Tzhnd3JHQnI0N1BtTnBp?=
 =?utf-8?B?VjdZWDl0U0JIZE5oS0JRWUZ2NDdrZ2xhcHdEdmZScTZqYzEycnJuUUQ1bHp4?=
 =?utf-8?B?b1ZmdFY2ditZdWMzNzdzTVEyVUc5R3d3OFRpc1NCc085ekhiaitSaExVeHJS?=
 =?utf-8?B?YXdBaytETmp4V3YvVE1MRER2WE42S1k5a3k3ZldRRUJXelRZTWtNNnZ3ck4r?=
 =?utf-8?B?UGg5MDYrYU52bjBrR3FkVE0zK0UzNlRqdVF6dldCYVo2TXBpYzF0VHNaV1My?=
 =?utf-8?B?dHQvVzR3NnpxRW5jTEpkRXdGT1p1bnloZ3laS3pucmdITGM3UkJaQTY1bFJz?=
 =?utf-8?B?REdOb3NKbG5CL2RrMzJFVTkxSVpTR0ZVeGtTSjcyVk5zelFRSVhqajZRRFds?=
 =?utf-8?B?VFRBWnBldlNKRnp2TFRCanM5NW1rUlBUVXpHOFJUWVhwc1luc2pObVc2bGFr?=
 =?utf-8?B?UFJETkliRk9OeEtoMVlTQ1ZiZnJPeVFpeDN3M2ZIS0RvOXNhTndKaWVueUlz?=
 =?utf-8?B?aFRKeVJtWUhzVEVqMnM1NDJibWJsVTgwY1h1a2JpYUY4a01WSUJTZHByRTB4?=
 =?utf-8?B?eTNqYlJndzFiSm1zdmxQSzJ2ZklpR0RwakJIbGZTT0VaUjZmK2M2OTBOditB?=
 =?utf-8?B?Qm5Fd0lWeUZ6TGpwQkttSjNydm5QQnpDQ05LclJQM25QbXArbFBwREh5cmlz?=
 =?utf-8?B?Tko4b1Jxckkrei9Dc0M1Ync3VHdmQ01hOVR6RVppZjdzSXFiUnRiT3ZjU3da?=
 =?utf-8?B?SUMxaUhzajdKSWg4L2RWSjl6Z2pIQ2hYTzFxVElLblVWQS9ydDJ3bVdRbGt0?=
 =?utf-8?B?TzVRNlIvdkdYQ3FWNUxlb3V1dGVJajd6UFpwK3Bra1VZdW53eEdQc2dCZGRq?=
 =?utf-8?B?TkxoQkZ5c3BuanNsVG53RkMvYndFRS8ySE9lRjRhNzg2OFNoZ0xkZDAzdERQ?=
 =?utf-8?B?VEVNSXZJUFIyUDhhRFRmYnBaWkVUejZkQWQwSXUwazhXWG1POTFNWWwyTnFh?=
 =?utf-8?B?dlFFaXpJREYyeEhOWE1xT0FCRUFUTEMyK2dTWWZDclExZ1BJeVBwMEdhWGdj?=
 =?utf-8?Q?MfHqLia+ye0yECaQSHcNSiVSMn6AzPvccm6GE2C722qN?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a353efc-6e9b-45df-f12f-08dd6c35b654
X-MS-Exchange-CrossTenant-AuthSource: DB9P195MB1444.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 07:13:30.8932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jmjAXyIXiGsb4qFx/mrPT6KkshYOl1YELjVpg4iK6d6EH57sWgN9729WvbeZCyNp8HmaHRbGHE0URoPAv+td6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWP195MB2471
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Mar 2025 07:13:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65020

Hi,

any idea what is going on?

git.yoctoproject.org seems to be super slow or not reachable at all.

Regards,
Wadim

