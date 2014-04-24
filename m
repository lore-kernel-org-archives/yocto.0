Return-Path: <sujith.h@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E652E006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:18:48 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id w7so2350350qcr.25
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DWd2s4IZTmBsg3TxNHQymJ/pTLLV8ov8urP9yCVpCmU=;
	b=F81xqUfkEIEhIaqBcH/wjTsCR5OA6LuOjtEZA/EaAzei0wdDevUBl4FqWfBybaNcBG
	xUs0Qv/2402B9mDMzFYlRQg8ZyBkgYEMgrlgR7waBwEnMydEUbNSasQq7SpwX70FwAEa
	ZAR8pUAwitsF1H2Jjyl4BhpjtzXG56xTiEXQ51I91lt9GCthfVRRrklRVDxTfyv+/+CS
	daxXNWIaiKYtQ03SOUO0/EiUI+XFDiVC+E3k2m1OtmHjPcqnH/cceP5DEQUNC8V7w2IB
	R9ByTin6a9jhFawp1BbKhifvGiGzOe2xsN33cYlqBv01DAwEdXDaCG0UvnwvxuwLCRQC
	G8Gg==
X-Received: by 10.224.121.74 with SMTP id g10mr1854984qar.79.1398341927984;
	Thu, 24 Apr 2014 05:18:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.231 with HTTP; Thu, 24 Apr 2014 05:18:27 -0700 (PDT)
In-Reply-To: <1398237133-16494-1-git-send-email-sujith.h@gmail.com>
References: <1398237133-16494-1-git-send-email-sujith.h@gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Thu, 24 Apr 2014 17:48:27 +0530
Message-ID: <CADyYWLk0ERtaW=PgHhu6V-w9rQd5AJ75OzKcBjXhdipcD-qPXg@mail.gmail.com>
To: "Behrens, Holger" <holger.behrens@windriver.com>,
	Florin Sarbu <florin.sarbu@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Thu, 24 Apr 2014 12:18:51 -0000
Content-Type: multipart/alternative; boundary=089e015373ace461ed04f7c8d9b0

--089e015373ace461ed04f7c8d9b0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Any comments for this patch?


On Wed, Apr 23, 2014 at 12:42 PM, Sujith H <sujith.h@gmail.com> wrote:

> Adding weston.ini to /etc/xdg. With this change
> user can login and launch weston with ivi-shell.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  recipes-graphics/wayland/weston_1.4.0.bbappend | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend
> b/recipes-graphics/wayland/weston_1.4.0.bbappend
> index 7a8ba6f..b839be4 100644
> --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
> +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
> @@ -12,3 +12,17 @@ PR =3D "r1"
>
>  FILES_${PN} +=3D "${libdir}/weston/*"
>  FILES_${PN}-dbg +=3D "${libdir}/weston/.debug/*"
> +
> +do_install_append() {
> +   WESTON_INI_CONFIG=3D${sysconfdir}/xdg/weston
> +   install -d ${D}${WESTON_INI_CONFIG}
> +   install -m 0644 ${S}/ivi-shell/weston.ini.in${D}${WESTON_INI_CONFIG}/=
weston.ini
> +   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/=
'
> ${D}${WESTON_INI_CONFIG}/weston.ini
> +   sed -i -e 's|\@libexecdir\@|${libexecdir}|'
> ${D}${WESTON_INI_CONFIG}/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|'
> ${D}${WESTON_INI_CONFIG}/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|'
> ${D}${WESTON_INI_CONFIG}/weston.ini
> +}
> +
> +PACKAGES +=3D "${PN}-ini"
> +
> +FILES_${PN}-ini =3D "${sysconfdir}/xdg"
> --
> 1.8.4
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--089e015373ace461ed04f7c8d9b0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div><br></div>Any comments for this pat=
ch?<br><div><div><div><div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Wed, Apr 23, 2014 at 12:42 PM, Sujith H <span dir=3D"ltr">=
&lt;<a href=3D"mailto:sujith.h@gmail.com" target=3D"_blank">sujith.h@gmail.=
com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Adding weston.ini to /etc/xdg. With this cha=
nge<br>
user can login and launch weston with ivi-shell.<br>
<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">=
Sujith_Haridasan@mentor.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/wayland/weston_1.4.0.bbappend | 14 ++++++++++++++<br=
>
=C2=A01 file changed, 14 insertions(+)<br>
<br>
diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graph=
ics/wayland/weston_1.4.0.bbappend<br>
index 7a8ba6f..b839be4 100644<br>
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
@@ -12,3 +12,17 @@ PR =3D &quot;r1&quot;<br>
<br>
=C2=A0FILES_${PN} +=3D &quot;${libdir}/weston/*&quot;<br>
=C2=A0FILES_${PN}-dbg +=3D &quot;${libdir}/weston/.debug/*&quot;<br>
+<br>
+do_install_append() {<br>
+ =C2=A0 WESTON_INI_CONFIG=3D${sysconfdir}/xdg/weston<br>
+ =C2=A0 install -d ${D}${WESTON_INI_CONFIG}<br>
+ =C2=A0 install -m 0644 ${S}/ivi-shell/<a href=3D"http://weston.ini.in" ta=
rget=3D"_blank">weston.ini.in</a> ${D}${WESTON_INI_CONFIG}/weston.ini<br>
+ =C2=A0 sed -i -e =C2=A0&#39;s/<a href=3D"http://hmi-controller.so/hmi-con=
troller.so" target=3D"_blank">hmi-controller.so/hmi-controller.so</a>, <a h=
ref=3D"http://ivi-controller.so/" target=3D"_blank">ivi-controller.so/</a>&=
#39; ${D}${WESTON_INI_CONFIG}/weston.ini<br>


+ =C2=A0 sed -i -e &#39;s|\@libexecdir\@|${libexecdir}|&#39; ${D}${WESTON_I=
NI_CONFIG}/weston.ini<br>
+ =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/data|${datadir}\/weston|&#3=
9; ${D}${WESTON_INI_CONFIG}/weston.ini<br>
+ =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/clients|${bindir}|&#39; ${D=
}${WESTON_INI_CONFIG}/weston.ini<br>
+}<br>
+<br>
+PACKAGES +=3D &quot;${PN}-ini&quot;<br>
+<br>
+FILES_${PN}-ini =3D &quot;${sysconfdir}/xdg&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=
=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=
=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&g=
t;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-D=
RM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign<=
/a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>
</div></div></div></div></div></div>

--089e015373ace461ed04f7c8d9b0--
