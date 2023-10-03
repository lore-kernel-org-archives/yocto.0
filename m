Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5C0E7AD58
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 14:12:00 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.76])
 by mx.groups.io with SMTP id smtpd.web11.109018.1696342318081683129
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 07:11:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=CZClwyJr;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.76, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5q8WQ73lfVlaqHU5sjBD0Uw5+G5Mti6YrpZ0eUCujxTPMYi9w5fBWrt2k3Zif1OsL5DhTZ1c1sUqkV9yMhda8/+KsTZ1mNfMFxKnYG3jZXmu4BRuMyMv+WIo9kbCNZpr61vNKsiZJP7h8UrCe6ELyYE7tF2aD4TlAYibPAvpsUFzJsaun4CBdqK5nVrll7pv/TF+GE3CIP3gKN9aHfMXm9mEC6TRXmI/OxYcCVq8Pi+PhTok/4RSvW6pELhN9wVJXApHD5H5zHwuSIAkmM3g/q1+tpLqTQtJXHRHNwXid/AzhookFd3CnAkgSO19rSf87gYwAkryTVf6duwjMot8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9U46uPXz3MdvfJPWQ4ReJRp9iIjIr8mUJjP/ccOWIs=;
 b=PvVcNQrS6Rj0mD3mbCI22uk8f8EYD7+tT/VSCLhEOil4gqXff984mIbnw2Vbp7xusmjFaQ74SC+PXB+hFA75X5WkTjoSP9STXbUjpVODw/UtiqlJ2X6TsupQRQ426uL9P4oxoM8E/oJMPloMSmGN0XA1BPfXstKI4xuDsmp2yOhfyDYynKhWGyDqYGWxIc7b82uaS6EAeZzVTBdeBv1/Akc34/Xr4SqBc4EqKtKStu83f7uNDx44EC2mQZh1K8K49F7EjY8d2U4eqay6TD4ZWh2XTqByfHp2zpu8boRfgzr0zr1tv2Q6bzXWyQSv/Mqy1i2PLQLdBbAoHa+vPNSutA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P9U46uPXz3MdvfJPWQ4ReJRp9iIjIr8mUJjP/ccOWIs=;
 b=CZClwyJrC558dR9LzBbmPQYQUuH5Ej9Ywm5KglSMv7aadPZ01uC1RCRsKty+1Q2/VMM1ZEf2ZB/htGO/HwBXr6+82mu3y9auK+iQ2G9H5OEnAEyQoK8nLw5GRgRob8r1rN+XhdYif5a7C0s0cwJwBMnlPpelx+zgUNSILZAOFoVOSULEQO/DXZwxKJC/mf91VZ6AWHl71OyJJhMoFPkruqASHCs9nP7b+7X7JpzTktYub9FRFABtt9Ox7K7CWKTyoJ6TIfmKaWYxkwf8hOgQVRoITWlawvQ4lkClIQBfbLYgGD8Y7z0VjBl+6D25qsiH2C4IKKO0X+9hUUtqPTYYxg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB9380.eurprd04.prod.outlook.com (2603:10a6:10:368::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 14:11:54 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 14:11:54 +0000
Message-ID: <77cd287f-0107-6ef9-f7a8-596edec599cd@theobroma-systems.com>
Date: Tue, 3 Oct 2023 16:11:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v3
To: Trevor Woerner <twoerner@gmail.com>
Cc: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
References: <20231003004307.93133-1-anthony.t.davies@gmail.com>
 <847e16c0-a63a-fc56-9a1a-214e53b68b0b@theobroma-systems.com>
 <20231003140336.GA7989@localhost>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003140336.GA7989@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0038.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::14) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB9380:EE_
X-MS-Office365-Filtering-Correlation-Id: e192f217-5b8d-4b48-6a58-08dbc41ab218
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FPe1fp0/gRpJA4Re0aWZ1MXopI8kNOWJoy+xl3tH05KH22prF5MZQOPhWAf0BMSpWBvbP/jpv/8QA0k/JMg6oFzdKmT4/1qUb4ZTcrZXil5aswdm1UpOjL4H/0fSea/Booe3C42Yi2bgkPG96lAD5HY2xpq4M2nPnv4j1B5WNNn8oAK33nr27mPVi/4+Fbu4M3IB9yoXFz/DQd/S42WQcvUl5i12DxtJrprjamDJeulFtV+HCj4/dWhyKyRYX5s4KWamfqwVjxyWl+YaZ40l/YeL+R+xr+QddhJzyDNr3umSaksIDnF/nBNEA3Gv7oHCffyGZLo/JzGUmbKO0Tl60YLH/9UHoROLBoRILpVrMP93LqqWc/80UsdiBc7N7arcwhJbQfgVR3XsZr2i/tCGJ4vfvBvqF1xpLuL4y05OrzHegYBhlmBf66uap13g2y0SVisazVwzzHTCt2WpJcRfaL57kA2A4cPQKVRuU6Dej7SatRHOn8Fh+rKVYXWp0pMpJkv6X3QOtDQ8/+Sqwxku/dDAX8BSc65c+klTqP+ktAzHwcxN7Bj2we89AI5rfbDcXpUCTeoAv91GRsEkNK9z8gpG6jP717rFgMlWmi5F9xZUxFCIWBiWa1VZRPIFyz5nv8NYLgX/DZkBVnBhdL90Tw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39850400004)(346002)(136003)(366004)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(44832011)(5660300002)(31686004)(4326008)(66946007)(41300700001)(8676002)(36756003)(316002)(66556008)(478600001)(66476007)(8936002)(2616005)(83380400001)(6916009)(6486002)(6506007)(966005)(6666004)(86362001)(53546011)(6512007)(38100700002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aFNRTzhiM3U1REJ4bEJnc3lNa1F2N2ZpNWQ2UFFMSnh0dERJeDUya1g3NDBk?=
 =?utf-8?B?TExTT0FjMXNwR2R0WHdtb2dyUHZTeFpRK1UvYjFWUWozdnp0RFdaRHhFZ0lT?=
 =?utf-8?B?VHBSb21NVi9rV0pkRm5UaHlUdE1sMWpNYXlvbE82eGpqTmpRN2JhYlB0UWJt?=
 =?utf-8?B?eCtrS1I1VVNYU0FXQnUrbFZhUWVxTExxNWtsOUl4YmYrN2hLTjFKY2FMRzlz?=
 =?utf-8?B?WUN6eS8zS04yNGUzeWNHaUtUMkkyQmFkeXVDMkl0NkY5ZEJpUFhNUXN4MVpM?=
 =?utf-8?B?KzMwK1FESzg5OW9mdCs2dE80aDZBTTJnMzg5djlJeld1VnlQakRmQVBha0RB?=
 =?utf-8?B?emFtUDkrZWNmYjRIZnNQcGhvUkJ6YzliYU54WndSSDlMVmtyZ3NqZDhqYVkr?=
 =?utf-8?B?dWc3RjdkVWhocW9TajN4ejlpSTl4WkhhQ1N5TGVKUHVvNEwrMGsvNldNRFhP?=
 =?utf-8?B?VWRUeGZlVFlmaVpmUlBHTm95cWZubGdzMUlrVDhWSHhydVI3aExHenF2MjRu?=
 =?utf-8?B?TEprMHUraU04ajNRS3R5d2lEb01CbzFoeTc5Qnp4eFFBWm5KRklmenp3V1ZI?=
 =?utf-8?B?NGlyUHNkV3hWRUNvN21OcU9TS3pSeTl3eTVWMXlYUE9VdXRNU1NrZmVNckFp?=
 =?utf-8?B?TzNydWZKY01EckhEU2V6eHg1UUlRLzh6RVFJcU10bVVONDhadk1yaE9ybCt2?=
 =?utf-8?B?MTJMU3ppZHBVbjNINFN6alBRTml6VjlnZHhBeWV1T0ZwOFQyREYvRFFtY09F?=
 =?utf-8?B?amM4bjhIRFlXNkZ5OGY4bmFCT1V1OVR0bURoTlkweUwwSEJlQ1FpODRRYnFy?=
 =?utf-8?B?RzljdW1WVEs3YWFTWmhMY1Y1MU1JWW1uenh4THVWaVFPaWN0YjBZa043OURL?=
 =?utf-8?B?anhqdTBUQzZXdVgzTE9YWll1cGVKcEFuaFBIb2t4aVJCOVovc25YU3VzRHg0?=
 =?utf-8?B?dkdpTFl1ckhyUzJMOXBYSXB1a1Q2anBzRG5pUUo3dFFyWHdUWHFnSFlVK3JT?=
 =?utf-8?B?ZG1SY1UvcnA2TVJoQzlFOXJxTy8vSUhYeEZ6WWlFbDBLM1dzcmUxc1dpMUNK?=
 =?utf-8?B?QVJhK2krQ0xVZENlYnFRYXp0WHBpU2FCd083ZU8wa0ltWDF6ZEg5cTNOZEFx?=
 =?utf-8?B?L3V2MGxCMVZaOEtRak41RU1ac3Vaclg0bmRQcFlPMFV1a3gxVk5VczBrU3hU?=
 =?utf-8?B?VWRtSmhDNTFxb3NweW5BN0hJSVZHbmRNOVNTQUZ3UG1pS3o4VFR6YU44MTVQ?=
 =?utf-8?B?MUtTMWRhd2hiQzJjZHNMQ0FHdDJwam5ReTdmLzdpYS9uL1JaMEZqc0ptSTdX?=
 =?utf-8?B?d1N5SHYvRnpOSTQ0d1g0aXZTeE5xK0NxcGU4K0VlQkFpN1JSdG9aaWR3dWlj?=
 =?utf-8?B?MWY4N2xxQXBTa1JpeER3WlRYZDVmd3NITVQvN0NYSFphNWUzTDNhVUJ3RFcz?=
 =?utf-8?B?ck0yczBvM2FnWWpYRlJDTFEvZlBOZS9JTU1SRHpZaVdXSVl2alp1T0ZlRUM3?=
 =?utf-8?B?aHFKRWpxcGROMHpVSmxNNm9IY0ljZ2RwUGFzV0N0ODl2SW4yZWFEZXU3SUdO?=
 =?utf-8?B?RDZGcWZFMnllWEQzNXJ5S1pTSnI1Mk90Y0Vhd3JjMW1nMXVZeEJCY3hmandK?=
 =?utf-8?B?aXUwemNxZzhrYkpzVm01NmtPOGdCenNsbjVpNk1YY2Qvdk11ZHhGL09vNjJE?=
 =?utf-8?B?SEdhVXBZTEd2MldHK0ZacFZ2WHlpWTU3b3dscnpIZytRSDJuTHBKNzI2WjZx?=
 =?utf-8?B?Q2kwWlBVVzhqT1kvN2FXUlpVNWg4N3JNdFBQY05uc1N0WjdLN3RvbHZkWnJi?=
 =?utf-8?B?Q0NNcy9sZ2Jibjl4VXpNWFgzUzd1cTlqMStYbDltcnVORkk5Y2I5aVU3VlF6?=
 =?utf-8?B?S1RjanpYWjZCMEtRZDFwaXVCODJFdlFtQkRWSHJlTTQwVTlTbnQweGl5am9i?=
 =?utf-8?B?dlBJL0NaWTgzU3dRZXIxRWNvT2N1Y1ZSSFEvVzdONzJ3Y0F6TlNJR1FyNStE?=
 =?utf-8?B?QXQwS2dIRnNobDhJelpqWDd1S3ZTWlFiaUVvRnIrZFpGRzNzSVk4dy9FL1hI?=
 =?utf-8?B?RDVDOHJiamNOSkJjS3RGVFFWSUIvL202eVowR0JBdFphdUpLNFljMkluZXNn?=
 =?utf-8?B?K0ZBb1B6anlMajRTNUpNNXVRN2FhWGxKdlY1VGt1OVlBV0N4NlVBZkJBb3Zl?=
 =?utf-8?B?VHBlSmV3cWlvQzV0enZCL0xMUEFFNWlnV0xTeHdQYjVUQkxob041Wm1KamIw?=
 =?utf-8?B?S1VNblVTR0txamJMaGlkZ1lHd1d3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e192f217-5b8d-4b48-6a58-08dbc41ab218
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 14:11:54.0673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KQTqDyNufios0QGHLpdT089mCWCckzMLb0lFmhMijghxyJlIhoTAn5PWR1xhKJDPMKujSqTYOdAZf9ipM80lTUK3nKQfT5j428WOOrRBa5p/EPN0DeYvHzKIfcx/2RY6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9380
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 14:12:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61221

Hi Trevor,

On 10/3/23 16:03, Trevor Woerner wrote:
> On Tue 2023-10-03 @ 12:17:13 PM, Quentin Schulz wrote:
>> Hi Anthony,
>>
>> On 10/3/23 02:43, Anthony Davies via lists.yoctoproject.org wrote:
>>> [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>
>>> From: Anthony Davies <anthony.t.davies@gmail.com>
>>>
>>> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
>>>
>>> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
>>
>> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>
>> Unrelated to this patch set, KERNEL_IMAGETYPE actually defaults to zImage so
>> we could just avoid doing it again in rk3066, rk3188, rk3328.
>>
>> Also, for newer versions of patch series, please use:
>> git format-patch -v3
>> or
>> git send-email -v3
>>
>> and it should create a mail with:
>> [PATCH v3] in there
>> because with the current subject being
>> Allow KERNEL_IMAGETYPE override v3
>> this would be the commit title inside the git repo and this is the kind of
>> information we don't necessarily need in the git repo :) (but thanks for
>> thinknig about adding it, it makes it easier to follow which patch mail is
>> the latest version :) ).
> 
> Would "git send-email -v3" also add the "meta-rockchip"?

I assume anything you can pass to git-format-patch can be passed to 
git-send-email, so git send-email --subject-prefix="meta-rockchip][PATCH 
v3" probably would work just as fine? However these parameters only work 
if you pass a gitrev and not a patch

c.f. https://git-scm.com/docs/git-send-email#_description
"""
Patches can be specified as files, directories (which will send all 
files in the directory), or directly as a revision list. In the last 
case, any format accepted by git-format-patch[1] can be passed to git 
send-email, as well as options understood by git-format-patch[1].
"""

Cheers,
Quentin

