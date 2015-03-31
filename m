Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD18FE0056E; Tue, 31 Mar 2015 11:01:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94634E003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 11:01:45 -0700 (PDT)
Received: by pactp5 with SMTP id tp5so26562702pac.1
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 11:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yEnuLCMI8Vd9qVZ0pHhDpRNwYsD7luSJL7vAkEIbAJo=;
	b=VZ+Fjjk0C6gamJGi0JgYQzFPuwtnLMSVjcasgf8uMzwdCg1XH0+stiLt7tEdl+ywTT
	fYA0ZRmYVXqszpeJ5nXBuLkAuttwFOtzVJxzIFnzzowmA3YWCDHiVNE39PfgSK6R1h5Q
	4O6U7KwykFqS7MkJ52znyE/UoS0QFHqN6lL7FYeuT90TOKwvnoqbbIwR5/QaxsCAMFNf
	/X7ocrmGoj//TF3u97NzbLeZsjGJfH0LVHdA8ODpKO1AndXxtl3XOiEO7iEw9//2hafD
	kWy5mDER89nUn1ZPrLVpX38jOe7WwbM52C66db57z5pOIAtgCmwPHk394vi8/X6g1o0y
	Rr6g==
X-Received: by 10.66.137.35 with SMTP id qf3mr25616993pab.17.1427824904805;
	Tue, 31 Mar 2015 11:01:44 -0700 (PDT)
Received: from ?IPv6:2601:9:500:ece:6:cdb2:cfe6:6df6?
	([2601:9:500:ece:6:cdb2:cfe6:6df6]) by mx.google.com with ESMTPSA id
	da10sm14002972pac.42.2015.03.31.11.01.43
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 31 Mar 2015 11:01:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3
In-Reply-To: <DA.DC.15273.6011A155@epcpsbgx1.samsung.com>
Date: Tue, 31 Mar 2015 11:01:42 -0700
Message-Id: <DE4997FE-04B3-4173-9552-D65661C62878@gmail.com>
References: <DA.DC.15273.6011A155@epcpsbgx1.samsung.com>
To: maninder1.s@samsung.com
X-Mailer: Apple Mail (2.2070.6)
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] [PATCH 1/1] Remove extra check for ld-linux.so.3 in strcmp
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
X-List-Received-Date: Tue, 31 Mar 2015 18:01:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_074C150B-7B87-48D9-80F5-A259C0D902C4"

--Apple-Mail=_074C150B-7B87-48D9-80F5-A259C0D902C4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Mar 30, 2015, at 8:14 PM, Maninder Singh <maninder1.s@samsung.com> =
wrote:
>=20
> Hi,
>=20
> =46rom 05ab779af24baef957972aa1d2a9e9d29212cc4c Mon Sep 17 00:00:00 =
2001
> From: Maninder Singh <maninder1.s@samsung.com =
<mailto:maninder1.s@samsung.com>>
> Date: Thu, 19 Mar 2015 03:02:59 +0530
> Subject: [PATCH 1/1] Remove extra check for ld-linux.so.3 in strcmp
>  =20
> if (! strcmp (soname, "ld-linux.so.2")
>       || ! strcmp (soname, "ld-linux.so.3")  ------------------------>
>       || ! strcmp (soname, "ld.so.1")
>       || ! strcmp (soname, "ld-linux-ia64.so.2")
>       || ! strcmp (soname, "ld-linux-x86-64.so.2")
>       || ! strcmp (soname, "ld64.so.1")
>       || ! strcmp (soname, "ld-linux.so.3") =
---------------------------> redundant code
>       || ! strcmp (soname, "ld-linux-armhf.so.3"))
>=20
> Signed-off-by: Maninder Singh=20

use First Last <your@email>

> ---
> src/get.c |    1 -
> 1 files changed, 0 insertions(+), 1 deletions(-)
> diff --git a/src/get.c b/src/get.c
> index 6a63f02..a34668a 100644
> --- a/src/get.c
> +++ b/src/get.c
> @@ -35,7 +35,6 @@ is_ldso_soname (const char *soname)
>        || ! strcmp (soname, "ld-linux-ia64.so.2")
>        || ! strcmp (soname, "ld-linux-x86-64.so.2")
>        || ! strcmp (soname, "ld64.so.1")
> -      || ! strcmp (soname, "ld-linux.so.3")
>        || ! strcmp (soname, "ld-linux-armhf.so.3"))
>      return 1;
>    return 0;
> --=20
> 1.7.1
>=20
>=20
> Thanks and Regards,
> Maninder Singh
> <201503310844012_QKNMBDIF.gif>
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_074C150B-7B87-48D9-80F5-A259C0D902C4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 30, 2015, at 8:14 PM, Maninder Singh &lt;<a =
href=3D"mailto:maninder1.s@samsung.com" =
class=3D"">maninder1.s@samsung.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p =
style=3D"margin-top: 5px; font-family: Arial, arial; margin-bottom: 5px; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: 16px; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">Hi,</p><p style=3D"margin-top: 5px; font-family: Arial, =
arial; margin-bottom: 5px; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><br class=3D"">=46rom =
05ab779af24baef957972aa1d2a9e9d29212cc4c Mon Sep 17 00:00:00 2001<br =
class=3D"">From: Maninder Singh &lt;<a =
href=3D"mailto:maninder1.s@samsung.com" =
class=3D"">maninder1.s@samsung.com</a>&gt;<br class=3D"">Date: Thu, 19 =
Mar 2015 03:02:59 +0530<br class=3D"">Subject: [PATCH 1/1] Remove extra =
check for ld-linux.so.3 in strcmp<br class=3D"">&nbsp;&nbsp;<br =
class=3D"">if (! strcmp (soname, "ld-linux.so.2")<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! strcmp (soname, =
"ld-linux.so.3")&nbsp;&nbsp;------------------------&gt;<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! strcmp (soname, =
"ld.so.1")<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! strcmp =
(soname, "ld-linux-ia64.so.2")<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! strcmp (soname, =
"ld-linux-x86-64.so.2")<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! strcmp (soname, =
"ld64.so.1")<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! =
strcmp (soname, "ld-linux.so.3") ---------------------------&gt; =
redundant code<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! =
strcmp (soname, "ld-linux-armhf.so.3"))<br class=3D""><br =
class=3D"">Signed-off-by: Maninder Singh<span =
class=3D"Apple-converted-space">&nbsp;</span><maninder1.s@samsung.com =
class=3D""><br =
class=3D""></maninder1.s@samsung.com></p></div></blockquote><div><br =
class=3D""></div><div>use First Last &lt;your@email&gt;</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><p =
style=3D"margin-top: 5px; font-family: Arial, arial; margin-bottom: 5px; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: 16px; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><maninder1.s@samsung.com class=3D"">---<br =
class=3D"">src/get.c |&nbsp;&nbsp;&nbsp;&nbsp;1 -<br class=3D"">1 files =
changed, 0 insertions(+), 1 deletions(-)<br class=3D"">diff --git =
a/src/get.c b/src/get.c<br class=3D"">index 6a63f02..a34668a 100644<br =
class=3D"">--- a/src/get.c<br class=3D"">+++ b/src/get.c<br class=3D"">@@ =
-35,7 +35,6 @@ is_ldso_soname (const char *soname)<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; || ! strcmp (soname, =
"ld-linux-ia64.so.2")<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|| ! strcmp (soname, "ld-linux-x86-64.so.2")<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; || ! strcmp (soname, =
"ld64.so.1")<br class=3D"">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|| ! =
strcmp (soname, "ld-linux.so.3")<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; || ! strcmp (soname, =
"ld-linux-armhf.so.3"))<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp; return =
1;<br class=3D"">&nbsp;&nbsp; return 0;<br class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">1.7.1<br =
class=3D""><br class=3D""><br class=3D"">Thanks and Regards,<br =
class=3D"">Maninder Singh</maninder1.s@samsung.com></p><table =
id=3D"confidentialsignimg" style=3D"font-family: Arial, arial; =
letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: =
none; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><tbody class=3D""><tr class=3D""><td namo_lock=3D"" =
style=3D"margin-top: 5px; font-family: Arial, arial; margin-bottom: 5px; =
font-size: 9pt;" class=3D""><p style=3D"margin-top: 5px; font-family: =
Arial, arial; margin-bottom: 5px; font-size: 9pt;" class=3D""><span =
id=3D"cid:BEI0XT4NZ5JE@namo.co.kr">&lt;201503310844012_QKNMBDIF.gif&gt;</s=
pan></p></td></tr></tbody></table><span style=3D"font-family: Arial, =
arial; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Arial, arial; font-size: 12px; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: 16px; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Arial, =
arial; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Arial, arial; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 16px; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_074C150B-7B87-48D9-80F5-A259C0D902C4--
