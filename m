Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA740C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 13:54:37 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.31])
 by mx.groups.io with SMTP id smtpd.web11.10595.1651154067570967201
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:54:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@opensynergy.com header.s=tm-dkim-20210503141657
 header.b=vA5T5Yq3;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.31,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.14.52_.trendmicro.com (unknown [172.21.194.146])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id CB1D610000B83;
	Thu, 28 Apr 2022 13:54:25 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1651154063.696000
X-TM-MAIL-UUID: 7ab9a1ff-33d2-4614-a15a-df224401b0f5
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.14.52])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 AA31010000847;
	Thu, 28 Apr 2022 13:54:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5E8mtKQgS4TTKJ7QE/BIGg8WffJ/AtfLtEZbS8QP2aSoSSIVUtvkw6SxY+zEUfIupEGOJs72EAppg8I5Tow9zrkHx/PkLao07GSanenWOzKdMJSoPlhzn/Z0VYSHa5BvUI0lSwAUFWzoHp8YgSv/vq2o2kX0qxDwVDOhZKS4a1jYIrkQ8WyBJSiM8C7Qsp9RQzMREr2SxM4Vz0r13seoS7xOz7J2AkFfCgZyhDQMqmykcFer3RerhacABwrnzxZ4pPL4PaATODDJRqusHkWiXiZuuxnscRJO5v7E/zGmSZnj7Vi1adHqxqcX/Ej94bTGl4LtVhxkIfGl98pJiQQlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e32pXUwIc/Zl2l/zISgPm65ujjS0yNC5dzQt8YA/joA=;
 b=HIF/jRZkznW/CatYiiLTA93FYvFejyTsqbKMZRQpk9ADjUMX7e06PmAOoZa/uIluISZcz8zf99lT9ydpffRiwi5CE2kBA0oZICI6uiNAlKnAF2uMcua4FtXiiURXLt+g62LP+Ti4Gx2NXrgZdJtkBHZASxhzWDu7mo91eBxEzK/tdLVAw9QqRAiPzIkzcjt5Maon70qbxUe6L8LykPRTj9+sAETX5V458GfQp5ktO9ArAAZiem+0VMUs7ULVw2zKOYcDv0FjlV8gIkhFRK90Hmebhf8d7HAATJzpZAZ+ObVDQZgw9PjLOfA0z7IC2fQ9hUdEGDFapxRYFkmEJ2mriA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=opensynergy.com; dmarc=pass action=none
 header.from=opensynergy.com; dkim=pass header.d=opensynergy.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=opensynergy.com;
Message-ID: <121dd34a-5ae0-ed83-4079-8029c9f903f9@opensynergy.com>
Date: Thu, 28 Apr 2022 16:54:19 +0300
Subject: Re: [yocto] [psplash][RFC PATCH 00/14] Implement DRM backend
Content-Language: uk
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
 <CANNYZj8bwSKiBR6=K+EdcbVtEA41v6BTMAP66e1tZQ+A-eec_w@mail.gmail.com>
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
In-Reply-To: 
 <CANNYZj8bwSKiBR6=K+EdcbVtEA41v6BTMAP66e1tZQ+A-eec_w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR03CA0047.eurprd03.prod.outlook.com (2603:10a6:208::24)
 To PAXPR04MB9106.eurprd04.prod.outlook.com (2603:10a6:102:227::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 132f9107-a8b5-422e-33c2-08da291e9920
X-MS-TrafficTypeDiagnostic: VI1PR04MB4111:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB4111DF2B05F40BC8BBF5294DECFD9@VI1PR04MB4111.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pH3owLetayZLvyYaTcbvZVYd/QJmzQ+hy4YRZIL+pcCyt6uJ71iFRxOUDW8HIlbwzy8yJM4xyt6WE6Zbau/SPJ/g+d95DFzdSzUJwy4P6PMGIuj5bjr/l9iT2kN4+V8vVvWPvaGAUR8MEOfjQFKXCg1G1zO5s/SJRCqKVlH3CUcwVX3e/wldFxvfsvXJhhB5ksNY0wUhOU6vEVydzde2lx5dbmIBenSt56yUhma+Sk/cOEv9Ab7JVWLqmdJN+Lz3AQkDL1Mvsl33p7sEOb/JSE9p2r305wbd6hrr397AqW388J8AfRX+nIyDGWRR4foBOaegN3sOVluDY5jKhSGfnRz5Iy0o7iTp8rCcKtAohlhHli4FAvdy6GgWsoxbSCbwKVzSqhky0y/z2oj0Ye4XSB4Gc+xFUrFXPrwOzchUmIl17NIhSwnNCJkCAf1OsbjnHVhpHqqlQDcyEfJpGvrPQjqXxr3FAKHObhG/n0Jli5/qEg00bSny6QxoZ6Xn+i9TbqZekDCvVTfW6haMXOczt7jKtyeb7QAVbvvrvxioCiGo6siVx7CDsylBKgKPqIImwDjuXlFdOI+0uPkXPsfJSDEJv0L1GxpK6TqcbW/C/MF944ofHjhBsYRBulq0OXGaFM5dt2d5L0NPe80377hNenxUDHZZRxEfA98qLFbPjZI5gKeWlxcpIi7/hpxa8Q9DoHfGZGk2yscSzfjbKPU4mqxBRg9dLOhA/QhGASHMv10=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9106.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(31696002)(966005)(508600001)(2616005)(86362001)(26005)(38100700002)(66556008)(186003)(66476007)(316002)(42186006)(2906002)(44832011)(36756003)(5660300002)(66946007)(8936002)(31686004)(83380400001)(4326008)(6916009)(8676002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K2xPeVFFM1ZjWHNYb1pwc1ZFZlhIOGF3R3BocndyWWo2UGJ3QTFFY293ZnNN?=
 =?utf-8?B?dGxmZ09rdEg5cnI0Vm9MM2x5bmVBYmVOVWtHcERYbFNCcEdEWFByaURuZ3NI?=
 =?utf-8?B?blVDUktaOEUvcHFBYzNoZlE3TkVsT0lIdmRGZVp0WlZYVndCb2g0a09xZ3RE?=
 =?utf-8?B?U21UL2VjMXd2RDYxb2pla2J5QWVISE0wbGhMQVUvRFIxb0ZXYzNldTZNWWZE?=
 =?utf-8?B?alpPaUVCWnpUTFFvMjlCNTQ0VHExN0pNdy94ZU5BZ3EvaHB0cFV6Q1NtOFM0?=
 =?utf-8?B?Qng3K2ViVHo5anlrMGpoSkRTVjdwRTM2NnZmdGV3dlp2K3pHSDhqSUJMVkFJ?=
 =?utf-8?B?SlIxa2U2UkhBU1hDcEFvSlp5QVpWUHNzakdsUG9kSnpoV3lPd3FNaHMvempX?=
 =?utf-8?B?YlphdVZoM1JSSEd6Q3JMME1HYzlyVTR5TWhXTG9odWdiSWtQRzY0dVNCeWx3?=
 =?utf-8?B?RGhXVFFxWXZqeXQyeCtuczNPc0k1VXVlVE95RTJEaHplam5Eb25LSHJ4NnNh?=
 =?utf-8?B?QVA1VXYxbDI5YzRCTWJBYWtYYnM4VEtvd2VjalpWUkh3NUZCK25BSUd3VnE0?=
 =?utf-8?B?Z2krZmtocUN3RGtudkVZQjdxa2Zjc1BRaHJyeThMdWRnM2xqbTZWcXd2cHB1?=
 =?utf-8?B?NUkwckgvQlNiZTZ6clY3M2dTYUw0RnFDUlZCWDl1T2ZnU1VHdTFzdVIySHJr?=
 =?utf-8?B?T2twSWJBYUZYODg5Y1J4SHdiZ2dia1FENk02SFhwaGNOQXBVNHNXQVdlOG15?=
 =?utf-8?B?WXFQQXh6V0NCTTk2UGVQOTZrT00yMVBYcTM1dXRwWEVsaXpsMEs5TmhVOWFn?=
 =?utf-8?B?OWdiUFVWQzg2aURJUUY5KzF2cHZPU0NSZWJVcCsxeTVUQVY4YnIwWHVUaWJS?=
 =?utf-8?B?WDVIQmErN2k3aGlEMWtlN1JWNjBLc1UzZlZTV3JrZEQ5akpPTHhZMStFODFs?=
 =?utf-8?B?N1BFS0Q4Zk5udFQ3OXU2enpzckhTZC84WWJHSlJwbzlYWk5nM0tGbXArK0g0?=
 =?utf-8?B?ejlGczFhUGJpU1Vvd09oWTBURVNadUpaREgwa0ZSTnQ2Zk43ZmNwVEVtZ2Fh?=
 =?utf-8?B?enZjT3RpREdNUERYYlJuYm1UM3JnTzl1K1Zpc0tSdUlrNlFGeU95REhGNmlJ?=
 =?utf-8?B?TzF5MnJ1S1NiWS9hem53bmpqZzBVNDVRR0RpTDRLR3lpUVpwZUJHWm5BaTFM?=
 =?utf-8?B?a2xKUUhQQTVkZ3hwVUEvTnZ2dDBVNlB2NU4vZDAwWFhra0VaVVY1Uktva2pI?=
 =?utf-8?B?S083K2UrdjAzeHY3TkdsUGxsTCtuZTRLeUFOS1I3dGc2aFlXbTV2Rk9DSllZ?=
 =?utf-8?B?cHQ0c0RFYUZIMUtXQjlkYTFiMTlUeGVDcUJvR2xpUVhaYk1jK0luaHJRZ2VH?=
 =?utf-8?B?cUsrVjdhMmZhMU40Y2tRUmx3UEYwcUdJaWFXRXBZTUJpOUpHWWE0VHNyY09l?=
 =?utf-8?B?NnJqWjdCbURLTmkzNis0aENZcmZIbGs3Wktyd0todHY5ZWp5NDVRM0FUMmda?=
 =?utf-8?B?R0ViRlYzRmdkZDR3Nzl0Y0krTlZXOEluUnM5R20rSEQwOEpKdXlYM01aQktO?=
 =?utf-8?B?QlpoRFVvajhFOEY0V1pCRWtZeFVacTRkb2tHbEJTSHRGQXY2eE15QmFnRCtM?=
 =?utf-8?B?dUozMXcvWEE3eVIvVVJTT09VVW1YVWYwSGtrVThhemtYQnBJWGVRMHo0UDU0?=
 =?utf-8?B?QWVSTTg4WnBRcVBLeEJrTTBtYU1RVC9LaUNOd3p1WVIrWWZndUFIYk9waXpx?=
 =?utf-8?B?bVhIUzNDRmRSUkYrWmtGZXBvK3dVZzRIN3FBMlZCSHcxVG93VC9ieldpNkU3?=
 =?utf-8?B?Q3FLclFTdnJsWXRodVZHQi93Q2hIMDd0N21yaUJCQlZsVE1yQW12ZWNGSity?=
 =?utf-8?B?bUFnVURFOUZ0bStTeHBtMVMrRHNKMzM1Ulp5ZGh5cERtd2Vvc1lPYjFwTXBT?=
 =?utf-8?B?WnVJRFRtLzBTbkZ5ZlloK3NFZ212UWdXbk1lazdJcHpuNXNJc0lkdmFMODVG?=
 =?utf-8?B?aXYzQ0ZuVnF2ZWk2My9udy9Ob3E4a29UUjRSVGFEUDF3OUpqZ0dqZnJhd2tW?=
 =?utf-8?B?dzVtcUtFSjFDR0daYjFtZkJNdHBYa1JHU3JNa2dUTDIrTE5EMFdnSlZpZXlq?=
 =?utf-8?B?VU45WmV0Tlp2WHkwK0dVeGxvMnlVU0xEZlI5U2FtSDlFMWE2bTFBY0NJRm50?=
 =?utf-8?B?MzNjUC9KbWNJNklPWUVVRFRlY0NPMVB6Q0QzTEY4eW84QVhTc0FaWHpXTGly?=
 =?utf-8?B?WDFjNVNiVElJSW1QZndkbFlsR215K0o4SWRPYXp2SW12MzMrOXpxQVh2eGJr?=
 =?utf-8?B?czRBbmhZelVhcFpsVEl1NGZKS3hVYVN1bzltQ2hNT3hWWjQwQ2REdz09?=
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 132f9107-a8b5-422e-33c2-08da291e9920
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9106.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2022 13:54:22.3784
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 T/tW0cOBTVqCiuKHBF1mcVzJ5ujQQOXAGMd8Hdi2yChGrJ2JMEvup9IYbhScywR77oM2avdQ8Va3T31WHUu+Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4111
X-TM-AS-ERS: 104.47.14.52-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26860.007
X-TMASE-Result: 10--14.217400-4.000000
X-TMASE-MatchedRID: 6otD/cJAac1iHm449d3ilu0/o+/4D7DzC/ExpXrHizwSdCEp3KAaL6Yn
	mMLJRh+JvQoCNlyGHQLSKuuqNb2DukerW12mrTm5/sUSFaCjTLxX3+fkhmeDZIve+SO5kmfJA3D
	T3VehETpxbj10dctZfalmOnkFtyia0OVyXblM7jPfqVBdB7I8UYaJp9G8IFZp5DJ1FS+XdBMHhy
	xV8LY4NIm7OUi1ZweVmU/J5maPYnfMraXB2+s23RIRh9wkXSlFMC4zO7d4kaNO2MZoFipNWzNV+
	wj8Pzk/1eKt+ktDRM+8HO1hAUuG+1rOnzqOHaLKfXVm6YO5Gnt9LQinZ4QefL6qvLNjDYTwsuf7
	RWbvUtyrusVRy4an8SAHAopEd76vXUtALDchDdS+t5rgDx2gHWmZatUAOG/SdvrKchq2tnrStqo
	vaXpltg==
X-TMASE-XGENCLOUD: 493b4d44-19fe-491b-8c2e-b083a0f8c484-0-0-200-0
X-TM-Deliver-Signature: 8FF61D9FCC37AF19E12147DB68D450B0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1651154065;
	bh=7CxOM4RHUmqsMqu72WGjLjPL+h5KOJX8J033Z9c7i0U=; l=2645;
	h=Date:To:From;
	b=vA5T5Yq3QrHUihk2Aa0KPfhX/CoZiSGA112yCSevoKhkTj+hw2+g+2KyQfcl2g8kf
	 USGPg4l39468g9px3IHB1arRLEgjFPwWUFl8y49wO8dHol/8CgvUbNRO0T6rF2Fuw2
	 oJp+0jewGR2Ia7BpRjyDYy1HtLqnpOd753wUfUPBOo4//FITXnUPFGd9kV3e98h+P/
	 fd+1mSfghq5FkBg5sYBbN6FSaFaDRM4nnJCytGdGGXgb7xcQhpPRXXTgK36ozaKgGT
	 5jD69ymc5CHNX8cwf07TGvy22G7pdssqVWZd6SMw1s1M8TILYuroF1whKQ60gqVto7
	 4cJZ/q13TqSvQ==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 13:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56943

Hi, Alex,

Thanks for feedback.

> can you explain how this was tested?

In "Implement drm backend" commit I added "--drm" switch to use DRM/KMS 
instead of FB in psplash. I use this switch to test by changes, I run 
them without this switch to check that FB keeps working too.

Before weston starts I do

    echo QUIT > /run/psplash_fifo

to stop psplash.

I did not tried personally but it should work under QEMU too.

> Is it possible to automate with qemu targets?

Depends if QEMU/yocto test automation support screenshots. 
Unfortunately, I don't have expirience with it.

> Alex
> 
> On Mon, 25 Apr 2022 at 10:00, Vasyl Vavrychuk
> <Vasyl.Vavrychuk@opensynergy.com> wrote:
>>
>> It is needed in case display does not support FB.
>>
>> The missing part is drawing splash screen over all connected displays. I think
>> there should be loop somewhere for this, but I am not sure which level is the
>> best to put it.
>>
>> https://github.com/r1mikey/psplash-drm/blob/drm/implement-drm/psplash-draw.c has
>> psplash_draw_initial(_one), psplash_draw_msg(_one) and
>> psplash_draw_progress(_one) implementing loop over scanouts. I am think about
>> doing the same.
>>
>> Vasyl Vavrychuk (14):
>>    Trim trailing spaces
>>    Fix 'unused-result' warnings
>>    Remove unused save_termios
>>    Remove 'psplash-fb.h' from 'psplash.h'
>>    Extract plot pixel from psplash-fb
>>    Extract draw rect/image from psplash-fb
>>    Extract draw font from psplash-fb
>>    psplash.c: Make psplash_draw_{msg,progress} independent of FB
>>    Rework flip as function pointer
>>    Import drm-howto modeset.c as psplash-drm.c
>>    Implement drm backend
>>    Reverse modeset_list
>>    psplash-drm.c: Allocate resources only for the first connector
>>    psplash-drm.c: Implement double buffering
>>
>>   Makefile.am       |  15 +-
>>   configure.ac      |   9 +
>>   psplash-console.c |  34 +-
>>   psplash-console.h |   8 +-
>>   psplash-draw.c    | 295 +++++++++++++++++
>>   psplash-draw.h    |  81 +++++
>>   psplash-drm.c     | 787 ++++++++++++++++++++++++++++++++++++++++++++++
>>   psplash-drm.h     |  17 +
>>   psplash-fb.c      | 371 +++-------------------
>>   psplash-fb.h      |  74 +----
>>   psplash-systemd.c |  36 ++-
>>   psplash-write.c   |  37 ++-
>>   psplash.c         | 186 ++++++-----
>>   psplash.h         |   7 +-
>>   14 files changed, 1446 insertions(+), 511 deletions(-)
>>   create mode 100644 psplash-draw.c
>>   create mode 100644 psplash-draw.h
>>   create mode 100644 psplash-drm.c
>>   create mode 100644 psplash-drm.h
>>
>> --
>> 2.30.2

