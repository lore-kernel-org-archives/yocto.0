Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5CF2E009F8; Sun, 19 Feb 2017 06:22:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A4BBE0097D
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 06:22:44 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so11226522qth.3
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 06:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fU02msXtOO7MHR6WIKuOXy5X/yj1o8IDv8IOsuNizRg=;
	b=JQxVJxQaU8QYgZox91eDZfui3YjaiuYoDZfY7oQW2TTVuTBk+3xD5WgHJycJITW0i7
	OObwaqJ119h49sIcK2NUHFd/RqxR+OU01ycAeZLbsxPvmbuYM1oJQF/du4fGepyTWfTN
	HmMWVwAwnCb7NySKyvLPN/82YPLl4qj4ny5Zu3ovodq7EJFvNB861Msp25RXhYDhNkzQ
	5tA7RlKKsb1uW3Kt2oRu9qJ1pf2eWBzJKHbt/a6H95bM7iBVr0yfdaGciBy13okNmazE
	vo9sgutRGqHWrA+JNlOCTUN+hew4VMOEpdskSvAxBYcDehnesVcFQjZykxeyxovRRS/C
	F9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fU02msXtOO7MHR6WIKuOXy5X/yj1o8IDv8IOsuNizRg=;
	b=V9JFXkl37HS/Ml3Eau1tYlPY8zCnsTFuPCMvA7IF9TYqYaMACjI8Wm1y7oRVvTS5TI
	3iU8yfSE9CqWKASiBHZa3Lmomq6OcT7asoKWzhCTvCk+FdTksWKYz6kSPhU1Ssr/EzD8
	0/LfdOklTsrTdCLCCpN/+qLaCaDmHNNzLG5UkpgjPU1tjJksYGIbaqvPoH9VGbG5B7Et
	sOetzM/5nhEOoOs0XiGdaoDvbh+Q1sw27WnZ/esjg+Wrgjt4mt+8/8n0eCbcGdhSANlk
	/vBaWAZsFl0lssj6FEeCG2AjW8I/HiVl7PQsNXjgIGkUyEpnzgiW8vk+6BeVBQ3gG4VD
	loZw==
X-Gm-Message-State: AMke39nlLVCAQ/BphOijlOFCNV7JVJ2QxETZAqFNdUd/zmOVlPA9jL8tAPQtR5iAQd1uyjdK9fYT7x8+DB7jmw==
X-Received: by 10.200.45.211 with SMTP id q19mr15354357qta.115.1487514163548; 
	Sun, 19 Feb 2017 06:22:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.104.145 with HTTP; Sun, 19 Feb 2017 06:22:43 -0800 (PST)
In-Reply-To: <20170219024340.23664-3-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Sun, 19 Feb 2017 22:22:43 +0800
Message-ID: <CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Sun, 19 Feb 2017 14:22:50 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> This recipe was taken from the Rockchip team's recipe at
> https://github.com/rockchip-linux/meta-rockchip/commit/6a139d5b7510c7ba36aace82c239b894d5741cac
>
> It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've made a
> couple small modifications.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
>
> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> new file mode 100644
> index 0000000..3b4f109
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> @@ -0,0 +1,19 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +require recipes-bsp/u-boot/u-boot.inc
> +
> +DESCRIPTION = "Rockchip next-dev U-Boot"
> +LICENSE = "GPLv2+"
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
> +COMPATIBLE_MACHINE = "(firefly-rk3288)"
> +
> +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
> +SRCREV = "${AUTOREV}"
> +S = "${WORKDIR}/git"
> +
> +do_deploy_prepend () {
> +       # copy to default search path
> +       cp ${B}/spl/${SPL_BINARY} ${B}/
> +}

I can't pass build if use do_deploy_prepend instead of do_install_prepend.

> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

