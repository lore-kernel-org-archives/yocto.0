Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFBD9E00B53; Fri, 30 Jun 2017 06:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B22ADE00B1B
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 06:15:36 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id m19so3391572ioe.1
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 06:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RDzcaVKuG9OVC58tyMB8JzPafJnvGFoDBIls/GVjm98=;
	b=naagtBnYxaSe5vXDAKVMBBElfCsr2/wwxQboDl8boCDFt8qDyb0nEQqp0YqgTXIV3B
	mDUP56+IRnuavO+weKY4fUBK5c6QyeXrxvrtKCNFLcMh0jSfDfTgqHZzfKYv4AdGlnTs
	vUyi7XRcG9Sggjc5xA4fAzbHWrkf+KiON46jPku33UvLOOlqou0EY95LgOi0wj/zfLin
	mS1CuMnXLRqGaJ6jAU0RciVC8zf3/0Wb1uT54Bt9ALxRBPdaUiSFgFlNi9bZeaE7HF8p
	LND1kk8G9uY4/ya+O0HNzVvigoBLpjMKnLitA+ax2m3iCm90Ev2eowFnpISd5kmmyh1i
	jsJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RDzcaVKuG9OVC58tyMB8JzPafJnvGFoDBIls/GVjm98=;
	b=c7B0FDxAzlgP2QsXP9Lkjt3I7jqBMxKe9lS8AvV98fJsLrbAB38wmxwNeX7WF7Zpad
	TxKWQneM+CDNxlpO0Bm933tdgBWAa6eCDTg1HdV+Ytbq+L+NaOCcTZHm07i8RMXeAbMt
	u29VX27A2qEQzB22CDP3Ioc6sumYo2JA+fKqkc9j2CKI4rzLlnHZbtgONMN6e/GQAS5h
	SKd3CYA4RkbdrbRfbG4iBF4p+M7tY09gen/yqQdqS/bSCZJmVr3IzW6G3wfPGejeQCTW
	BLhaWa/hfg0o/U8CpUwNBelOxiWlbYwVW1rb3dOV5EjLAk6yp6kEyF24+5ax0M4c0b2H
	jv5Q==
X-Gm-Message-State: AIVw111Xq0rc0APeW9P3Ul9tnh78vF09NrEhIcC5VGz6xpLaU3tkR01W
	lmQ90FGFMW1Xt4OrOOuGZhc34QhVHo7E
X-Received: by 10.107.165.139 with SMTP id o133mr4866264ioe.47.1498828536420; 
	Fri, 30 Jun 2017 06:15:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Fri, 30 Jun 2017 06:14:55 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <1498766505-16233-1-git-send-email-gizero@gmail.com>
References: <1498766505-16233-1-git-send-email-gizero@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 30 Jun 2017 14:14:55 +0100
Message-ID: <CAK18fxFNhQMgP8v+_tMM4z4MSR-TYT2vax67Pr6r-BxVkJ_LYw@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base: wic: generate entries for u-boot
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
X-List-Received-Date: Fri, 30 Jun 2017 13:15:40 -0000
Content-Type: multipart/alternative; boundary="001a1141f18c7e34e405532d3633"

--001a1141f18c7e34e405532d3633
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 29, 2017 at 9:01 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> This commit allow wic generated images to work when we want u-boot to
> load the kernel image.
>
> Augment IMAGE_BOOT_FILES with the proper entries when KERNEL_IMAGETYPE
> is "uImage". More specifically add u-boot image and boot.scr to deployed
> files
> and give the proper name to the kernel image accordingly.
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-
> base.inc
> index 4a0ea2a..71bb071 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -83,7 +83,9 @@ def make_dtb_boot_files(d):
>
>  IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* \
>                   ${@make_dtb_boot_files(d)} \
> -                 ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE} \
> +                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage',
> '${KERNEL_IMAGETYPE}', '${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}', d)} \
> +                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage',
> 'u-boot.bin;${SDIMG_KERNELIMAGE}', '', d)} \
> +                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage',
> 'boot.scr;boot.scr', '', d)} \
>                   "
>
>  # The kernel image is installed into the FAT32 boot partition and does
> not need
>

Merged to master. Thanks.

--
Andrei Gherzan

--001a1141f18c7e34e405532d3633
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jun 29, 2017 at 9:01 PM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This commit=
 allow wic generated images to work when we want u-boot to<br>
load the kernel image.<br>
<br>
Augment IMAGE_BOOT_FILES with the proper entries when KERNEL_IMAGETYPE<br>
is &quot;uImage&quot;. More specifically add u-boot image and boot.scr to d=
eployed files<br>
and give the proper name to the kernel image accordingly.<br>
<br>
Signed-off-by: Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com">giz=
ero@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rpi-base.<wbr>inc | 4 +++-<br>
=C2=A01 file changed, 3 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rpi-<wbr>base.inc b/conf/machine/include/=
rpi-<wbr>base.inc<br>
index 4a0ea2a..71bb071 100644<br>
--- a/conf/machine/include/rpi-<wbr>base.inc<br>
+++ b/conf/machine/include/rpi-<wbr>base.inc<br>
@@ -83,7 +83,9 @@ def make_dtb_boot_files(d):<br>
<br>
=C2=A0IMAGE_BOOT_FILES ?=3D &quot;bcm2835-bootfiles/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@make_dtb_=
boot_files(d)} \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${KERNEL_IMA=
GETYPE};${SDIMG_<wbr>KERNELIMAGE} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.=
contains(&#39;KERNEL_<wbr>IMAGETYPE&#39;, &#39;uImage&#39;, &#39;${KERNEL_I=
MAGETYPE}&#39;, &#39;${KERNEL_IMAGETYPE};${SDIMG_<wbr>KERNELIMAGE}&#39;, d)=
} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.=
contains(&#39;KERNEL_<wbr>IMAGETYPE&#39;, &#39;uImage&#39;, &#39;u-boot.bin=
;${SDIMG_<wbr>KERNELIMAGE}&#39;, &#39;&#39;, d)} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.=
contains(&#39;KERNEL_<wbr>IMAGETYPE&#39;, &#39;uImage&#39;, &#39;boot.scr;b=
oot.scr&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
<br>
=C2=A0# The kernel image is installed into the FAT32 boot partition and doe=
s not need<br></blockquote><div><br></div><div>Merged to master. Thanks.</d=
iv><div><br></div><div>--</div><div>Andrei Gherzan=C2=A0</div></div></div><=
/div>

--001a1141f18c7e34e405532d3633--
