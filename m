Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f50.google.com (mail-da0-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E24FE006CB
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 23:14:53 -0700 (PDT)
Received: by mail-da0-f50.google.com with SMTP id t1so1941724dae.37
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 23:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=IDfBv1JH+/iDVI2grQ2pckUd9xDwUU34wIdnVqwcY88=;
	b=l6eyNFsfGqH994BQob8KIbrN+tcTNXTPgWOI9N/2HBEcADDOgJB9TU9/hasNUCUpRu
	6cm1Uxgb6lKrTetoupT2lZ53zFbOzUSo2ELtRjF5RozliU3BWuPzw9Af7ovYLak3Ds1b
	dS6GqubVEmAlIDpxlfPQ4DbwP9FtbwX5grY6R6fQCJ5r8+LtJ/rbO7dzQk+LrP4yDaKn
	QJctZquGlVOZoQGPi5u8IhQof6zhWycOUjqi4mjuKMHAWz44xnsbEJNCsvhHsKDsR2vD
	HemqpHQY+XkhNc9t++ZMbMMUVp9y+esgKsKi04QwizbFnDItX0oLR1O1QCI7vzFc/W4H
	FcRA==
X-Received: by 10.66.230.164 with SMTP id sz4mr27755953pac.124.1366006492641; 
	Sun, 14 Apr 2013 23:14:52 -0700 (PDT)
Received: from jchheda-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id w8sm19068479pbt.17.2013.04.14.23.14.51
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 14 Apr 2013 23:14:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Sun, 14 Apr 2013 23:14:49 -0700
Message-Id: <C0A8E72C-810B-4558-BC59-232DE17E0804@gmail.com>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
To: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 06:14:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_92A45C0D-33DD-42DB-9B22-689C977CA989"

--Apple-Mail=_92A45C0D-33DD-42DB-9B22-689C977CA989
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Apr 14, 2013, at 10:38 PM, Krishna Dwivedi =
<Krishna.Dwivedi@aricent.com> wrote:

> Hi All,
> =20
> Thanks in advance.
> Can anyone please let me know what could be issue here.
> =20
> Regards,
> Krishna
> =20
> =20
> From: Krishna Dwivedi=20
> Sent: Thursday, April 11, 2013 7:50 PM
> To: 'yocto@yoctoproject.org'
> Subject: Arguement list too big error in bitbake meta-toolchain for =
MIPS architechture
> =20
> Hi All,
> =20
> I am trying to build recipe meta-toolchain for MIPS architecture but =
running into errors. Can anyone please let me know, if I am missing =
anything here or what could be root cause of this and how can I fix it. =
I have followed these steps:
> =20
> 1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D "qemumips" =
for mips architechture.
> =20
> 2)source oe-init-build-env.
> =20
> 3)bitbake meta-toolchain.
> =20
> In third step,I am running into these errors:
> =20
> NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
> ERROR: Error executing a python function in =
/home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb:
> CalledProcessError: Command 'cp -al =
/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2=
.17-r0/packages-split/* =
/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2=
.17-r0/sstate-build-package//packages-split' returned non-zero exit =
status 126 with output /bin/sh: /bin/cp: Argument list too long
> =20

what shell are you using on build host and what OS does it run ?



--Apple-Mail=_92A45C0D-33DD-42DB-9B22-689C977CA989
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><base href=3D"x-msg://1526/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On Apr 14, 2013, =
at 10:38 PM, Krishna Dwivedi &lt;<a =
href=3D"mailto:Krishna.Dwivedi@aricent.com">Krishna.Dwivedi@aricent.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"color: rgb(31, 73, 125); ">Hi =
All,<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><span style=3D"color:=
 rgb(31, 73, 125); ">&nbsp;</span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"color: rgb(31, 73, 125); ">Thanks in =
advance.<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><span style=3D"color:=
 rgb(31, 73, 125); ">Can anyone please let me know what could be issue =
here.<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><span style=3D"color:=
 rgb(31, 73, 125); ">&nbsp;</span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"color: rgb(31, 73, 125); ">Regards,<o:p></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"color: rgb(31, 73, 125); =
">Krishna<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><span style=3D"color:=
 rgb(31, 73, 125); ">&nbsp;</span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"color: rgb(31, 73, 125); ">&nbsp;</span></div><div><div =
style=3D"border-style: solid none none; border-top-width: 1pt; =
border-top-color: rgb(181, 196, 223); padding: 3pt 0in 0in; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><b><span style=3D"font-size: 10pt; font-family: =
Tahoma, sans-serif; ">From:</span></b><span style=3D"font-size: 10pt; =
font-family: Tahoma, sans-serif; "><span =
class=3D"Apple-converted-space">&nbsp;</span>Krishna Dwivedi<span =
class=3D"Apple-converted-space">&nbsp;</span><br><b>Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Thursday, April 11, 2013 =
7:50 PM<br><b>To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>'<a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; =
">yocto@yoctoproject.org</a>'<br><b>Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Arguement list too big =
error in bitbake meta-toolchain for MIPS =
architechture<o:p></o:p></span></div></div></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">Hi =
All,<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif; "><o:p>&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; ">I am trying to build recipe meta-toolchain for =
MIPS architecture but running into errors. Can anyone please let me =
know, if I am missing anything here or what could be root cause of this =
and how can I fix it. I have followed these steps:<o:p></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
">1)In&nbsp; WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D =
"qemumips" for mips architechture.<o:p></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">2)source =
oe-init-build-env.<o:p></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">3)bitbake =
meta-toolchain.<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><b>In third step,I =
am running into these errors:<o:p></o:p></b></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">NOTE: recipe =
nativesdk-gettext-0.18.2-r0: task do_configure: =
Started<o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; ">ERROR: Error =
executing a python function in =
/home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb:<=
o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif; ">CalledProcessError: Command 'cp -al =
/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2=
.17-r0/packages-split/* =
/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2=
.17-r0/sstate-build-package//packages-split' returned non-zero exit =
status 126 with output /bin/sh: /bin/cp:<span =
class=3D"Apple-converted-space">&nbsp;</span><b>Argument list too =
long</b><o:p></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; =
"><o:p>&nbsp;</o:p></div></div></div></blockquote><div><br></div><div>what=
 shell are you using on build host and what OS does it run =
?</div><div><br></div><div><br></div></div></body></html>=

--Apple-Mail=_92A45C0D-33DD-42DB-9B22-689C977CA989--
