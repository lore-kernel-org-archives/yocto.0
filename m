Return-Path: <sujith.h@gmail.com>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBAD0E006C0
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 19:24:31 -0700 (PDT)
Received: by mail-qa0-f54.google.com with SMTP id w8so311019qac.13
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 19:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tNkNdiN1f1AQiKco5Kmpv1stLtc+fLcufrqMSyJbWiA=;
	b=iOsb59zf2m2yYC2EbeyM3bgGjgFEenDGIZJBHwJy5LHU4QunriyAiyW5kcZ/WxW0I/
	DIQXx0KSg5kqFC+GEjHF2XWTGrflKKUjSOVY9Ggft7edu3gvRa1QKVnxiiHbSovX750t
	V2CrIGFfRUvJrUuviYV6MRB7V2rrn3E/fH4f3m4oKvUesDGeQt3zKKv4ydgbHQAkziQ+
	0AKe6nfKZPbMGRiwdhuDJ5qyf9lpCWqQn981uq1FqBptP6fgSxHa5ZJJMhHFbrb9X6uR
	0B+tjkl+hghL6/hGb6vRDkSxbfmXY8c0f64mSHuv15rfSg7+7SeRxiGsfv6rHKu/ik/x
	Lz8w==
X-Received: by 10.140.92.99 with SMTP id a90mr38295354qge.34.1398219870407;
	Tue, 22 Apr 2014 19:24:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.231 with HTTP; Tue, 22 Apr 2014 19:24:10 -0700 (PDT)
In-Reply-To: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
References: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Wed, 23 Apr 2014 07:54:10 +0530
Message-ID: <CADyYWLmASDDpq7kyTP=Q5cuupWd+LoKKtfe73_ncc-tvY8xcQQ@mail.gmail.com>
To: "Behrens, Holger" <holger.behrens@windriver.com>,
	Florin Sarbu <florin.sarbu@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 23 Apr 2014 02:24:34 -0000
Content-Type: multipart/alternative; boundary=001a113abfd8b1916404f7ac6e86

--001a113abfd8b1916404f7ac6e86
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Any comments about this patch?

Thanks,
Sujith H


On Wed, Apr 16, 2014 at 1:42 PM, Sujith H <sujith.h@gmail.com> wrote:

> Adding weston.ini to $ROOT_HOME/.config. With this change
> user can login to $ROOT_HOME and launch weston with ivi-shell.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  recipes-graphics/wayland/weston_1.4.0.bbappend | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend
> b/recipes-graphics/wayland/weston_1.4.0.bbappend
> index 7a8ba6f..a2713d6 100644
> --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
> +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
> @@ -12,3 +12,16 @@ PR =3D "r1"
>
>  FILES_${PN} +=3D "${libdir}/weston/*"
>  FILES_${PN}-dbg +=3D "${libdir}/weston/.debug/*"
> +
> +do_install_append() {
> +   install -d ${D}${ROOT_HOME}/.config
> +   install -m 0644 ${S}/ivi-shell/weston.ini.in${D}${ROOT_HOME}/.config/=
weston.ini
> +   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/=
'
> ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@libexecdir\@|${libexecdir}|'
> ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|'
> ${D}${ROOT_HOME}/.config/weston.ini
> +   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|'
> ${D}${ROOT_HOME}/.config/weston.ini
> +}
> +
> +PACKAGES +=3D "${PN}-ini"
> +
> +FILES_${PN}-ini =3D "${ROOT_HOME}/.config"
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

--001a113abfd8b1916404f7ac6e86
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>Any comments about this patch?<br><br></di=
v>Thanks,<br>Sujith H<br><div><div><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Wed, Apr 16, 2014 at 1:42 PM, Sujith H <span dir=
=3D"ltr">&lt;<a href=3D"mailto:sujith.h@gmail.com" target=3D"_blank">sujith=
.h@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Adding weston.ini to $ROOT_HOME/.config. Wit=
h this change<br>
user can login to $ROOT_HOME and launch weston with ivi-shell.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">=
Sujith_Haridasan@mentor.com</a>&gt;<br>
---<br>
=C2=A0recipes-graphics/wayland/weston_1.4.0.bbappend | 13 +++++++++++++<br>
=C2=A01 file changed, 13 insertions(+)<br>
<br>
diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graph=
ics/wayland/weston_1.4.0.bbappend<br>
index 7a8ba6f..a2713d6 100644<br>
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
@@ -12,3 +12,16 @@ PR =3D &quot;r1&quot;<br>
<br>
=C2=A0FILES_${PN} +=3D &quot;${libdir}/weston/*&quot;<br>
=C2=A0FILES_${PN}-dbg +=3D &quot;${libdir}/weston/.debug/*&quot;<br>
+<br>
+do_install_append() {<br>
+ =C2=A0 install -d ${D}${ROOT_HOME}/.config<br>
+ =C2=A0 install -m 0644 ${S}/ivi-shell/<a href=3D"http://weston.ini.in" ta=
rget=3D"_blank">weston.ini.in</a> ${D}${ROOT_HOME}/.config/weston.ini<br>
+ =C2=A0 sed -i -e =C2=A0&#39;s/<a href=3D"http://hmi-controller.so/hmi-con=
troller.so" target=3D"_blank">hmi-controller.so/hmi-controller.so</a>, <a h=
ref=3D"http://ivi-controller.so/" target=3D"_blank">ivi-controller.so/</a>&=
#39; ${D}${ROOT_HOME}/.config/weston.ini<br>


+ =C2=A0 sed -i -e &#39;s|\@libexecdir\@|${libexecdir}|&#39; ${D}${ROOT_HOM=
E}/.config/weston.ini<br>
+ =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/data|${datadir}\/weston|&#3=
9; ${D}${ROOT_HOME}/.config/weston.ini<br>
+ =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/clients|${bindir}|&#39; ${D=
}${ROOT_HOME}/.config/weston.ini<br>
+}<br>
+<br>
+PACKAGES +=3D &quot;${PN}-ini&quot;<br>
+<br>
+FILES_${PN}-ini =3D &quot;${ROOT_HOME}/.config&quot;<br>
--<br>
1.8.4<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=
=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=
=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&g=
t;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-D=
RM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign<=
/a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>
</div></div></div></div>

--001a113abfd8b1916404f7ac6e86--
