Return-Path: <sujith.h@gmail.com>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F664E00BE0
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:59:25 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so278672qab.22
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Uaz7iHBhhMlxTmJcEZ0V/aDvZRNWOfaHWT17aWNSXQA=;
	b=UBLZRZIAZ61XCs278N/GVF2jCgVpOuPNvFhB4n/fJfCKQloV7DFz9TsFS0bEgbOkpV
	DDBLS2J0TR09W+hwqBFGW7XnTisYEx142jyQ7hjanxX2lS8MXhI9bgR5YadSVKqNSpqv
	1X6+r9N1/DnotqqJUBl7sTfhjqJE34ZrJbxuUKe2xw5KnLSg6hN3mgMrO+UDGypl8Bcx
	bl3E3KBFOcoPbR85O1b1mlHFnQb8k/D5X9z121tQrP0e/9du07CfMiMviM2YRJCiretm
	n0gZ2uqUPYTj0DQDBvolgS2Z0bh8Ku34WR0o8cK+hqI93ksMgpFCYL0tnBI1Ca8z4M5w
	d3Kw==
X-Received: by 10.224.131.132 with SMTP id x4mr11098909qas.97.1398430764757;
	Fri, 25 Apr 2014 05:59:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.231 with HTTP; Fri, 25 Apr 2014 05:59:04 -0700 (PDT)
In-Reply-To: <1398343160-4516-1-git-send-email-sujith.h@gmail.com>
References: <1398343160-4516-1-git-send-email-sujith.h@gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Fri, 25 Apr 2014 18:29:04 +0530
Message-ID: <CADyYWLn2GX=jYZJFjb6f2gabUsjBw5s30KM8h33WViSDiAAwtw@mail.gmail.com>
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
X-List-Received-Date: Fri, 25 Apr 2014 12:59:26 -0000
Content-Type: multipart/alternative; boundary=001a11c2dd1cf9fafb04f7dd888b

--001a11c2dd1cf9fafb04f7dd888b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Any comment for the new patch?


On Thu, Apr 24, 2014 at 6:09 PM, Sujith H <sujith.h@gmail.com> wrote:

> Adding weston.ini to /etc/xdg. With this change
> user can login and launch weston with ivi-shell.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  recipes-graphics/wayland/weston_1.4.0.bbappend | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend
> b/recipes-graphics/wayland/weston_1.4.0.bbappend
> index 7a8ba6f..1bcb327 100644
> --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
> +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
> @@ -12,3 +12,18 @@ PR =3D "r1"
>
>  FILES_${PN} +=3D "${libdir}/weston/*"
>  FILES_${PN}-dbg +=3D "${libdir}/weston/.debug/*"
> +
> +do_install_append() {
> +   WESTON_INI_CONFIG=3D${sysconfdir}/xdg/weston
> +   install -d ${D}${WESTON_INI_CONFIG}
> +   install -m 0644 ${S}/ivi-shell/weston.ini.in${D}${WESTON_INI_CONFIG}/=
weston.ini
> +   sed -i -e 's/hmi-controller.so/hmi-controller.so,ivi-controller.so/' =
\
> +          -e 's|\@libexecdir\@|${libexecdir}|' \
> +          -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' \
> +          -e 's|\@abs_top_builddir\@\/clients|${bindir}|'
> ${D}${WESTON_INI_CONFIG}/weston.ini
> +
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

--001a11c2dd1cf9fafb04f7dd888b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>Any comment for the new patch?<br><d=
iv><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Th=
u, Apr 24, 2014 at 6:09 PM, Sujith H <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:sujith.h@gmail.com" target=3D"_blank">sujith.h@gmail.com</a>&gt;</span> w=
rote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Adding weston.ini to /etc/xdg. With this cha=
nge<br>
user can login and launch weston with ivi-shell.<br>
<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">=
Sujith_Haridasan@mentor.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/wayland/weston_1.4.0.bbappend | 15 +++++++++++++++<b=
r>
=C2=A01 file changed, 15 insertions(+)<br>
<br>
diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graph=
ics/wayland/weston_1.4.0.bbappend<br>
index 7a8ba6f..1bcb327 100644<br>
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
@@ -12,3 +12,18 @@ PR =3D &quot;r1&quot;<br>
<br>
=C2=A0FILES_${PN} +=3D &quot;${libdir}/weston/*&quot;<br>
=C2=A0FILES_${PN}-dbg +=3D &quot;${libdir}/weston/.debug/*&quot;<br>
+<br>
+do_install_append() {<br>
+ =C2=A0 WESTON_INI_CONFIG=3D${sysconfdir}/xdg/weston<br>
+ =C2=A0 install -d ${D}${WESTON_INI_CONFIG}<br>
+ =C2=A0 install -m 0644 ${S}/ivi-shell/<a href=3D"http://weston.ini.in" ta=
rget=3D"_blank">weston.ini.in</a> ${D}${WESTON_INI_CONFIG}/weston.ini<br>
+ =C2=A0 sed -i -e &#39;s/<a href=3D"http://hmi-controller.so/hmi-controlle=
r.so,ivi-controller.so/" target=3D"_blank">hmi-controller.so/hmi-controller=
.so,ivi-controller.so/</a>&#39; \<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s|\@libexecdir\@|${libexecdir}|=
&#39; \<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s|\@abs_top_builddir\@\/data|${=
datadir}\/weston|&#39; \<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s|\@abs_top_builddir\@\/clients=
|${bindir}|&#39; ${D}${WESTON_INI_CONFIG}/weston.ini<br>
+<br>
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
</div></div></div></div>

--001a11c2dd1cf9fafb04f7dd888b--
