Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D1F4E011F0; Mon, 16 Jul 2018 04:08:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBF3E00CEA
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:08:02 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id k12-v6so73947309oiw.8
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 04:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NmSVoQb62ZjpQAwhUDRQfxLLra44zMDZSQk3jPLmx4g=;
	b=HieQ+K38CUo3difxrGwlpko44TXyMuT4Htjvtd1o2jNLJVAyJXaT4ZqrS6OwH73zXT
	QVRrA2aNElZzvq+Lztv9Tmf+Mfn1xhDgfOfwg93llbhHouwWyIhNCFpzP1YOysEbH5iE
	Pxn3UtH9bViyqodBj9DrBgJR7QMYoYA34i59/7dwTmakSKow0u2NehpPFzta30nms9WT
	ViNVwZfrr08GoFJVXEBvrc/SsbAMOLBYXrtp/xS6gZxfN4ajjJ5kfhfHDqJfip7xcViH
	E0k/9Qd+d/WPJKBWNYTp33deEz/+CN/iPYC/rVJZJ9OfcMbEpGEzO6R3Q26CppysHIP4
	GcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NmSVoQb62ZjpQAwhUDRQfxLLra44zMDZSQk3jPLmx4g=;
	b=SB/abbJN23Mi/sM6XAQE9RlESrIUzlVE3jKj0KZP6+lEYEs6mo558GPCB3q6u7xOgZ
	vihr+V9IH3PgsLH7nKwHjEWRnhabYcbJlrMOwwJLuuCdl3e7GucqH5kZ3jI1GP4e7Wzx
	mAejOLXW1y/ibI6MuvjontOG4CnghgnjTINfS2xheWQ9755hsec1bxDblaPtTDBOgAKq
	wxpLhjL8lT6mWOBhG7AvL2Cj4q1cgLIKyaxCwKKJkTXw3tzMvlPZU7/M7BwqNPwJQ0WP
	6e+RXLQWyOu8DLcdDg17S8cO6cQ2DidHseaSSXE8KKSGIsjAFWAPiZzzod2vJ1iGTpwp
	3vSg==
X-Gm-Message-State: AOUpUlGjkLx54Ec15jphnRNogScsA9zOuww8NAW3U1T+4/qF+cYHhWzh
	TMCw3e3LNffpCOhTpgGpMk4chYM8PgetmatduGFg1w==
X-Google-Smtp-Source: AAOMgpe0I0IvFkwnHs2eSAXOuFVKtjp8FxHYHUvAEcKNIaORDsP7uQVqOjIKFYW55FwR2TrceXHuaEwRQaFNFC6nq2M=
X-Received: by 2002:aca:5dc5:: with SMTP id
	r188-v6mr17978216oib.320.1531739282520; 
	Mon, 16 Jul 2018 04:08:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 16 Jul 2018 04:07:41
	-0700 (PDT)
In-Reply-To: <1531716895-78131-1-git-send-email-changqing.li@windriver.com>
References: <1531716895-78131-1-git-send-email-changqing.li@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jul 2018 12:07:41 +0100
Message-ID: <CAJTo0Lac1_2OH8TQTnw0YstFunfOSVh+cuHK7t6O+45fxP_H1w@mail.gmail.com>
To: changqing.li@windriver.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH] iucode-tool: add a service file (systemd)
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
X-List-Received-Date: Mon, 16 Jul 2018 11:08:06 -0000
Content-Type: text/plain; charset="UTF-8"

Isn't this the worst way of doing a microcode update?  Specifically
the documentation for -k says:

"this update method  is  deprecated: it will be removed eventually
from the kernel and from iucode_tool.

Ross

On 16 July 2018 at 05:54,  <changqing.li@windriver.com> wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Add a service file (systemd), so that the microcode can be uploaded
> automatically
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  recipes-core/microcode/iucode-tool/iucode-tool.service | 11 +++++++++++
>  recipes-core/microcode/iucode-tool_2.3.1.bb            | 17 +++++++++++++++--
>  2 files changed, 26 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-core/microcode/iucode-tool/iucode-tool.service
>
> diff --git a/recipes-core/microcode/iucode-tool/iucode-tool.service b/recipes-core/microcode/iucode-tool/iucode-tool.service
> new file mode 100644
> index 0000000..6b134c3
> --- /dev/null
> +++ b/recipes-core/microcode/iucode-tool/iucode-tool.service
> @@ -0,0 +1,11 @@
> +[Unit]
> +Description=Apply Cpu Microcode
> +
> +[Service]
> +Type=oneshot
> +KillMode=process
> +RemainAfterExit=yes
> +ExecStart=@SBINDIR@/iucode_tool -k @LIB@/firmware/intel-ucode/microcode.bin
> +
> +[Install]
> +WantedBy=multi-user.target
> diff --git a/recipes-core/microcode/iucode-tool_2.3.1.bb b/recipes-core/microcode/iucode-tool_2.3.1.bb
> index df74a8e..1762468 100644
> --- a/recipes-core/microcode/iucode-tool_2.3.1.bb
> +++ b/recipes-core/microcode/iucode-tool_2.3.1.bb
> @@ -18,16 +18,29 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
>
>  DEPENDS_append_libc-musl = " argp-standalone"
>
> -SRC_URI = "https://gitlab.com/iucode-tool/releases/raw/master/iucode-tool_${PV}.tar.xz"
> +SRC_URI = "https://gitlab.com/iucode-tool/releases/raw/master/iucode-tool_${PV}.tar.xz \
> +           file://iucode-tool.service \
> +          "
>  SRC_URI_append_libc-musl = " file://0001-Makefile.am-Add-arg-parse-library-for-MUSL-support.patch"
>
>  SRC_URI[md5sum] = "63b33cc0ea1f8c73b443412abbf39d6f"
>  SRC_URI[sha256sum] = "12b88efa4d0d95af08db05a50b3dcb217c0eb2bfc67b483779e33d498ddb2f95"
>
> -inherit autotools
> +inherit autotools systemd
>
>  BBCLASSEXTEND = "native"
>
>  COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
>
>  UPSTREAM_CHECK_URI = "https://gitlab.com/iucode-tool/releases"
> +
> +
> +SYSTEMD_SERVICE_${PN} = "iucode-tool.service"
> +SYSTEMD_AUTO_ENABLE_${PN} = "enable"
> +
> +do_install_append() {
> +       install -d ${D}${systemd_unitdir}/system
> +       install -m 0644 ${WORKDIR}/iucode-tool.service ${D}${systemd_unitdir}/system
> +       sed -i -e 's,@SBINDIR@,${sbindir},g' ${D}${systemd_unitdir}/system/iucode-tool.service
> +       sed -i -e 's,@LIB@,${base_libdir},g' ${D}${systemd_unitdir}/system/iucode-tool.service
> +}
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

