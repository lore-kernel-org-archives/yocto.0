Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D22C5E00A21; Sat, 18 Feb 2017 19:27:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95415E009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:26:58 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id w20so10386882qtb.1
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9kUkCJI9ANcqYriZzyKyR2xRXNTEOFh1gPgsXcooR1g=;
	b=vDheq6mOO54yYbjamM6eVnyThZPGYWoQKgADOYNaKIOYeIiqI2FYw4TRK2feViRvdv
	MOEUH4/PROsUzR5IF+9cAaTpk/G6btR88w3rW7sM7LjZfu3nGVHsz0jg+O4HkUm/jbv/
	Nw09dsu8CpVSSrtiIVFlPoJ1DFsxDpEk9PK0kqqEH1nWknvbFbGkHkGVllrudvDqMHbz
	KCscAWVtWO5ffNiB45goVhPrlDRuhHGWYcNJ4PaVDyj5d4ShwRELILNqwyE3efXdkVRQ
	jE391az7kJlE9xwvhHmVocN/qALyoSzK3pbTx0MmyLEd/z9gkpPchsbeI34RQ8PFwie9
	EmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9kUkCJI9ANcqYriZzyKyR2xRXNTEOFh1gPgsXcooR1g=;
	b=YtzrRuCVCBQmvJffDl1WWbPJyZOvfNJUvlKOMwmia0f/pZtUUFIzH9cdcydoZCD78O
	0yFp+BLi80QhS05TOQnuVCW6ERykfKA53LjyjAdlmAP92fCamRG+EsSGkzulN/RuoJD2
	r8U9iRjXt3nlHNZwEZzkRJIh2Kpbwzc7pWjIEkJjUTaWWZsj80hcEtHq/n6CRac0x6a5
	1huWLjAqWwqvMTULhWu8/+0E0KT+reMwVTDppTr0+3N8kInI4h1MBol5hozMxz8mhz+D
	c6tCtS3u16F0wauWNNEFMDnl/WnjrVwJlRSLU0hzrhCa/YY297TE1/9pq2tbM3u58kqr
	bhOA==
X-Gm-Message-State: AMke39lIRFDHUxN5YhCF34/xaxr3Xz+p9xb7aDFT1JQblMMYScjxrO9Gs2H9M1JPmOdfaSnvG16XGyCouDE4NQ==
X-Received: by 10.237.43.36 with SMTP id p33mr13192583qtd.199.1487474817572;
	Sat, 18 Feb 2017 19:26:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Sat, 18 Feb 2017 19:26:57 -0800 (PST)
In-Reply-To: <20170219024340.23664-3-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Sun, 19 Feb 2017 11:26:57 +0800
Message-ID: <CAJrj+DOPT54vuK377ckm=3Csc7N+_rDgMgKmNdX0bXioBcOQiA@mail.gmail.com>
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
X-List-Received-Date: Sun, 19 Feb 2017 03:27:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi Trevor


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
I don't like the next-dev. It is internal branch name. It is
meaningless to people outside Rockchip.  Why not call it "Rockchip
U-Boot"
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
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

