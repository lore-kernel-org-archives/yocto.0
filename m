Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B4E7ECAAA1
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 17:18:00 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.92.22.71])
 by mx.groups.io with SMTP id smtpd.web10.8908.1663348672642581778
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 10:17:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=qN9Z73M9;
 spf=pass (domain: hotmail.com, ip: 40.92.22.71,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTdTSrqZFD/GAvqWPWIpSdIgFkFWhQgSxLXBzfUyV09FEJp248le9ncg/LvP742ElYqXYH0mHcg1KjdHUOkx3uUKhNq5lxcRw6om0FdKIDl3SNR/FBgidEmc3PEiN9F8KFXSgsY5JduBIe8UJT3LmDSxxwEJATzmxi0qHxzKycDE6gFmfXKUYhu5OY/l3u0v6hCqYTSP1C96dq/uWscqe2unZHXZWNujH8r7FxLF77tbNL2FlvVjqIlSwQyHHyEdEjXBAD3Rglzx8b4j0OJJUu9szqYwRz1RBs07rCionGbPbWb+ueDzByYh35GlsH0lm/7KVmEkaN9S0OK+TRKbCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o70xDmk1qTIoVSX7vP1FYffSwnjNYEkmqQa4SLz/TDE=;
 b=TI3Bc7cy64iFMQvAL4e6Dl7/VYvTZR1JFt6D/IxfSnDtV/6xAq4kvNsWNuQdcLzA3/WmpYcRh6fxaMpinVwrY2IXBwzEDbmuLp18C1j4CD2NlCSPf02yrwSNrzBP4K31aJq7OFhhFnMQ3tmHek6rXwfX1DhxbARi73LHxRjbP+qbc8GdL8KlLYdBN9QOCqC1KFUo5tMqNZu5NqjXz8kWr2go3rTk7V/hpAOp2IyYxqsIfRwsr80EChJRZWsgydNQW6iGV+BtOlF9VHuhX33Ouvky6KCGVmkbLBiP6+hxNbtFRWNYpJpA0HQ4kNmLflbR3RIGzL/X0mFJllbCE0SGEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o70xDmk1qTIoVSX7vP1FYffSwnjNYEkmqQa4SLz/TDE=;
 b=qN9Z73M9e1kiDzZXx8CKObizWl8P17tQhv+RU0tWxI//jZxKT3TdPo7uE/R4ZBbFQLA8MUbsQebayIdLJ7X3gtma62HPeXfWoFvftlJts7gFBMJRdeLyCwEYI3q0hoDbjFtCdP33umEAGHA58aiacsooVz0O1bkZySk94MItgheupmRLXAsn5eeFM/rmSIKrjfgK8k4v3O6TF/ZXZ/kikAeu41mWHbuj8eiyey+F/SosBJ7vZG/PWs3guUaY0unujYfXocxid1rCEA0f6fEzrkDB9iP3mlTYLIycpKiQ7a80dtqdyvP9wV9w9TMfJ+bWYkIabfJASvgw2DLLPb3m/A==
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:434::22)
 by SJ0PR84MB1433.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:381::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 17:17:49 +0000
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::4c3d:f10d:298b:bd28]) by SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::4c3d:f10d:298b:bd28%7]) with mapi id 15.20.5588.010; Fri, 16 Sep 2022
 17:17:49 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlA=
Date: Fri, 16 Sep 2022 17:17:49 +0000
Message-ID: 
 <SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [18E8nntz6mY5CSdQ790EECXCSBQ3jxiV]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8b7464f-caf4-4184-18f1-08da98076174
x-ms-traffictypediagnostic: SJ0PR84MB1433:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4Y+jPJx8FKJNv4rcJC6qkK0UIoTT8jQu+B79ktX3v8Aefrkrp3TMNKH2YZX3+wQrsgDKRKe7AUrQMjOCceNcMKGCUxGrQzvrHDFDmFvmC5xo0nNTndJ4kX9TrrZnCzrQwSZLERQ+HwqSvAc3V5Phxbo3q3FPvqMJ4eGfN1rpFpauhohv7IWzT9IRFo9iABfqwF43/AXwnKBHtFbZFw5FStlTF+Wil7dkQ92Gxv05nW5W00RqGGEX3h0whfC4KzPirRPlPPjN9TVoo+E9heI+3OCWt1LG28Fg4dNTpI1PHG15kHzQGArqhxzPwWiKS31ndbodcl0Zx0K0iwfl7j0MMoRvU87IGjRgVlLRwa+9LVi4iAdI4/sQ2tcVlVzJd7IXtqpc9DMdCO+ZbAfi+tDiyZTNrnUFi7Rh/Yl/7Z0o6Nk/i5NwU6kuw+UpXvrWp2932pqtNDmuDWXFyb66Lff/U8o/W6y2I+EP5EiWfBEbKCRBCfRrH1Wymeoyx9wY024xPsgTkSZQJfxBkvJU6OEiV1ZAXokSgy4OvJTBDIzMYZ+MmoXMxc7ug91D0CoAcDyT5sIumFEn6NPqQ29dZLHi8Ch3G9OtaKCgnck2RXgmw/zA2HhiXGAGdG6fjg3gccaSo2Tn5AZ6nIA3c1SV7DC7mYGSR2phyAdNfzs0jA+zHxdMyOrR6GVhu0D658tyGHuC
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zCKwL3s4clm1Wa4mTeUmsf/kqnv0i+jm/s2hBw8NUKc4mD4VrZpfqbxrLw?=
 =?iso-8859-1?Q?wZXY9Jc+J75rNdCmHc+KuMLmVmPDHjlq7/QGS8JnsWmycOMeLZUATjFJB/?=
 =?iso-8859-1?Q?ycXkZmfGKfF0E0LceYWEcecNsLlHs4E3AjVG8cJmveK/NK5yJ9ltprg3+s?=
 =?iso-8859-1?Q?IGdtR7JWP9aLV2R+PtsjwUXRRQc7j9jM6bAXU+9AgtaqTDNFrwe4eW3+en?=
 =?iso-8859-1?Q?VrBoFTlbT71ouuAUHGcoBoYwqnlJVwH1aJd1WW4arTcU14loXra06BEF/K?=
 =?iso-8859-1?Q?/8jRKiFaKvimKkFbhRZItI3lX6nmLPFfCLs/zvILajkUf+LuPnwBySSBw7?=
 =?iso-8859-1?Q?B3DlCz7P1s0+3W64nDDr4dk0+x4cAYhbtcW8FyFA6o5tlB35y2oWEe6hA3?=
 =?iso-8859-1?Q?BCC578E84rErs+4heWW4VgT4MsvakIL+MiB+rNIoCThh1iNWqo6FQN5KhQ?=
 =?iso-8859-1?Q?730+cnOGehgqoYp4eoWEHtiH4umcZVy777/wZdr7tMKqTD+7mLwTRQitnw?=
 =?iso-8859-1?Q?TmfPMi7tq/oYEj5kCyWCHDZqIubWkwSOkWravgt9LP9aLGwsP2PU/iiS9E?=
 =?iso-8859-1?Q?csIuKxNHqaTY/y5b+ALqawT/IB708mbMA45AsIHk14CIisVsA9u5lZEvcd?=
 =?iso-8859-1?Q?GPxlM1qPow0elqBel7f0v6qjJANcM8MGWqSKMX11JQ1c2ogd/neXU03PoE?=
 =?iso-8859-1?Q?UBsEN7sSZrhQ8JwgpqNUxxtnrVDhVM1uxvSvY5/SmWKfBe5+pb83D3RqCy?=
 =?iso-8859-1?Q?YLiuFotId8wJ6GnxDJdVaYS8vEX1n2LsLEqafk9PM+/gAj1ZbmdNTGpAj3?=
 =?iso-8859-1?Q?1YDmJ2b9ttl+MinKefy5SEP9cGae/y5J9HVjzjp0YK2mrPw8oZbv290NeC?=
 =?iso-8859-1?Q?cG1LtwUXGwH1IXjJQyuACiXvJyIgCTniNR/UfcW78NOBvbWrcMLIJ8sI6g?=
 =?iso-8859-1?Q?yMq26pkA/io64kWR1wRZ59q/mN6kb2ry6Aw6cJefL3HZSpTNzunKp5WRf5?=
 =?iso-8859-1?Q?oSbZ5S5hABObVRvLnatLfAG+c0J2xyYFL4hLTHvs6qahS7rq7NkvTQ7eO3?=
 =?iso-8859-1?Q?ojM7BVrZ1BL/73JNoAI0FLG7vJZcfHyAfezwF4zFZ8yH9eLvn/7ahrR4za?=
 =?iso-8859-1?Q?w/1uePyNvEaYq728YRWhv252p6m8xXY4sIgQLD4gR1SX1RVMVVanNvxY1o?=
 =?iso-8859-1?Q?pyFA0XaCSCvLKwS66o18le85joe8ovtoFEWwmDBGpnPLTcgRKCLzUkEuvP?=
 =?iso-8859-1?Q?Aap1KhwBCQzWjrIhXjNcceXfQWgWrrLmUQ3pYvkTOgGXo0U/YHBeJW4sef?=
 =?iso-8859-1?Q?bGaP?=
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR84MB1846B369EB668E66A065A4FCC7489SJ0PR84MB1846NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b8b7464f-caf4-4184-18f1-08da98076174
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 17:17:49.2913
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1433
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 17:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58061

--_000_SJ0PR84MB1846B369EB668E66A065A4FCC7489SJ0PR84MB1846NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXTRA=
_INSTALL.
But no libvulkan.so in /usr/lib.

Am I missing something?

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Friday, September 16, 2022 12:14 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

You can start by adding vulkan-samples to the image - the recipe is in
core. We do not test vulkan in qemu, because the software vulkan
rendering is still under active development, and marked as
experimental in virglrenderer.

It may help if you use qemux86_64 and kvm for it, because software
graphical paths are too slow without it generally.

Alex

On Fri, 16 Sept 2022 at 13:43, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto honis=
ter (qemu, host is x64). Can you tell me which parameters I need to add to =
local.conf to get all libs and headers installed (plus maybe some useful to=
ols and demo if present)?
>
> Regards
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58059): https://lists.yoctoproject.org/g/yocto/messag=
e/58059
> Mute This Topic: https://lists.yoctoproject.org/mt/93720286/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_SJ0PR84MB1846B369EB668E66A065A4FCC7489SJ0PR84MB1846NAMP_
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
Ok, so I switched to Kirkstone and added vulkan-samples to CORE_IMAGE_EXTRA=
_INSTALL.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
But no libvulkan.so in /usr/lib.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Am I missing something?<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Alexander Kanavin &=
lt;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Friday, September 16, 2022 12:14 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">You can start by adding vulkan-samples to the imag=
e - the recipe is in<br>
core. We do not test vulkan in qemu, because the software vulkan<br>
rendering is still under active development, and marked as<br>
experimental in virglrenderer.<br>
<br>
It may help if you use qemux86_64 and kvm for it, because software<br>
graphical paths are too slow without it generally.<br>
<br>
Alex<br>
<br>
On Fri, 16 Sept 2022 at 13:43, Edgar Mobile &lt;heideggm@hotmail.com&gt; wr=
ote:<br>
&gt;<br>
&gt; Greetings,<br>
&gt;<br>
&gt; I'd like to test graphics rendering with Vulkan on an Aarch64 Yocto ho=
nister (qemu, host is x64). Can you tell me which parameters I need to add =
to local.conf to get all libs and headers installed (plus maybe some useful=
 tools and demo if present)?<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58059): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58059" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/58059</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93720286=
/1686489" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/93720286/1686489</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_SJ0PR84MB1846B369EB668E66A065A4FCC7489SJ0PR84MB1846NAMP_--

