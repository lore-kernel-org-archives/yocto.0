Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0173E00C31; Sun, 29 May 2016 11:20:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F20E00C2D
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 11:20:22 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id w16so10217960lfd.0
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 11:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Ug5fhYq8wuX3tLTZdqbfdByk36SOZBqYo8YsYm/VOpk=;
	b=DmhltZs/4+tpAoItGKLY+xme2JuF6XcU3rNCtvOmV7buQM+7FPVCcK9nsVmdSPXWZc
	wU7NQ7WUAWNT4JYs5YxnJSutJVSv8I+vBS5PGOcbcLLVEtOF84qHVp8b5M1JAaToCBAx
	ztmijhZx2h4dxVJdmFZZ+N0JjRuXCf6RVH/PcPyb3e10F6RtpoCgJn99J5Tke0kPaf0M
	j92Qklk0d+h7d4ZsMfP3k1vt5Kq0EPvipu+RjuKYV1nQIgVmXnOtzvD/g5jle+m3klYa
	j57PtuNgI5BX0hSVvYRCT23GQrjJGohaCe1YbAl6beySVKa7qgQeE/6dB9DlcgVQClW4
	XEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Ug5fhYq8wuX3tLTZdqbfdByk36SOZBqYo8YsYm/VOpk=;
	b=g4/vY1Od10YeRsuIjPYECpus84AlAmxXZsFgNElxpbi5sd57ywDSq7YtIT+ghGLKik
	Nc3/BpF8YQlfmxBDhXvOOx/cHB6Lxl4xYwnhd/DxYckguzocP9PK/d4reRAOaM/BE7lN
	6vBbQVECN8Jtey+kq+DJWgKhrv13OG4pbBnx+5uZd6jWRA/bXqvbKuQycUFyqUyNF6S3
	oMKFihQz2rkX+OAKxyie23se7osBcjsJZ/q0q1A99AobzSpOydYIq7BnnWtkxgkiuDlO
	r/HiNHSIBqafkAd4nUgmu5746WOeI6V1EINKxoQTzbMKFY0h+ZWPA5fLEGEqMwDg7WzV
	fURA==
X-Gm-Message-State: ALyK8tKzfjgVaVTH4E5YfXvyLXD530GZVBqSXfKPk+qkuJl/wAv4j3A5/1k8nD1EhqYEBk8/4ZqBUxfMkTBEpw==
MIME-Version: 1.0
X-Received: by 10.25.161.132 with SMTP id k126mr674323lfe.101.1464546021097;
	Sun, 29 May 2016 11:20:21 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Sun, 29 May 2016 11:20:21 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Sun, 29 May 2016 11:20:21 -0700 (PDT)
In-Reply-To: <1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
Date: Sun, 29 May 2016 21:20:21 +0300
Message-ID: <CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Sun, 29 May 2016 18:20:24 -0000
Content-Type: multipart/alternative; boundary=001a113f21ec584a540533ff314b

--001a113f21ec584a540533ff314b
Content-Type: text/plain; charset=UTF-8

On May 29, 2016 9:00 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>
> PV is now set in each version of the linux-raspberrypi recipe instead of
in
> linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used in
custom
> kernel recipes in another layer which require a different PV value.

You  can also use weak define. Instead of duplicated value in each recipe
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc     | 1 -
>  recipes-kernel/linux/linux-raspberrypi_3.18.bb | 1 +
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb  | 1 +
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb  | 1 +
>  4 files changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 4799c74..dd477cd 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -13,7 +13,6 @@ SRC_URI += " \
>  COMPATIBLE_MACHINE = "raspberrypi"
>
>  PE = "1"
> -PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  # NOTE: For now we pull in the default config from the RPi kernel GIT
tree.
>  KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> index 1110b71..b16a1d7 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "3.18.16"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "1bb18c8f721ef674a447f3622273f2e2de7a205c"
>  SRC_URI = "git://
github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 79fac66..9e1572e 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "4.1.21"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
>  SRC_URI = "git://
github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index ba47b22..12bb43a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,6 +1,7 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
>  LINUX_VERSION ?= "4.4.9"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
>  SRC_URI = "git://
github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
,

--001a113f21ec584a540533ff314b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On May 29, 2016 9:00 AM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:paul=
@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; PV is now set in each version of the linux-raspberrypi recipe instead =
of in<br>
&gt; linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used in=
 custom<br>
&gt; kernel recipes in another layer which require a different PV value.</p=
>
<p dir=3D"ltr">You=C2=A0 can also use weak define. Instead of duplicated va=
lue in each recipe<br>
&gt;<br>
&gt; Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk=
">paul@paulbarker.me.uk</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0recipes-kernel/linux/linux-raspberrypi.inc=C2=A0 =C2=A0 =C2=A0| =
1 -<br>
&gt; =C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb=
">linux-raspberrypi_3.18.bb</a> | 1 +<br>
&gt; =C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.1.bb"=
>linux-raspberrypi_4.1.bb</a>=C2=A0 | 1 +<br>
&gt; =C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb"=
>linux-raspberrypi_4.4.bb</a>=C2=A0 | 1 +<br>
&gt; =C2=A04 files changed, 3 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kern=
el/linux/linux-raspberrypi.inc<br>
&gt; index 4799c74..dd477cd 100644<br>
&gt; --- a/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; +++ b/recipes-kernel/linux/linux-raspberrypi.inc<br>
&gt; @@ -13,7 +13,6 @@ SRC_URI +=3D &quot; \<br>
&gt; =C2=A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
&gt;<br>
&gt; =C2=A0PE =3D &quot;1&quot;<br>
&gt; -PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; =C2=A0# NOTE: For now we pull in the default config from the RPi kerne=
l GIT tree.<br>
&gt; =C2=A0KERNEL_DEFCONFIG_raspberrypi ?=3D &quot;bcmrpi_defconfig&quot;<b=
r>
&gt; diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_=
3.18.bb">linux-raspberrypi_3.18.bb</a> b/recipes-kernel/linux/<a href=3D"ht=
tp://linux-raspberrypi_3.18.bb">linux-raspberrypi_3.18.bb</a><br>
&gt; index 1110b71..b16a1d7 100644<br>
&gt; --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb=
">linux-raspberrypi_3.18.bb</a><br>
&gt; +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.18.bb=
">linux-raspberrypi_3.18.bb</a><br>
&gt; @@ -1,6 +1,7 @@<br>
&gt; =C2=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;=
<br>
&gt;<br>
&gt; =C2=A0LINUX_VERSION ?=3D &quot;3.18.16&quot;<br>
&gt; +PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; =C2=A0SRCREV =3D &quot;1bb18c8f721ef674a447f3622273f2e2de7a205c&quot;<=
br>
&gt; =C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi=
/linux.git;protocol=3Dgit;branch=3Drpi-3.18.y">github.com/raspberrypi/linux=
.git;protocol=3Dgit;branch=3Drpi-3.18.y</a> \<br>
&gt; diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_=
4.1.bb">linux-raspberrypi_4.1.bb</a> b/recipes-kernel/linux/<a href=3D"http=
://linux-raspberrypi_4.1.bb">linux-raspberrypi_4.1.bb</a><br>
&gt; index 79fac66..9e1572e 100644<br>
&gt; --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.1.bb"=
>linux-raspberrypi_4.1.bb</a><br>
&gt; +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.1.bb"=
>linux-raspberrypi_4.1.bb</a><br>
&gt; @@ -1,6 +1,7 @@<br>
&gt; =C2=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;=
<br>
&gt;<br>
&gt; =C2=A0LINUX_VERSION ?=3D &quot;4.1.21&quot;<br>
&gt; +PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; =C2=A0SRCREV =3D &quot;ff45bc0e8917c77461b2901e2743e6339bb70413&quot;<=
br>
&gt; =C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi=
/linux.git;protocol=3Dgit;branch=3Drpi-4.1.y">github.com/raspberrypi/linux.=
git;protocol=3Dgit;branch=3Drpi-4.1.y</a> \<br>
&gt; diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_=
4.4.bb">linux-raspberrypi_4.4.bb</a> b/recipes-kernel/linux/<a href=3D"http=
://linux-raspberrypi_4.4.bb">linux-raspberrypi_4.4.bb</a><br>
&gt; index ba47b22..12bb43a 100644<br>
&gt; --- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb"=
>linux-raspberrypi_4.4.bb</a><br>
&gt; +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb"=
>linux-raspberrypi_4.4.bb</a><br>
&gt; @@ -1,6 +1,7 @@<br>
&gt; =C2=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-${PV}:&quot;=
<br>
&gt;<br>
&gt; =C2=A0LINUX_VERSION ?=3D &quot;4.4.9&quot;<br>
&gt; +PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; =C2=A0SRCREV =3D &quot;3b440738b5c1adc3ec3ee72ceca799d1b8d264df&quot;<=
br>
&gt; =C2=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi=
/linux.git;protocol=3Dgit;branch=3Drpi-4.4.y">github.com/raspberrypi/linux.=
git;protocol=3Dgit;branch=3Drpi-4.4.y</a> \<br>
&gt; --<br>
&gt; 2.1.4<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
, </p>

--001a113f21ec584a540533ff314b--
