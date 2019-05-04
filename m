Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C687CE00B81; Fri,  3 May 2019 20:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ABFBE00A0C
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 20:06:41 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id y6so6851946ior.5
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 20:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yJ3VK/PVdl1BXrkK9pzj6u/x4bZAxvEyh9BSf8nbauE=;
	b=RezVCP8QuJ+TOtWp2g/HT19KqD43fRxWFcgbG321z3zyoUkzgtqr7t0c50IXFHrQzE
	dvoJDw3PONJARoID65v1ukFx+fsCFinfbMJfiWfCuRmVrsBZVgBl41Z5ZPXng++DdJP9
	Vdxf5XNUiueFXyId39ScmrOm+MJJpUegV2VdHUdZBGyjhEUcXNvJtvTf4S82PRn1Icoc
	EAtoHr487SLJiUEMauynXfFhwSQCkTVae93usgyXHtrqpcoVsPCOnJOMbuQaVc1YsojN
	GCjQ+NC9p3Gr8Ls65/hPqyrCVDZck4SAn2Flnq/CPPaL8cldjJ7ygzn0zovM853e4WgV
	2GUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yJ3VK/PVdl1BXrkK9pzj6u/x4bZAxvEyh9BSf8nbauE=;
	b=MRSJKDuYFJvT+YhQMOy7CbUljVwRb+j/MMUi7uBp32BOW820MPVMX5E6DPIolV0OmI
	jEdS6hsFrUZlEofFdF+T66vupQggR7L73tMS8EThYJfiDP8P2SY0NOl9zKtJ1KEJui0M
	5PeKEnEVtB+7xKFP0HNhJvQ/7Gz9sFGnh/aBcZUZiChNuiIL22i2oXlDckvBagmyCUuC
	X1IVRIQuwEQ+utyBiuu+QFBoUY6QngJymokUYx2Ty/ZnN2yH6IH4EGRBYZRkrJqLmh/4
	+3a/m8vnJTx6HZND/al0qw4WmXkGV/z2jp4DTDJT5SYtvXA5oGeyNBi8nbolMxLYHpXe
	NchQ==
X-Gm-Message-State: APjAAAUpF3+noakEGrWFWWYPohT9wYLE6YZPoxU9in4R711RBsNcQpxj
	HbJH5rTUZOqvxpB20xM314B7lIR9
X-Google-Smtp-Source: APXvYqxG8d3JA05aLSV6wdk/sDwxzMp7jAjxEFDzyVUeYT/48fpKmJ4D9yaFwuhSEC25Pg3Z/ksaNg==
X-Received: by 2002:a6b:5116:: with SMTP id f22mr1556884iob.185.1556939201373; 
	Fri, 03 May 2019 20:06:41 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id x4sm2004760ita.0.2019.05.03.20.06.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 May 2019 20:06:40 -0700 (PDT)
Date: Fri, 3 May 2019 23:06:38 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190504030638.GB26588@linux-uys3>
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-4-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190424145918.26040-4-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Sat, 04 May 2019 03:06:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2019-04-24 @ 10:59:18 PM, Randy 'ayaka' Li wrote:
> From: Randy Li <ayaka@soulik.info>
> 
> Signed-off-by: Randy Li <ayaka@soulik.info>
> ---
>  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
> 
> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> new file mode 100644
> index 0000000..aa4b84d
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> @@ -0,0 +1,18 @@
> +# Copyright (C) 2019 SUMOMO Computer Assocation
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +include u-boot-rockchip.inc
> +
> +DESCRIPTION = "Rockchip U-Boot"
> +
> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
> +
> +SRC_URI = " \
> +	git://github.com/rockchip-linux/u-boot.git;branch=release; \
> +	file://binutils-2.28-ld-fix.patch \
> +	file://gcc7_fixup.patch \
> +	"
> +
> +S = "${WORKDIR}/git"
> +PV = "v2019.01"

This doesn't even get past the fetching stage:

	WARNING: u-boot-rockchip-1_v2019.01-r0 do_fetch: Failed to fetch URL git://github.com/rockchip-linux/u-boot.git;branch=release;, attempting MIRRORS if available
	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure: Unable to find revision 3c99166441bf3ea325af2da83cfe65430b49c066 in branch release even from upstream
	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure for URL: 'git://github.com/rockchip-linux/u-boot.git;branch=release;'. Unable to fetch URL from any source.
	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch:
	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Function failed: base_do_fetch
	ERROR: Task (/opt/oe/configs/z/build-master/meta-rockchip/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb:do_fetch) failed with exit code '1'

