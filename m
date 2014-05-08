Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70832E00B3F; Thu,  8 May 2014 10:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 167 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 10:37:44 PDT
Received: from mail-wi0-f173.google.com (unknown [209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CCDFE00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:37:44 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id bs8so96748wib.0
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8hD7T1L7i4CHfzoq9jlb0/hfBVeMuK1tapzXntb4wl4=;
	b=lx3cBLH51XoCzKsRFEmB3hscBVyZE8wMAR+nhAENi7SOE7MdmY9eWjUoZE5U6mvsDY
	4A8ikUFgaTOuTc9HxXSFlPa6KlKT6gvMI6u6kA2wKh38V2Um/eUEeOcwuIS7Bd5BXe7t
	fe3+o+zbouSVW1D9B2ZBwrvk/e/RudnaiadQK5FtbIsnV8uVsV0D/kBawGn0F6wqUzdB
	+Ef1AU4/lgTHbuo6hYGCjHEgge9E3zRwQlFPIZzNbWj8Xt7+yoy0L9QWPYJRSz1faZbX
	BDKlFAVsdFC/cDoLl0IYctasgp6LgTW4J0+VIX96GYysLuz0TdY74PtYhGWPd2EeFRE0
	EeWw==
X-Gm-Message-State: ALoCoQk5DdOdZrc03fJsXHVnOLjNVuGB2vhHRlHtOUhvMnu4duWcs/lJbUBWNnTa5SS0u+5vZCy7
X-Received: by 10.194.103.230 with SMTP id fz6mr4250545wjb.37.1399570664111;
	Thu, 08 May 2014 10:37:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Thu, 8 May 2014 10:37:24 -0700 (PDT)
X-Originating-IP: [5.13.208.17]
In-Reply-To: <1397826248-6071-1-git-send-email-mburtin@connected-labs.com>
References: <1397826248-6071-1-git-send-email-mburtin@connected-labs.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 8 May 2014 20:37:24 +0300
Message-ID: <CAK18fxHYV3ZAiU1gxfzMTrmWJqFfONRkOz0Ky-Xu4Pci31=oww@mail.gmail.com>
To: =?UTF-8?Q?Micha=C3=ABl_Burtin?= <mburtin@connected-labs.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] xserver-xf86-config: remove changes of THISDIR and FILESPATH
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
X-List-Received-Date: Thu, 08 May 2014 17:37:47 -0000
Content-Type: multipart/alternative; boundary=047d7bfeb51c45db5804f8e6f096

--047d7bfeb51c45db5804f8e6f096
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 18, 2014 at 4:04 PM, Micha=C3=ABl Burtin
<mburtin@connected-labs.com>wrote:

> THISDIR and FILESPATH are not supposed to be changed from within
> recipes. This was causing troubles with other bbappend.
>
> Change-Id: I7c3c788ddb61b0b790a9fe06f86e4bd93a822c8c
> Signed-off-by: Micha=C3=ABl Burtin <mburtin@connected-labs.com>
> ---
>  recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git
> a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> index 3e86645..0b4dc31 100644
> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> @@ -3,9 +3,6 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>  # Don't forget to bump PRINC if you update the extra files.
>  PRINC :=3D "${@int(PRINC) + 5}"
>
> -THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> -FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
> -
>  SRC_URI_append_raspberrypi =3D " file://xorg.conf.d/10-evdev.conf "
>
>  do_install_append_raspberrypi () {
> --
> 1.9.1
>

Merged. Thank you.

--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7bfeb51c45db5804f8e6f096
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Apr 18, 2014 at 4:04 PM, Micha=C3=ABl Burtin <span dir=3D"l=
tr">&lt;<a href=3D"mailto:mburtin@connected-labs.com" target=3D"_blank">mbu=
rtin@connected-labs.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">THISDIR and FILESPATH are not supposed to be=
 changed from within<br>
recipes. This was causing troubles with other bbappend.<br>
<br>
Change-Id: I7c3c788ddb61b0b790a9fe06f86e4bd93a822c8c<br>
Signed-off-by: Micha=C3=ABl Burtin &lt;<a href=3D"mailto:mburtin@connected-=
labs.com">mburtin@connected-labs.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 3 --=
-<br>
=C2=A01 file changed, 3 deletions(-)<br>
<br>
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend=
 b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend<br>
index 3e86645..0b4dc31 100644<br>
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend<br>
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend<br>
@@ -3,9 +3,6 @@ FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<=
br>
=C2=A0# Don&#39;t forget to bump PRINC if you update the extra files.<br>
=C2=A0PRINC :=3D &quot;${@int(PRINC) + 5}&quot;<br>
<br>
-THISDIR :=3D &quot;${@os.path.dirname(bb.data.getVar(&#39;FILE&#39;, d, Tr=
ue))}&quot;<br>
-FILESPATH =3D. &quot;${@base_set_filespath([&quot;${THISDIR}/${PN}&quot;],=
 d)}:&quot;<br>
-<br>
=C2=A0SRC_URI_append_raspberrypi =3D &quot; file://xorg.conf.d/10-evdev.con=
f &quot;<br>
<br>
=C2=A0do_install_append_raspberrypi () {<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br></font></span></blockquote><div><br></div><div>Merged. Thank you.=
=C2=A0</div></div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text=
-align:center"></div><div style=3D"text-align:center"><div align=3D"left" s=
tyle=3D"font-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7bfeb51c45db5804f8e6f096--
