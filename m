Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7760BE00D88; Thu,  4 Jul 2019 04:13:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA28DE00D35
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 04:13:54 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id u13so7722437iop.0
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 04:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TvH1AfrUpilh7xC9/ixYyzfInHfkH5uKHHz/FwshZJU=;
	b=UYBWUgZtLQosO1DxE4LIBnryuSJx3fsNIiLrOHhm0Zd87i+VgOykpK0urjuO/iH15I
	UYZhsnjaFATX4lbCeU575lGW3OdZoCnkE4jiTsmuGzNkHwoXkqn2RqDyUhVNJcjib6eA
	eEhpBntn1qMRBZvN6ECrRMXP/GtrBaU1BerLR339zTiacc3yrxP/OP3rzBhk0RygSZDs
	id353w2Ub16cko6xW4X9CkqK0/RXNjZzJWBphU8fNIrolL4qw3wODS8s/YfKIVTXd6M3
	Da6bK5KMF/NRuzql2Iu9m3IYt6QcRIQVYA8FzwbC6Y8a89bw8g4VRuA87paZbVnE+PnS
	6vMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TvH1AfrUpilh7xC9/ixYyzfInHfkH5uKHHz/FwshZJU=;
	b=tZG+KQVBjzVTTNXDHPjbYympCVe2IzSokNFuMASh2SK9sTLzx9iEK3C8mPQ1lu1k7c
	0viw3TglMmQ50R7ccG/vUuXbTIlKbPQx90+EXwzlyEx6Ry9boa0/XSbsh2v+qq9eK/mv
	1zZJKls3YL/ym1OnuClP6q5RDtAGY+/FM19IrPOvF/rhWG1PB/ngKwz4tmtDDZGF7cPl
	WDx75JJNSVOOmCb2OtFSte6BpSSQ7EqypYhDoYGSrNejmW9SKlckLkJeG9JvohNwcjsP
	Ha1ASyIT78fYw/9LG+F2i3nLRTu/HDlXc0ZTO/UIeovmtRK0BIE1ifOFSe2Oh7o9ckf6
	5zVA==
X-Gm-Message-State: APjAAAWg0T/++HLrh9AbHI0Sm+WY5M7AgVsk2N+qdc4AtDlrIDnQjJJK
	Jfz2L6WYA1gpYdRwHz9LISvda4SBVuG3B3MQBAF4ueaa
X-Google-Smtp-Source: APXvYqysKjki0NqBbd4Rf2T5EJbQ0aZeKHIMoKyUDcOcfOG/cOVwUtCbIxHKyKb1hVt7al/+MClb251VjPiwjzrMe80=
X-Received: by 2002:a05:6638:627:: with SMTP id
	h7mr6652317jar.33.1562238833898; 
	Thu, 04 Jul 2019 04:13:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Thu, 4 Jul 2019 04:13:53 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 4 Jul 2019 21:13:53 +1000
Message-ID: <CAA=hcWQVSkh5ZSxFyEJiYdthpoWmJhOxtx802VWGhYd8LpO8BQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Failing to build initramfs ramdisk
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
X-List-Received-Date: Thu, 04 Jul 2019 11:13:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to build initramfs ramdisk on imx6, I added following
statements in local.conf

UBOOT_CONFIG = "emmc"
INITRAMFS_IMAGE_BUNDLE = "1"

The build failed at last stage of do_image_wic, the error is "No such
file or directory u-boot.imx", what I could be missing?

Thank you.

- jh

