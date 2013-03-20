Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AD29E01469;
	Tue, 19 Mar 2013 23:43:46 -0700 (PDT)
Received: by mail-pb0-f44.google.com with SMTP id wz12so1092498pbc.31
	for <multiple recipients>; Tue, 19 Mar 2013 23:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=rLdMrUUq4HXWl2/afq9gSR2LRNMKBRtuYg2K/TCqCiU=;
	b=blZC8DqVydp4YeXWwaBldz3LRwh41Ab6bGik2hi48Ki7D9y35uyHV7n1FM5CMNHnZD
	6UfX0da/O13u3KV2OYT/dJN3ofNw0YYmXMZzDd55UVGO0dmKkh4HtZhl68ZF5PjgXwdQ
	MUKzSAm4poEwfbESt1+DW/Q/Kt9xeO1bg4fZe7YB4Bbfub9MKJerCGIPp8b+2UWgRGb4
	uUZJJZbkbH9hayrlKF5d0sA/VO2hD7b/Pk7Th4RVUrFod9GR4Sr1/Rryple+Y9cLBPWd
	6wLhcgMWahhoqd6FqtE0cdLxpbSDg0dWbs50lZTKtN6UyB5IKcbXGdtwVT1pZkllToHK
	Y9Ew==
X-Received: by 10.66.27.136 with SMTP id t8mr7269575pag.209.1363761825843;
	Tue, 19 Mar 2013 23:43:45 -0700 (PDT)
Received: from sa-nc-ipg-172-23-0-104.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id oq3sm1032194pac.16.2013.03.19.23.43.44
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 23:43:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
Date: Tue, 19 Mar 2013 23:43:43 -0700
Message-Id: <7F713EA1-FD12-46CA-9F14-DF9F83585F9D@gmail.com>
References: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
To: Sipke Vriend <sipke.vriend@xilinx.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: TUNE_PKGARCH for Microblaze
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
X-List-Received-Date: Wed, 20 Mar 2013 06:43:46 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2C41F917-0E12-4E15-8615-8E79882DB4F3"

--Apple-Mail=_2C41F917-0E12-4E15-8615-8E79882DB4F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Mar 19, 2013, at 9:08 PM, Sipke Vriend <sipke.vriend@xilinx.com> =
wrote:

> Hi all,
> =20
> We are seeking some feedback regarding common practices for defining =
TUNE_PKGARCH within Yocto.
> =20

usually its dictated by architecture, ABI and other processor features. =
the current tune files have good ways to express the relationships=20
you would translate the below table into set of TUNE_FEATURES and define =
PACKAGE_EXTRA_ARCHS if you need to express compatibility between =
different tunes

Look at arm tunes they are the best examples of complexity

> We need to define a unique TUNE_PKGARCH for the possible configuration =
of Microblaze architecture.
> Our proposal is short unique string for each HW feature which is =
enabled in Microblaze.
> =20
> For =91extensive hardware usage=92 architecture, this would result in =
something like:
> mbebv730-bs-mh-div-fb-cmp
> mbebv840-bs-mh-div-fb-cmp-re
> mbelv840-bs-ml-div-fe-cmp-re
> and for architecture with no =91hardware usage=92:
> mbebv730
> mbebv840
> mbelv840
> =20
> The table below details the unique strings and their relation to =
compiler and hardware flags, and a couple of versions of Microblaze =
architecture.
> (If this table does not show cleanly switch to fixed width font)
> -------------------
> String Compiler Flag        Hardware Flag         CPU versions
>        -mcpu=3DvX.YY.Z                              v7.30.a v8.40.a
> =20
> mbel   -mlittle-endian      C_ENDIANNESS (LITTLE) -       o
> mbeb   -mbig-endian         C_ENDIANNESS (BIG)    x       o
> =20
> bs     -mxl-barrel-shift    C_USE_BARREL          o       o
> =20
> ml     -mnoxl-soft-mul      C_USE_HW_MUL (MUL32)  o       o
> mh     -mxl-multiply-high   C_USE_HW_MUL (MUL64)  o       o
> =20
> div    -mnoxl-soft-div      C_USE_DIV             o       o
> =20
> fb     -mhard-float         C_USE_FPU (BASIC)     o       o
> fe     -mxl-float-convert   C_USE_FPU (EXTENDED)  o       o
> fe     -mxl-float-sqrt      C_USE_FPU (EXTENDED)  o       o
> =20
> cmp   -mxl-pattern-compare  C_USE_PCMP_INSTR      o       o
> =20
> re    -mxl-reorder          C_USE_REORDER_INSTR   -       o
> =20
> Where =91=96=91 means unavailable =91x=92 is only option and =91o=92 =
is optional.
> -------------------
> =20


you can express this with TUNECONFLICTS and TUNEVALID

and may be create heirarchy of tune files which builds upon common =
tunings.

> Note the table rows have hardware feature =91groupings=92, which means =
only one of the strings should be present within the TUNE_PKGARCH. For =
example the Floating Point Unit hardware feature can be defined by =
either fb (for basic mode) or fe (for extended mode).
> =20
> Regards
> Sipke
> =20
> =20
> =20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_2C41F917-0E12-4E15-8615-8E79882DB4F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"><base href=3D"x-msg://2037/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On Mar 19, 2013, =
at 9:08 PM, Sipke Vriend &lt;<a =
href=3D"mailto:sipke.vriend@xilinx.com">sipke.vriend@xilinx.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-AU" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">Hi =
all,<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">We are seeking some feedback regarding =
common practices for defining TUNE_PKGARCH within =
Yocto.<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier =
New">&nbsp;</font></div></div></div></blockquote><div><br></div><div>usual=
ly its dictated by architecture, ABI and other processor features. the =
current tune files have good ways to express the =
relationships&nbsp;</div><div>you would translate the below table into =
set of TUNE_FEATURES and define&nbsp;PACKAGE_EXTRA_ARCHS if you need to =
express compatibility between different =
tunes</div><div><br></div><div>Look at arm tunes they are the best =
examples of complexity</div><br><blockquote type=3D"cite"><div =
lang=3D"EN-AU" link=3D"blue" vlink=3D"purple" style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">We need to =
define a unique TUNE_PKGARCH for the possible configuration of =
Microblaze architecture.<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">Our proposal is =
short unique string for each HW feature which is enabled in =
Microblaze.<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">For =91extensive hardware usage=92 =
architecture, this would result in something =
like:<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; =
">mbebv730-bs-mh-div-fb-cmp<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; =
">mbebv840-bs-mh-div-fb-cmp-re<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; =
">mbelv840-bs-ml-div-fe-cmp-re<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">and for =
architecture with no =91hardware =
usage=92:<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; =
">mbebv730<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; =
">mbebv840<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; =
">mbelv840<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">The table below details the unique strings =
and their relation to compiler and hardware flags, and a couple of =
versions of Microblaze architecture.<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">(If this table =
does not show cleanly switch to fixed width =
font)<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; =
">-------------------<o:p></o:p></span></font></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><font size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">String Compiler =
Flag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hardware =
Flag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;CPU =
versions<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;-mcpu=3DvX.YY.Z&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; v7.30.a =
v8.40.a<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">mbel&nbsp; =
&nbsp;-mlittle-endian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_ENDIANNESS =
(LITTLE) -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">mbeb&nbsp; =
&nbsp;-mbig-endian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
C_ENDIANNESS (BIG)&nbsp;&nbsp;&nbsp; =
x&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">bs&nbsp;&nbsp;&nbsp; =
&nbsp;-mxl-barrel-shift&nbsp;&nbsp;&nbsp; =
C_USE_BARREL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">ml&nbsp;&nbsp;&nbsp; =
&nbsp;-mnoxl-soft-mul&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_USE_HW_MUL =
(MUL32)&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">mh&nbsp;&nbsp;&nbsp; =
&nbsp;-mxl-multiply-high&nbsp;&nbsp; C_USE_HW_MUL (MUL64)&nbsp; =
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">div&nbsp;&nbsp; =
&nbsp;-mnoxl-soft-div&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
C_USE_DIV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">fb&nbsp;&nbsp;&nbsp; =
&nbsp;-mhard-float&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
C_USE_FPU (BASIC)&nbsp;&nbsp;&nbsp;&nbsp; =
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">fe&nbsp;&nbsp;&nbsp; =
&nbsp;-mxl-float-convert&nbsp;&nbsp; C_USE_FPU (EXTENDED)&nbsp; =
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">fe&nbsp;&nbsp;&nbsp; =
&nbsp;-mxl-float-sqrt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C_USE_FPU =
(EXTENDED)&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">cmp&nbsp;&nbsp; -mxl-pattern-compare&nbsp; =
C_USE_PCMP_INSTR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">re&nbsp;&nbsp;&nbsp; =
-mxl-reorder&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
C_USE_REORDER_INSTR&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
o<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font face=3D"Courier=
 New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif; "><font size=3D"2" =
face=3D"Courier New"><span style=3D"font-size: 11pt; font-family: =
'Courier New'; ">Where =91=96=91 means unavailable =91x=92 is only =
option and =91o=92 is optional.<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; =
">-------------------<o:p></o:p></span></font></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><font face=3D"Courier =
New">&nbsp;</font></div></div></div></blockquote><div><br></div><div><br><=
/div><div>you can express this with&nbsp;TUNECONFLICTS =
and&nbsp;TUNEVALID</div><div><br></div><div>and may be create heirarchy =
of tune files which builds upon common tunings.</div><br><blockquote =
type=3D"cite"><div lang=3D"EN-AU" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; ">Note the table =
rows have hardware feature =91groupings=92, which means only one of the =
strings should be present within the TUNE_PKGARCH. For example the =
Floating Point Unit hardware feature can be defined by either fb (for =
basic mode) or fe (for extended =
mode).<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 11pt; =
font-family: 'Courier New'; ">Regards<o:p></o:p></span></font></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 11pt; font-family: 'Courier New'; =
">Sipke<o:p></o:p></span></font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
face=3D"Courier New">&nbsp;</font></div></div><br =
clear=3D"all">_______________________________________________<br>yocto =
mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" style=3D"color: =
purple; text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></body></html>=

--Apple-Mail=_2C41F917-0E12-4E15-8615-8E79882DB4F3--
