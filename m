Return-Path: <an010@live.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29A30C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 06:05:15 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.79])
 by mx.groups.io with SMTP id smtpd.web11.15899.1703052312959848588
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 22:05:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@live.com header.s=selector1 header.b=d/4oFreJ;
 spf=pass (domain: live.com, ip: 40.92.89.79, mailfrom: an010@live.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9fvOVMVHa9vgFkGO3Kqnr1FFKK19Cmw+IDxPJb1ruyt68UacCH0IrzcIZLI0ak5xZSiNKezJfCaXFNLct6AVbSZFciFAkLUgYMWM2/1599xkzN59EpmkIs5/60owhzEXHlJWY4WunGoDl6vnj/o0WR2mQ3SUijMbMSF2wfZJwPapISzoxHzSA3rXNS7kF0qCce5K8MNsakDki9dQ5T9h6gyoO290l+l0bbdd6uwXCXzQCGV3J+jE4eFnEwEfOs/dHr8uoGfy0pHyIEAhKdlECURumjZNgVVMFFyuM7RR1Q2sHPGdD90xubKXVbf+SaKV5a9acZ07Za65YSW2UjxNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7/0ENtiC6FEqzDoQNuDzVo1568RFFjxchJyqMlwznU=;
 b=W0BQrc5tUHK/On2AXHNNav3ooFbPHPE9qn6JDtNG88uQqYz6ZNfJvDFMlxdTnuQqq3ApTOoN3XAipCRhmQD/H+adMzBOM+Z4xM6PBKs6rk8gyTG/kdWALodFvhRY5DER0zVsiB4I/h3RpWeW+sC+nHA1DYQ/rzMcycpLfVbdafh9S1yJU62DBXCK5bUs+cPI8U408HgcocDKJT1MOqpbiGKdIDi9FHT0gsV/Q0s8aEps+JSiPxRlxRyUZnoMkCcVY3tpM5T5adLmkot4ANWQquJY0UNf3K3ZqSIkyOphcahrWAnioYQHO93NRLR3chgaDZmFYNY019zU5sn8b0SdSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z7/0ENtiC6FEqzDoQNuDzVo1568RFFjxchJyqMlwznU=;
 b=d/4oFreJTDw4niMH5Z9Ddts7r8FLCuV0beqBsbzLEMDoII2LRkkPyC7v1CQMdnmCHg8fICZ2oNUpt6AdCl0q3XV5fL67RZfE7HjxJJx4cGUYlkyaZF0/cuEkdzO+C+AhG9coiwJug2s7kG5QzToailzf7++8lkmov8kecZWU+VITG1pWjjM+9vlErMK+KOIQeb0pAFW5CXggvCun7yaA3zz92ZYBWP/8CYcrzCBtKk7WzUjK1ZsMD33pRtZv0y4qASrxmN8N+Ry5KtHFPUd+HzBQWaSmwIS7h7RkJBaHvfQlHbpGDgvMjfLGI+SUvLTYC+DGpqmS0nenrBJzg97YGA==
Received: from DU0PR08MB9911.eurprd08.prod.outlook.com (2603:10a6:10:401::20)
 by DB9PR08MB7625.eurprd08.prod.outlook.com (2603:10a6:10:309::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 06:05:10 +0000
Received: from DU0PR08MB9911.eurprd08.prod.outlook.com
 ([fe80::5501:197:ac06:cabf]) by DU0PR08MB9911.eurprd08.prod.outlook.com
 ([fe80::5501:197:ac06:cabf%3]) with mapi id 15.20.7091.034; Wed, 20 Dec 2023
 06:05:10 +0000
Content-Type: multipart/alternative;
 boundary="------------FyrNaaOAI5A7fONj50Kq0v2y"
Message-ID: 
 <DU0PR08MB991111B94CD5E65C3F6287769D96A@DU0PR08MB9911.eurprd08.prod.outlook.com>
Date: Wed, 20 Dec 2023 07:05:08 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QEMU core-image-minimal cannot login
Content-Language: en-US
To: Alex Kiernan <alex.kiernan@gmail.com>, yocto@lists.yoctoproject.org
References: <C4938758-12E0-421D-B6E8-F79C211AE3FD@arm.com>
 <6041.1703014810569017464@lists.yoctoproject.org>
 <CAO5Uq5Shxq+jLM_OaTaq1h3JjBKupYsskJsXE4M0oRdPiD9OBg@mail.gmail.com>
From: Aleksandar Nikolic <an010@live.com>
In-Reply-To: <CAO5Uq5Shxq+jLM_OaTaq1h3JjBKupYsskJsXE4M0oRdPiD9OBg@mail.gmail.com>
X-TMN: [YAIvxHql+KCXm5ab6iSJQ2Tiqknl4x8RiynsTx3UQrkiDFtOyvP8og==]
X-ClientProxiedBy: FR3P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::23) To DU0PR08MB9911.eurprd08.prod.outlook.com
 (2603:10a6:10:401::20)
X-Microsoft-Original-Message-ID: 
 <36deb9a5-6ac8-42d0-860b-d55beac869a1@live.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9911:EE_|DB9PR08MB7625:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ffbd165-a003-4850-c698-08dc01219f2c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	C5DlwxIR3MDxMxrJg+C5F4sTwvhE4/eUQ+c06FbFIUPS//HiAKaS0plyZ+0RLDEputHd866GPPOVrazxC2BwJ3VOUMyBO+LQaYOHY/okvGvPgJNIY4pujLM0lgHOaIC7qiS5hh3ww41ZEXEivJcfAGNoToyYxzIxwkYsZI6NMmm5yNyi5D3tnZJO6wVcAPD+vhgBh7AHNLqWz8mdHtwMVHJHzwXnWMJ8ZHlFf9ES9Gd6mr0+dzIdRxizlQDoM9v0c9PnSOxt9IzKYtBJ1KxwK73uF5drC7WRDjcKG2JvHe/ougHgjtCgx/WGEanVnxBQ8g2zi4EHsjpNu6tQyVRiD9fBiSNdAnA1rAocgVtzYcdgEOvpPg9BxTTSxT3gYoIa46wBNnvaAJhujnkK88vj2cujvrG7Ep817N6POhmJ/QBt50aQNCrDTsZqMsrHi3bjdwQ/NfFWvQX+cx652XsxkSfDU+OU5uDdCg5hcOMBcOZ6LfXMZ9LFJWu2qMTpG0cgj5gc1yszGDbrxc75mdWonmoDnTyNcl8to7fT4JO7yGrXLy55vTRUdQzZNeMZMuvf
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHVJaG1DVFJ2OG52b3J0N0ZkRFR2NklWOUp1NUxrYms3MGRRbWhMTjZqWjVt?=
 =?utf-8?B?UWdzcy8yS0RzWUhWV2xiWTBlQzVheUx2aFIwa1JUVVI5amQ3bjNVWk8wNDl3?=
 =?utf-8?B?MjRBOUxpaWN3bFpWcnZMUDFDWXJrSGpUdHBlRkhXLzZacVdpc0RBZzMzRkdn?=
 =?utf-8?B?a2k3RlppM2xzUU1DUXEwVFRuUUVaVDZ1QTA2ZUc4UlNjTnlKM0ZtMTIyd1BL?=
 =?utf-8?B?dXdjU2lDY2QvMFlFajV3K3Yvc1R2R0ZVTG9EeHhJak15SkZaYVRBNkFGbmN6?=
 =?utf-8?B?OVRqYUtZeW85WEZmNXA3RHBIaEQyQlJ1TDJGdXBEcmtDZFZsdEFIaW82aE41?=
 =?utf-8?B?dExtb2UyclNBSFQ4N0o3NnpsSHV4N0VTbTdPV0pFanpNNC9aT0R5dFh3OVdR?=
 =?utf-8?B?ZDBCdGh5VVRPUTRkS1I2S3gwNHVjM3Bvdk42K0ZPTER3bkFwYzRpelk3Qktt?=
 =?utf-8?B?bXRiUHRWQzE3MW56RllrYitMUUwxeW1TdE8raERhYXliS3NKdkJHMFFSQUZn?=
 =?utf-8?B?Z2VwVGsvS3ROaUt6NTJBT0NzbEJwaDAyblVrUUJtdHQ3TmQzUUkyb0VJK0JU?=
 =?utf-8?B?Y1JNczNEdWFEOHplZ3lpazVtaSs0YTlBQXVwdkM3emM2TmdiMzl0N0V4ZVVL?=
 =?utf-8?B?R25tSlIvVU95WUIxMy92OUZDSnF5NHlyL2NmK2ZFdURiSjlTTnpxeml0aEZk?=
 =?utf-8?B?eUtCT1BNdzNHanZ0dE4wNVlJR2ZRTEVzTEhmY09hVW9VOE5JaUdCMGZDdzY3?=
 =?utf-8?B?ZkliNkZWUVdBbC9XSEhOcGNNZXFlWktiS0szcXo5UGl5U1hEemVtT1Q4b0RD?=
 =?utf-8?B?SElWcEs5OU4xTU13TmJ4cll3OE94eDFFT3hlN1pmamJqaU9wOXNPMHRZUGZB?=
 =?utf-8?B?cHRBekZvWVE5b2xyN2M1RFpFSmQvTkY4TFFCRFJ4L2RVOW0xT3IxdUd6alBW?=
 =?utf-8?B?TFh4aEZSUExZNVFZd3hWL0pvajVUTVFnQzZoS0dTTTBvNTdxRUdjd0haNkI2?=
 =?utf-8?B?MjFIT3pGMW1jWnh3N0hYTVVsbXk2Q2hHSy9LSnVFdUpCVUNya056WnlWcFBR?=
 =?utf-8?B?dE1JaDJsblN4RjBPY3Q4UHFEUnYwaTZTaS9KQU16MDN6Ym02SDVtK09PUjRF?=
 =?utf-8?B?ZmVRMG1hUlg0Y3oxR2NYYkpqVWhDTVMxQis2dEV3ajdBcHVKRzhRdFNkcWlZ?=
 =?utf-8?B?OHlPRVhuaUs5b05DMExPZ0J1MWxiQnkrRERNUFdJOURHY1ZCSXowa1Qzbnk2?=
 =?utf-8?B?TFBxM1VwVVFjUm53MlJrZnFkT24zK2JDeVZWeDlEOVVUT3ZqVnZneTdGRjlw?=
 =?utf-8?B?VE9BUENIdThrQ0RuVTQ1NEJyTm8wc1lNdXZ4QkZub1VzdlhnNURZZ2kyQytp?=
 =?utf-8?B?OGtFK2h4RVh0OUJzNkMxeExLUVZaaVJCL0dZMVdzc21WNHdjV21HRnJ5bjJn?=
 =?utf-8?B?aTJ5NFNYcDVaTEFiWmp6c2xJOVNEOE1UMzgxZGdHY1pqdnNQSFRsakJKd09h?=
 =?utf-8?B?alMyMzE1azFaQUR3UFRwYzlaUVpKdHFibkI3K3pKTXorYjNIV2lEVHM0WUxD?=
 =?utf-8?B?SHFJWkdZT0tDTHByYVBVNE52VTVwNzJCVFJqUHA0ZEEveHk4WS9aRGVMODgy?=
 =?utf-8?Q?Nf7XTLlwJF7qIRHNtrmDtr4zlTB3+ahqyuC4QRYv249k=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-83b42.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ffbd165-a003-4850-c698-08dc01219f2c
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9911.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 06:05:10.0341
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7625
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Dec 2023 06:05:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61996

--------------FyrNaaOAI5A7fONj50Kq0v2y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 19.12.23 21:10, Alex Kiernan wrote:
> On Tue, Dec 19, 2023 at 7:40 PM Aleksandar Nikolic<an010@live.com>  wrote:
>> Sure, sure, no argument there, from some reason I thought it used to be a default behavior, I guess I am wrong. Thanks.
>>
> It's default in the out of the box local.conf
> (meta-poky/conf/templates/default/local.conf.sample):
>
> # We default to enabling the debugging tweaks.
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
>
> Likely you have something else?
>
Yes, I have my own local.conf, without the line you wrote above. Thanks for the clarification.

Aleksandar

--------------FyrNaaOAI5A7fONj50Kq0v2y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 19.12.23 21:10, Alex Kiernan wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAO5Uq5Shxq+jLM_OaTaq1h3JjBKupYsskJsXE4M0oRdPiD9OBg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Dec 19, 2023 at 7:40 PM Aleksandar Nikolic <a class="moz-txt-link-rfc2396E" href="mailto:an010@live.com">&lt;an010@live.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Sure, sure, no argument there, from some reason I thought it used to be a default behavior, I guess I am wrong. Thanks.

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
It's default in the out of the box local.conf
(meta-poky/conf/templates/default/local.conf.sample):

# We default to enabling the debugging tweaks.
EXTRA_IMAGE_FEATURES ?= &quot;debug-tweaks&quot;

Likely you have something else?

</pre>
    </blockquote>
    <pre>Yes, I have my own local.conf, without the line you wrote above. Thanks for the clarification.

Aleksandar
</pre>
  </body>
</html>

--------------FyrNaaOAI5A7fONj50Kq0v2y--

