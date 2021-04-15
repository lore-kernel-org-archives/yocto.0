Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.40])
 by mx.groups.io with SMTP id smtpd.web11.36.1618519728087250234
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 13:48:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=C0446g3w;
 spf=pass (domain: windriver.com, ip: 40.107.220.40, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZVP0KY+z6IpADZeXcSuAMlrrzrdpQQ1x8tuudb5yPR/HCgEIRsCTudcizzenRe0aTopbmVePbiICIrc3msKX/t3u2TO08gTghO79iJZgvNJxopNFn2yBMIbeU4A6VWCdi6v6Qny5qdtIquE80goSpi5XNqkl/O4RwBlmxxwslzNSy73cJ9d/kGc6Tp+Si5OCrWZB0/8kGE+/XzLWIFM18jjQCbu/ZBrlHJ/u3bKYuM+OlRzgH3wkxbPRIFc/v3OhCDNdqAnplgJOmPugARnYyE0eneu535PQgDYcAC3La0w9rxgobvx6g343ujApWyeCh74qv37UGEn2akRak53Nbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4Z6DJxwa3cexFnzRUTlxfhzxQ7RyHJymmFeaTole5s=;
 b=dJTMy/3Q1TTUxH8WHlzfE+U57/xwG8hZBcNmc4MxUu7QGSZ23+nZGfQfXui5maCIq6NdNpE8y5crxLIt2GygAxWohJddwEb/zLi3492YMMt83/vcdzFNZIvP79zsNn+BLA+Ec1I+jAlpViXC3BqZZgpX+zHQAUVWr02nRgq1zvRgiKNSVpHc6euSZLvOoN7f1WYp5AnqxyAab8YylGmh3WnpUNv35sZJxMPSLhJDUlwFCKAaDJ0U6Int7Wgm4eHWvivU8IBO2fTMMndPb1x6n0hKJVSmzZ0qxXdjqXzFI6onq+ky2NoVCiXAd/AebvQEIstNjBFHfyB2IbG/RjrHlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4Z6DJxwa3cexFnzRUTlxfhzxQ7RyHJymmFeaTole5s=;
 b=C0446g3wVQta25gCrU0v4AAHYgWpwega/oTjErWz4BwJET8Fcaozwb0ClKOhwNQJ54zQgkvkhz/44AMhzIgBV25t5mAEy2nOVcjKMs70SvBkAJ6BSlAErbWtci+I3aErzTU1d3eT5jAc3HfIQujNCCTYa+dRSIdnkGltowq6elw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3993.namprd11.prod.outlook.com (2603:10b6:5:19c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Thu, 15 Apr
 2021 20:48:46 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4042.018; Thu, 15 Apr 2021
 20:48:45 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
From: "Randy MacLeod" <randy.macleod@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Sakib Sajal <sakib.sajal@windriver.com>, yocto@lists.yoctoproject.org
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
 <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
 <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
 <426696e1-bdae-f49d-cc6a-e375aae8586f@windriver.com>
Message-ID: <ee652d79-8c00-0606-bf6c-a3fc793b4a8b@windriver.com>
Date: Thu, 15 Apr 2021 16:48:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <426696e1-bdae-f49d-cc6a-e375aae8586f@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR06CA0024.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::37) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR06CA0024.namprd06.prod.outlook.com (2603:10b6:a03:d4::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Thu, 15 Apr 2021 20:48:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7dde8c8e-8bbb-4050-e96f-08d9004fdca5
X-MS-TrafficTypeDiagnostic: DM6PR11MB3993:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB39930865CB1A908695B6D36EF84D9@DM6PR11MB3993.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	86LpIEMJ8glGAE9KQsZEpN+WGMybKt0k+OHRDjshOgDJ2Yjxa1RxdIt6YsLNQEX831D9j2w0iKcuX8w9TOqya3CmLBLHB88Aezz4QS6Sr5pGRXnlAhghdGe+zDu6gnkw994ICq+r9lYWSY+fl/Imr8GyrTOsbGOFi2UVZeKsDH93uNs1SxaN9WuRFFzbtJ02KI5wp8P+6SGkPk2rOZ6tDmupsrFvNxhnvKjMp/hxQW8fRYyb5X8a70iezEudJ8ddKamBDPiVcp9P42mre+l/+AjVssHxbN1aK8+3kQLE5pZhgMWRTG3iIAVwyra56CfbJ/JyB4xsFT76XhUjKqNGHNPx5DndSzJBp0hIG6cLQAy5VgZrg37h47cptmI7LdX4awbURA89zgm8TcLos41emk3MAJIqSM65mTF02ji0IFe2agzSVmOMPVggf93dUxMQ2eonySfGPhx8YH5Tj4ynmlylevKP/dA7xO2GEOYSBMwLUHD4WkJ3O9Vb++GWDtS4mCzaS1QbUxXc9gJ4dCKRmzLDRhql+ztmV2XI3gmEGdX9/eicaG2E8BFhBoLgG4HixhmaMFE+WDDarSIzHd1m1tfZOo4c7wyUK65CQIG7wkl6tm3vLUNk9l9wX90tE3mNFyMqmETsdpxlENO+AnvYJGaHFJX88pNE82iJlNTUvPHh/vinaC+dJsydtno5cDVyUwLvyfrhJNNnTtZJvhfyV0psk1inwG6HAS+oKq0bm1ouLpTnOL7eGAqSZZmqThVBWtnVPWS5JDvgj31pm2fVbT2120HmKfv08t/EdiKe9uk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(366004)(346002)(39850400004)(136003)(83380400001)(2906002)(16526019)(186003)(36756003)(2616005)(956004)(8676002)(26005)(8936002)(31686004)(6486002)(5660300002)(235185007)(66946007)(66556008)(66476007)(478600001)(966005)(53546011)(38100700002)(33964004)(52116002)(38350700002)(16576012)(86362001)(6666004)(110136005)(31696002)(66576008)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?VDFZV3EvbFB1WTI2RUl5YnBuYWFIZzdCRjg3M2VJWW5pMEY5akI3T2tHRG83?=
 =?utf-8?B?NlAzZ0lwU2dTYnZBZW1uNnlER0lTcU84eXFnb1VLbElSczR3Y0V1ekl6NTJv?=
 =?utf-8?B?L2FralBKNHZEdCtub2xRSFpXb0xLS2FtekMzZVFndVh2VEZUb3dSOTJoZ3Nj?=
 =?utf-8?B?UlIwUHo3QTU2bUdxb09iWkJmK3RjODVRejdxeXBKM05hOHN6a3BEV1F2WDdP?=
 =?utf-8?B?RzlzWHV1dFJ1aTU0Z1Qyc1Rtc3k1ZkhYZXNKbkNBUWVqS3NPMXNFSGwva2Vo?=
 =?utf-8?B?bW1SU2VEak53L256ZFdjVTdHUk5PUXVtNlJvaEpMcXRQVGdFampqcTR2bWR4?=
 =?utf-8?B?ZkNXcXcrRlZtdWN2anNsUFJMZE9qZEd3NjFneU9rTzhYU09JdndGNWF4WkZv?=
 =?utf-8?B?VzRWekhaMDRkMVkveW02cHoxWkNlNFBkNld4Z29OQ2pub0pDYVNRaGkwZTcx?=
 =?utf-8?B?ZjNBeFdCR3VBdHVISlpkcW1lOXZaeFo0UStwdGYrZEVFTkpQSlhTQVZjT1p2?=
 =?utf-8?B?V2RIa3pPYkxOdXVoSG53OFJGcGpoaWl6enNCZnViSUZCSCt3alhDVHkzellu?=
 =?utf-8?B?Y1JtMDlKQjlIT08rU3JKK1ZZL3NDMlA5NDhLeTNqTDl4dzFMZmpDUWt2cG9x?=
 =?utf-8?B?U1VNMVdjZmRsWjZjcjR5ZWVrWWpyb0VuTENUWmc4VmloNnUxWk9MTTJVVklO?=
 =?utf-8?B?d3BNdnpNN3k1bk4rdmwzYkFIWkxhajVFVEh3bURnald5dVdxNDRWZnZQR2o3?=
 =?utf-8?B?MDB0TnZ1NnNvb0FPbHBPc3RieVpHWUZ4RWsxaCszSkJTS213WkZ5QjFyemhJ?=
 =?utf-8?B?dkxPUHZvQ2VlM250NGlvbDFmQkk5SGlwbVF5RWNrb2ZjMWwreXcyRmYyNno2?=
 =?utf-8?B?UHR2SUtVV09rNWliUm9KWkJyOCtnTEx3dHJzc1lheDR0cG0rbUV0M0k5dlpI?=
 =?utf-8?B?LzJpb3pDU2VhbDl4K2p2cVoxZnZVRjlsazAxdlo2dXd2WFdqdGFRWllWTS9Q?=
 =?utf-8?B?aGFLYTFvaDFjdVJwTVRDQkxBaG84ZVFmRG5JYUVTdEhZQmVUcU5PdFdET0hM?=
 =?utf-8?B?UVl5ZnZQL1RrblJCUGc0Q2ZOVVZSdGtja1BXK3FJSllvNm4za0FWSllJbmNI?=
 =?utf-8?B?U3NOREZUZTlEeGM4bEV5UDJiSzM4bWJWNVI3aDhWSWU2dzhBNUFuYzRDZlYv?=
 =?utf-8?B?MHEyWlB1V1NmemNiVGt6Nm9GMkY2NzFyZDZwMW81TGptSnNGSFlOTHNhS3Rk?=
 =?utf-8?B?MWIyb3RmOHlsK1hJN0hWR2QxamZ6dWtVc2h0R245SzZjK0xvNmJ3dHRqLzEr?=
 =?utf-8?B?RmtUTmFWbW9KMmp1ck52RVlVWUd2Q1JMN0llS3VXbXNBcDdkb2VIOGc4dyty?=
 =?utf-8?B?QzZNeVAyY2Z1dXV1QmZ6a0cyYUtBSXZZcmR0Q0FiWXhudjcxeS9PSXBUbGdW?=
 =?utf-8?B?Z1JYNWFGV0twU3ZydHBOcHRXK0VJcEtoNVlpL0dLYmEycW9mcGRxcjNvUWRN?=
 =?utf-8?B?d1V5c014bGlHMGo1dFU1dFVLc05GYUFlOTZ6azF3cHQ0M3ZYemlKd2NqaUl5?=
 =?utf-8?B?OXZFRjRJS2tEN1YyVkp6bzlsSWVoMVNjUUdSc0lJaTZaeGZlZlUydUU4SVN6?=
 =?utf-8?B?TEI1aUxwTjZBR0p3MXAweDA4MFlNYjlZaGE4Qk5aNUZOc2xYalhDUmlUMUVm?=
 =?utf-8?B?RWZsVis5OGhWRHp3cXcxK25aOCt2Qld1emlXY1JiN2lFQ2txVlk5UGFHQ09Z?=
 =?utf-8?Q?LiDiDjHtOU3XKfdR4RLYvqhZX1/2mNqHAqDu459?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dde8c8e-8bbb-4050-e96f-08d9004fdca5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2021 20:48:45.8450
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /JDBuIc/t9g4iugYuJsqAu0attZgdEpYrKOgdNQwVRQdzNhUmlrTVLoQFa4cGwQ5fhPD2iTz8srQ5CyZ/3IFp5ZhWXp/ovAKEjLQCRWdGVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3993
X-Groupsio-MsgNum: 53149
Content-Type: multipart/mixed;
 boundary="------------12DC779796A8D4F16ED88D64"
Content-Language: en-CA

--------------12DC779796A8D4F16ED88D64
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2021-04-15 1:55 p.m., Randy MacLeod wrote:
> On 2021-04-15 11:55 a.m., Richard Purdie wrote:
>> On Thu, 2021-04-15 at 11:31 -0400, Sakib Sajal wrote:
>>> On 2021-04-15 9:52 a.m., Richard Purdie wrote:
>>>> [Please note: This e-mail is from an EXTERNAL e-mail address]
>>>>
>>>> On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
>>>>> collect-data template can run arbitrary commands/scripts
>>>>> on a regular basis and logs the output in a file.
>>>>>
>>>>> See oe-core for more details:
>>>>>       edb7098e9e buildstats.bbclass: add functionality to collect 
>>>>> build system stats
>>>>>
>>>>> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
>>>>> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>>>>> ---
>>>>>    config.json | 7 +++++++
>>>>>    1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git a/config.json b/config.json
>>>>> index 5bfa240..c43d231 100644
>>>>> --- a/config.json
>>>>> +++ b/config.json
>>>>> @@ -87,6 +87,13 @@
>>>>>                    "SANITYTARGETS" : 
>>>>> "core-image-full-cmdline:do_testimage core-image-sato:do_testimage 
>>>>> core-image-sato-sdk:do_testimage"
>>>>>                }
>>>>>            },
>>>>> +     "collect-data" : {
>>>>> +            "extravars" : [
>>>>> +                "BB_HEARTBEAT_EVENT = '10'",
>>>>> +                "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
>>>>> +                "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
>>>>> +            ]
>>>>> +        },
>>>> Is the template used anywhere? I can't remember if we support 
>>>> nesting templates in which
>>>> case this is useful, or not?
> 
> We were using it for testing on the YP AB and thought it would be
> useful if at some point the monitoring was dropped from the
> default config.
> 
> I think we can just add it later if needed.

Richard,

I think that the web server for:
   https://autobuilder.yocto.io/pub/non-release/
runs every 30 seconds via cron so if you are happy with
this crude dd trigger once things have soaked in master-next
and we want to gather some data overnight, could you merge to master?


I ran a simpler test with fewer io stressors from:
$ stress -hdd N
and have attached a graph with up to 3000! stressors that
we looked at this morning and another with up to 35 stressors.

It's a crude indicators but once we get beyond 18-20 io stressors
on the system I tested (48 cores, 128 GB RAM, 12 TB magnetic disk)
dd time become erratic.

Running qemu from tmpfs has clearly helped.
Let's gather some data and decide if we want to spend more time
learning how to monitor the system to tune how we are using it.

../Randy

> 
> ../Randy
>>>>
>>>> Cheers,
>>>>
>>>> Richard
>>>
>>> The template is not used anywhere, yet, the initial patchset enables the
>>> data collection by default.
>>>
>>> I have left the template in case the data collection is removed from
>>> defaults and need to be used on a case by case basis.
>>>
>>> I am not entirely sure if nesting templates work. I have not seen any
>>> examples of it, neither did i try it myself. If nesting does work, the
>>> template should be useful.
>>
>> I had a quick look at the code and sadly, it doesn't appear I implemented
>> nesting so this wouldn't be that useful as things stand.
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
>>
>> 
>>
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

--------------12DC779796A8D4F16ED88D64
Content-Type: image/png;
 name="stress-dd-80.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="stress-dd-80.png"

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
4JEtpAr5HuvElIkpHVdEFzDmtc4FVrEhXAWpSL7H+jBOQn29IDrlp9B6qcdKt30Ub8vVyYVkTbL/
LClAvsf6sA1GyGYxQq6D6KubMwYheaB4jMEgTUHx2OCD8Zn+gyKa4ALjsXtnpQjJA8ZjbrLw0waQ
aAILjsfGz/qZEBzRBBVIj0GKJlBAegxSNIEC0mOQogkUkB6DFE2ggPQYpGgCBaTHIEUTKCA9Bima
QAHpMUjRBApIj0GKJlBAegxSNIEC0mOQogkUkB7LEZ2zbFk4cktKj1x6fU3IEZ2zbFk4cktKj1x6
fU3IEZ2zbFk4cktKj1x6fU3IEZ2zbFk4cktKj1x6fU3IEZ2zbFk4cktKj1x6fU3IEZ2zbFk4cktK
j1x6fU3IEZ2zrICdM3lOZ6XJPjmic5YVsHMmz+msNNknR3TOsgJ2zuQ5nZUm++SIzllWwM6ZPKez
0mSfHNE5ywrYOZPndFaa7JMjOmdZATtn8pzOSpN9NnelJqQGsekIIYQQQgghhBBCCCF3Wb87oCnL
qMPov+qmJcM0dIeR/YjtBx7nEduPjMvwHl6f5skY3Hlw961on89r8N+O1o7h7ezRfmS3qV8dBp5e
4l4bG5bpu8n8K9aQvygOn79Rp2+Amr83sBmjC0b7kT/+HbH2A09/B/5K+5GRCb+5rxnzFwWO/mVa
vh+tEZ/JKc1HnueL9gO/pqm508aGZfMlyI35c8r0x2yujRj8qM1HXj5C0Xzgv1fX70q1HxmYjsFw
u7sdXqs5FK1HHt6fcdqHaz3wy+3ETbNVh5Fx6RgMd8jf/rVyQ/Xwp/uzPY3XeuCX+xP07rOxgekX
jOl0bfPXah219cjrhm498HRYMbgdufYjA+OPxTqcqvDvJfij/oYnxdaPTLceeQ1G64H9RnanqNuP
jEyXs1JLLoY+J0rcH83mI08b+m/U5gP7OeLNs1J5uK3VfmMNf0eioxva2aV5LL1TGo/s32Jzu/qN
B/Yju1GbjwzN+Gn/mZDpje+38+eUkPjp2kzBaD7y34aePmLQfOCOIxNCCCGEEEIIIYQQQh7BOJ9G
du94xM/NDKknQq5etrY5ib2O1PzUNiERn+lCgvkNKo1hvvZnl89w7U2t6aOw63+Wq4w2rYT0YPRX
v85XSmuc+PCjeFc/ubKYTQTWkRgM0ptxdFe/3gxGvIgIShIGg9jk7xhjusLmLxjTccJ0zOE+hvf3
0x84/Nl1PhAZpp+uLsb1S/ztba2feJmOVd5vvzq3nO8U/VhxH7tbVz5/OHb0N1JwbV7HOuRyJLOs
ZT4w2vtByCWcg93O1BQKZ0xnSmf0z3Q1nHvm7Sz7mQ4k/iz7dwTwWT5B//n4+Wb9Uz/fDsVdMDQv
5zst984Qt9B4L6vwd26YsrAeebhrf95/sV2GXJd1H4ycV+gug5jGXH5sGgm5iAuES8YmGJsH03/+
rD5MAXkHOzr+s6xvF4Rlbc63y/+nzy/OnVywhsnO7seXaV0NvXzmAAAB9klEQVRu2nCrct2m/bpl
hClgrs/UsAw33fFgcJdYu/iO65jTj20jIReZdjj+3HYQjJcz+NxlDcb0wM0HazDmk1zfYCyd/P7a
8mNqmc4UL8GYfv51+/Z0TP9z88iymE/aPNoy6Hxizf+IGgm5hneu2286DMbiuW0wXP0G4+/hOoOs
a3K43aLvD/fobDBc+QYjELLqmMacf8SNhFxi/pP+EXmIgzH4Ow2MgSH9ex/hrpRb4hPae+nkdmze
648vazDmiWa9ncGED8ZmV2oS4v43+D7+zUB3VOF/bBsJuchynmdx8fzgFQVjcqc7JF9c6ju58lmy
4xYbFnsPi+l9p2kvZ1x+fFmCMQVi2mn6BNmZ1rvee2Md7u2OxV0fd3pgWMZchg4bCbnGOF3i93J7
Ni/nzPffse4wNf45bHDnYf+sOF+T9ve/6b/TbWLmTtMzrsmvxZ3Bcs+6ZfxyvtPLW3n5seJG8gv6
c19+NKdhXd04na7yF8f54ZZ1ut5zz++PbSMhT4R/8wlRYDAIUWAwCJH4+9ASQgghhBBCCCGEEEII
IYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGE
EEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCEa/wFEnNzrQTDFTQAAAABJRU5ErkJggg==

--------------12DC779796A8D4F16ED88D64
Content-Type: image/png;
 name="stress-dd-3000.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="stress-dd-3000.png"

iVBORw0KGgoAAAANSUhEUgAAAxgAAAJkCAMAAAClNHdYAAAAOVBMVEX///8AAAD/AAAA/wAAAP//
/wC8j4/c3NyUANMA////AP//pQByIbxnB0hA4NAAiwDAwMCBgYFCQkITWeDyAAAACXBIWXMAAAsT
AAALEwEAmpwYAAAAE3RFWHRUaXRsZQBmaXJzdC10cnkuYWdy5pNPEwAAAA90RVh0QXV0aG9yAHJt
YWNsZW9kRL6HRAAAABV0RVh0U29mdHdhcmUAR3JhY2UtNS4xLjI1jnpa/wAAIABJREFUeF7tnQmW
ozgMQJOeCyR1/8NOedfqBXBiU/pvpgKSLEtGCpCtHw/DMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzD
MAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzD
MAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzD
MAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzD
MAzDMAzDMAzDMAzDMIwTPKmgxfAAw1iDp2HMhhbdDsSg+2IvVn324wMys+2HB6xmPzxgtr0+QFWs
TAw6PPz3H9BUGc51dMBs++EBq9kPD5htrw9QFSujN0Y1napSYnTAbPvhAavZDw+Yba8PUBUrozZG
/dKwphMZHTDbPgwYGDVg6pltPzxgtr0+QFWsTAw6PPy1M0a9+TH9loHZ9sMDZtvrA1TFysSgw8Nf
u8ewxqgwaq8PUBUrc7Axhpm9OMf8D4waMD3EbP9fnEBVrAx6qfnPNcYAsyeY7f8rE9zlfQxrDJ3Z
E8z2/8UJVMXKwMb4b+vGuHAGyZUku5LZ/r84gapYmbmNUZZk9uJcecYWXQmiS5nt/4sTqIqVgY1x
+aUUqLDZi2NnjBbfm0BVrAwK+urG2HNJjIvZsgrmNoZhWGMYhsj+jWEYE9iyxrYM2tiKLWtsy6CN
rdiyxmDQ17+PYfwh/lFBwhrD+MP8UzvDGmMDtjxIO/BPP2VsueZ/rDHET3sY5/FNoXTGlkv+xxpj
z4O0A/9ufCllGCfQ+mLPGtsyaGMrtqwxFPQfuJQyPo81hmEIWGMYhsD+jWEYE9iyxrYM2tiKLWts
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

--------------12DC779796A8D4F16ED88D64
Content-Type: image/png;
 name="stress-dd-35.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="stress-dd-35.png"

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
ItJF0Owh+NMAjJlFe2wQxjUxrg6naCvxMyMBsWAIzTGC5hhB00XQ7CEWgDFF4EBQbmOh0/8vLHpZ
6gcbhoi/SZZW+Lkw3vkRE2I7Gftqwz2GENvJ0mNaGOJQsvTYdVoY93EnS9EiL2l6rPmqlBA7kqbH
hjuL6W4jUdEiLXl67HaffyckT9EiKyl7LGXRIhUpeyxl0SIVKXssZdEiFSl7LGXRIhUpeyxl0SIV
KXvskqvuRLUmKrVzrX1n74QWRi8Sldq51r6zd0ILveqOnwAABStJREFUoxeJSu1ca9/ZO6GF0YtE
pXaute/sndDC6EWiUjvX2nf2Tmhh9CJRqZ1r7Tt7J7otjK+ftcukKWftM3tntDD+dZq1y6QpZ+0z
e2e0MP51mrXLpCln7TN7Z7Qw/nWatcukKWftM3tntDD+dZq1y6QpZ+0ze2e0MP51mrXLpCln7TN7
Z358/48QPbBNJ4QQQgghhBBCCCGEcHj9Qb7YTN8p+u96e/4jMOWUJqg1UanH8v4H+SJzvU8vh9/v
j3+aY8G4Dq/dDzXGr/V6v90vw4qIX+rRvP9Bvshcp79bMH7n7vOb2qPy+O/MYxlfM9Q6Lt9LjtN6
MO9ffR6a55/1GC5e+UbqmDy/Rv6Wodbh4g9lJij1YH78FZnQTDWO9/vP/w/N4z84SWodHkgnKfVA
tDD6MDxgT1Hr9T7cWaQo9VC0MPqQ5T/D19tteJ0gQ6nHooXRhfE10Cy1PipMUuqB/PiDfKGZFsb0
MkH0V9GuY305ah3XQ5ZSD0SvSu3PtC6uKWr9N7ZAllIP5P0P8oXm+XBvWMjB1/H1fnswPHIPX+tQ
3Lgo4pd6OG9/kC8ywzu0w4Ubu84eDMX4xvdleLwevtZHqc8Kw5cqhBBCCCGEEEIIIYTIwO35evPw
7oE99uTqHXhn64fYfrzaPd9ShtfAxd/mPn5ebvwYWp3y8b+P3K/b3uIaftfotfO8pesPK8QZ3KZP
kv7z/4u/4Lck8fa/O5nlxxKYb0kLQ5zN7TZ8kvSXC8NGsFBctDBETB7PMS7DyngsjPF5wvic43Yf
t9MTh0e7Pp+IXMft8P+lcafEdfiVk+fTgvG5yvDbEiU3DTKbmccSeE3+/F3HR0XP+a9THfNNlmcy
ZZbnE6NPGyE2MXTw8GBqXBRDYw5NOTT648nH9EGc2/A7QcM/hi8quDw69HHg+YTkPnxRxrCQyn/q
n9+bchu+zmDKTYPKN2ngCzUuZYrpWxDGtTA/83iI++WxbMtNztnhlwyfE17KbZbNDynERoYFMayM
Hwvjxz/GnUerX8cFcnl7oDM+YR9adV4Yw4r4V/bH3wV8DhoW1nVs5/FLBGbGuYa7jWGqYdj4uK7c
wrjA5k/JlZsbmn749fTHOhl/PbLc5rj5KYXYyPiA49FtjYXxr/wq6fPA6x/D/cG8MJ4vcr0WRhk0
PV4rm9GMrxSXhTFuH8NeIwfGveF+pMSmlfa8tXKjzxfWpo2RQmxj6tzhcVNzYZSe+7kwhv9/LYzH
P+d7kHmmgeFh0Wsz/Gvpwhj+77Uw3gqZ6xhv87mxUohNPP+TPn6n3seFcR0fnQwvxM69N7338f5Q
akjc39u7DBoe2FzmzYt5YTzvaKb8z4Xx46HUWMiwd53GTG8GDs8qps1PKcRGyus8pYuf//hnFsbY
ncNT8tKl06Dh/+5l7Qyxa2nva2n6adD4KOdWNi/KwhgXxPig6f62dsZ55y8NmW/uMjwXH8YMLw9c
y22Wm36XQmzjNn5c7t/wyObf0JmXx3Pd6ygfHXYdXod9tOLzE2qPvXH3Mr/cMzwcuk2Pj6ZZhlew
hqNDZspNg/5NrVw2M8MtTcHpta/p1oYa5ulu48tVo3jeXJlzGP0c+dr8lEL8RfTffCEqaGEIUUEL
QwgyPukQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBC
CCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGq/AdQdJWC72n2
CwAAAABJRU5ErkJggg==

--------------12DC779796A8D4F16ED88D64--
