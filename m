Return-Path: <pieter.cardoen@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D883E00E4B; Thu,  1 Feb 2018 16:27:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pieter.cardoen[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7124 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Feb 2018 16:27:51 PST
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072020.outbound.protection.outlook.com [40.92.72.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47E69E00CE8
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 16:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=B6AseXjr8Q7RWItO60D0kN2kbeQwBftGtrtJbiK+Y+k=;
	b=I9r+AL9FKud0WFDGtBTaaIBDJqljobUCUG6OqOxYN+5bXDKVUw3yqvdLP+Ouc6WHBXuaYCyOOUH82CYhd9fgh4TjOSPVQYb2BQgbdCPgB5fRP1a4WB9b/ahZo2DReuqTyrg6N3Eyyt7KmTTQpM+UVABHuZfMXLxvCQYco9AH4UjtvHdbz3R/og9q45ZCbDAQsD6AFYjnFkiZXQ89wK3qW8O2RGvGvhSEveeVpVpNczxdKoLo7nbXSjlqw7H/ZJ0bxg9Q7l1Ud9Zj7eCcPZoLKdt2bC4IY6DS3HA1qGcIDK7KE07wc2uC/1UUJoWWhkOuzdhcG9pTa8XR297xw2vehg==
Received: from VE1EUR03FT030.eop-EUR03.prod.protection.outlook.com
	(10.152.18.59) by VE1EUR03HT063.eop-EUR03.prod.protection.outlook.com
	(10.152.18.181) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.428.12;
	Thu, 1 Feb 2018 08:54:02 +0000
Received: from HE1PR0401MB2633.eurprd04.prod.outlook.com (10.152.18.56) by
	VE1EUR03FT030.mail.protection.outlook.com (10.152.18.66) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.444.13 via Frontend Transport; Thu, 1 Feb 2018 08:54:02 +0000
Received: from HE1PR0401MB2633.eurprd04.prod.outlook.com
	([fe80::db1:9ee:dee2:4d9e]) by
	HE1PR0401MB2633.eurprd04.prod.outlook.com
	([fe80::db1:9ee:dee2:4d9e%17]) with mapi id 15.20.0444.016;
	Thu, 1 Feb 2018 08:54:01 +0000
From: Pieter Cardoen <pieter.cardoen@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] gcc leak-sanitizer on arm target
Thread-Index: AQHTmqOYPgAv7p01o0mHhRtkfr5ToaOOVSMAgADpMes=
Date: Thu, 1 Feb 2018 08:54:01 +0000
Message-ID: <HE1PR0401MB2633D01203D8E5ED5519F8898EFA0@HE1PR0401MB2633.eurprd04.prod.outlook.com>
References: <AM4PR08MB289977F5166DA17908D660498EFB0@AM4PR08MB2899.eurprd08.prod.outlook.com>,
	<CAMKF1soOMrVJu_TDR1ZxRd9VJrc97=t+f54rfBDHkCCia99YwQ@mail.gmail.com>
In-Reply-To: <CAMKF1soOMrVJu_TDR1ZxRd9VJrc97=t+f54rfBDHkCCia99YwQ@mail.gmail.com>
Accept-Language: nl-BE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:66296476AFDF799B351833A4BD347B6F19E4BD139EFFF5ACFEDD191F1526C1BA;
	UpperCasedChecksum:E0F1D219A4BD56322D200EF1CE07DAEEA5E34254838B6D8F0750B1DAB0E4F636;
	SizeAsReceived:7220; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hpodrj5+2YjLZrjsXFKY2xNhzKzqJYtv]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT063;
	6:5JSVc/Jj97M8XOWHiv9Jbq8+ysCDop2FCL/5cmHaPtHHP6XapIPHm0oJFtBVcRGj373bZNZ6BjMXKH7QTbWXFnkamhw/L1BjSbTOQj6Z2uJb52lbNZbx35jurG7N8rLi1NLsgS7s8prVhQHkRn3ZdlKoToXC3iEZJ+K5ereUdzNqXDRZH8Yt/EEEIHmIs5DEcZLHtSdwDvpGoISVCvT7nqetgNDyLvOQmIji/L7VvsT2oRr+USg4/Lm7yk7qrcNi0Tqd7AJKtgg+o8LRZT6OQmn8T9dhoTX6AfHlQrYz5Wf+8AMop4PCih+0VB5TjGwPFsply9iRtDlmpSOXw8jqQ2VlGPzfoE38ReH1QPEO5J8=;
	5:pgs7TIONNdAbixbuMwtKGTjUWGZu/+zYiy0x00OeKLKzje/y7JvgwT1OMtP9crTYb0UB7vjtuAebI764/Lt9kxsPVM4CXZYmAZTeh1jMbljPzRkZ/fAFghRKTabP4KccY/bGx1EdPGXhs+fryWrlO0CyZhcndiASSFW8GCZylJM=;
	24:JbdhETrLb5SnyWVaDROaMrcV3Glbn0FxGOshQ1u/iOq6oAjxWLh6Z97OePj+4WgVVsNb1vOiRB7omymXQBtI1Qyy6mQvo5qzvsyVcrwXTuU=;
	7:sIIIhqMEVi13X6YEAsgYh0LeDXBRS7yEuKRDN1a06P3N7mXEuT07HB23ar6dNWPGOiYrKO6nkOP21VwlVYUIsQMbTL41RJEXy82O3IqZmWjXZhUIaFY0JqrJKZPZvSoYaZeuPpOxeDvLkALRBNXZe4bXxpOPX1CbE6R7fkNRJMYS1SMTssqVLWrgVLgSbBI5ZPh+FtXiN+C6PPvQ3XR0+gSfbch+wn9Hsw2vZ+jSMzZRMBJNKc6erh0yXS1O28pb
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:VE1EUR03HT063; 
x-ms-traffictypediagnostic: VE1EUR03HT063:
x-ms-office365-filtering-correlation-id: 79a59aea-cc36-4dd8-30e0-08d569515707
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:VE1EUR03HT063; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT063; 
x-forefront-prvs: 0570F1F193
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:VE1EUR03HT063;
	H:HE1PR0401MB2633.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a59aea-cc36-4dd8-30e0-08d569515707
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2018 08:54:01.4743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT063
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc leak-sanitizer on arm target
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Feb 2018 00:27:54 -0000
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0401MB2633D01203D8E5ED5519F8898EFA0HE1PR0401MB2633_"

--_000_HE1PR0401MB2633D01203D8E5ED5519F8898EFA0HE1PR0401MB2633_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 31, 2018 at 7:06 AM, Pieter Cardoen
<pieter.cardoen@hotmail.com> wrote:
> > Dear
> >
> > I am having trouble to enable leak sanitizer and thread sanitizer for m=
y arm target. If I enable gcc-sanitizers, I only have these libraries on th=
e target rootfs:
> > * libasan.so.3
> > * libasan.so.3.0.0
> > * libsanitizer.spec
> > * libubsan.so.0
> > * libubsan.so.0.0.0
> >
> > liblsan.so.* and libtsan.so.* is missing.
> >
> > I took a look into the build directory:
> > tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-sanitizers/6.2.0-r0/gcc=
-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libsanitizer/
> >
> > in file asan/Makefile, I find "toolexeclib_LTLIBRARIES =3D libasan.la"
> > while in file lsan/Makefiel, it is commented out: "#toolexeclib_LTLIBRA=
RIES =3D liblsan.la"
> >
> > Is it possible to compile the leak and thread sanitizer library for arm=
?
> >
>
> it was only tested on x86  in past so its not included in other
> arches. You can however try it out
> by adding
>
> IMAGE_INSTALL_append =3D " liblsan libtsan"
>
> to local.conf and if it works report back and we might cook a final
> patch to enable it unconditionally.

Unfortunately, it is not working. Apparently, packages are empty:

ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: liblsan not found in the f=
eeds (cosamira_picozed_zynq7 cortexa9t2hf-neon cortexa9t2hf-vfp cortexa9hf-=
neon cortexa9hf-vfp armv7at2hf-neon armv7ahf-neon armv7at2hf-vfp armv7ahf-v=
fp armv6thf-vfp armv6hf-vfp armv5tehf-vfp armv5ehf-vfp armv5thf-vfp armv5hf=
-vfp noarch any all) in /home/pic/Documents/Builds/YOCTO/Cosamira/yoctobuil=
d/cosamira-picozed-zynq7/tmp/deploy/rpm.
ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: This is often caused by an=
 empty package declared in a recipe's PACKAGES variable. (Empty packages ar=
e not constructed unless ALLOW_EMPTY_<pkg> =3D '1' is used.)
ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/pic/Documents/Builds/YOCTO/Cosam=
ira/yoctobuild/cosamira-picozed-zynq7/tmp/work/cosamira_picozed_zynq7-poky-=
linux-gnueabi/core-image-cosamira-llc/1.0-r0/temp/log.do_rootfs.21151
ERROR: Task (/home/pic/Documents/Builds/YOCTO/Cosamira/yoctobuild/sources/m=
eta-tra-mec/recipes-core/images/core-image-cosamira-llc.bb:do_rootfs) faile=
d with exit code '1'

>
> > Thanks
> > Pieter
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



--_000_HE1PR0401MB2633D01203D8E5ED5519F8898EFA0HE1PR0401MB2633_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
On Wed, Jan 31, 2018 at 7:06 AM, Pieter Cardoen<br>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&lt;pieter.cardoen@hotmail.com&gt; wrote:<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; De=
ar<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; I =
am having trouble to enable leak sanitizer and thread sanitizer for my arm =
target. If I enable gcc-sanitizers, I only have these libraries on the targ=
et rootfs:<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; * =
libasan.so.3<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; * =
libasan.so.3.0.0<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; * =
libsanitizer.spec<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; * =
libubsan.so.0<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; * =
libubsan.so.0.0.0<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; li=
blsan.so.* and libtsan.so.* is missing.<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; I =
took a look into the build directory:<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; tm=
p/work/cortexa9hf-neon-poky-linux-gnueabi/gcc-sanitizers/6.2.0-r0/gcc-6.2.0=
/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libsanitizer/<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; in=
 file asan/Makefile, I find &quot;toolexeclib_LTLIBRARIES =3D libasan.la&qu=
ot;<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; wh=
ile in file lsan/Makefiel, it is commented out: &quot;#toolexeclib_LTLIBRAR=
IES =3D liblsan.la&quot;<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; Is=
 it possible to compile the leak and thread sanitizer library for arm?<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt;<br=
>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font><br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>it was =
only tested on x86&nbsp; in past so its not included in other<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>arches.=
 You can however try it out<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>by addi=
ng<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font><br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>IMAGE_I=
NSTALL_append =3D &quot; liblsan libtsan&quot;<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font><br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>to loca=
l.conf and if it works report back and we might cook a final<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>patch t=
o enable it unconditionally.<br>
<br>
Unfortunately, it is not working. Apparently, packages are empty: <br>
<br>
<div>ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: liblsan not found in =
the feeds (cosamira_picozed_zynq7 cortexa9t2hf-neon cortexa9t2hf-vfp cortex=
a9hf-neon cortexa9hf-vfp armv7at2hf-neon armv7ahf-neon armv7at2hf-vfp armv7=
ahf-vfp armv6thf-vfp armv6hf-vfp
 armv5tehf-vfp armv5ehf-vfp armv5thf-vfp armv5hf-vfp noarch any all) in /ho=
me/pic/Documents/Builds/YOCTO/Cosamira/yoctobuild/cosamira-picozed-zynq7/tm=
p/deploy/rpm.<br>
ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: This is often caused by an=
 empty package declared in a recipe's PACKAGES variable. (Empty packages ar=
e not constructed unless ALLOW_EMPTY_&lt;pkg&gt; =3D '1' is used.)<br>
ERROR: core-image-cosamira-llc-1.0-r0 do_rootfs: Function failed: do_rootfs=
<br>
ERROR: Logfile of failure stored in: /home/pic/Documents/Builds/YOCTO/Cosam=
ira/yoctobuild/cosamira-picozed-zynq7/tmp/work/cosamira_picozed_zynq7-poky-=
linux-gnueabi/core-image-cosamira-llc/1.0-r0/temp/log.do_rootfs.21151<br>
ERROR: Task (/home/pic/Documents/Builds/YOCTO/Cosamira/yoctobuild/sources/m=
eta-tra-mec/recipes-core/images/core-image-cosamira-llc.bb:do_rootfs) faile=
d with exit code '1'<br>
</div>
<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font><br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; Th=
anks<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; Pi=
eter<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; --=
<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; __=
_____________________________________________<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; yo=
cto mailing list<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; yo=
cto@yoctoproject.org<br>
<font size=3D"2"><span style=3D"font-size:11pt;">&gt; </span></font>&gt; <a=
 href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk494443" =
previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_15174750337400.19061503596350104" style=3D"margin-bo=
ttom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15174750337320.3879710715939628" style=3D"width: 9=
0%; background-color: rgb(255, 255, 255); position: relative; overflow: aut=
o; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: 1=
px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200);=
" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_15174750337350.7236683628461354" style=3D"vertical-align=
: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"2=
">
<div id=3D"LPRemovePreviewContainer_15174750337360.5338633504314091"></div>
<div id=3D"LPTitle_15174750337360.03836913677434517" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot=
;wf_segoe-ui_light&quot;, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&=
quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-seri=
f; line-height: 21px;">
<a id=3D"LPUrlAnchor_15174750337370.8774494463048605" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_15174750337380.9385679246176368" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot=
;wf_segoe-ui_normal&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Taho=
ma, Arial, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_15174750337390.4830530453043774" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf_=
segoe-ui_normal&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, =
Arial, sans-serif; font-size: 14px; line-height: 20px; max-height: 100px; o=
verflow: hidden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_HE1PR0401MB2633D01203D8E5ED5519F8898EFA0HE1PR0401MB2633_--
