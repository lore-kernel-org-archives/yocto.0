Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E71AFC7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 18:10:39 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (NAM04-DM6-obe.outbound.protection.outlook.com [40.92.45.47])
 by mx.groups.io with SMTP id smtpd.web11.51151.1681323036497774407
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 11:10:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=M1wAqBus;
 spf=pass (domain: hotmail.com, ip: 40.92.45.47, mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWSiSzuBLyv4eDmDK/ih5rItVP4B6623qBIwUW/GpBkvH+50TjqE3G/+91Pxojb0egH/S6N8VZ92FzKxBi7bb2e4eoaCuQEpIi/2Za2aFM+bmhu50Z6hJzfmLecWaONDu/YFzTLCWqs1xEbklHFl0sIQ/KaAh0dUh0geJU9ncwKFBt9CK0XAtYelS1iOXLoHjedOpR/kaFRa47vDbN0g2CBAUubWJzJajtM6H6+z0vnP6mtSBaONuXCr8QZk5TSOkhLjFUul4JzlbZSIN8+xK9tXq9VsXuh6ADgosSfPUdGmH0eE/ciTz2TjoVTdqGwH3NUl+PbD0lunttLRgWELkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=emb7SGjJFuWLRBPzVNxSL4XQDisT33RQM7J1mKmnJms=;
 b=YJnYBaedfSiiWJNTJPfe2/9T/K1YXHCjOKqljO7OsTzyLbmFMWg5hSLPgY7btB7C75druILCc6RFODayNLuogUnHRN/WoYjBTukdqQs7EOTLlJsAUpNvvyvcIvfWmrwcUGPzIjDRLB5yK7uD1b5zPPqVNVRtrFd7rssT9gJRC18XKf76Mjmm3xHuEd8sM6KKo4KWr9TzN1ru8MYHV3hc0Hk7Fqh7saT0Mcxqjlv7q1az/axyc5KZsCyNa6CrM2KAX9hhX/4CqKqR2B3FAyeunzmnhNTP1D73+OvQybvNGvSLAi2A+Xe9jyS7CCwd8G06xON+4QFvkTrGseKkJ0ytSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=emb7SGjJFuWLRBPzVNxSL4XQDisT33RQM7J1mKmnJms=;
 b=M1wAqBusZnkOjcEa/FyBSTLcqsYN8STxOvolSOjqjPCQj1YHX5NYasSmJmu4sVfDvFwwvWZTNuF5fWFKPXye63EDkI+2g4cq90acHzrdfXUXPL/dlvfEv36aujaN1WI7bHhd0bhGWcbP4+/SzIUsnIw1Uq/KWQQvkoEqDqvo3wOQpzmiNZgFoQZfjRXNRYUud7iN2RLrk3b/Wqp1XsLAtrYPV5FpzOWQG4rLReCWAn7YmiZDD0VwJKUOjDW3GWOmfyHokjG28Gb2aFy0Zr/xzJf2C+0FWGullpF7CkN744DYKt/wMgvth1cFuD8Gw6Ag4H1AIWC3PJTHC9kNjrNO3g==
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:434::22)
 by MW4PR84MB1491.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1a6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 12 Apr
 2023 18:10:34 +0000
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::bfdd:644c:4e25:e009]) by SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::bfdd:644c:4e25:e009%5]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 18:10:34 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding SSH access to runqemu script
Thread-Topic: [yocto] Adding SSH access to runqemu script
Thread-Index: AQHZbWQ1GlBwpHyQjk+WASVkHw2kcq8n8meAgAAGMMQ=
Date: Wed, 12 Apr 2023 18:10:34 +0000
Message-ID: 
 <SJ0PR84MB18468790FC8D338D2B0A63F9C79B9@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
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
x-tmn: [yHcNX99M+vFkG8gIk/kLYbOjRTzCoeU4]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR84MB1846:EE_|MW4PR84MB1491:EE_
x-ms-office365-filtering-correlation-id: ea795c31-1238-49af-7645-08db3b813606
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uCrlEbLEmmL4QJ1yZuGqfvtpYHmkCQvLChfAS1eLaTFUJEF8qz3vtmKTWbb9JWCqWoQf5VqgOHvhJmXs92pEAvSROwPtCSwK/nkoUJJHyYbHtH1q2DM/fzcW03GpaexyaGC9PomNQog7JVO14Z9S+YxzhUiRsPUYwzIA3JMgTyufeSnmJOdhEv8b8gnvp2tsPBW+WvZd7w28r7O/pCFCZI0vjuXPPlGzC7vABDOZZjxki1bcl5wR42Z0fU3D9fXFxXscLK9T9hvSinDb9KK5yz+VToG9S348b5Y6j7IGRqphqJ4ZeWmnIuCTu5pn0Ual/FXcG2kuzb6mYxfZF+0SvxVOPuG7fpRkIz9Co5x1zikhKUOu/jYq2daOOUBgKRHLjKw+vf/BIkPm+ClOE39SzWYNfd14NaEQmO9qubkAwyHHbG+dTUdaGRHkyyVS0726jViehoCGuKEgJ3+Cl86xBpMAyotfOVHJzO9WEYciKXDLyvaHZWDZcIPt15zi/OMIt72oVx6ncRm05BxWcqsN7uBQrzmVGo9ryeFpIvcfSOjvYlKgnisevnoe42Y4TngQxlwsoc5yZ6k8eeEc1EqDK6958jar68lGOmWTXKaR7F4qbc04yFLYn86FaXTsVNtY
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?RYEW9RAiCAYh08y3VLbptsrGGQgD6rZIEIXF6ECv8wdHJ1BF+V8CDTT3Mi14?=
 =?us-ascii?Q?/SPQo09SQUQsW7QAYZGZkft6yH+qOMJNDIwFcyCULswfUz2vM93el6uES/Vw?=
 =?us-ascii?Q?M8NqC0ZrTgw7sOaBvGbpkTXCFSaLsjI3yvm2IPag3OAApMIG5eeI8fQlSonv?=
 =?us-ascii?Q?e9wLKcsie+ikMFQ4aKtKS4dyuXdaXN/0qdBX57EWNMxhL7f4y0VUmvYDzPRZ?=
 =?us-ascii?Q?sePJJpZY54TEFe9qINbjlh0mYyfn3/LHPDDYJdKS7EcKRWL2ET5uR4c/VwcM?=
 =?us-ascii?Q?TyDBv/3pvJLRA+C19bBMMJpJw7R7gzdyYuinNAsQaDzgg9q5223NxhwuD0Z0?=
 =?us-ascii?Q?81ymPW8dclPKuqSM46+Wp/F/bWZS1N39ABm5QkDK6NjG+5e0Krc5YElFyrDW?=
 =?us-ascii?Q?y0E03PwrHSnaQEp3anUrGqySSqL2iJ7/OlHaeDRcNKoUV4oboPyORZd6iCpI?=
 =?us-ascii?Q?7WpguzgBWw54GKgZSLGWhmuNNH7ni5JesCRKUq33nPnLr2RNxwj2FqxC+A7K?=
 =?us-ascii?Q?teiN73uHP+dCkEUdUqssUKjBpnnatXYUHb6dOASnF5+okibGS+hp0jwPLHYA?=
 =?us-ascii?Q?reBbSqjY5yni+bTwaa9S6VnHi/UyijAXUMn6nqEeX4N6zhw1hGZ6FJ39Qljb?=
 =?us-ascii?Q?LdMVm/iUP29ia2RBQACTRU0EjfqOUqAH8a/XGl5KCbyO3Orwf+iQX8ZIWAqR?=
 =?us-ascii?Q?ezJb8Red9DJifetgpB+Z56+8TB5poIUd6dccvQVcw8S66GoxdQ6p35FQzMwI?=
 =?us-ascii?Q?Mz4Ja4IMsoYXEESNcGKFNPn5tKwQHJoEVOr4Vaj5Jlh+LZqtJKl6Yfbc7F5t?=
 =?us-ascii?Q?G7MJFxzDe3EV5ZZKFUF+3U6U+vUNfYOVyFgcOQBv9GfL97IrkPDSVSEV/ub2?=
 =?us-ascii?Q?RGxEWd+W+Wk7HzMnUj6eAyZXUMthmCwm5ZAnALLxXG58WyNH88yZFEpHyUe8?=
 =?us-ascii?Q?Nob2ZpaD7dLjlUEQ+4Y2oncaTGmOEfAqlRiV/6Z3/AVo5BI67uCLwXnMR+/q?=
 =?us-ascii?Q?/RKzn6pNr4/BxOaG+5xQIR43RFiAJ+0utXH/aRSrfDWR3GFPZLeagdu9o2o0?=
 =?us-ascii?Q?v5+CRyl8puD2ygY/7mVQjhiyQlRoRAJz+qNW0Lzs2uZffRWWKjmz2fmzhxkV?=
 =?us-ascii?Q?DzBu3AxupVbG7HAQCVMBwOedpDnZXOSw0PpfupwBKQKIHeWi/KaasOsBumfg?=
 =?us-ascii?Q?5yMbQJtleL5D7sKIGtfGH/kd7wq1ljAO9YDrSQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR84MB18468790FC8D338D2B0A63F9C79B9SJ0PR84MB1846NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ea795c31-1238-49af-7645-08db3b813606
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 18:10:34.6094
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR84MB1491
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 18:10:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59698

--_000_SJ0PR84MB18468790FC8D338D2B0A63F9C79B9SJ0PR84MB1846NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

runqemu slirp

was indeed enough to access via

ssh -p 2222 root@localhost StrictHostKeyChecking=3DNo

Thanks!
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

--_000_SJ0PR84MB18468790FC8D338D2B0A63F9C79B9SJ0PR84MB1846NAMP_
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
runqemu slirp</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
was indeed enough to access via</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
ssh -p 2222 root@localhost StrictHostKeyChecking=3DNo</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Thanks!</div>
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

--_000_SJ0PR84MB18468790FC8D338D2B0A63F9C79B9SJ0PR84MB1846NAMP_--

