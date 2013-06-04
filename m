Return-Path: <sujith.h@gmail.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B2A6E01471
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 03:13:48 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id jw11so11894veb.18
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 03:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MeYJauXR8Nlk/rg/ACN3uReFukqeUtUKRlSs6hduDTE=;
	b=aRJ6AceSEGpuKy/XtaVYyKDXC+SS29pd4vljoPrBEBzdeOb6E5O2pH3sCV82Mdi8z0
	5OfzHiakYql7nTU4mg2TzgknD8VflKzTB5T7vkzlh+g59Vch3w/WMY9GRGxYg7Zg3DBv
	XiAU2LJVp6OeFlxsfLgEc3iYNELNWIZ05sBW0oeEcbwvZsOSp22K+5YMBX2HSxgrFSrm
	Cw2OUCK3RQK1bT5aSgknrnCHtqRlj/rgzM/zzSer8Iilaf+bSlUz0ME2PBVN7wsy7wcx
	+h9kIotFXHZIyVWu4+IzMxMwiGmGKv9l6NCQIQc4hQe7E9ygC/kHnK43F2e8C4Jp5Uwi
	pTzQ==
X-Received: by 10.58.29.42 with SMTP id g10mr18173550veh.59.1370340827734;
	Tue, 04 Jun 2013 03:13:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.121.201 with HTTP; Tue, 4 Jun 2013 03:13:27 -0700 (PDT)
In-Reply-To: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
References: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Tue, 4 Jun 2013 15:43:27 +0530
Message-ID: <CADyYWLne-vnFtPVpzxP0DYoWhzNkrCWX4ACx1+5FkqG7DPHGHA@mail.gmail.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi] [PATCH] node-startup-controller: Fixing conf file while packaging
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
X-List-Received-Date: Tue, 04 Jun 2013 10:13:48 -0000
Content-Type: multipart/alternative; boundary=047d7b6d9f0c4268a804de5156f3

--047d7b6d9f0c4268a804de5156f3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

When package_ipk is used, then opkg fails to install node-state-manager
during the do_rootfs phase of foton-image. But this behavior is not seen
when rpm is used. opkg fails to install when
org.genivi.NodeStateManager.conf
is there in etc/dbus-1/dbus-1/system.d/ directory provided by
node-startup-controller.
When rpm packaging is used then node-state-manager's
org.genivi.NodeStateManager.conf
is forcefully installed.

Thanks,

Sujith H

On Tue, Jun 4, 2013 at 3:33 PM, Sujith H <sujith.h@gmail.com> wrote:

> From: Sujith H <Sujith_Haridasan@mentor.com>
>
> Issue found while building foton-image when PACKAGE_CLASSES
> set to "package_ipk". This patch will fix the issue.
> This patch has to be applied to branch 4.0.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> ---
>  .../node-startup-controller/node-startup-controller_1.0.2.bb           |
> 3 +++
>  .../node-startup-controller/node-startup-controller_git.bb             |
> 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/recipes-extended/node-startup-controller/
> node-startup-controller_1.0.2.bbb/recipes-extended/node-startup-controlle=
r/
> node-startup-controller_1.0.2.bb
> index 470bb97..fd3e1c9 100644
> --- a/recipes-extended/node-startup-controller/
> node-startup-controller_1.0.2.bb
> +++ b/recipes-extended/node-startup-controller/
> node-startup-controller_1.0.2.bb
> @@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D "\
>  FILES_${PN}-nsm-dummy-dbg =3D "\
>      ${libdir}/${PN}-1/.debug/nsm-dummy \
>      "
> +do_install_append() {
> +    rm -f
> ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
> +}
> diff --git a/recipes-extended/node-startup-controller/
> node-startup-controller_git.bb b/recipes-extended/node-startup-controller=
/
> node-startup-controller_git.bb
> index 0d3b90c..2fec5da 100644
> --- a/recipes-extended/node-startup-controller/
> node-startup-controller_git.bb
> +++ b/recipes-extended/node-startup-controller/
> node-startup-controller_git.bb
> @@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D "\
>  FILES_${PN}-nsm-dummy-dbg =3D "\
>         ${libdir}/${PN}-1/.debug/nsm-dummy \
>         "
> +do_install_append() {
> +    rm -f
> ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
> +}
> --
> 1.8.1.4
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--047d7b6d9f0c4268a804de5156f3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>When package_ipk is used, then opkg fails to install node-state-=
manager<br>during the do_rootfs phase of foton-image. But this behavior is =
not seen<br>when rpm is used. opkg fails to install when org.genivi.NodeSta=
teManager.conf<br>

is there in etc/dbus-1/dbus-1/system.d/ directory provided by node-startup-=
controller. <br>When rpm packaging is used then node-state-manager&#39;s or=
g.genivi.NodeStateManager.conf <br>is forcefully installed.<br><br>Thanks,<=
br>

<br>Sujith H<br><br><div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 3:33 =
PM, Sujith H <span dir=3D"ltr">&lt;<a href=3D"mailto:sujith.h@gmail.com" ta=
rget=3D"_blank">sujith.h@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">Sujith_Ha=
ridasan@mentor.com</a>&gt;<br>
<br>
Issue found while building foton-image when PACKAGE_CLASSES<br>
set to &quot;package_ipk&quot;. This patch will fix the issue.<br>
This patch has to be applied to branch 4.0.<br>
<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">=
Sujith_Haridasan@mentor.com</a>&gt;<br>
---<br>
=C2=A0.../node-startup-controller/<a href=3D"http://node-startup-controller=
_1.0.2.bb" target=3D"_blank">node-startup-controller_1.0.2.bb</a> =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
=C2=A0.../node-startup-controller/<a href=3D"http://node-startup-controller=
_git.bb" target=3D"_blank">node-startup-controller_git.bb</a> =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
=C2=A02 files changed, 6 insertions(+)<br>
<br>
diff --git a/recipes-extended/node-startup-controller/<a href=3D"http://nod=
e-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.=
0.2.bb</a> b/recipes-extended/node-startup-controller/<a href=3D"http://nod=
e-startup-controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.=
0.2.bb</a><br>


index 470bb97..fd3e1c9 100644<br>
--- a/recipes-extended/node-startup-controller/<a href=3D"http://node-start=
up-controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.0.2.bb<=
/a><br>
+++ b/recipes-extended/node-startup-controller/<a href=3D"http://node-start=
up-controller_1.0.2.bb" target=3D"_blank">node-startup-controller_1.0.2.bb<=
/a><br>
@@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
=C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0${libdir}/${PN}-1/.debug/nsm-dummy \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
+do_install_append() {<br>
+ =C2=A0 =C2=A0rm -f ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeState=
Manager.conf<br>
+}<br>
diff --git a/recipes-extended/node-startup-controller/<a href=3D"http://nod=
e-startup-controller_git.bb" target=3D"_blank">node-startup-controller_git.=
bb</a> b/recipes-extended/node-startup-controller/<a href=3D"http://node-st=
artup-controller_git.bb" target=3D"_blank">node-startup-controller_git.bb</=
a><br>


index 0d3b90c..2fec5da 100644<br>
--- a/recipes-extended/node-startup-controller/<a href=3D"http://node-start=
up-controller_git.bb" target=3D"_blank">node-startup-controller_git.bb</a><=
br>
+++ b/recipes-extended/node-startup-controller/<a href=3D"http://node-start=
up-controller_git.bb" target=3D"_blank">node-startup-controller_git.bb</a><=
br>
@@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy =3D &quot;\<br>
=C2=A0FILES_${PN}-nsm-dummy-dbg =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/${PN}-1/.debug/nsm-dummy \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
+do_install_append() {<br>
+ =C2=A0 =C2=A0rm -f ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeState=
Manager.conf<br>
+}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=
=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=
=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&g=
t;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-D=
RM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign<=
/a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>

--047d7b6d9f0c4268a804de5156f3--
