Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CEC0C433F5
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 07:56:37 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.69])
 by mx.groups.io with SMTP id smtpd.web09.7922.1651478187810061659
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 00:56:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=ZheUvNJQ;
 spf=pass (domain: hotmail.com, ip: 40.92.42.69,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dFRs5Esj5Tn1Sekik2aVbA0Km7O5dhpyt4yeo9FDgmPl78a6X8/WEHY9TwvLG5VEZ4EL/rEhsdV2JLOMY2cqqHo0ZCqKAkxzY52Bk8M0rgV6cvLoGuoNbDUn8rNpycgH4oJaAST3EO8AYNJrTdoGd7OnFgTqimtzMo9ewXswxYYAx0BFN6ZR3S9O0NUy2VHEubL2T8W1yytPSBgMR0PRWW7VWsDPwDk0p1ThY+K3P0eD7TLc1YOL1OLsp0/cCKhlPuOrOUkr0ghfDqUYnJU3ctRkjYxpfGaTOBS45h9/oA+K3wRZA3DW42mWf/a2B1lCHCHfu4oawDDt3jklKfzg6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XOxgYR9hVTOFeBbD3h+t06EUKo7zlOlg/ZXCr29otX0=;
 b=S7EaohtVj0Bh8UWi/D67h17TAGGFCv6TF0NYfca7bDwa0qi3j7ULjU8KyZee26ZaSBmcEsfBXUkmH/WaEZVCLqGnQWTWpu0pGb1nFHfCmpoi4yupJfPxPGYFtd+Hk6kFLS9yjuQncwtrZudM22jtpS27biBNuTgdg9KGPU4BBCvsTwwKaW65XMb/vL72nMehSqbJnT/bL+ipFw40bRFbYHnH5nAC2qxOF00bmB+1C9ymM1S85irhK3JlZWepcEAA9lcIpxu1eU9qu4+g+TIJxRY3d3gT+sKdI2FMHi0uNVVSSU92aGOGn3V2ANgM8SqoFFktgrOjpwauj1tu3Jb21g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XOxgYR9hVTOFeBbD3h+t06EUKo7zlOlg/ZXCr29otX0=;
 b=ZheUvNJQvUvGdNfQwyLzaHNPu1QY5hCPW7p1hW2o3H7pKe6vjFGG7NvbxW1j9A4N7Fh73yzXJGuMiRDu4WvD+nPiZdWmSO82EGYYFdSaSpvOADLApVKVciVbNab1RUBuBxVDoFBIQKw8jY4TBbQjIcMrR4fFv58wboCbbd+2wF2rGApWxBWJFSjY2gJCWf4ULqTDZK3CjzTcnq8Rh8rYTYdNSP9S5/7XjNdynOXnswIxqkjh9zJJAaU+kYWJlYzv08799dgZQo8sLJgkvwTpvFqhq9131+rKRjB7c5VebfSI2afUr1hO3gDevY6U7z5l3THILV0B4AQI7Ug1jpLGpg==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 BL3PR16MB4538.namprd16.prod.outlook.com (2603:10b6:208:349::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Mon, 2 May
 2022 07:56:25 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8%5]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 07:56:25 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Scott Murray <scott.murray@konsulko.com>, Joel Winarske
	<joel.winarske@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
Thread-Topic: [yocto] Adding systemd to yocto
Thread-Index: AQHYWyPJTFS1N8NLPke707Qwq/uIma0GbgMAgACRQgCABDuUg4AAAwX/
Date: Mon, 2 May 2022 07:56:25 +0000
Message-ID: 
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3/I+dTeXq7tOjXr6nXNHTqBTDqjjfv31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4833e54a-4495-4ab1-c6c4-08da2c1141f6
x-ms-traffictypediagnostic: BL3PR16MB4538:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 O/S9uTJO8bbGC44gRyaCJn7+2fwBZClL/lX8GMeQcRV/g2M529LO9gmcFwxIBr083jnEAGhHCWc5c6Rrb3PKxW6SCT3x32BnL7r0h8qmqJDubHa5Ia5wx8Fm6TWE5KNW+VxuaUrLaqwYv9RpdC8sZzboKf70VJIdtDMF6CNaIwhuZXUXjmo+q3IHl3ZgBVSCWirzNfdQoSQDrDoTOcfEG80kUMm/P1j+MGjhi5r407J00JzsEPHRjtc5f4sMLxkikaAHlzkn8cdUuEpzyGl4NEc/PvzJbBjrMeyUAyAgCmUXkidi1XZUtooOBsOZmZGV48HOSbb41aAORYlxBXOiKUVwc86Tgjvt3oXPbHAiiVOZeVbgmiTBam8x967IBTb8uJWERGSzNx7qteoAEclENR8IkE8l/fiwErgc/fLbTs42JbEVxtA4ZPy9d48ZqTkl/FcOc3dUaCz0B0LIy2hY5GZHYj4MrAICQ/sDJJ8MKY4kuPPnSlVwsZlrKp2TGYuvgd1Iouhl3EIKEGNgOHYA5rjsMtoA4QDnUHPU9A6FvEVBHlaiez0bwRRBmL216DZYmj4XlI+1BDiJixr2zhXyYHieeWDg6KB/k+D+baO7oPksiIovGoqr3erQQ4aEkgwG
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Wo0Uw9iL4ZDZeK0tdCjGd5BbxBmtJXsKjzgLSGPTX58W3hJshV4AWbdAVe?=
 =?iso-8859-1?Q?cbAUnWNYR81DqmjLaAywNK1lXWwSZGf5nXiSA3xWywXmk24m15k/uUc3bI?=
 =?iso-8859-1?Q?fmnehW2czC9eA9yLiLMToYjP82WG7qk5MoVHmxMs83h/NXQblOmCX+pNG4?=
 =?iso-8859-1?Q?/A61Cwn4VI9Y5HN1f7N0dut3VBsFVtJK8RM9/fcmLRNgZKI6HBeV3SG3zI?=
 =?iso-8859-1?Q?pLdiPPLaowyT4oC1BfM4IGMgd7gHYb9Nms5FMGa3zq5LT2j6Cd1cP5TxhX?=
 =?iso-8859-1?Q?s1YHC589bAChnfeoaWBXYcA44NislYX41EqpK1NG/lCwYzGDEdfTB5JIX/?=
 =?iso-8859-1?Q?3fwGygMXngN+Kx1Lr39RH2RoCK7QxSLCVDvO8KTg0B4PBssKzxlm4BmW8P?=
 =?iso-8859-1?Q?awa2ezEIV03bI/m5gRwe27ihOm1JXugO2ckSHazDh9Wgdj3lUGTLg/g/6A?=
 =?iso-8859-1?Q?swNIozW0MHvUeiLKdOoy+8tO7re8H+zl9UQRArp6m1rhjHJGuRjzDrhztA?=
 =?iso-8859-1?Q?lhr72iyvp7h7WPjaJh1wr/48gEAXpbmqSyzvIZtS4P+npRUoQB+2xixrIP?=
 =?iso-8859-1?Q?XgwIo7OdyUlSauYj6MJGqbSxuRTKfPHw1cYus4UmuHRFnYCB2zASlYjmn6?=
 =?iso-8859-1?Q?CkcZmJYbmn78vao7K9IbBcg13NxRzuPh3eoDMA66uFOiLthoGtoE5z1ufD?=
 =?iso-8859-1?Q?MoFWpYA6OfbG42EZPG98HPqjB9YHgkJnUoYs/UjDMqRyLvoiZakyaOmT6+?=
 =?iso-8859-1?Q?L1RBGlYmBP3IvG8tsELaXdy3fBXmotMJH5n5T1ao1v4a79s7oiKELcSGqF?=
 =?iso-8859-1?Q?37M0KC/ABvCI+wncQrFBdbAL9ihsaVlSJwZjYQWOEyTvsB1DhqFBz4Jdn+?=
 =?iso-8859-1?Q?fRCB8PkiL6/WekeuneCdYtgKPJt4l0a33woWJO+QbmZB0x2pD1gtwcm/oR?=
 =?iso-8859-1?Q?0DIKiFz0c8gZVhWErSUwcenx3e5HrXVGnBXknukoHIKd75WlqjQKPVid0n?=
 =?iso-8859-1?Q?VqmNFR1odE8sOtBFJivm+hWzC5lC3IBAgN6Vsy4i9XgfknICtSzJcz8Rnz?=
 =?iso-8859-1?Q?nfkzwAwHhc9ezfLe3rgs1JbwDkxG3ILVtXfhpn1ZZp+0XydId2JTekuk6h?=
 =?iso-8859-1?Q?hYuV59L0Dz3OmWmBxCJslTn1aqXqd5YyDsLwWNup39iRysDPdH2KsSNLsv?=
 =?iso-8859-1?Q?ISdfteZhgMs6u2/QmT6EgTaK2JSxClWptM4EkOf8MJwVwxlPhVvgLll2Ee?=
 =?iso-8859-1?Q?8YXhjTX8kL5uda4l5ipXfVoNg9HMwWNvQI6CrLmNbg9yCaR0YrYcQcWvbA?=
 =?iso-8859-1?Q?mf4ci2y21atkxKteoEITRBQEPIUJFXNL/3wvfZjoNkdCkuPxq1FjFHmSeX?=
 =?iso-8859-1?Q?g/Yp7NPngYOUyOxifj99jG+UEunH6gmLM3TEb2MmaGFDu23DPX9IpRUohe?=
 =?iso-8859-1?Q?2ESEENJZlSsQu/bRTAi7TL93hA6thLSfaf5Pog=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43575294B7F770E74634A9D1C7C19DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4833e54a-4495-4ab1-c6c4-08da2c1141f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 07:56:25.8948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4538
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 07:56:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56968

--_000_DM8PR16MB43575294B7F770E74634A9D1C7C19DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, correction: I complains about pam missing.

________________________________
From: Edgar Mobile <heideggm@hotmail.com>
Sent: Monday, May 2, 2022 7:47 AM
To: Scott Murray <scott.murray@konsulko.com>; Joel Winarske <joel.winarske@=
gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto

I added

INIT_MANAGER=3D"systemd"

To local.conf. Now it complains that weston-xwayland is missing which sound=
s weird for core-image-weston.
Am I missing something?

Regardss

________________________________
From: Scott Murray <scott.murray@konsulko.com>
Sent: Friday, April 29, 2022 3:07 PM
To: Joel Winarske <joel.winarske@gmail.com>; Edgar Mobile <heideggm@hotmail=
.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto

On Thu, 28 Apr 2022, Joel Winarske wrote:

> Line 30-36 include changes to convert a sysvinit image to systemd.
> https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L3=
0

The INIT_MANAGER variable added in zeus removes the need to tinker with
DISTRO_FEATURES and VIRTUAL-RUNTIME* variables, all it takes to use
systemd is INIT_MANAGER =3D "systemd". See:

meta/conf/distro/include/init-manager-systemd.inc

for what it tweaks.

Scott

--_000_DM8PR16MB43575294B7F770E74634A9D1C7C19DM8PR16MB4357namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Ok, correction: I complains about pam missing.<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Edgar Mobile &lt;he=
ideggm@hotmail.com&gt;<br>
<b>Sent:</b> Monday, May 2, 2022 7:47 AM<br>
<b>To:</b> Scott Murray &lt;scott.murray@konsulko.com&gt;; Joel Winarske &l=
t;joel.winarske@gmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding systemd to yocto</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I added</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
INIT_MANAGER=3D&quot;systemd&quot;</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
To local.conf. Now it complains that weston-xwayland is missing which sound=
s weird for core-image-weston.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Am I missing something?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Regardss<br>
</div>
<div>
<div id=3D"x_appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Scott Murray &lt;sc=
ott.murray@konsulko.com&gt;<br>
<b>Sent:</b> Friday, April 29, 2022 3:07 PM<br>
<b>To:</b> Joel Winarske &lt;joel.winarske@gmail.com&gt;; Edgar Mobile &lt;=
heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding systemd to yocto</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">On Thu, 28 Apr 2022, Joel Winarske wrote:<br>
<br>
&gt; Line 30-36 include changes to convert a sysvinit image to systemd.<br>
&gt; <a href=3D"https://github.com/jwinarske/manifests/blob/honister/conf/r=
pi64_config#L30" data-auth=3D"NotApplicable">
https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L30<=
/a><br>
<br>
The INIT_MANAGER variable added in zeus removes the need to tinker with<br>
DISTRO_FEATURES and VIRTUAL-RUNTIME* variables, all it takes to use<br>
systemd is INIT_MANAGER =3D &quot;systemd&quot;. See:<br>
<br>
meta/conf/distro/include/init-manager-systemd.inc<br>
<br>
for what it tweaks.<br>
<br>
Scott<br>
</div>
</span></font></div>
</div>
</div>
</div>
</body>
</html>

--_000_DM8PR16MB43575294B7F770E74634A9D1C7C19DM8PR16MB4357namp_--

