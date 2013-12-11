Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F090EE007D5
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:08:43 -0800 (PST)
Received: by mail-we0-f182.google.com with SMTP id q59so6935872wes.13
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:08:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=7kGvEyXfzhemGOi2WzJhTKTcGQKaVLeS3X5/JIZdEbM=;
	b=ZyePJ1ikMC9WmDrZNaVgE/ZYMHQYfjRWH3BRAgymfJ0iUnAincQFJi0gXpwN/qSfFT
	WZiBd8eo2hvR5t9JpbgPUHTg6Q8kMxqQKsF7kEG+vT5U9L0Q19KR4hbbdWhbi4zAlgS9
	R1Ga74RROW5ibF91r/ejmcbrNXI1IjvuG2Xf2T/ZMCaXeDiMzEO0l6iBg6J2iCgzPuUh
	rGssWIxFTEhsjiiji5OqNVGA2snJZDjgFoKmATAUwCBGcWig64LFq8QcIz2pBZfo/hHt
	UsXWjpSPqDv9x1mYN+hXBZPbKlOWpmrRgjejqipkniurSS8XRwZktiAeXlFEM60SjGm0
	/nqw==
X-Gm-Message-State: ALoCoQnf8AMb9YjYgFa+crZzRA9aIjPu36lzynJ2KWqneEk1GLOJMCaOGRaIbJxjmaEpagF+Im2T
X-Received: by 10.194.48.74 with SMTP id j10mr2596945wjn.41.1386785321801;
	Wed, 11 Dec 2013 10:08:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Wed, 11 Dec 2013 10:08:21 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Dec 2013 20:08:21 +0200
Message-ID: <CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Philipp Wagner <mail@philipp-wagner.com>
Subject: Re: [meta-raspberrypi][PATCH] linux: Update to 3.12.3 (latest RPI upstream)
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
X-List-Received-Date: Wed, 11 Dec 2013 18:08:46 -0000
Content-Type: multipart/alternative; boundary=047d7ba975c87c76a404ed461eea

--047d7ba975c87c76a404ed461eea
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com> wrote:

> From: Philipp Wagner <mail@philipp-wagner.com>
>
> Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.12.0.bb | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.12.3.bb | 6 ++++++
>  2 files changed, 6 insertions(+), 6 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.3.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.12.0.bb
> deleted file mode 100644
> index 3631da5..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
> -SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.3.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.12.3.bb
> new file mode 100644
> index 0000000..304c1ad
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.3.bb
> @@ -0,0 +1,6 @@
> +SRCREV = "7dac37b9865ab51f7a68b7703bf6792b698fee1b"
>


As pointed in https://review.gherzan.ro:8443/#/c/27/, it seems this SRCREV
is invalid.

-- 
*ag*

--047d7ba975c87c76a404ed461eea
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, Dec 8, 2013 at 2:17 PM,  <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:lists@philipp-wagner.com" target=3D"_blank">lists@philipp-wagner.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">From: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wa=
gner.com">mail@philipp-wagner.com</a>&gt;<br>


<br>
Signed-off-by: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wagner.com=
">mail@philipp-wagner.com</a>&gt;<br>
---<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" targ=
et=3D"_blank">linux-raspberrypi_3.12.0.bb</a> | 6 ------<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.3.bb" targ=
et=3D"_blank">linux-raspberrypi_3.12.3.bb</a> | 6 ++++++<br>
=A02 files changed, 6 insertions(+), 6 deletions(-)<br>
=A0delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.12.0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.12.3.bb" target=3D"_blank">linux-raspberrypi_3.12.3.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">linux-=
raspberrypi_3.12.0.bb</a><br>


deleted file mode 100644<br>
index 3631da5..0000000<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" t=
arget=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
+++ /dev/null<br>
@@ -1,6 +0,0 @@<br>
-SRCREV =3D &quot;839f349b6ed2a63a2bff0b5f0d718a7b07ca2316&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.12.y</a> \<br>
- =A0 =A0 =A0 =A0 =A0 file://sl030raspberrypii2ckernel.patch \<br>
- =A0 =A0 =A0 =A0 =A0&quot;<br>
-<br>
-require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
3.bb" target=3D"_blank">linux-raspberrypi_3.12.3.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.12.3.bb" target=3D"_blank">linux-=
raspberrypi_3.12.3.bb</a><br>


new file mode 100644<br>
index 0000000..304c1ad<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.3.bb" t=
arget=3D"_blank">linux-raspberrypi_3.12.3.bb</a><br>
@@ -0,0 +1,6 @@<br>
+SRCREV =3D &quot;7dac37b9865ab51f7a68b7703bf6792b698fee1b&quot;<br></block=
quote><div><br></div><div><br></div><div>As pointed in=A0<a href=3D"https:/=
/review.gherzan.ro:8443/#/c/27/">https://review.gherzan.ro:8443/#/c/27/</a>=
, it seems this SRCREV is invalid.=A0</div>

<div><br></div></div>--=A0</div><div class=3D"gmail_extra"><b style=3D"colo=
r:rgb(51,51,51);font-family:Arial;text-align:center">ag</b>
</div></div>

--047d7ba975c87c76a404ed461eea--
