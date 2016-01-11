Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 257B6E00B70; Mon, 11 Jan 2016 05:50:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE835E00B66
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 05:50:25 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id u188so26339515wmu.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 05:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MOozqUIzS3xTdGzUhQVEau1Y48rwT1i6a23OuLRUcbc=;
	b=z8RAgk9JjOqpSQXzOQHZTgrbcPOhRNOCpJVWvRDYqOARod2YNNSx+yMAGJ9ZDpCUlr
	KJbWukEcN0i2GwIVwCi72C9IKGFyD4e2wA0vJWJ5K0rGvRLhEwznNjWsjpaxv9dGxWiV
	r3lns6VDklcM/awFfi5lILbaMJvk0dVKNBwtcHLuH+2RFc2bGkeH2M5zdqYicxH143Me
	lx9ViBwLZ4DN8PxiTaSoHkIxgI3jdCSemq1sp2H35BJGehhg6EddGgwGVAXjVvKhMHEG
	mGfMylnSpti+ujLV8iTVPXKa+6seZTMSaeL+9ETw419NStDWJ1WmOAs9KP3IrZy2+z+N
	90yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MOozqUIzS3xTdGzUhQVEau1Y48rwT1i6a23OuLRUcbc=;
	b=eVgtAacP/qy5Qdg0/xAqPzRVnxl4aFe+/kYw8Hi+j1CiM8UL3/49quSFzOmsE3TgUM
	ad/Ki5gBIyDFvaQ8oru2Zp09Www4wtsTKNo9Y2fNtFJUhtulkZVhTSBjccp7sJKp5UyL
	kQJhvTNhKTzj5RYl7AHQeaadR1e/5tSkptPS8z1rEvWZVzdZDynpCbgvDsMo2wPRVPXq
	Hv+cFxRiO2ktz3H6wNVWDjTXfI/lWsaCutWzvuzJLmeZp7q2Gcl2cXBNTIc8zPLbaSgL
	Ygu9Rm74DOGgUwclrdIiIhCo7f4gzKcPGYoJ4Sr/VbUSyBy8rbtS88i2gPcDMHMb9P4h
	LV8g==
X-Gm-Message-State: ALoCoQkLi6TSK6qCLz1g9lmI8xnHcnGIZnRQhd4Pkkzf9nsE8ZCeA3q//Rn1lj1zzg0rRA9yDNV3s4Ql4QlSYO8jrJLk+CjFdg==
X-Received: by 10.28.227.67 with SMTP id a64mr13559113wmh.74.1452520224790;
	Mon, 11 Jan 2016 05:50:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.129.200 with HTTP; Mon, 11 Jan 2016 05:49:45 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1452480913-15282-3-git-send-email-j.madieu@expemb.com>
References: <CAK18fxHt88ajUp9sXYhDC8U4V+wg+YHMHyKmS22fMziNxrA=pA@mail.gmail.com>
	<1452480913-15282-1-git-send-email-j.madieu@expemb.com>
	<1452480913-15282-3-git-send-email-j.madieu@expemb.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Jan 2016 14:49:45 +0100
Message-ID: <CAK18fxG9EkNONhESoZsKtbY8DexAKNKTy6nWyAoLEejsQbRdVg@mail.gmail.com>
To: John Madieu <j.madieu@expemb.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] qtbase bbappend: cleanned recipe
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
X-List-Received-Date: Mon, 11 Jan 2016 13:50:32 -0000
Content-Type: multipart/alternative; boundary=001a114b17e80732da05290f3895

--001a114b17e80732da05290f3895
Content-Type: text/plain; charset=UTF-8

Hi John,

On Mon, Jan 11, 2016 at 3:55 AM, John Madieu <j.madieu@expemb.com> wrote:

> Signed-off-by: John Madieu <j.madieu@expemb.com>
> ---
>  qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> index ac158a9..8b77bfa 100644
> --- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> +++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> @@ -1,12 +1,12 @@
>
>
I can't follow these patches. Can you squash them to include cleanups and
so on and have clean patches sent? As well, can you send them tagged as v2
so I can easily see them?


>  do_configure_prepend_rpi() {
> -
> +
>         sed -i 's!load(qt_config)!!' ${S}/mkspecs/linux-oe-g++/qmake.conf
>      if ! grep -q '^EGLFS_' ${S}/mkspecs/linux-oe-g++/qmake.conf; then
>          cat >> ${S}/mkspecs/linux-oe-g++/qmake.conf <<EOF
>  QMAKE_INCDIR_EGL = \$\$[QT_SYSROOT]${includedir}/interface/vcos/pthreads
> \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux
> -QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
> -QMAKE_LIBS_EGL = -lEGL -lGLESv2
> +QMAKE_INCDIR_OPENGL_ES2 = \$\${QMAKE_INCDIR_EGL}
> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>  EOF
>
>          if [ -d
> ${S}/src/plugins/platforms/eglfs/deviceintegration/eglfs_brcm ]; then
> @@ -27,8 +27,3 @@ load(qt_config)
>
>  EOF
>  }
> -
> -
> -
> -
> -
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b17e80732da05290f3895
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi John,<br>
<br><div class=3D"gmail_quote">On Mon, Jan 11, 2016 at 3:55 AM, John Madieu=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:j.madieu@expemb.com" target=3D"_bl=
ank">j.madieu@expemb.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Signed-off-by: John Madieu &lt;<a href=3D"mailto:j.madieu@expemb.com"=
>j.madieu@expemb.com</a>&gt;<br>
---<br>
=C2=A0qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 11 +++--------<br>
=C2=A01 file changed, 3 insertions(+), 8 deletions(-)<br>
<br>
diff --git a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/qt5-layer/recipes=
-qt/qt5/qtbase_%.bbappend<br>
index ac158a9..8b77bfa 100644<br>
--- a/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
+++ b/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend<br>
@@ -1,12 +1,12 @@<br>
<br></blockquote><div><br></div><div>I can&#39;t follow these patches. Can =
you squash them to include cleanups and so on and have clean patches sent? =
As well, can you send them tagged as v2 so I can easily see them?</div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">
=C2=A0do_configure_prepend_rpi() {<br>
-<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -i &#39;s!load(qt_config)!!&#39; ${S}/mkspe=
cs/linux-oe-g++/qmake.conf<br>
=C2=A0 =C2=A0 =C2=A0if ! grep -q &#39;^EGLFS_&#39; ${S}/mkspecs/linux-oe-g+=
+/qmake.conf; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cat &gt;&gt; ${S}/mkspecs/linux-oe-g++/qm=
ake.conf &lt;&lt;EOF<br>
=C2=A0QMAKE_INCDIR_EGL =3D \$\$[QT_SYSROOT]${includedir}/interface/vcos/pth=
reads \$\$[QT_SYSROOT]${includedir}/interface/vmcs_host/linux<br>
-QMAKE_INCDIR_OPENGL_ES2 =3D \$\${QMAKE_INCDIR_EGL}<br>
-QMAKE_LIBS_EGL =3D -lEGL -lGLESv2<br>
+QMAKE_INCDIR_OPENGL_ES2 =3D \$\${QMAKE_INCDIR_EGL}<br>
+QMAKE_LIBS_EGL =3D -lEGL -lGLESv2<br>
=C2=A0EOF<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -d ${S}/src/plugins/platforms/eglfs/=
deviceintegration/eglfs_brcm ]; then<br>
@@ -27,8 +27,3 @@ load(qt_config)<br>
<br>
=C2=A0EOF<br>
=C2=A0}<br>
-<br>
-<br>
-<br>
-<br>
-<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--001a114b17e80732da05290f3895--
