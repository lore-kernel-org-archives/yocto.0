Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 318F0E00738
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:55:35 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id fc21so643139vbb.7
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=GYkLwXjhw1OSnDmBq3K5vp0+SciF3r/5iFTawTZyHgA=;
	b=OGQUeMnlsGyS5AojGS3muaaeU6qwNswkXspdb35AKzdH2Fg5KBIBRpdVKYK1Z1qoVs
	QZTBShaQ6fdU3a2r42mA8BocER/TUDJq7H7N4/fS+xlioJY0XYMB3M8xemOe6nXJS5+d
	r+fPWujcVI9ufp60euiP5wkSVQINJ1FGml4BIUi5nwCsk966hZJV21N3QlP1aPae4lFk
	C44oAnxcbL/dWOGQ/C838pYxROD6o7Dpq2t+A5iOL320BrfJaoXpepxD9/FJpThT0p+G
	l2Mp9AjLDHmS5zPk2iYmCl5N2xfE8MpNNgGUXmjlco17w8qrDuRMdM8mKjblX8gHoRBf
	szAw==
X-Received: by 10.52.177.161 with SMTP id cr1mr7380983vdc.64.1363197334655;
	Wed, 13 Mar 2013 10:55:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:55:14 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1363121807-15304-1-git-send-email-eric@eukrea.com>
References: <1363121807-15304-1-git-send-email-eric@eukrea.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:55:14 +0200
Message-ID: <CAK18fxF=mToJ+oHpQA1-=zEGUx7dDtR+aweBMTQ6H0+UNuLueA@mail.gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
X-Gm-Message-State: ALoCoQmgz5LkFn+pwM/5lHJ/denGOolnRcrzHwkoW7dklt1VaV2GUFoQiDA19s/ovwsobjHIoDBP
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-first-run-wizard: fix QA Error
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
X-List-Received-Date: Wed, 13 Mar 2013 17:55:35 -0000
Content-Type: multipart/alternative; boundary=20cf3071ceace4252904d7d21cf3

--20cf3071ceace4252904d7d21cf3
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

There was already a patch in queue. Thank you and fix was merged in master.


On Tue, Mar 12, 2013 at 10:56 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> ERROR: QA Issue: .../meta-raspberrypi/recipes-extra/startup/
> rpi-first-run-wizard.bb:
> Variable RDEPENDS is set as not being package specific, please fix this.
>
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  recipes-extra/startup/rpi-first-run-wizard.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-extra/startup/rpi-first-run-wizard.bbb/recipes-extra=
/startup/
> rpi-first-run-wizard.bb
> index c5cef7c..f3ac8b4 100644
> --- a/recipes-extra/startup/rpi-first-run-wizard.bb
> +++ b/recipes-extra/startup/rpi-first-run-wizard.bb
> @@ -3,7 +3,7 @@ LICENSE =3D "GPLV2"
>  LIC_FILES_CHKSUM =3D
> "file://${WORKDIR}/LICENSE;md5=3Db234ee4d69f5fce4486a80fdaf4a4263"
>
>  DEPENDS =3D "zenity dbus"
> -RDEPENDS =3D "slim sudo zenity dbus"
> +RDEPENDS_${PN} =3D "slim sudo zenity dbus"
>
>  COMPATIBLE_MACHINE =3D "raspberrypi"
>
> --
> 1.7.11.7
>
>


--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3071ceace4252904d7d21cf3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Hello,</div><div><br></div>There was already a =
patch in queue. Thank you and fix was merged in master.</div><div class=3D"=
gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Mar 12, 2013 at 10:=
56 PM, Eric B=E9nard <span dir=3D"ltr">&lt;<a href=3D"mailto:eric@eukrea.co=
m" target=3D"_blank">eric@eukrea.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">ERROR: QA Issue: .../meta-raspberrypi/recipe=
s-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank=
">rpi-first-run-wizard.bb</a>:<br>


Variable RDEPENDS is set as not being package specific, please fix this.<br=
>
<br>
Signed-off-by: Eric B=E9nard &lt;<a href=3D"mailto:eric@eukrea.com">eric@eu=
krea.com</a>&gt;<br>
---<br>
=A0recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" target=
=3D"_blank">rpi-first-run-wizard.bb</a> | 2 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.b=
b" target=3D"_blank">rpi-first-run-wizard.bb</a> b/recipes-extra/startup/<a=
 href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank">rpi-first-run-wi=
zard.bb</a><br>


index c5cef7c..f3ac8b4 100644<br>
--- a/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-first-run-wizard.bb</a><br>
+++ b/recipes-extra/startup/<a href=3D"http://rpi-first-run-wizard.bb" targ=
et=3D"_blank">rpi-first-run-wizard.bb</a><br>
@@ -3,7 +3,7 @@ LICENSE =3D &quot;GPLV2&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/LICENSE;md5=3Db234ee4d69f5f=
ce4486a80fdaf4a4263&quot;<br>
<br>
=A0DEPENDS =3D &quot;zenity dbus&quot;<br>
-RDEPENDS =3D &quot;slim sudo zenity dbus&quot;<br>
+RDEPENDS_${PN} =3D &quot;slim sudo zenity dbus&quot;<br>
<br>
=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.11.7<br>
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

--20cf3071ceace4252904d7d21cf3--
