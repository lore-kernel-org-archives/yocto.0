Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28F58E0088B; Fri, 18 Dec 2015 02:39:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8ABE00349
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 02:39:12 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id y184so69760865lfc.1
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 02:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JIhZPVyeYSghXAfSaY1sCw8qdK8FQGV8nBIFGU7JC2k=;
	b=qwjS9z3xTPiz++R1HFplOmFXd+xa6ZwT1qqFoYJO9VmoymnrIU/q2BfJX8qk8yYN0U
	yipJs4ImdIudmAwKzdv6FdqjVRhDRlcTzJJeZC2GLIKnbSP7E4QRlW34v3minEw7Kl61
	qrIvE3egkvwQr2pYgqb0glU61LG60frie1hxPOdS3E0rAv8Zjx5egpwUuA2viYByHD9P
	ZDyVu34HvTtgLPpC7WDByXfa4NMvyr94QPbfA65PqxTvDTir+Xd6zHbSKWMYpQvksFRb
	8XFouS+Ti9AhUTV3J7EuizijGlAiY9W1xA2Vh7ONh2/8OzcLvXItfDj3dYHZLIRUcjSy
	PJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JIhZPVyeYSghXAfSaY1sCw8qdK8FQGV8nBIFGU7JC2k=;
	b=jKkN1qJU+USf3bvRb+pJhsGcVelkEONWGRaDCzvHKyO4h6hyib5xSoIKb26x8EyNFN
	gAFXSCet7+kq9z0DExmEWkEZxl5Em+Oilw9f8pq/LKczwSlNm18BJQW/GacOxU3/dC8U
	NS+/ccXpVFgAt9k2Rou4W0QPCx6MqG+Xm42Ugmx10UyWF+h/sYqB8gVvO9ZyogfBGCwK
	SHIZEH6xdP+2qAvL6dC6wvJC5vY8zQjuG9MsdDsZsBBfRlgXH/QHpQXvsZcVYSpFTvlS
	mBkVKzCRCPhle+U8UdM33GdYsgy/MAeC/DJFPrGId8s/+OK4gvCuA5pkDteD5UF2rNuY
	QfXA==
X-Gm-Message-State: ALoCoQlSDOC1mqKpK+6XeDj0SrgLWui1MBmkbQd+9Zfa/VMJrcXjFU6vAlESfdAQooEj8s5ywakJrVpFiLnA5ZE1sSAzIIlM3g==
X-Received: by 10.25.27.16 with SMTP id b16mr787748lfb.149.1450435151290; Fri,
	18 Dec 2015 02:39:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.43.140 with HTTP; Fri, 18 Dec 2015 02:38:31 -0800 (PST)
X-Originating-IP: [178.7.64.118]
In-Reply-To: <1450395478-4272-1-git-send-email-leon@anavi.org>
References: <1450395478-4272-1-git-send-email-leon@anavi.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 18 Dec 2015 11:38:31 +0100
Message-ID: <CAK18fxEpvZK5izHF1WCjgSr1OHHKJxLHsiz0uC0S=4fuNwDhdw@mail.gmail.com>
To: Leon Anavi <leon@anavi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Add Python modules to support Raspberry Pi Sense Hat
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
X-List-Received-Date: Fri, 18 Dec 2015 10:39:16 -0000
Content-Type: multipart/alternative; boundary=001a11401a90f67f19052729bf10

--001a11401a90f67f19052729bf10
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 18, 2015 at 12:37 AM, Leon Anavi <leon@anavi.org> wrote:

> Python modules python-sense-hat and python-rtimu have been
> added to support the add-on board Sense Hat for Raspberry Pi.
>
> Python module python-rtimu uses the source code from the
> GitHub repository of RPi-Distro.
>
> Signed-off-by: Leon Anavi <leon@anavi.org>
> ---
>  recipes-devtools/python/python-rtimu_git.bb       | 12 +++++++++
>  recipes-devtools/python/python-sense-hat_2.1.0.bb | 31
> +++++++++++++++++++++++
>  2 files changed, 43 insertions(+)
>  create mode 100644 recipes-devtools/python/python-rtimu_git.bb
>  create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb
>
>
First of all thank you for your contribution and involvement. As this is
your first patch I will try to give you some hints:
1. I would lik eto have this patch split in 2 patches (for each bb file)
2. Then use the commit log following the guidelines here:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines (Ex:
"python-sense-hat: Add recipe to support..."


> diff --git a/recipes-devtools/python/python-rtimu_git.bb
> b/recipes-devtools/python/python-rtimu_git.bb
> new file mode 100644
> index 0000000..9d2f249
> --- /dev/null
> +++ b/recipes-devtools/python/python-rtimu_git.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION = "RTIMULib is a C++ and Python library that makes it easy to
> use 9-dof and 10-dof IMUs with embedded Linux systems"
>

I'm not familiar with this library but as I see it, I don't think is
specific to Raspberrypi. So I'm wondering if it wouldn't be better to have
this in meta-oe for example and the other one, which is definitely rpi
specific, here.


> +HOMEPAGE = "https://github.com/RPi-Distro/RTIMULib/"
> +SECTION = "devel/python"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
> +
> +SRC_URI = "git://
> github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master "
> +SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
> +
> +S = "${WORKDIR}/git/Linux/python/"
> +
> +inherit setuptools
> diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb
> b/recipes-devtools/python/python-sense-hat_2.1.0.bb
> new file mode 100644
> index 0000000..0665536
> --- /dev/null
> +++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
> @@ -0,0 +1,31 @@
> +SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in
> the Astro Pi mission"
> +HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
> +SECTION = "devel/python"
> +LICENSE = "BSD"
> +LIC_FILES_CHKSUM =
> "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
> +
> +SRCNAME = "sense-hat"
> +
> +SRC_URI = "
> https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz
> "
> +
> +SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
> +SRC_URI[sha256sum] =
> "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
> +
> +S = "${WORKDIR}/${SRCNAME}-${PV}"
> +
> +inherit setuptools
> +
> +DEPENDS_${PN} += " \
> +               jpeg \
> +               jpeg-dev \
> +               zlib \
> +               zlib-dev \
> +               freetype \
> +               freetype-dev \
> +               "
> +
> +RDEPENDS_${PN} += " \
> +               python-numpy \
> +               python-rtimu \
> +               python-imaging \
> +               "
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11401a90f67f19052729bf10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Dec 18, 2015 at 12:37 AM, Leon Anavi <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:leon@anavi.org" target=3D"_blank">leon@anavi.org</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">Python modules python-sense-hat and python-rtimu have=
 been<br>
added to support the add-on board Sense Hat for Raspberry Pi.<br>
<br>
Python module python-rtimu uses the source code from the<br>
GitHub repository of RPi-Distro.<br>
<br>
Signed-off-by: Leon Anavi &lt;<a href=3D"mailto:leon@anavi.org">leon@anavi.=
org</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python-rtimu_git.bb" rel=3D=
"noreferrer" target=3D"_blank">python-rtimu_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0| 12 +++++++++<br>
=C2=A0recipes-devtools/python/<a href=3D"http://python-sense-hat_2.1.0.bb" =
rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.1.0.bb</a> | 31 +++=
++++++++++++++++++++<br>
=C2=A02 files changed, 43 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/python/<a href=3D"http://python-r=
timu_git.bb" rel=3D"noreferrer" target=3D"_blank">python-rtimu_git.bb</a><b=
r>
=C2=A0create mode 100644 recipes-devtools/python/<a href=3D"http://python-s=
ense-hat_2.1.0.bb" rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.=
1.0.bb</a><br>
<br></blockquote><div><br></div><div>First of all thank you for your contri=
bution and involvement. As this is your first patch I will try to give you =
some hints:<br>1. I would lik eto have this patch split in 2 patches (for e=
ach bb file)<br>2. Then use the commit log following the guidelines here:=
=C2=A0<a href=3D"http://www.openembedded.org/wiki/Commit_Patch_Message_Guid=
elines">http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines</a=
> (Ex: &quot;python-sense-hat: Add recipe to support...&quot;</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex">
diff --git a/recipes-devtools/python/<a href=3D"http://python-rtimu_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-rtimu_git.bb</a> b/recipes-dev=
tools/python/<a href=3D"http://python-rtimu_git.bb" rel=3D"noreferrer" targ=
et=3D"_blank">python-rtimu_git.bb</a><br>
new file mode 100644<br>
index 0000000..9d2f249<br>
--- /dev/null<br>
+++ b/recipes-devtools/python/<a href=3D"http://python-rtimu_git.bb" rel=3D=
"noreferrer" target=3D"_blank">python-rtimu_git.bb</a><br>
@@ -0,0 +1,12 @@<br>
+DESCRIPTION =3D &quot;RTIMULib is a C++ and Python library that makes it e=
asy to use 9-dof and 10-dof IMUs with embedded Linux systems&quot;<br></blo=
ckquote><div><br></div><div>I&#39;m not familiar with this library but as I=
 see it, I don&#39;t think is specific to Raspberrypi. So I&#39;m wondering=
 if it wouldn&#39;t be better to have this in meta-oe for example and the o=
ther one, which is definitely rpi specific, here.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">
+HOMEPAGE =3D &quot;<a href=3D"https://github.com/RPi-Distro/RTIMULib/" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/RPi-Distro/RTIMULib/</=
a>&quot;<br>
+SECTION =3D &quot;devel/python&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://../../LICENSE;md5=3D96cdecb41125f498958e=
09b72faf318e&quot;<br>
+<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/RPi-Distro/RTIMULib.g=
it;protocol=3Dhttp;branch=3Dmaster" rel=3D"noreferrer" target=3D"_blank">gi=
thub.com/RPi-Distro/RTIMULib.git;protocol=3Dhttp;branch=3Dmaster</a> &quot;=
<br>
+SRCREV =3D &quot;b949681af69b45f0f7f4bb53b6770037b5b02178&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/git/Linux/python/&quot;<br>
+<br>
+inherit setuptools<br>
diff --git a/recipes-devtools/python/<a href=3D"http://python-sense-hat_2.1=
.0.bb" rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.1.0.bb</a> b=
/recipes-devtools/python/<a href=3D"http://python-sense-hat_2.1.0.bb" rel=
=3D"noreferrer" target=3D"_blank">python-sense-hat_2.1.0.bb</a><br>
new file mode 100644<br>
index 0000000..0665536<br>
--- /dev/null<br>
+++ b/recipes-devtools/python/<a href=3D"http://python-sense-hat_2.1.0.bb" =
rel=3D"noreferrer" target=3D"_blank">python-sense-hat_2.1.0.bb</a><br>
@@ -0,0 +1,31 @@<br>
+SUMMARY =3D &quot;Python module to control the Raspberry Pi Sense HAT used=
 in the Astro Pi mission&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"https://github.com/RPi-Distro/python-sense-h=
at" rel=3D"noreferrer" target=3D"_blank">https://github.com/RPi-Distro/pyth=
on-sense-hat</a>&quot;<br>
+SECTION =3D &quot;devel/python&quot;<br>
+LICENSE =3D &quot;BSD&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENCE.txt;md5=3Dd80fe312e1ff5fbd97369b=
093bf21cda&quot;<br>
+<br>
+SRCNAME =3D &quot;sense-hat&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"https://pypi.python.org/packages/source/s/${S=
RCNAME}/${SRCNAME}-${PV}.tar.gz" rel=3D"noreferrer" target=3D"_blank">https=
://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz</a>=
&quot;<br>
+<br>
+SRC_URI[md5sum] =3D &quot;71217f15ea963040f06e2f50722186ca&quot;<br>
+SRC_URI[sha256sum] =3D &quot;c6c76707c0ea514e4b0f1f96f1b5b79755875891aae03=
7df7434b6aad7b9dbca&quot;<br>
+<br>
+S =3D &quot;${WORKDIR}/${SRCNAME}-${PV}&quot;<br>
+<br>
+inherit setuptools<br>
+<br>
+DEPENDS_${PN} +=3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jpeg \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jpeg-dev \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0zlib \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0zlib-dev \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freetype \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freetype-dev \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
+<br>
+RDEPENDS_${PN} +=3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0python-numpy \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0python-rtimu \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0python-imaging \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<span class=3D""><font color=3D"#888888">--<br>
2.5.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--001a11401a90f67f19052729bf10--
