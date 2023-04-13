Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50BAC77B6E
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 19:39:20 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.80])
 by mx.groups.io with SMTP id smtpd.web10.857.1681414756643557752
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 12:39:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ri2T4u8g;
 spf=pass (domain: hotmail.com, ip: 40.92.42.80, mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IFHPpy8AGjYicQKBcFYaNJY70MwWBMYbzwuSkh7X6+vwybhCzubCOiJiQJFl5nrARpWGOLv0RfykBzbQS0ZibVKaUDpSMkGvccxJpqsNvY4bFwG/5cqJXMtczHrL3WDzlR/e54PMFUb9dFIO4QPV11Eis9JuqY+diFUCoBfMX27+fw+85BM6+rOj3hlsru0FV1oQzEabUnb7w70RIZim/91R6bQPgeGh9nfS7K8O8ispHGray8VrgeyjhD8eUCIRM+98aA8v1o3HzIlEirqjryl7+f6MkFdqaBCvRDsiY5SyfZ9uZpggnYbjxElGcMWDqSxyf9hZopRpt357az8aRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/n/czKUuFz7tPFlIvqgDYTLN/ZwZngXMQHqyRWnA8/w=;
 b=ffkQ8TkLkVwxsy6yzH21S/IeNT7zguR7OBOohYYYfStANmRPfJWaH5n7f0F3YFFwPvv60tvD6VREok53wfDS7Aa9ox7TwuaJz74cMblADCPVwpeUWDBY2XAn8HQc4eY/Gj9HrVxtjugMDc5qtOuYfxRZvruOQip/nY8kwpkN9lgxN09MOpjgSrsHLLhvm6w38Hl18hp7EEanL3uK70Mizj2bc+TaEHVhJRvArQICxovGENpjpaDx9nqx3GNPStuBt6duzinfFwdwJqZ0quoCMmTsK7CXecXjCOrKCH4xoI0Dh6rPj5U49zHo2X7LMK36k/Dr35oi6ftOMvl68EjeYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/n/czKUuFz7tPFlIvqgDYTLN/ZwZngXMQHqyRWnA8/w=;
 b=ri2T4u8gyXLZch6d9YUHGVU6FTrFhTtl9juctm2Jqq9wyvE/d3M2cA8Rij0+DC2oy27HFcE1xe5uQS6PYcK/bG+lp3r6sxRjWqpxZZbD04jK4otdz+W5McI6jZVJewFJcv9ECS1GBooQuCUiX+gphqd43HkQlZfMVqHEfhPWVCjHGzu/bUNE6HTxWz0bx2KaqhelZIKnNS4BD8Pa39WBjElZtprxFh0Y7Qky47VJ0/qcIhHCtRgNpGPN5twTBa6lCZkVualsXUhAqThljjaMiOZQwtItjHyrVKt52TFWEn475GHWAVplnxW3d16W6BZVTw2nm0w3+WwDdynDVEjJDg==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by DM4PR84MB1782.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Thu, 13 Apr
 2023 19:39:14 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::cbc8:911d:d6c3:d34f]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::cbc8:911d:d6c3:d34f%5]) with mapi id 15.20.6254.030; Thu, 13 Apr 2023
 19:39:14 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding SSH access to runqemu script
Thread-Topic: [yocto] Adding SSH access to runqemu script
Thread-Index: AQHZbWQ1GlBwpHyQjk+WASVkHw2kcq8n8meAgAGx6TQ=
Date: Thu, 13 Apr 2023 19:39:14 +0000
Message-ID: 
 <PH0PR84MB183568909671E63A1A9ECC20C7989@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9r3v0svpfvyBjMKA14qAQR4DdodhF+8RU6pyexqkQyzQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9r3v0svpfvyBjMKA14qAQR4DdodhF+8RU6pyexqkQyzQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [C8AHuGvl29uxDnZFG+4IlCjUNmgvJcgC]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|DM4PR84MB1782:EE_
x-ms-office365-filtering-correlation-id: 59710a1d-02a3-4f05-39e7-08db3c56c381
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 902F0jo4MVBu04b8UyJp8/6TWOuVT/HQiHyBxNoov3+LV+EDS60NctVQgCHVHEMglgfA+ACxEqHo3x1ei1hsEE1MX5skOHXsPHn/LjXVDG1wA7tAqCYplnxF7B4o1drQWxiPrAv3nF8KbJ7Un1s6wN3ckH6k8pP4B7BQ+HoMwRnccexdL/+ZKaHDn8R7od6cXnIS8IwMOrA+0W7d0WHe/qIYRvgwInLIzhEPdvxggI7+DbI1gc5AZRMdzRHpAU02XOm/P6e3eiP/NtfEYcjAqk2CXyQLfi5eUiJoxu5YVOIcmqnAx+i5ExDBMUlKxpLRJCTOwCyXgQEZ3TFUG1TNsrgexeTDPiLXLDds6MPZcjzLGYX7wQr9Qex3H9lJGCKL2OaIr5d/S0hp5clWbzY6IpWWaNMM3THHT2oLcDOY1RbT5FLfyeGyrcCaqV5dBFHbp/hm/et0xBKbJ+plX8BbGVzDvVuulZ8Ck77ezD/EjtRWuAHviBW8OneXa7W7y8GuxlSeTdOruOcBFFQfzNwMw6LXntz5j8QucLWKUjEDSrGPL/wa/8ylFIOp+yPuVUw0sqqWymH9Y6vqMWV5Zc/S0HwNgB1gev/C2cGeoXaH21dLwW2aYtOxw6K53OMX+Q+q
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?sCU9ChhqgSGFl2DwDjo+7tTH49+CFd/DUxoSzcP6OmjEdhyzAGzG/LZ2EoUj?=
 =?us-ascii?Q?hiHsucPLQwzFp2/JKIiD5JVbuqQgAqLhK8O4l2B/g2mzOl1VM6je7sHPFKNg?=
 =?us-ascii?Q?tKFdE0M0lf1kLfACd9g6xf7wiLedJewa+7IbvJz/+tfWGZhC4s7wsIawiODt?=
 =?us-ascii?Q?bMPj8kwowZiIbQz55jnKiklnzVZwAVG3AWig1AjDUNtLtADfiv290howFf4x?=
 =?us-ascii?Q?C0CaoYrj89F9xiK0sKtImZEPbNX0yKBB50GuvmbJhTV1S/Vmta8triGmao/B?=
 =?us-ascii?Q?+DNF94X5qJQKm4UUl3nsqgL92h/+1UZPQJHi8yRLuo6PEvI1CLkeG1+4W7NC?=
 =?us-ascii?Q?P2utHL9Bt/svEhi+cJNEZ3Y18zJPLJI9JsHWzhUF5X1xE4cvHAS60+RSNR5a?=
 =?us-ascii?Q?7HR4gfJ/omOqRYR7SFk5X3dJbEp6Ff322/7Wlm8BVwvv+Qep61x3MPAwWzRc?=
 =?us-ascii?Q?vI3Vs8lDwIfAe9aT53Ic3TeXUecl52oaa54+LVcYRB4nCh7k3f+FtFzwCvVD?=
 =?us-ascii?Q?how5i5Knj5GPu5OSEBPVdDXBoEfaVNnCqaKvceGJ9QMIOjaKT451btVU9bQa?=
 =?us-ascii?Q?0bIjPjPdc7LWtC67kcTzqM2gIkaOAHXV1X7kkt6hiPuBIUaiixb3+/TMhJM0?=
 =?us-ascii?Q?1WK62L2weGYIUkg4k5n/nQyqD6o+kNjOV7TJAqx9yk/UmXfXqWneapytzRSH?=
 =?us-ascii?Q?LGaaL0wLdTEdakwH9F8ZQor3TmW4c95KfgwJt2ZiOfBefF7AKLC8eBrWgzQc?=
 =?us-ascii?Q?TG6S1uGnDUkTer2Y76GYZJLdoc2veeZzgO1a/3EAUAJ6OHtaoleE51CQ4ykF?=
 =?us-ascii?Q?a/Jh8pxR29rSNglKWdkJ9nR8Iw+vROYnRn1bDerJrkBBw+sf07bHossCPX+B?=
 =?us-ascii?Q?bGcl/y7YLvSFSGmNnVuufr1jxR33ZTto3f7AAWgKyt1RMKDyD4SceEsVPbay?=
 =?us-ascii?Q?Tc4lJ29FU+s/RGHYzaSqI+EIhARd974VRYgde26OJsLLxuBD4HsOkv6wEIvo?=
 =?us-ascii?Q?h5jTxGr5a5LXFTBWWQ7GvPt55o+m1SNxH731Q+38U6g9Gt3S3q7fD20IPHv3?=
 =?us-ascii?Q?/6XLpgdxR7ZtoNZptbkohUS8ekPR6tRoY7PahhbCrxc2uL/yemWIgb3Qel2q?=
 =?us-ascii?Q?2OGBcyFtTAFGX/0sFlHCu+Z4GZCNJOfe/9l3Z2sUuXPrI8yCSZqaEXtc4AWH?=
 =?us-ascii?Q?JbLfUixBWYxKRiQcq879N9khFWvG5lsm00m2lA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB183568909671E63A1A9ECC20C7989PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 59710a1d-02a3-4f05-39e7-08db3c56c381
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 19:39:14.7684
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1782
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 19:39:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59706

--_000_PH0PR84MB183568909671E63A1A9ECC20C7989PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Btw does Poky have a central switch for venus Vulkan driver? I feel like ma=
king another attempt.
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Wednesday, April 12, 2023 5:45 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding SSH access to runqemu script

You can probably just add 'slirp' parameter to runqemu?

Alex


On Wed, 12 Apr 2023 at 19:31, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I built an Aarch64 client image with core-image-weston from master. Now I=
 want to access the running machine via ssh. Usually, I would do this by ad=
ding the following to the qemu call when not using the runqemu script:
>
> -device virtio-net-device,netdev=3Duser0 -netdev user,id=3Duser0,hostfwd=
=3Dtcp::2222-:22
>
> Is it possible to add this to the runqemu script via local.conf or so?
>
> Regards
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59695): https://lists.yoctoproject.org/g/yocto/messag=
e/59695
> Mute This Topic: https://lists.yoctoproject.org/mt/98224416/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_PH0PR84MB183568909671E63A1A9ECC20C7989PH0PR84MB1835NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Btw does Poky have a central switch for venus Vulkan driver? I feel like ma=
king another attempt.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alexander Kanavin &lt=
;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, April 12, 2023 5:45 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding SSH access to runqemu script</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">You can probably just add 'slirp' parameter to run=
qemu?<br>
<br>
Alex<br>
<br>
<br>
On Wed, 12 Apr 2023 at 19:31, Edgar Mobile &lt;heideggm@hotmail.com&gt; wro=
te:<br>
&gt;<br>
&gt; Greetings,<br>
&gt;<br>
&gt; I built an Aarch64 client image with core-image-weston from master. No=
w I want to access the running machine via ssh. Usually, I would do this by=
 adding the following to the qemu call when not using the runqemu script:<b=
r>
&gt;<br>
&gt; -device virtio-net-device,netdev=3Duser0 -netdev user,id=3Duser0,hostf=
wd=3Dtcp::2222-:22<br>
&gt;<br>
&gt; Is it possible to add this to the runqemu script via local.conf or so?=
<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#59695): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59695">
https://lists.yoctoproject.org/g/yocto/message/59695</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98224416=
/1686489">https://lists.yoctoproject.org/mt/98224416/1686489</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH0PR84MB183568909671E63A1A9ECC20C7989PH0PR84MB1835NAMP_--

