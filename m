Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ABD5E00A33
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 01:06:34 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id y20so762944ier.27
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 01:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=HKG74SvWZ6jYTehlO3PHAeY6FB901dC/0nLH7KuK/eo=;
	b=Y8hZC5JRgGXdyj5eCsk49+H20qNPFU3jblKiI1WRo0zLR9nKK5BK2Y/S2yLjWxwZiK
	l7G1+IAwl0sXVHfGQBWWGsETBOLXuXyYZtYlujb5Sg4BqQshKMN2Y6xWstaqMqts7z73
	KK3m7GuSDvBrncYfTH9KoR4kpIgSdps/7ytW5qxmGnCe5Wpim4yVfss1amjSFm339di4
	L1eKfGPEYbv/hETu/YfQCKORR1nEGsjgRKCduG8PxLIEw0pO4UwijscUo5yHX2VW/XDa
	/tBdGhwcy191k5mQo/5SBkd8rX2kaHqEb//7cye4xD5LBpLE7KWql8ml6vOL+0mBbJb8
	ciJg==
MIME-Version: 1.0
X-Received: by 10.50.61.147 with SMTP id p19mr7852422igr.49.1394010393895;
	Wed, 05 Mar 2014 01:06:33 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.42.198.139 with HTTP; Wed, 5 Mar 2014 01:06:33 -0800 (PST)
In-Reply-To: <1394010268-16318-1-git-send-email-s.mennetrier@innotis.org>
References: <1394010268-16318-1-git-send-email-s.mennetrier@innotis.org>
Date: Wed, 5 Mar 2014 10:06:33 +0100
X-Google-Sender-Auth: TDcPfAUS2fLlXEjxZYMSr1lT2cE
Message-ID: <CABgO3_M-uEXjoNRLZp0Ri92csGCZnkj5C6Qs+1My2yXSA6m7pQ@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] omxplayer : Install fonts directory in datadir
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
X-List-Received-Date: Wed, 05 Mar 2014 09:06:35 -0000
Content-Type: multipart/alternative; boundary=047d7bdca4385768e904f3d85696

--047d7bdca4385768e904f3d85696
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Sorry, I forget "for-dora" in subject


Regards,
S=E9bastien


2014-03-05 10:04 GMT+01:00 S=E9bastien Mennetrier <s.mennetrier@innotis.org=
>:

> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bbb/recipes-multi=
media/omxplayer/
> omxplayer_git.bb
> index a456026..7492f62 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -52,9 +52,12 @@ do_compile() {
>
>  do_install() {
>         oe_runmake dist
> +       mkdir -p ${D}${datadir}/fonts/truetype/freefont/
> +       install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
>  }
>
>  FILES_${PN} =3D "${bindir}/omxplayer* \
> -               ${libdir}/omxplayer/lib*${SOLIBS}"
> +               ${libdir}/omxplayer/lib*${SOLIBS} \
> +               ${datadir}/fonts"
>
>  FILES_${PN}-dev +=3D "${libdir}/omxplayer/*.so"
> --
> 1.8.1.2
>
>

--047d7bdca4385768e904f3d85696
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I forget &quot;for-dora&quot; in subject<br></div><=
div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div><br>=
Regards,<br></div>S=E9bastien<br></div></div>
<br><br><div class=3D"gmail_quote">2014-03-05 10:04 GMT+01:00 S=E9bastien M=
ennetrier <span dir=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org"=
 target=3D"_blank">s.mennetrier@innotis.org</a>&gt;</span>:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
Signed-off-by: S=E9bastien Mennetrier &lt;<a href=3D"mailto:s.mennetrier@in=
notis.org">s.mennetrier@innotis.org</a>&gt;<br>
---<br>
=A0recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" target=
=3D"_blank">omxplayer_git.bb</a> | 5 ++++-<br>
=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.b=
b" target=3D"_blank">omxplayer_git.bb</a> b/recipes-multimedia/omxplayer/<a=
 href=3D"http://omxplayer_git.bb" target=3D"_blank">omxplayer_git.bb</a><br=
>
index a456026..7492f62 100644<br>
--- a/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
+++ b/recipes-multimedia/omxplayer/<a href=3D"http://omxplayer_git.bb" targ=
et=3D"_blank">omxplayer_git.bb</a><br>
@@ -52,9 +52,12 @@ do_compile() {<br>
<br>
=A0do_install() {<br>
=A0 =A0 =A0 =A0 oe_runmake dist<br>
+ =A0 =A0 =A0 mkdir -p ${D}${datadir}/fonts/truetype/freefont/<br>
+ =A0 =A0 =A0 install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/<=
br>
=A0}<br>
<br>
=A0FILES_${PN} =3D &quot;${bindir}/omxplayer* \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS}&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS} \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${datadir}/fonts&quot;<br>
<br>
=A0FILES_${PN}-dev +=3D &quot;${libdir}/omxplayer/*.so&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.2<br>
<br>
</font></span></blockquote></div><br></div>

--047d7bdca4385768e904f3d85696--
