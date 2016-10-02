Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E965E00C0B; Sun,  2 Oct 2016 07:34:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7A45E00BF4
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 07:34:14 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id o19so76506458ito.1
	for <yocto@yoctoproject.org>; Sun, 02 Oct 2016 07:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=sxnlGcaMD6HvuYO8SWvT/5i38jzs/bF7Yj33hwUvdTE=;
	b=vxKo2vUMPF36ro7N20/WWyzl4pbmk/BodFOuEYcc7uBFpM8ybbqQxpfFTd3aFl8T9O
	HbIr4qmpwlw7R9pBvvyIkZf/rbPF3X+gqZPaIY0b5xwyQN1yaEXufcmaHFLsMeoLLYPe
	9gtLB6ptdoqHWHodXoYo0t4SD5SdvB2c5KQ4kgjv1QgCq3aq2x1ptPaKNM9sArj4dp5m
	dsomr4GjjYsKs3GvB3WSTIbINAC646gLmL5AeHDAxAEEcSZ5c6/NBLXjIOh7wHv+Wp/U
	uA0J5WwOEf82ZaFvEsqVhCkSlpD4Hq2egJXsekkqIZI2YbWqmpqPk6NgzLM2IX2ZHZwu
	q6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=sxnlGcaMD6HvuYO8SWvT/5i38jzs/bF7Yj33hwUvdTE=;
	b=XxbILLRbqaW3Cnfobu4gsTPAymOLGpDfU3UfdGyRvsMyWi01fajifevuc/XHjLuAMs
	Bl7LN3ev9ctNjhQq01+69dgdtKPXFSrjFr5eyuy9uqnOOksUcAZi0QA1t7LqXDDZwxEG
	c4K7Cj/LNZytVOauEZOrVyBmI9rDVCG7DeZk4vvRJbTFpMbWueWi3WJsoZ8IE2oGBNiH
	y0FYuqQFIDmxBnNj7UY1i1AHiw/ySEuvx5GH4E2l4Wn3qiMK8ld7BtubIMAGeoqP7YcW
	nIEesgdNyRtcMUdoRAFwIHoUHx/ZmKegFoV+S5C1iqpX3IZC0tdkqZvwT9u8zeQKew5J
	34lg==
X-Gm-Message-State: AA6/9RkOtkEaUyaupOZH8Vn6US5N4zU+vnHQRCRH8RHwrG0/6Aw5E20XS6U+sJqZQ7sdAA==
X-Received: by 10.36.69.9 with SMTP id y9mr1146728ita.39.1475418853633;
	Sun, 02 Oct 2016 07:34:13 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	63sm5862296itz.7.2016.10.02.07.34.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 02 Oct 2016 07:34:13 -0700 (PDT)
Date: Sun, 2 Oct 2016 10:34:22 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20161002143422.GA24664@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Sun, 02 Oct 2016 14:34:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

For the last week or so my raspberry pi builds have been failing with:

ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg
ERROR: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_sdimg

This is with both poky and oe+bitbake, master branches all around, and fully
up-to-date. Before sending this email I pulled yet again and re-tested just to
confirm.

Poky:

	Build Configuration:
	BB_VERSION        = "1.31.1"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "SUSELINUX-42.1"
	TARGET_SYS        = "arm-poky-linux-gnueabi"
	MACHINE           = "raspberrypi"
	DISTRO            = "poky"
	DISTRO_VERSION    = "2.1+snapshot-20161002"
	TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
	TARGET_FPU        = "hard"
	meta
	meta-poky         = "master:3a73fe0efcb7aeefcca7011bba887caad03d4d03"
	meta-raspberrypi  = "master:4817e2c087097c02755d6309304878e42cf61d3c"

OE + bitbake:

	Build Configuration:
	BB_VERSION        = "1.31.1"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "SUSELINUX-42.1"
	TARGET_SYS        = "arm-oe-linux-gnueabi"
	MACHINE           = "raspberrypi"
	DISTRO            = "nodistro"
	DISTRO_VERSION    = "nodistro.0"
	TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
	TARGET_FPU        = "hard"
	meta              = "master:21cc2a3f63ea260dbf6b50e2fd4dd50cacdd9935"
	meta-raspberrypi  = "master:4817e2c087097c02755d6309304878e42cf61d3c"

