Return-Path: <raj.khem@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE612E0043E
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 23:07:05 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id ta17so11443312obb.18
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 23:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=o+pwfrnC34ys1FuyaXgRv03GXw4s16TSzdoprFe72Tg=;
	b=xiI0mBW17+AVMReB7QYXB7tqc3hdzumZAnQKKLazro8Vd/t88pwRYzWrtnMr4RUAup
	FwkOJhixdvgBFbwp1IuZFaIlri7j/a1LYR+b6WjqiOmht7qfcp3DEZ2Lpo5LNX6J/fcT
	yE+f++FSbXsrxnH4MJTQ6ekwnGsxwLrgToXzVWvCckl0Ht0sLLQ0oIVhCmuqEQMwD212
	c6InZ9AZqSjd1WFhjYbzz2lNIJOcnkBCriN75SZnYiGi9M88d0a36VhRR02umbB4ArOi
	Qxm+oaeXkBt5xGRuEdxaMgiL31EELAZkSvxeu8wq1V27uXfdcTgXIO2wSWoVBU8m3cXK
	tJzA==
X-Received: by 10.182.119.169 with SMTP id kv9mr821975obb.66.1376460425197;
	Tue, 13 Aug 2013 23:07:05 -0700 (PDT)
Received: from [172.23.7.190] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id hl3sm5982426obb.0.2013.08.13.23.07.03
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 23:07:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
Date: Tue, 13 Aug 2013 23:07:03 -0700
Message-Id: <37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build packages-ssh, telnet, alsa and other package for arm
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
X-List-Received-Date: Wed, 14 Aug 2013 06:07:07 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E545242D-C66A-45E1-BAFF-FE66C6C8A03E"

--Apple-Mail=_E545242D-C66A-45E1-BAFF-FE66C6C8A03E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 13, 2013, at 10:49 PM, Amit Kumar <Amit.Kumar@lntinfotech.com> =
wrote:

> Hi,
> =20
>             Using the Yocto Project 1.4, I want to build the packages =
like ssh, telnet, alias and other library packages for arm. I am not =
getting an idea how I should have to add those packages in my build =
environment. I want to build them and test, using the QEMU, is that =
possible? I want to build them for arm.


You can start by building a reference image e.g. core-image-basic and =
then add the packages as you want extra I would encourage to read =
through the=20
manual

=
https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.=
html

especially IMAGE_FEATURES and IMAGE_INSTALL and CORE_IMAGE_EXTRA_INSTALL =
variables.

> =20
> =20
> =20
> Thanks & Regards
> Amit K
>=20
> The contents of this e-mail and any attachment(s) may contain =
confidential or privileged information for the intended recipient(s). =
Unintended recipients are prohibited from taking action on the basis of =
information in this e-mail and using or disseminating the information, =
and must notify the sender and delete it from their system. L&T Infotech =
will not accept responsibility or liability for the accuracy or =
completeness of, or the presence of any virus or disabling code in this =
e-mail"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E545242D-C66A-45E1-BAFF-FE66C6C8A03E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><base href=3D"x-msg://5038/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On Aug 13, 2013, =
at 10:49 PM, Amit Kumar &lt;<a =
href=3D"mailto:Amit.Kumar@lntinfotech.com">Amit.Kumar@lntinfotech.com</a>&=
gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"font-size: 10pt; font-family: =
'Trebuchet MS', sans-serif; ">Hi,<o:p></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"font-size: 10pt; font-family: =
'Trebuchet MS', sans-serif; ">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><span style=3D"font-size: 10pt; font-family: 'Trebuchet MS', =
sans-serif; =
">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span =
class=3D"Apple-converted-space">&nbsp;</span></span><span =
style=3D"font-family: 'Trebuchet MS', sans-serif; ">Using the Yocto =
Project 1.4, I want to build the packages like ssh, telnet, alias and =
other library packages for arm. I am not getting an idea how I should =
have to add those packages in my build environment. I want to build them =
and test, using the QEMU, is that possible? I want to build them for =
arm.</span></div></div></div></blockquote><div><br></div><div><br></div><d=
iv>You can start by building a reference image e.g. core-image-basic and =
then add the packages as you want extra I would encourage to read =
through the&nbsp;</div><div>manual</div><div><br></div><div><a =
href=3D"https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref=
-manual.html">https://www.yoctoproject.org/docs/current/poky-ref-manual/po=
ky-ref-manual.html</a></div><div><br></div><div>especially =
IMAGE_FEATURES and IMAGE_INSTALL and&nbsp;<span style=3D"background-color:=
 rgb(255, 255, 255); color: rgb(0, 68, 68); font-family: Verdana, Sans, =
sans-serif; text-align: right; ">CORE_IMAGE_EXTRA_INSTALL =
variables.</span></div><br><blockquote type=3D"cite"><div lang=3D"EN-US" =
link=3D"blue" vlink=3D"purple" style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><span style=3D"font-family: 'Trebuchet MS', =
sans-serif; "><o:p></o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"font-family: 'Trebuchet MS', sans-serif; =
">&nbsp;</span></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif; "><span style=3D"font-family: =
'Trebuchet MS', sans-serif; ">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><span style=3D"font-family: 'Trebuchet MS', sans-serif; =
">&nbsp;</span></div><div style=3D"margin: 0in 0in 0.0001pt; font-size: =
11pt; font-family: Calibri, sans-serif; "><span style=3D"font-family: =
'Trebuchet MS', sans-serif; ">Thanks &amp; =
Regards<o:p></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><span =
style=3D"font-family: 'Trebuchet MS', sans-serif; ">Amit K</span><span =
style=3D"font-size: 10pt; font-family: 'Trebuchet MS', sans-serif; =
"><o:p></o:p></span></div></div><br><hr><font face=3D"Arial" =
size=3D"3">The contents of this e-mail and any attachment(s) may contain =
confidential or privileged information for the intended recipient(s). =
Unintended recipients are prohibited from taking action on the basis of =
information in this e-mail and using or disseminating the information, =
and must notify the sender and delete it from their system. L&amp;T =
Infotech will not accept responsibility or liability for the accuracy or =
completeness of, or the presence of any virus or disabling code in this =
e-mail"<br></font>_______________________________________________<br>yocto=
 mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color:=
 purple; text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></body></html>=

--Apple-Mail=_E545242D-C66A-45E1-BAFF-FE66C6C8A03E--
