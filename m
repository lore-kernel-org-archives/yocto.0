Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3346ECAAD8
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:46 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (NAM10-DM6-obe.outbound.protection.outlook.com [40.92.41.59])
 by mx.groups.io with SMTP id smtpd.web11.9174.1663659582592114574
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 00:39:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=pqADY+GU;
 spf=pass (domain: hotmail.com, ip: 40.92.41.59,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIzlYpP0//1fUPz8keoDOXcIdBnTh+6E8cFODEVe9UaA7/i7yLLHPXb2hWmzhhANwFK70Aw4vYX7X9P6x+OBdCcvi2QKdUBOwdOHE2Sf+3EVmXd8Aa0aCjulQ1v6NU3JOpZfjz8JTTKyduwDMVkclEDvPxlG8NDGgA68Na3Ga7u7j7igPmtEXhLi+/ex7KeGqYbp0vvH6CFRoqiZdfvhOIJiLe/JuZNV+xGV/KxLk+vs3LYnaIcEDckXY240pkm3IRGLq2DSFsZ7out2PxIdKcP8WBZ7q9gTjxAeFSYU2vrUuKffBNtZ5N3xgMNBKWbieJsuyQ/D/VkByzEWkC/2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MPvVRdB+LXo3ivK3WTHNKGSiRjg3MnFKcpf9kutffxA=;
 b=KxB6KAo3Izwj+cf1zSWo7kdR8swyNVqfgbsyuKI3xb1npGrfgiwIXl+vBCPpP+CNrKf/gMTJ7000J/LeGc4f1aGyws89ki8W9kahx3BKYSWfvseHiBVU0UmOO51bPXBUJrpoljWPHvat+rduR9QPY9KAusSUH+jqZMwDtcamfxdcmzzYuzaFMFd/+yFb3XDJHmewytOhtWSJcFL6vVuR55gOYe5g9/eb5+/DWar0uJ5Wuw3rbwSI4FsjpgeoTLov38M/chEh143QmWUrTy7HIMxCmrdiwt9GzpHfz+7oUH7xtcOTWbS2lcfxr3SEkktUD5NGc6PEh0TKmbkGtpxMlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MPvVRdB+LXo3ivK3WTHNKGSiRjg3MnFKcpf9kutffxA=;
 b=pqADY+GUBNHbmdYb+3anpp7a/hVe3eFWQxBIaR7KhqzMjZrkXNLpWewI8mVw1qBfYc9Kt9q2cJZVoF70IMUdkNQZHHrDLbgYACBtfTgPlF2O9ZsuR07gwoMmIIPPc15pEXs2obD/F/Lhj4kzHMS3yKtFwWwTNaG8UhQ+221d3Ft6QW705k45igTfNCfh9JVqzDyth5w3jb8H6x1+hDn/1gL1jaqiIZ4qcVlAiyEExRT5XhYM5rzv/i5n53Im5G/t1urg+tAL042zElXSZIRExZ7hqD2CW5SROUCAea2ENBFul9iGTbmKtJseN2E1nly2JdG0ajn+Y1S6y8KHXK1WZw==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by MW5PR84MB1353.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1c8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 07:39:40 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::ed3f:d3a8:f734:40%4]) with mapi id 15.20.5632.018; Tue, 20 Sep 2022
 07:39:40 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Markus Volk <f_l_k@t-online.de>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
Thread-Topic: [yocto] Adding Vulkan to core-image-weston
Thread-Index: 
 AQHYycEskKLcduGixUqgdEVWou0Ata3h+FKAgABURlCAAP7uAIADFZtOgAAOLYCAAEOZXIAAEcYAgAAB7hmAAAvIAIAAAptVgAAB2ACAAAEYX4AADs+AgAAR1oCAAAQiFoAABwAAgADvyxc=
Date: Tue, 20 Sep 2022 07:39:40 +0000
Message-ID: 
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
	<SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
	<PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
	<PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
	<PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
	<PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
	<PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
	<P5UGIR.ETKUECS9HZXY1@t-online.de>
	<PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
In-Reply-To: <40WGIR.ECG3N5TIIYMJ1@t-online.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ukXJ5ftBAVXjsfPO+DIpX94VN//2xjF5]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|MW5PR84MB1353:EE_
x-ms-office365-filtering-correlation-id: 077462c2-825e-4fe4-892c-08da9adb4702
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8UAAmERaeIDx4KkSSgYWnx88VCXwZt69FU3l7FkbJIWJuGhAowTky261ZYR+v6900M9zIAGbXbJ9B5BHovrRpo3OzIJE6I4dJzXL/oRxl0YjOyaJK48CvwKzbQOjY/rAjL50eOvZ+Efc517/679lXcaCiTFSLJrs3kzJ37oaO2Kg1LaeJ0LoJg+C82gNfM8rDGZl7Y583wBqANas/bXtjLWCtDJ4cJpIH7nNCnkObn9cHBoTgQaMhsO98sQBvLVQDbVGmTQ6B6pf0uFfPWxhQjvaMS9U95IKguyXa2udbb5W9hxo0LHhhmUvytvVgghysJb+kL0rminFx+x3jmor0pslFVL5Re084GaG+mh7Ydu7avrX8+j6X1I3Vy1WJ9oJatFnC0mGlAwfwihsRN5bCg2aCtIcMF5Ml1iwulboREnqlp28zwrNjS441m5BmM6X/bPsRxoh7Rmst1HO/F2WO9hK1PqBvPeFj+PmoCvr645DRbu1PYqv8tJPswiEU+dYf5yO6Zac6cIhRt4QwIKaGnnR1SNUUUZCviUIsYMYAmimnZrConvNvT5uCweyNWd2PYEB1sERO9l7y/FZvsQUfGkCe7+/n8yfOizNAzGqq4B6OQOX/h05eeMzWT50rLGvlsWchaOtHjsLdLD54JkmW6PCECCXo0IGv8g0I2jj86UhGGU+NsVIG+LrjRpOUrHt
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?/CJO4kOBk/hCFre1zqNjTIQxkgIkYVm8HZ+8TAEpUeO/37cGysJzxzsWTq?=
 =?iso-8859-1?Q?IlDlR+VkwChoVIf494dJwvi6lRV80yzx/gtrQNKLphg0NOSfTi0QNiqiOT?=
 =?iso-8859-1?Q?1UYWJHnh6uWcQG+EEMHBhWtrzjSxKHI7nwnB8qj+TVeb9VW9VsaC0kUBv4?=
 =?iso-8859-1?Q?BvEmEF7GvD5wbu5Pb6+44Qhkuqatxf2t3jug4pQZ7iWz6ZjzC0Ae/JS0MB?=
 =?iso-8859-1?Q?9BS4E8eHO+hYolq0tee+3uUQkhoFEMG1B+LErYVSvIYsB+ZeUpcxHuc0dr?=
 =?iso-8859-1?Q?PaOUDk4gDhm5vEIwVxuQI31e8rvNRhciQU+Wl+yvuW+hcr26PIG/wW39pf?=
 =?iso-8859-1?Q?LuZJRGtUOYwVTJ0RAMNoRd5MbLCLD5ZRfbMKFomuNhyMk3a4s1MtIDU6+o?=
 =?iso-8859-1?Q?Xe0NyRU126O3yhbRrttdSyORTXRBgwe1oP6l41l6uloNOUPhBEWBBE5Ie0?=
 =?iso-8859-1?Q?b6dUd5E9Mi3hAyWBAIOb0n7tM1lPlyjLKeBAHSiqtW+bYO6DnYHpp09+NB?=
 =?iso-8859-1?Q?SMXXrnuvsyLlh22/4sfzAr+34RGkPbSPzSeqrgCp0H7qRl5A22rnf3rtAW?=
 =?iso-8859-1?Q?Kr8f1djz/hNiQgZAzshTNS0ENXZplnf47ti9/+Q4kYZDKa4qS7LsvkKYLE?=
 =?iso-8859-1?Q?GJUWCp7uP7HtxTC1+oFB6MtzsmckFGr4BImf305vK3Jvmkq+jXWW/ZtHTB?=
 =?iso-8859-1?Q?cI/tTEDwEtgpWuUswa+n73AshTBWKOy6btfmkcnYKvHOwQ3bu3aNHUuwjt?=
 =?iso-8859-1?Q?lGC6k8Bpoaw6J0QmKtUGQwa/Dvgx+SIphkaKVtNVGq/Ewh6mtjNh+Ahsfy?=
 =?iso-8859-1?Q?xElN+NRfTuTA2luh37BZONHhGiVdJ8ZuDVq52VxeMSVF1Xa+6ClryrjYuD?=
 =?iso-8859-1?Q?M271nkWUFz5gr2cSSdOOfbfnDwmssK1yPIwFtlgGaz9dMED41koV5RjiAb?=
 =?iso-8859-1?Q?KgUyXCre9zEBRMF0jijPoOgzRfibmw1+uu2+38/qpVHuoTK4yP2AipY6bz?=
 =?iso-8859-1?Q?XqnAo2vTfeFpq1j8rOhh20EtIRfnDrJJVOxfv27Dm/rGgJg9LdenT2M/H1?=
 =?iso-8859-1?Q?DcRpoIm1z5t1kY0qYvu9ZXlhpPomVyFh/FTP+em8ANOut8kJ7eOqdYvj8U?=
 =?iso-8859-1?Q?gqsX/3S7ARMzCdiKPq05VdO9tZSCX12cDKMwknqU9ZQuwONooqPjvuoINd?=
 =?iso-8859-1?Q?9IFwjm2kKVfg9I/3pVuSnhFOvfDmVjb6Ef1d6nQY76JsbGZAYHskZLHVQa?=
 =?iso-8859-1?Q?v0RSn6w8cJ//P1ZME4TZeToaq1e5eT7cF0zO0N04HM4Mb179rvvtp+IMy0?=
 =?iso-8859-1?Q?zrxA?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB183594E043D2D4644D204710C74C9PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 077462c2-825e-4fe4-892c-08da9adb4702
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 07:39:40.5897
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR84MB1353
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 07:39:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58087

--_000_PH0PR84MB183594E043D2D4644D204710C74C9PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, I added these two lines now to a file named virglrenderer_0.9.1.bb . Bi=
tbake now says:

ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native: ..=
. DEPENDS on or otherwise requires it)
ERROR: Required build target 'core-image-weston' has no buildable providers=
.
Missing or unbuildable dependency chain was: {'core-image-weston', 'meta-ex=
tsdk-toolchain', 'qemu-helper-native', 'qemu-system-native', 'virglrenderer=
-native', 'ninja-nativevulkan-loader'

________________________________
From: Markus Volk <f_l_k@t-online.de>
Sent: Monday, September 19, 2022 5:16 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>; yocto@lists.yoctoproject.or=
g <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding Vulkan to core-image-weston

Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile <heideggm@hotmai=
l.com>:
This wasn't enough

i guess you would also need to add venus support to virglrenderer.bb for qe=
mu:

DEPENDS:append =3D "vulkan-loader vulkan-headers"
EXTRA_OEMESON +=3D "-Dvenus-experimental=3Dtrue"

but i have never tested this

--_000_PH0PR84MB183594E043D2D4644D204710C74C9PH0PR84MB1835NAMP_
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
Ok, I added these two lines now to a file named virglrenderer_0.9.1.bb . Bi=
tbake now says:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
ERROR: Nothing PROVIDES 'ninja-nativevulkan-loader' (but virtual:native: ..=
. DEPENDS on or otherwise requires it)</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
ERROR: Required build target 'core-image-weston' has no buildable providers=
.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Missing or unbuildable dependency chain was: {'core-image-weston', 'meta-ex=
tsdk-toolchain', 'qemu-helper-native', 'qemu-system-native', 'virglrenderer=
-native', 'ninja-nativevulkan-loader'&nbsp;
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Markus Volk &lt;f_l=
_k@t-online.de&gt;<br>
<b>Sent:</b> Monday, September 19, 2022 5:16 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;; yocto@lists.yo=
ctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding Vulkan to core-image-weston</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"x_geary-body" dir=3D"auto">Am Mo, 19. Sep 2022 um 16:54:52 +0000=
 schrieb Edgar Mobile &lt;heideggm@hotmail.com&gt;:<br>
<blockquote type=3D"cite">This wasn't enough</blockquote>
<div><br>
</div>
<div>i guess you would also need to add venus support to virglrenderer.bb f=
or qemu:</div>
<div><br>
</div>
<div>DEPENDS:append =3D &quot;vulkan-loader vulkan-headers&quot;</div>
<div>EXTRA_OEMESON +=3D &quot;<span class=3D"x_s">-D</span><span class=3D"x=
_s">venus-experimental=3Dtrue&quot;</span></div>
<div><span class=3D"x_s"><br>
</span></div>
<div><span class=3D"x_s">but i have never tested this</span></div>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR84MB183594E043D2D4644D204710C74C9PH0PR84MB1835NAMP_--

