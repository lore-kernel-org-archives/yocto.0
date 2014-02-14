Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10E1FE007DC;
	Fri, 14 Feb 2014 13:13:17 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id lx4so7745187iec.27
	for <multiple recipients>; Fri, 14 Feb 2014 13:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TbWUuUTA+ljMxwZaNuoZvDW/qbvEfHgV+RdE8ZgD774=;
	b=zUhURCp9OPRs3kmUnpIutzin6KhfcvuuYVsj5rKEGFMHMUBfMoJkpB6dyZQcK1m4jL
	bP+kC4rSMr6kqzXXKn4snL6sOOx5nZiTLilHrLgrlFgS8Hg6r5YZRi475rWSc3b9jfoB
	M9CK3F7/rhwhsaa+6OBhmoMrMtLCkvu/2eADUQtfYPWJ8pT6hk+TBHxzDpaBnsUo+c+o
	Oygcpg8UXaMJRj2eJz52gikDcq/lK2gfv4sUkQige+1FPz+YGK3REhiWx3EQfW5K4pzv
	8FIO0R4QwkJyRv8U3LcKD01tSfzwUFJSQ/K26lygzGRN3+M41veE5Q632/0KFe2lmOf6
	MhlQ==
MIME-Version: 1.0
X-Received: by 10.42.28.69 with SMTP id m5mr7867372icc.21.1392412397000; Fri,
	14 Feb 2014 13:13:17 -0800 (PST)
Received: by 10.50.8.137 with HTTP; Fri, 14 Feb 2014 13:13:16 -0800 (PST)
Received: by 10.50.8.137 with HTTP; Fri, 14 Feb 2014 13:13:16 -0800 (PST)
In-Reply-To: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
References: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
Date: Fri, 14 Feb 2014 13:13:16 -0800
Message-ID: <CAMKF1sr5NsOFkP0xE05-0JqzGqn7b1ZjE1Vh1zx-sDqX6ZNj5A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: yocto@lists.yoctoproject.org, meta-intel@lists.yoctoproject.org
Subject: Re: [meta-intel][common][dora][PATCHv2] emgd-driver-bin: limit build to x86
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
X-List-Received-Date: Fri, 14 Feb 2014 21:13:20 -0000
Content-Type: multipart/alternative; boundary=20cf304271c84de24e04f264469e

--20cf304271c84de24e04f264469e
Content-Type: text/plain; charset=UTF-8

-Khem
On Feb 14, 2014 10:25 AM, "Koen Kooi" <koen@dominion.thruhere.net> wrote:
>
> When building GL apps for non-x86 machines (e.g. raspberrypi)
emgd-driver-bin is being
> dragged in as a valid provider. To avoid build breakage fix it at the
> source by limiting emgd-driver-bin to x86 architectures.
>
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
>  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb | 2 ++
>  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bbb/common/recipes-graphics/xorg-driver/
emgd-driver-bin_1.16.bb
> index c8ca726..8cb088e 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.16 &
Intel-user-space-graphics-driver-b
>  LICENSE_FLAGS = "license_${PN}_${PV}"
>  PR = "r0"
>
> +COMPATIBLE_HOST = "(i.86).*-linux"

is it not valid for x86_64 ?

> +
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
>  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bbb/common/recipes-graphics/xorg-driver/
emgd-driver-bin_1.18.bb
> index b3bf0d2..cf6d855 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb
> @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.18 &
Intel-user-space-graphics-driver-b
>  LICENSE_FLAGS = "license_${PN}_${PV}"
>  PR = "r1"
>
> +COMPATIBLE_HOST = "(i.86).*-linux"
> +
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
>  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> --
> 1.8.3.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--20cf304271c84de24e04f264469e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">-Khem<br>
On Feb 14, 2014 10:25 AM, &quot;Koen Kooi&quot; &lt;<a href=3D"mailto:koen@=
dominion.thruhere.net">koen@dominion.thruhere.net</a>&gt; wrote:<br>
&gt;<br>
&gt; When building GL apps for non-x86 machines (e.g. raspberrypi) emgd-dri=
ver-bin is being<br>
&gt; dragged in as a valid provider. To avoid build breakage fix it at the<=
br>
&gt; source by limiting emgd-driver-bin to x86 architectures.<br>
&gt;<br>
&gt; Signed-off-by: Koen Kooi &lt;<a href=3D"mailto:koen@dominion.thruhere.=
net">koen@dominion.thruhere.net</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.16.bb">emgd-driver-bin_1.16.bb</a> | 2 ++<br>
&gt; =C2=A0common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.18.bb">emgd-driver-bin_1.18.bb</a> | 2 ++<br>
&gt; =C2=A02 files changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/common/recipes-graphics/xorg-driver/<a href=3D"http://emg=
d-driver-bin_1.16.bb">emgd-driver-bin_1.16.bb</a> b/common/recipes-graphics=
/xorg-driver/<a href=3D"http://emgd-driver-bin_1.16.bb">emgd-driver-bin_1.1=
6.bb</a><br>

&gt; index c8ca726..8cb088e 100644<br>
&gt; --- a/common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.16.bb">emgd-driver-bin_1.16.bb</a><br>
&gt; +++ b/common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.16.bb">emgd-driver-bin_1.16.bb</a><br>
&gt; @@ -9,6 +9,8 @@ LICENSE =3D &quot;Intel-software-license-emgd-1.16 &am=
p; Intel-user-space-graphics-driver-b<br>
&gt; =C2=A0LICENSE_FLAGS =3D &quot;license_${PN}_${PV}&quot;<br>
&gt; =C2=A0PR =3D &quot;r0&quot;<br>
&gt;<br>
&gt; +COMPATIBLE_HOST =3D &quot;(i.86).*-linux&quot;</p>
<p dir=3D"ltr">is it not valid for x86_64 ?</p>
<p dir=3D"ltr">&gt; +<br>
&gt; =C2=A0EMGD_LIC_DIR =3D &quot;IEMGD_HEAD_Linux/License&quot;<br>
&gt; =C2=A0EMGD_RPM_DIR =3D &quot;IEMGD_HEAD_Linux/MeeGo1.2&quot;<br>
&gt; =C2=A0EMGD_VIDEO_PLUGIN_DIR =3D &quot;../common/video_plugin&quot;<br>
&gt; diff --git a/common/recipes-graphics/xorg-driver/<a href=3D"http://emg=
d-driver-bin_1.18.bb">emgd-driver-bin_1.18.bb</a> b/common/recipes-graphics=
/xorg-driver/<a href=3D"http://emgd-driver-bin_1.18.bb">emgd-driver-bin_1.1=
8.bb</a><br>

&gt; index b3bf0d2..cf6d855 100644<br>
&gt; --- a/common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.18.bb">emgd-driver-bin_1.18.bb</a><br>
&gt; +++ b/common/recipes-graphics/xorg-driver/<a href=3D"http://emgd-drive=
r-bin_1.18.bb">emgd-driver-bin_1.18.bb</a><br>
&gt; @@ -9,6 +9,8 @@ LICENSE =3D &quot;Intel-software-license-emgd-1.18 &am=
p; Intel-user-space-graphics-driver-b<br>
&gt; =C2=A0LICENSE_FLAGS =3D &quot;license_${PN}_${PV}&quot;<br>
&gt; =C2=A0PR =3D &quot;r1&quot;<br>
&gt;<br>
&gt; +COMPATIBLE_HOST =3D &quot;(i.86).*-linux&quot;<br>
&gt; +<br>
&gt; =C2=A0EMGD_LIC_DIR =3D &quot;IEMGD_HEAD_Linux/License&quot;<br>
&gt; =C2=A0EMGD_RPM_DIR =3D &quot;IEMGD_HEAD_Linux/MeeGo1.2&quot;<br>
&gt; =C2=A0EMGD_VIDEO_PLUGIN_DIR =3D &quot;../common/video_plugin&quot;<br>
&gt; --<br>
&gt; 1.8.3.4<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--20cf304271c84de24e04f264469e--
