Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDCAE01389
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:26:36 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id hi5so254465wib.1
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:26:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=X/d7oQS1WXnhK1QP8wXF/fITnUBr0vG0Zp0XA+rk6uc=;
	b=g9npP+u+tLYfu6bjTzS9jfxiPvDAzv0cXsedrb4p6wdg3jcop7X2sbUs08yNPMIddW
	w9tX9aN7a7QSpPznbnK+1PqApgFUfjwi4t5e8ehlUbJMPOJNe8yCMrgtc/zX+WaY+x8x
	6wVsEyH6HftigmECYSq7kPMY/tL3oBuoYWuPTlHWLMM5JP+vxmbefZnKGZGZTD0+24vk
	2Zeu27kAkmCCKt0epk1qGm4Wpac2NGIGrf+wCzwixQo7phrGaHBm8odKYU4MdM8SvbqV
	9ff05LUks+/bqJ3nqLkAh0N/bTUoclE/yOYQrpGSknhz6zjbDcIJAszjHyilJluQm/8x
	ibtg==
X-Gm-Message-State: ALoCoQm/i5TvssOL/m80fnGnI3phFYdW9X7DNyC5K31LqoHtI8nqyf/iRI5WwCzFFr5nLFuvqO0S
X-Received: by 10.194.89.105 with SMTP id bn9mr25011wjb.82.1384359995795; Wed,
	13 Nov 2013 08:26:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 08:26:14 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-3-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-3-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 18:26:14 +0200
Message-ID: <CAK18fxHAL=kuzgo0xDbaV5XBhqqK-reS=VG-U0zxf12uqE7A9w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 3/6] linux-raspberrypi: Add version 3.10.18 and 3.12.0
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
X-List-Received-Date: Wed, 13 Nov 2013 16:26:37 -0000
Content-Type: multipart/alternative; boundary=047d7bf10acaca8db804eb116d29

--047d7bf10acaca8db804eb116d29
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.10.18.bb | 4 ++++
>  recipes-kernel/linux/linux-raspberrypi_3.12.0.bb  | 4 ++++
>  2 files changed, 8 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.18.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.10.18.bb
> new file mode 100644
> index 0000000..399a978
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.10.18.bb
> @@ -0,0 +1,4 @@
> +SRCREV = "ae937f99fee8a37f2ddd7270f6bcc0e497e8c903"
> +SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y"
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.0.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.12.0.bb
> new file mode 100644
> index 0000000..25877fe
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.12.0.bb
> @@ -0,0 +1,4 @@
> +SRCREV = "839f349b6ed2a63a2bff0b5f0d718a7b07ca2316"
> +SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y"
> +
> +require linux-raspberrypi.inc
> --
> 1.8.1.4
>
>
Added a new patchset which adds file://sl030raspberrypii2ckernel.patch to
these kernel versions too: https://review.gherzan.ro:8443/#/c/14/

ag

--047d7bf10acaca8db804eb116d29
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Change-Id: Idd59fed4f2ab975c50b3727e436b4a0caeb0ab16<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" tar=
get=3D"_blank">linux-raspberrypi_3.10.18.bb</a> | 4 ++++<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" targ=
et=3D"_blank">linux-raspberrypi_3.12.0.bb</a> =A0| 4 ++++<br>
=A02 files changed, 8 insertions(+)<br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.10.18.bb" target=3D"_blank">linux-raspberrypi_3.10.18.bb</a><br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.12.0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.=
18.bb" target=3D"_blank">linux-raspberrypi_3.10.18.bb</a> b/recipes-kernel/=
linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" target=3D"_blank">lin=
ux-raspberrypi_3.10.18.bb</a><br>


new file mode 100644<br>
index 0000000..399a978<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.10.18.bb" =
target=3D"_blank">linux-raspberrypi_3.10.18.bb</a><br>
@@ -0,0 +1,4 @@<br>
+SRCREV =3D &quot;ae937f99fee8a37f2ddd7270f6bcc0e497e8c903&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.10.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.10.y</a>&quot;<br>
+<br>
+require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.=
0.bb" target=3D"_blank">linux-raspberrypi_3.12.0.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" target=3D"_blank">linux-=
raspberrypi_3.12.0.bb</a><br>


new file mode 100644<br>
index 0000000..25877fe<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.12.0.bb" t=
arget=3D"_blank">linux-raspberrypi_3.12.0.bb</a><br>
@@ -0,0 +1,4 @@<br>
+SRCREV =3D &quot;839f349b6ed2a63a2bff0b5f0d718a7b07ca2316&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.12.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.12.y</a>&quot;<br>
+<br>
+require linux-raspberrypi.inc<br>
<span class=3D""><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br>Added a new patchset which adds=A0file=
://sl030raspberrypii2ckernel.patch to these kernel versions too:=A0<a href=
=3D"https://review.gherzan.ro:8443/#/c/14/">https://review.gherzan.ro:8443/=
#/c/14/</a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">ag</div></d=
iv>

--047d7bf10acaca8db804eb116d29--
