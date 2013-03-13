Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 878BDE0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:29 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id b13so643272vby.5
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:45:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=YnmTMNqwp7lqp1HERo8At5I38DeGOmhqywPI2J+FOp0=;
	b=OjQ/M9VvIHCo48egx8iUw8Lz+QLieW/2ExrDvkgezO6W34RD+EJYxeHVPCP5oG8Hko
	tLJ7wNMThARwhZ0wPfyXSg9NXCmyhtojCl2h4hL94P6mCxe3b3OY4a1UeD5G1YZJh2dh
	qJzTk1RAuwjcWDf1ZnRcl7waMvrmeAnletfy6EB6p2tvZKish33Qha3Li2LbCH/U95qc
	1es7fL4FOt95OaMxHNrOt9oPKrL7LjnpMMc4ipBAR1EYjoIT/LM6kUm7xx6mtwCHHIjc
	m7ro8tQSIrfRTLfiJaCoo8iZAQ2dnboe/YZMzxL0/Zp3xQnNWUF3uGBW/jnctw8m1LMN
	CKFQ==
X-Received: by 10.58.50.7 with SMTP id y7mr8860336ven.24.1363196728916; Wed,
	13 Mar 2013 10:45:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:45:03 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-7-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-7-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:45:03 +0200
Message-ID: <CAK18fxH1RQ6Mm81ns=AX7AKiJ9HXrVhdBtVeYeRx2o5DwhrKjQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkeHxS5LX2NMIB5a0JBEDpRFyjvKz6OPN2rWyB9ZkzrggWVcGCGgOnKDB1WRxKOmmtriz8i
Subject: Re: [meta-raspberrypi][PATCH 7/7] vc-graphics.inc: There is no libgl so get rid of this PROVIDES
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
X-List-Received-Date: Wed, 13 Mar 2013 17:45:29 -0000
Content-Type: multipart/alternative; boundary=089e0112c63ac98ad204d7d1f891

--089e0112c63ac98ad204d7d1f891
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bcm/vc-graphics/vc-graphics.inc |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc
> b/recipes-bcm/vc-graphics/vc-graphics.inc
> index 915b7c1..28c95a1 100644
> --- a/recipes-bcm/vc-graphics/vc-graphics.inc
> +++ b/recipes-bcm/vc-graphics/vc-graphics.inc
> @@ -3,7 +3,7 @@ LICENSE = "Proprietary"
>
>  LIC_FILES_CHKSUM = "file://LICENCE;md5=86e53f5f5909ee66900418028de11780"
>
> -PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
> +PROVIDES = "virtual/libgles2 virtual/egl"
>  COMPATIBLE_MACHINE = "raspberrypi"
>
>  include ../common/firmware.inc
> @@ -14,7 +14,7 @@ SRC_URI = "git://
> github.com/raspberrypi/firmware.git;protocol=git;branch=master\
>
>  S = "${WORKDIR}/git/${VCDIR}"
>
> -INCPR = "r0"
> +INCPR = "r1"
>
>  inherit pkgconfig update-rc.d
>
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e0112c63ac98ad204d7d1f891
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-bcm/vc-graphics/vc-graphics.inc | =A0 =A04 ++--<br>
=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-bcm/vc-graph=
ics/vc-graphics.inc<br>
index 915b7c1..28c95a1 100644<br>
--- a/recipes-bcm/vc-graphics/vc-graphics.inc<br>
+++ b/recipes-bcm/vc-graphics/vc-graphics.inc<br>
@@ -3,7 +3,7 @@ LICENSE =3D &quot;Proprietary&quot;<br>
<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://LICENCE;md5=3D86e53f5f5909ee6690041802=
8de11780&quot;<br>
<br>
-PROVIDES =3D &quot;virtual/libgl virtual/libgles2 virtual/egl&quot;<br>
+PROVIDES =3D &quot;virtual/libgles2 virtual/egl&quot;<br>
=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<br>
=A0include ../common/firmware.inc<br>
@@ -14,7 +14,7 @@ SRC_URI =3D &quot;git://<a href=3D"http://github.com/rasp=
berrypi/firmware.git;protocol=3Dgit;branch=3Dmaster\" target=3D"_blank">git=
hub.com/raspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster\</a><br>
<br>
=A0S =3D &quot;${WORKDIR}/git/${VCDIR}&quot;<br>
<br>
-INCPR =3D &quot;r0&quot;<br>
+INCPR =3D &quot;r1&quot;<br>
<br>
=A0inherit pkgconfig update-rc.d<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--089e0112c63ac98ad204d7d1f891--
