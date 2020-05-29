Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.119])
 by mx.groups.io with SMTP id smtpd.web12.30373.1590738434496240993
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 00:47:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@exaleapsemi.onmicrosoft.com header.s=selector2-exaleapsemi-onmicrosoft-com header.b=IscKTWoG;
 spf=pass (domain: exaleapsemi.com, ip: 40.107.138.119, mailfrom: pankaj.vj@exaleapsemi.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5/gan6yUBICFRGURmzs38ELNwAQfUotYzVAedum0pf20KX9n693copo4Q5gHVe+w3ohBo+MuatgaLVGfQRiO/ulekcaV80GS6+/ZzJko7ISKzFq/5uCdE7cJn90rN+ZuwMuq+1KJVF2am5/paQpA5JYW3q5oVAiJBDvFUWF1u10tTX0OgR/4MoBkDplXOtQHZqjIwM4olmpEPtaEIY1Zf5GsYHkCn6oJwbdLzotStPesL2aO+XiHTkqfe7aGFs1o+uSo/Jtz8yFA7AbqnsI0vlFAx268eHjn3H203JXOnewCEnFqxozB0378yhfxLuTaW8XqGWQWj4+RKeYs7SOVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3lDi8fM6hOE/TnD2RV9XBUyklwz2Q6zDxRMJV9YtI4=;
 b=L19PS5j89FHW45bzrS9yxyIO5dIqehKNwEQILEGrhau4wGTk0m+RxwH7JyJFX4go0cFdEmDwcyxu76g9CJNu6Ysv5DA3EELsJxoeoUWiv2yHoBDtff3aHgZ3O7JMe4wLUs0rZ/+YafCu8/ABqANyzrTIkNZRgG9Oy1afU5R3hP59UZCVfNPU0Zn2sNQfbbZtJabhanhuf+7dxclWuqLJjlAnircWm4DOL2/OMAw7SLkMjOZpc9B1+vfGqT2Ckcy6YluoSa74U9YrgQyQt52yVzHC7i4Y1YBiBWav+iRTrwL4I/aZJJGVNBJdRgG+F80gEE2JYi2oq5UA5pLcVkKZVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=exaleapsemi.com; dmarc=pass action=none
 header.from=exaleapsemi.com; dkim=pass header.d=exaleapsemi.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=exaleapsemi.onmicrosoft.com; s=selector2-exaleapsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3lDi8fM6hOE/TnD2RV9XBUyklwz2Q6zDxRMJV9YtI4=;
 b=IscKTWoGygtLawIBs12eBR5o54YsuVLSDo3kgIBfU+I/Xn82SEYtvo2Q8HFBDacWvifQm8/RklGIMkKjF1OYLAhgSiYrQw70Oabd44gxYbvBal0TDggm29IAlZe0GpQ4TecoXGxlNN9YmOO+agR09wIYofb/K+qedtn2uBYDRQU=
Received: from MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:7a::10)
 by MA1PR01MB3740.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:7d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Fri, 29 May
 2020 07:47:10 +0000
Received: from MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a5e5:8184:d54d:bf92]) by MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a5e5:8184:d54d:bf92%6]) with mapi id 15.20.3021.031; Fri, 29 May 2020
 07:47:09 +0000
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
To: siddhartha v <siddhuvgowda.18695@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
Thread-Topic: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
Thread-Index: AQHWNYlcY8NmgHbkWUqXqfMZjyzsLai+rOSAgAAAa1s=
Date: Fri, 29 May 2020 07:47:09 +0000
Message-ID: 
 <MA1PR01MB3660114818BF26883BF11FC7EE8F0@MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>,<CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com>
In-Reply-To: 
 <CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=exaleapsemi.com;
x-originating-ip: [2409:4042:e98:c1d7:bd42:792e:3a3:d991]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34f57bd7-8226-4daa-4603-08d803a47e2e
x-ms-traffictypediagnostic: MA1PR01MB3740:
x-microsoft-antispam-prvs: 
 <MA1PR01MB374033882F5EFD9A5CD4F81FEE8F0@MA1PR01MB3740.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:383;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MzI8PZnOGdhasGDi+vunfBNXWV2t8WR/gnGjYR8KoBKG9mZA4woZhOdCIYTNlwkv5iP3PeN0telC77ik80MewLKwwOjTGstkdTo/B+vhrDLBQJlaZq5N33c7tGLJiu8ULB0I/kyXDF9gwPLPfiVJzbBKh38FI6oxaK28IFXtxFXk5G3NjyG0wy5PuV0k+M9lYXb4imZPq811h/iXter1q2vlsSqZ/NHLaV7JawF8a/Ip9z6gjyNaya/N5kA9774vOrD1QvDgN6mdnXBdauUBEoxvUoY+0GQOYxpg8dV46jVlgzucP572pQN593ws4UBPOuS0fJOTQRYL8rIim2z0ls5yao+vl2QL0o5UlG2++LsK6LngX3bcHJmhJjxg+7ViDwBTiYxosvmmk8gRpFmwwG9tPqSJfW6ui9DWfwcqlCB37Gf9wzSHKcjaoduzpWsIJM7R3tE2IatI1gf58bx0vg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(396003)(376002)(39830400003)(366004)(136003)(346002)(55016002)(166002)(52536014)(8936002)(71200400001)(76116006)(66446008)(64756008)(66556008)(66476007)(8676002)(53546011)(6506007)(4326008)(66946007)(86362001)(9686003)(966005)(186003)(508600001)(6916009)(316002)(7696005)(33656002)(19627405001)(2906002)(5660300002)(83380400001)(142933001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 ZlA+gpBeRX7kOeTu36HeL1DPdB6aPFVP9E/+s2cWO4qp7W+CjQszINJL2dTOTGfR6tStW0Qvxz+fcTqKk6T/Dw18iS+KJkjnWa43fge0Jz2i12Wk3xvfzNkwTktxiz9w6GSgEgmKCaWB5RGxNuWIL4A0GgxlSHNgbAgGu/bxZLXn8xtayg4eoKoAfdQbUfjL+qtjcfMTJjZF0DJ1BkfVGYeAVihqfbl1MnEYCCFdIJJ+G/XN6VZoay1j0CXrvF8/MPrxBuyKrDsd0t1RPKOvzYYtNZ89b0wO2Bb9BHAs4UdA0cbIKkAe0Y6VKJ2EgkIh3LjuvWV43Vn0eHGBZ+phA7/KHr1PlmTuw3/Mkci9goewIyt7AxgebagL3QROZhBukPwMiZ+48+HY1pCtL/yODeBhVePjuvDU0FICXVrzOJmYEbLRB44ZNju710u2J2xMyt5h5fJmvP+vlG0uFEuTY+PVMebG7hUvUOAEtKNUeaNWJdtWYl+pG3BWq10qMhNgIRiG8AFHuLUAkoReP9dN35jxIZPhnA1aObEuf6sgcXg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: exaleapsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34f57bd7-8226-4daa-4603-08d803a47e2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 07:47:09.3860
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 34df156e-9bc4-4450-9e80-487c0e7f9471
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4KztYeBCVZjkFVAjJmbKEk2ZZBkqOWqMOYTu1v+n9VXVX900cZLg5B6h8kbd2gje/nZd1dmWhwlsndLD4o8DlMfWQxNanVxkAwdYhxwu0/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3740
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB3660114818BF26883BF11FC7EE8F0MA1PR01MB3660INDP_"

--_000_MA1PR01MB3660114818BF26883BF11FC7EE8F0MA1PR01MB3660INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
i dont have image with .rpi-sdimg i have image with

core-image-minimal-raspberrypi4.wic.bz2
core-image-minimal-raspberrypi4.wic.bmap
core-image-minimal-raspberrypi4.testdata.json
core-image-minimal-raspberrypi4.tar.bz2
core-image-minimal-raspberrypi4.manifest
core-image-minimal-raspberrypi4.ext3

dont have core-image-base-raspberrypi3.rpi-sdimg

________________________________
From: siddhartha v <siddhuvgowda.18695@gmail.com>
Sent: Friday, May 29, 2020 1:07 PM
To: Pankaj Vinadrao Joshi <Pankaj.VJ@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto

Hello Pankaj,

  Try below mentioned steps, Hope it helps you, (there my image was"core-i=
mage-base-raspberrypi3.rpi-sdimg"  replace it by your image )


plug sd card to pc then

$: lsblk
$: sudo umount /dev/sdb*

$: sudo dd if=3Dtmp/deploy/images/raspberrypi3/core-image-base-raspberrypi=
3.rpi-sdimg of=3D/dev/sdb bs=3D4M

  >> This task will take some time and at the end we will get the output s=
omething similar(not exact it depends on build files) to below :

        46+0 records in
46+0 records out
192937984 bytes (193 MB, 184 MiB) copied, 10.2155 s, 18.9 MB/s


$: sync
$: sudo umount /dev/sdb*


Best Regards,
Siddhartha V

On Fri, May 29, 2020 at 12:48 PM Pankaj Vinadrao Joshi <pankaj.vj@exaleaps=
emi.com<mailto:pankaj.vj@exaleapsemi.com>> wrote:
Hi,
I have built the image for raspberrypi4 and i have got the following image=
s


core-image-minimal.env                                                    =
          rpi-ft5406-1-4.19.120+git0+9da67d7329-r0-raspberrypi4-20200521111=
428.dtbo
core-image-minimal-raspberrypi4-20200518130120.rootfs.ext3                =
          rpi-ft5406.dtbo
core-image-minimal-raspberrypi4-20200518130120.rootfs.manifest            =
          rpi-ft5406-raspberrypi4.dtbo

core-image-minimal-raspberrypi4-20200518130120.rootfs.tar.bz2             =
          rpi-hwup-image.env

core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bmap            =
          rpi-hwup-image-

raspberrypi4-20200521111428.rootfs.ext3

core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bz2             =
          rpi-hwup-image-

raspberrypi4-20200521111428.rootfs.manifest

core-image-minimal-raspberrypi4-20200518130120.testdata.json              =
          rpi-hwup-image-

raspberrypi4-20200521111428.rootfs.tar.bz2

core-image-minimal-raspberrypi4.ext3                                      =
          rpi-hwup-image-raspberrypi4-

20200521111428.rootfs.wic.bmap

core-image-minimal-raspberrypi4.manifest                                  =
          rpi-hwup-image-raspberrypi4-

20200521111428.rootfs.wic.bz2

core-image-minimal-raspberrypi4.tar.bz2
core-image-minimal-raspberrypi4.testdata.json
core-image-minimal-raspberrypi4.wic.bmap

core-image-minimal-raspberrypi4.wic.bz2

and  i am trying to copy core-image-minimal-raspberrypi4.wic.bz2 by using

$sudo dd if=3Dcore-image-minimal-raspberrypi4.wic.bz2 of=3D/dev/sdb

but my image is not getting copied into sd card(used two sd cards ,tried f=
ormatting with FAT,Linux),i am missing anything ,do i need to copy anything=
 else with this core-image-minimal.
which extension of image i should use to bringup my RPI4??

Thanks!



--
Thanks and Regards.
Siddhartha V.

[EXT]

--_000_MA1PR01MB3660114818BF26883BF11FC7EE8F0MA1PR01MB3660INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859=
-1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-b=
ottom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
i dont have image with .rpi-sdimg i have image with&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.wic.bz2</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.wic.bmap <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.testdata.json <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.tar.bz2 &nbsp;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.manifest &nbsp;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
core-image-minimal-raspberrypi4.ext3 <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0);">
dont have&nbsp;<span style=3D"color: rgb(32, 31, 30); font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quo=
t;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, =
sans-serif; font-size: 15px; background-color: rgb(255, 255, 255); display:=
 inline !important">core-image-base-raspberrypi3.rpi-sdimg</span></div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" c=
olor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> siddhartha v &lt;sid=
dhuvgowda.18695@gmail.com&gt;<br>
<b>Sent:</b> Friday, May 29, 2020 1:07 PM<br>
<b>To:</b> Pankaj Vinadrao Joshi &lt;Pankaj.VJ@exaleapsemi.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;<br>
<b>Subject:</b> Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yoct=
o</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hello Pankaj,
<div><br>
</div>
<div>&nbsp; Try below mentioned steps, Hope it helps you, (there my image =
was&quot;core-image-base-raspberrypi3.rpi-sdimg&quot;&nbsp; replace it by y=
our image )</div>
<div><br>
</div>
<div><br>
plug sd card to pc then <br>
<br>
$: lsblk<br>
$: sudo umount /dev/sdb*<br>
<br>
$: sudo dd if=3Dtmp/deploy/images/raspberrypi3/core-image-base-raspberrypi=
3.rpi-sdimg of=3D/dev/sdb bs=3D4M<br>
<br>
&nbsp; &gt;&gt; This task will take some time and at the end we will get t=
he output something similar(not exact it depends on build files) to below :=
<br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; 46&#43;0 records in<br>
46&#43;0 records out<br>
192937984 bytes (193 MB, 184 MiB) copied, 10.2155 s, 18.9 MB/s<br>
<br>
<br>
$: sync<br>
$: sudo umount /dev/sdb*<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Best Regards,</div>
<div>Siddhartha V</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, May 29, 2020 at 12:48 PM P=
ankaj Vinadrao Joshi &lt;<a href=3D"mailto:pankaj.vj@exaleapsemi.com">panka=
j.vj@exaleapsemi.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bor=
der-left:1px solid rgb(204,204,204); padding-left:1ex">
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
Hi,</div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
I have built the image for raspberrypi4 and i have got the following image=
s&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">core-image-minimal.env &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-ft5406-1-4.19.120&#43;git=
0&#43;9da67d7329-r0-raspberrypi4-20200521111428.dtbo<br>
</span>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.ext3 &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
rpi-ft5406.dtbo</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.manifest &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-ft5406=
-raspberrypi4.dtbo</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.tar.bz2 &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; rpi-hwup-i=
mage.env</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bmap &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-hwup-i=
mage-</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
raspberrypi4-20200521111428.rootfs.ext3</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bz2 &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; rpi-hwup-i=
mage-</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
raspberrypi4-20200521111428.rootfs.manifest</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4-20200518130120.testdata.json &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-h=
wup-image-</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
raspberrypi4-20200521111428.rootfs.tar.bz2</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4.ext3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-hwup-image-raspb=
errypi4-</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
20200521111428.rootfs.wic.bmap</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4.manifest &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-hwup-image-raspberrypi4-</=
div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
20200521111428.rootfs.wic.bz2</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4.tar.bz2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4.testdata.json&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
core-image-minimal-raspberrypi4.wic.bmap&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical-=
align:baseline; color:inherit">
&nbsp;</div>
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">core-image-minimal-raspberrypi4.wic.bz2 &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></=
div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">&nbsp;</span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
and&nbsp; i am trying to copy<strong>&nbsp;</strong><span style=3D"font-we=
ight:bold">core-image-minimal-raspberrypi4.wic.bz2</span><strong><span styl=
e=3D"margin:0px; padding:0px; border:0px; font-style:inherit; font-variant:=
inherit; font-weight:inherit; font-stretch:inherit; font-size:inherit; line=
-height:inherit; vertical-align:baseline; color:inherit">&nbsp;by
 using</span></strong></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<strong>&nbsp;</strong></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit"><strong>$sudo dd if=3Dcore-image-minimal-ra=
spberrypi4.wic.bz2 of=3D/dev/sdb&nbsp;</strong></span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit"><strong>&nbsp;</strong></span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">but my image is not getting copied into sd =
card(used two sd cards ,tried formatting with FAT,Linux),i am missing anyth=
ing ,do i need to copy anything else
 with this core-image-minimal.</span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">which extension of image i should use to br=
ingup my RPI4??</span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit"><strong>&nbsp;</strong></span></div>
<div style=3D"margin:0px; padding:0px; border:0px; font-variant-numeric:in=
herit; font-variant-east-asian:inherit; font-stretch:inherit; font-size:12p=
t; line-height:inherit; font-family:Calibri,Arial,Helvetica,sans-serif; ver=
tical-align:baseline; color:black">
<span style=3D"margin:0px; padding:0px; border:0px; font:inherit; vertical=
-align:baseline; color:inherit">Thanks!</span></div>
<br>
</blockquote>
</div>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>Thanks and Regards.</div>
Siddhartha V.
<div>&nbsp;</div>
</div>
</div>
[EXT] </div>
</body>
</html>

--_000_MA1PR01MB3660114818BF26883BF11FC7EE8F0MA1PR01MB3660INDP_--
