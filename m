Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAFAFE00D57; Wed,  9 May 2018 11:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 806D0E00A28
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 11:10:03 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id g12-v6so52270039lfb.10
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 11:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0OE8y4/fRSdeubvHsmyxwAGOyWtnvDGt0PG63HZBuFw=;
	b=XpdjnLmHn6mzrZB3mzV1RJQIZEZpQ3azNwYKIkL9hrpJkFhToGw7lJGzi++FbEWr0T
	TIhttXe6O8nI5Ysiu6WJYB0ZUiKEByLS5F8VEaRyeMKtXFXiq7HX31gg7dK1EnvJrtAA
	W4P1wcAj3cWtu0SdrLEfzy1rtU7CBL0ytyDyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0OE8y4/fRSdeubvHsmyxwAGOyWtnvDGt0PG63HZBuFw=;
	b=Va8EJ0cHUnow6SWZTeQPuxw+XFR8kPIzIwxi2ut05vy20vwlonj+PghG/nVRDHBSaO
	f+D+H7QujtC59Bfn165TPA6i6wpWi5uMWl3eH45T95P14M8VpT1XW/X+i7dJCT/Fc6Od
	0BghXLmlbwbKcfeMX+mJSXgmDDL8Dyf7ROn/nNXDG+VQN4xATbTc7AKgQKn+lgNYjznP
	wSi3YSJ6Pz7VN5QGZNZC/nn9kaywOp9MBRizHQLBsBjqQXG6vFck6bq2uRLOlmKu4YdV
	mKQdpsFdKVlUeYu3iQvMSKHcS5eRgSvYjm52qm8ICovXNcE2b5ujSj5RGm+1Tq9KhRa9
	OnUA==
X-Gm-Message-State: ALQs6tAA6A7XMnsYv37Aa5XufxqRNhXFfCgtP9+xXvZten+GM+oHzSrh
	5FPCFmV+KDue57Qn1o7oxsMZ2zn42ksqiSg1KCVspA==
X-Google-Smtp-Source: AB8JxZpFcxwFAanYjXF2mH11ou3poPri6Ku2qquW7Vqt0VCXEwznz+GIP3kX/dsTCXsw6k2sIXNEqohTGHW2zfiCX0Q=
X-Received: by 2002:a19:cd09:: with SMTP id
	d9-v6mr28736366lfg.87.1525889402176; 
	Wed, 09 May 2018 11:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:e80b:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 11:10:01 -0700 (PDT)
In-Reply-To: <1525889262-14990-1-git-send-email-ryan.harkin@linaro.org>
References: <1525889262-14990-1-git-send-email-ryan.harkin@linaro.org>
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Wed, 9 May 2018 19:10:01 +0100
Message-ID: <CAD0U-hJ12QE=yN8Tt8FdfB-M475OZpazyOmRm9b+OG9kE5L2jA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>, yocto@yoctoproject.org
Cc: drew.moseley@northern.tech, mirza.krak@endian.se
Subject: Re: [PATCH] Revert "u-boot: Update RPi Zero W defconfig to support DTB."
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
X-List-Received-Date: Wed, 09 May 2018 18:10:04 -0000
Content-Type: multipart/alternative; boundary="000000000000c8a3c4056bc9cf41"

--000000000000c8a3c4056bc9cf41
Content-Type: text/plain; charset="UTF-8"

Apologies all,

I forgot to add [meta-raspberrypi] to the subject line.

Andrei,

Please let me know if you'd like me to resend. Assuming you don't have a
fix for this in flight already.

Regards,
Ryan.


On 9 May 2018 at 19:07, Ryan Harkin <ryan.harkin@linaro.org> wrote:

> This reverts commit 72bc798ff548ba610e8dea53c80e39a37de8e043
>
> The following error was encountered when building the Yocto master:
>
> ERROR: u-boot-1_2018.03-r0 do_patch: Command Error: 'quilt --quiltrc
> /linaro/mbl/workspace-linaro/build-mbl/tmp-mbl-glibc/work/
> raspberrypi3-oe-linux-gnueabi/u-boot/1_2018.03-r0/recipe-
> sysroot-native/etc/quiltrc
> push' exited with 0  Output:
> Applying patch 0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch
> patching file configs/rpi_0_w_defconfig
> Hunk #1 FAILED at 12.
> 1 out of 1 hunk FAILED -- rejects in file configs/rpi_0_w_defconfig
> Patch 0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch does not apply
> (enforce with -f)
> ERROR: u-boot-1_2018.03-r0 do_patch: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /linaro/mbl/workspace-linaro/build-mbl/tmp-mbl-glibc/work/
> raspberrypi3-oe-linux-gnueabi/u-boot/1_2018.03-r0/temp/log.do_patch.13706
> ERROR: Task
> (/linaro/mbl/workspace-linaro/build-mbl/conf/../../layers/
> openembedded-core/meta/recipes-bsp/u-boot/u-boot_2018.03.bb:do_patch)
> failed with exit code '1'
>
> The u-boot patch the original commit was attempting to apply has gone
> upstream, so remove this commit as it is no longer necessary.
>
> Signed-off-by: Ryan Harkin <ryan.harkin@linaro.org>
> ---
>  ...-rpi_0_w-Add-configs-consistent-with-RpI3.patch | 41
> ----------------------
>  recipes-bsp/u-boot/u-boot_%.bbappend               |  8 +----
>  2 files changed, 1 insertion(+), 48 deletions(-)
>  delete mode 100644 recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-
> consistent-with-RpI3.patch
>
> diff --git a/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch
> b/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-
> consistent-with-RpI3.patch
> deleted file mode 100644
> index e98fd85..0000000
> --- a/recipes-bsp/u-boot/u-boot/0002-rpi_0_w-Add-configs-
> consistent-with-RpI3.patch
> +++ /dev/null
> @@ -1,41 +0,0 @@
> -From 5d113dc0130ea2ea9faaa000fba9c737266b9747 Mon Sep 17 00:00:00 2001
> -From: Drew Moseley <drew.moseley@northern.tech>
> -Date: Fri, 9 Feb 2018 18:10:09 -0500
> -Subject: [PATCH] rpi_0_w: Add configs consistent with RpI3
> -
> -Upstream-Status: Accepted [https://patchwork.ozlabs.org/patch/856572/]
> -
> -Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> ----
> - configs/rpi_0_w_defconfig | 7 +++++++
> - 1 file changed, 7 insertions(+)
> -
> -diff --git a/configs/rpi_0_w_defconfig b/configs/rpi_0_w_defconfig
> -index 9a6d24b..1248294 100644
> ---- a/configs/rpi_0_w_defconfig
> -+++ b/configs/rpi_0_w_defconfig
> -@@ -12,14 +12,21 @@ CONFIG_SYS_PROMPT="U-Boot> "
> - CONFIG_CMD_GPIO=y
> - CONFIG_CMD_MMC=y
> - CONFIG_CMD_USB=y
> -+CONFIG_OF_EMBED=y
> -+CONFIG_ENV_FAT_INTERFACE="mmc"
> -+CONFIG_ENV_FAT_DEVICE_AND_PART="0:1"
> -+CONFIG_DM_KEYBOARD=y
> - CONFIG_DM_MMC=y
> - CONFIG_MMC_SDHCI=y
> - CONFIG_MMC_SDHCI_BCM2835=y
> - CONFIG_DM_ETH=y
> - CONFIG_USB=y
> - CONFIG_DM_USB=y
> -+CONFIG_USB_DWC2=y
> - CONFIG_USB_STORAGE=y
> - CONFIG_USB_KEYBOARD=y
> -+CONFIG_USB_HOST_ETHER=y
> -+CONFIG_USB_ETHER_SMSC95XX=y
> - CONFIG_DM_VIDEO=y
> - CONFIG_SYS_WHITE_ON_BLACK=y
> - CONFIG_CONSOLE_SCROLL_LINES=10
> ---
> -2.7.4
> -
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend
> b/recipes-bsp/u-boot/u-boot_%.bbappend
> index 7d4a49e..3781666 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -1,7 +1 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot:"
> -
> -SRC_URI_append_rpi = " \
> -    file://0002-rpi_0_w-Add-configs-consistent-with-RpI3.patch \
> -"
> -
> -DEPENDS_append_rpi = " rpi-u-boot-scr"
> +RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
> --
> 2.7.4
>
>

--000000000000c8a3c4056bc9cf41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Apologies all,<div><br></div><div>I forgot to add [meta-ra=
spberrypi] to the subject line.<div><br></div><div>Andrei,</div><div><br></=
div><div>Please let me know if you&#39;d like me to resend. Assuming you do=
n&#39;t have a fix for this in flight already.</div><div><br></div><div>Reg=
ards,</div><div>Ryan.</div><div><br></div></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On 9 May 2018 at 19:07, Ryan Harkin <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:ryan.harkin@linaro.org" target=3D"_bl=
ank">ryan.harkin@linaro.org</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">This reverts commit 72bc798ff548ba610e8dea53c80e39<wbr>a37de8e043<=
br>
<br>
The following error was encountered when building the Yocto master:<br>
<br>
ERROR: u-boot-1_2018.03-r0 do_patch: Command Error: &#39;quilt --quiltrc<br=
>
/linaro/mbl/workspace-linaro/<wbr>build-mbl/tmp-mbl-glibc/work/<wbr>raspber=
rypi3-oe-linux-gnueabi/<wbr>u-boot/1_2018.03-r0/recipe-<wbr>sysroot-native/=
etc/quiltrc<br>
push&#39; exited with 0=C2=A0 Output:<br>
Applying patch 0002-rpi_0_w-Add-configs-<wbr>consistent-with-RpI3.patch<br>
patching file configs/rpi_0_w_defconfig<br>
Hunk #1 FAILED at 12.<br>
1 out of 1 hunk FAILED -- rejects in file configs/rpi_0_w_defconfig<br>
Patch 0002-rpi_0_w-Add-configs-<wbr>consistent-with-RpI3.patch does not app=
ly<br>
(enforce with -f)<br>
ERROR: u-boot-1_2018.03-r0 do_patch: Function failed: patch_do_patch<br>
ERROR: Logfile of failure stored in:<br>
/linaro/mbl/workspace-linaro/<wbr>build-mbl/tmp-mbl-glibc/work/<wbr>raspber=
rypi3-oe-linux-gnueabi/<wbr>u-boot/1_2018.03-r0/temp/log.<wbr>do_patch.1370=
6<br>
ERROR: Task<br>
(/linaro/mbl/workspace-linaro/<wbr>build-mbl/conf/../../layers/<wbr>openemb=
edded-core/meta/<wbr>recipes-bsp/u-boot/u-boot_<wbr>2018.03.bb:do_patch)<br=
>
failed with exit code &#39;1&#39;<br>
<br>
The u-boot patch the original commit was attempting to apply has gone<br>
upstream, so remove this commit as it is no longer necessary.<br>
<br>
Signed-off-by: Ryan Harkin &lt;<a href=3D"mailto:ryan.harkin@linaro.org">ry=
an.harkin@linaro.org</a>&gt;<br>
---<br>
=C2=A0...-rpi_0_w-Add-configs-<wbr>consistent-with-RpI3.patch | 41 --------=
--------------<br>
=C2=A0recipes-bsp/u-boot/u-boot_%.<wbr>bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 8 +----<br>
=C2=A02 files changed, 1 insertion(+), 48 deletions(-)<br>
=C2=A0delete mode 100644 recipes-bsp/u-boot/u-boot/<wbr>0002-rpi_0_w-Add-co=
nfigs-<wbr>consistent-with-RpI3.patch<br>
<br>
diff --git a/recipes-bsp/u-boot/u-boot/<wbr>0002-rpi_0_w-Add-configs-<wbr>c=
onsistent-with-RpI3.patch b/recipes-bsp/u-boot/u-boot/<wbr>0002-rpi_0_w-Add=
-configs-<wbr>consistent-with-RpI3.patch<br>
deleted file mode 100644<br>
index e98fd85..0000000<br>
--- a/recipes-bsp/u-boot/u-boot/<wbr>0002-rpi_0_w-Add-configs-<wbr>consiste=
nt-with-RpI3.patch<br>
+++ /dev/null<br>
@@ -1,41 +0,0 @@<br>
-From 5d113dc0130ea2ea9faaa000fba9c7<wbr>37266b9747 Mon Sep 17 00:00:00 200=
1<br>
-From: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
-Date: Fri, 9 Feb 2018 18:10:09 -0500<br>
-Subject: [PATCH] rpi_0_w: Add configs consistent with RpI3<br>
-<br>
-Upstream-Status: Accepted [<a href=3D"https://patchwork.ozlabs.org/patch/8=
56572/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.ozlabs.org/<=
wbr>patch/856572/</a>]<br>
-<br>
-Signed-off-by: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
----<br>
- configs/rpi_0_w_defconfig | 7 +++++++<br>
- 1 file changed, 7 insertions(+)<br>
-<br>
-diff --git a/configs/rpi_0_w_defconfig b/configs/rpi_0_w_defconfig<br>
-index 9a6d24b..1248294 100644<br>
---- a/configs/rpi_0_w_defconfig<br>
-+++ b/configs/rpi_0_w_defconfig<br>
-@@ -12,14 +12,21 @@ CONFIG_SYS_PROMPT=3D&quot;U-Boot&gt; &quot;<br>
- CONFIG_CMD_GPIO=3Dy<br>
- CONFIG_CMD_MMC=3Dy<br>
- CONFIG_CMD_USB=3Dy<br>
-+CONFIG_OF_EMBED=3Dy<br>
-+CONFIG_ENV_FAT_INTERFACE=3D&quot;<wbr>mmc&quot;<br>
-+CONFIG_ENV_FAT_DEVICE_AND_<wbr>PART=3D&quot;0:1&quot;<br>
-+CONFIG_DM_KEYBOARD=3Dy<br>
- CONFIG_DM_MMC=3Dy<br>
- CONFIG_MMC_SDHCI=3Dy<br>
- CONFIG_MMC_SDHCI_BCM2835=3Dy<br>
- CONFIG_DM_ETH=3Dy<br>
- CONFIG_USB=3Dy<br>
- CONFIG_DM_USB=3Dy<br>
-+CONFIG_USB_DWC2=3Dy<br>
- CONFIG_USB_STORAGE=3Dy<br>
- CONFIG_USB_KEYBOARD=3Dy<br>
-+CONFIG_USB_HOST_ETHER=3Dy<br>
-+CONFIG_USB_ETHER_SMSC95XX=3Dy<br>
- CONFIG_DM_VIDEO=3Dy<br>
- CONFIG_SYS_WHITE_ON_BLACK=3Dy<br>
- CONFIG_CONSOLE_SCROLL_LINES=3D10<br>
--- <br>
-2.7.4<br>
-<br>
diff --git a/recipes-bsp/u-boot/u-boot_%.<wbr>bbappend b/recipes-bsp/u-boot=
/u-boot_%.<wbr>bbappend<br>
index 7d4a49e..3781666 100644<br>
--- a/recipes-bsp/u-boot/u-boot_%.<wbr>bbappend<br>
+++ b/recipes-bsp/u-boot/u-boot_%.<wbr>bbappend<br>
@@ -1,7 +1 @@<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/u-boot:&quot;<br>
-<br>
-SRC_URI_append_rpi =3D &quot; \<br>
-=C2=A0 =C2=A0 file://0002-rpi_0_w-Add-<wbr>configs-consistent-with-RpI3.<w=
br>patch \<br>
-&quot;<br>
-<br>
-DEPENDS_append_rpi =3D &quot; rpi-u-boot-scr&quot;<br>
+RDEPENDS_${PN}_append_rpi =3D &quot; rpi-u-boot-scr&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">-- <br>
2.7.4<br>
<br>
</font></span></blockquote></div><br></div>

--000000000000c8a3c4056bc9cf41--
