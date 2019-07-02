Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 245EBE00D74; Mon,  1 Jul 2019 19:07:01 -0700 (PDT)
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
	*      [209.85.166.46 listed in list.dnswl.org]
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E98F6E00D6F
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 19:06:59 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id u19so24898341ior.9
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2019 19:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WUeG10Uq4gnXxLTRfMaQUhhXm2P9GTCGBEuPWLwT0Bs=;
	b=iZX7HV5Ro7t35sBmi0L27Dr05tgS3OdFd9VWxO1sKftg+f21HU6ArKgOCr5CEcoTG9
	zT071iDDdzxQCpiGb42sfsyw1HzyT2/neJQQxN0zgTyINW3SQC2jnexo/pq42UO9WGSr
	vGg8GpKP5ldJOkzFLZEprNrzf0TZWF38/Ai9YW6WGzC4V5wZ7sIk0Uib6GICYN1RBqK/
	iNhn4NG+qdwl/1jkW4ocxOsjfKEWrBxoInTEGUUWiI58tcLdFYxZWyCcrg5iOrixfzgh
	GhYimo9DK95tCLLAb4dOfrhKDKMAcPZ6WK+4KSL/Pft091gaDqRW3/7qiDJr7Trfveaj
	yqdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WUeG10Uq4gnXxLTRfMaQUhhXm2P9GTCGBEuPWLwT0Bs=;
	b=EM89khf5wrKrdgwsbDhy9fdmxKTeUr/KXnC2w1ila0OxuDKGKXsqPCn45Z1TPB6auX
	znzKZgDM5hzbhfWh2UTF48Aj9C5SMB08On+TKSm0+VPUXUYbgszca0MvubX61FJnp5uc
	y3LBAJfxD07vUmcQEsAlWszNgyk8pSYg5mnGV6fm6gZ0fgcNrDddODx0rzf+mxLB/k0m
	YIV+lS7LNua0IPM6NqXixSvONLNXo1hWgrQpwutUxgX/HXSyH2euttkAPo86/aAbLd/Z
	PCFaMamQPYSXiEEzlwBMnXhzgpIdenpNCH3A161m0T9+K/3M4OTSVMreXzg0RNDXOLG3
	IjZQ==
X-Gm-Message-State: APjAAAUzPMJr3HrWDmLRhyagHIYnnaZ9ho06PhfidNpWfWnUBfg5/bsL
	ANX+xLgwu7LVr8V/EvxSSxkw5G+n3eXKFeOQU7r63gHV
X-Google-Smtp-Source: APXvYqwrP0XCYG941dRWr6++PegcLkelMd1uQpRVHL6rFMUxQHpEX0V+x2yq4mr8S1cLFzKRNxw11F7VGJgqeOdxHeI=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr29852757ioa.302.1562033219125; 
	Mon, 01 Jul 2019 19:06:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:8a3d:0:0:0:0:0 with HTTP;
	Mon, 1 Jul 2019 19:06:58 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 2 Jul 2019 12:06:58 +1000
Message-ID: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Allow choose of U-Boot config for machine
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
X-List-Received-Date: Tue, 02 Jul 2019 02:07:01 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

The imx6ullevk.conf defined sdcard for booting on imx6 EVK:

imx6ullevk.conf

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "mx6ull_14x14_evk_config,sdcard"
UBOOT_CONFIG[mfgtool] = "mx6ull_14x14_evk_config"

I need to change it for a customized board referenced from imx6 EVK
but booting from NAND, there are some blogs said it can be done to add
UBOOT_CONFIG=nand either in local.conf or command line. I tried it did
not work:

ERROR: Unable to start bitbake server (None)
--- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---
ERROR: local.conf:34: unparsed line: 'UBOOT_CONFIG=nand'

What should be a proper process to overwrite imx6ullevk.conf
UBOOT_CONFIG from sdcard to nand?

Thank you.

Kind regards,

- JH

