Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E5EE00871; Mon, 23 Feb 2015 05:27:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A51A3E006B5
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 05:27:17 -0800 (PST)
Received: by mail-qg0-f52.google.com with SMTP id h3so24096946qgf.11
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 05:27:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WUsn60l48cesFMVsSkGtYBSgmYp72cy8adnDCifeehA=;
	b=R1rizxhETJvxJJc2EpHIooK26Fprt+0QfEOJgVN1eBgeeksX6jmDz+C/0Cx5lxIvH0
	NKlARbkDhKwIcW7Qzbe+wWT2PTj3W2rz5qA2+Z03+sw1P5HOk6ps5ZbVPtM2YWrZ6z+V
	Ia6QKk7I+6zBrQHDZeWBIsqY7L2hPhLMXn1PDU/U9FG4GH8R1Z7aw/RJxKNHfmiABaK7
	JAGYVGj9bFRvdevQzYm0KfkKWoh8X+RY9DVautuEAeD7Qqnm0WPErLRxIpQNmjRrCRyd
	J9aXJP6R2JdxOCjo/RYHcuRx347/XT+ED2Rz1BcAJKnpUUSPnw0sr9f7NtfAG9iFIqS8
	LN8g==
X-Gm-Message-State: ALoCoQkbdcDoQe4yDnGiLckpON1zmRQzDVOsaABlDCoiHsW1jVyzLF2GHqsEXaqGK1lFrepblInd
X-Received: by 10.140.217.200 with SMTP id n191mr24784345qhb.29.1424698036430; 
	Mon, 23 Feb 2015 05:27:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 23 Feb 2015 05:26:56 -0800 (PST)
In-Reply-To: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Feb 2015 13:26:56 +0000
Message-ID: <CAJTo0Lb_fvugeXtukRRtYW8NDfsps9bJGBsByooUuokokr=QOg@mail.gmail.com>
To: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Add mpich support
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
X-List-Received-Date: Mon, 23 Feb 2015 13:27:19 -0000
Content-Type: multipart/alternative; boundary=001a113732465feb13050fc15c6a

--001a113732465feb13050fc15c6a
Content-Type: text/plain; charset=UTF-8

Patches for meta-oe should go to the openembedded-devel list, not yocto@.

Ross

On 19 February 2015 at 21:43, Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
wrote:

> From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
>
> This patch add mpich support to yocto in order to run MPI framework on
> embedded
> systems.
>
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
> Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
> Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
> ---
>  meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29
> +++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>
> diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> new file mode 100644
> index 0000000..2f4226e
> --- /dev/null
> +++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> @@ -0,0 +1,29 @@
> +SUMMARY = "Message Passing Interface(MPI) implementation"
> +HOMEPAGE = "http://git.mpich.org/mpich.git/"
> +SECTION = "devel"
> +
> +LICENSE = "BSD-2-Clause"
> +LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
> +
> +SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz
> "
> +SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
> +SRC_URI[sha256sum] =
> "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
> +
> +RDEPENDS_${PN} += "bash perl tcsh"
> +S = "${WORKDIR}/${PN}-${PV}"
> +
> +EXTRA_OECONF = "--enable-debuginfo \
> +                --enable-fast \
> +                --enable-shared  \
> +                --disable-f77 \
> +                --disable-fc \
> +                --disable-fortran \
> +                --disable-cxx"
> +
> +inherit autotools-brokensep gettext
> +
> +do_configure_prepend() {
> +    autoreconf --verbose --install --force -I . -I confdb/ -I maint/
> +    oe_runconf
> +    exit
> +}
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113732465feb13050fc15c6a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Patches for meta-oe should go to the openembedded-devel li=
st, not yocto@.<div><br></div><div>Ross</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 19 February 2015 at 21:43, Alexandru.V=
aduva <span dir=3D"ltr">&lt;<a href=3D"mailto:Alexandru.Vaduva@enea.com" ta=
rget=3D"_blank">Alexandru.Vaduva@enea.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">From: Victor Rodriguez &lt;<a href=3D"mailto:victor.=
rodriguez.bahena@intel.com">victor.rodriguez.bahena@intel.com</a>&gt;<br>
<br>
This patch add mpich support to yocto in order to run MPI framework on embe=
dded<br>
systems.<br>
<br>
Signed-off-by: Alejandro Hernandez &lt;<a href=3D"mailto:alejandro.hernande=
z@linux.intel.com">alejandro.hernandez@linux.intel.com</a>&gt;<br>
Signed-off-by: Victor Rodriguez &lt;<a href=3D"mailto:victor.rodriguez.bahe=
na@intel.com">victor.rodriguez.bahena@intel.com</a>&gt;<br>
Signed-off-by: Alexandru.Vaduva &lt;<a href=3D"mailto:Alexandru.Vaduva@enea=
.com">Alexandru.Vaduva@enea.com</a>&gt;<br>
---<br>
=C2=A0meta-oe/recipes-devtools/mpich/<a href=3D"http://mpich_3.1.1.bb" targ=
et=3D"_blank">mpich_3.1.1.bb</a> | 29 +++++++++++++++++++++++++++<br>
=C2=A01 file changed, 29 insertions(+)<br>
=C2=A0create mode 100644 meta-oe/recipes-devtools/mpich/<a href=3D"http://m=
pich_3.1.1.bb" target=3D"_blank">mpich_3.1.1.bb</a><br>
<br>
diff --git a/meta-oe/recipes-devtools/mpich/<a href=3D"http://mpich_3.1.1.b=
b" target=3D"_blank">mpich_3.1.1.bb</a> b/meta-oe/recipes-devtools/mpich/<a=
 href=3D"http://mpich_3.1.1.bb" target=3D"_blank">mpich_3.1.1.bb</a><br>
new file mode 100644<br>
index 0000000..2f4226e<br>
--- /dev/null<br>
+++ b/meta-oe/recipes-devtools/mpich/<a href=3D"http://mpich_3.1.1.bb" targ=
et=3D"_blank">mpich_3.1.1.bb</a><br>
@@ -0,0 +1,29 @@<br>
+SUMMARY =3D &quot;Message Passing Interface(MPI) implementation&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://git.mpich.org/mpich.git/" target=3D"_=
blank">http://git.mpich.org/mpich.git/</a>&quot;<br>
+SECTION =3D &quot;devel&quot;<br>
+<br>
+LICENSE =3D &quot;BSD-2-Clause&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYRIGHT;md5=3D2106f0435056f3dd9349747a=
766e5816&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://www.mpich.org/static/downloads/${PV}/m=
pich-${PV}.tar.gz" target=3D"_blank">http://www.mpich.org/static/downloads/=
${PV}/mpich-${PV}.tar.gz</a>&quot;<br>
+SRC_URI[md5sum] =3D &quot;40dc408b1e03cc36d80209baaa2d32b7&quot;<br>
+SRC_URI[sha256sum] =3D &quot;455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7e=
a26504fd3018757652d&quot;<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;bash perl tcsh&quot;<br>
+S =3D &quot;${WORKDIR}/${PN}-${PV}&quot;<br>
+<br>
+EXTRA_OECONF =3D &quot;--enable-debuginfo \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-fast \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-shared=C2=
=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-f77 \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fc \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fortran =
\<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-cxx&quot=
;<br>
+<br>
+inherit autotools-brokensep gettext<br>
+<br>
+do_configure_prepend() {<br>
+=C2=A0 =C2=A0 autoreconf --verbose --install --force -I . -I confdb/ -I ma=
int/<br>
+=C2=A0 =C2=A0 oe_runconf<br>
+=C2=A0 =C2=A0 exit<br>
+}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a113732465feb13050fc15c6a--
