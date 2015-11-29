Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE2CE00A9A; Sun, 29 Nov 2015 12:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233C4E006D8;
	Sun, 29 Nov 2015 12:24:52 -0800 (PST)
Received: by wmvv187 with SMTP id v187so129902777wmv.1;
	Sun, 29 Nov 2015 12:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=FunvHROmJF/qscT36+7EU9fZRZR5xy4POKWFMY/SeRM=;
	b=fBHx+sMP8np+mZMmSegOxnxX2bhcoFdi2cqTyp7JG5Oi/jng3dHl/tE7MfvG2V9xm9
	qJT0CEm7yfKxasWeHUrS1ODSH+WSD4vUYX9VIibzHJTNIsIxsuipaYXLmKkJlCTF/7qd
	WQnIlXNuWfe0hWmB8E6PlEGOIJNlSXpO9zkcjD2QdMqLvfJBzqxuJgvz0/GHDwRqJsEi
	JF1M56URmvfDkklrRIzzI3ZYHxXknVFHkTdrv79zdsrEKgfqwe5MGe0PGO7ES6QnTu73
	NaHt/p8QiGv+wmOf6J71p6FntD3kWC6wBeT4yX9Y0bgyfk7920Tkv42gU89dzWGfM8S4
	FZEg==
X-Received: by 10.28.194.84 with SMTP id s81mr22313345wmf.51.1448828691773;
	Sun, 29 Nov 2015 12:24:51 -0800 (PST)
Received: from [192.168.23.113]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.googlemail.com with ESMTPSA id
	o65sm18321184wmg.3.2015.11.29.12.24.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 29 Nov 2015 12:24:51 -0800 (PST)
Message-ID: <565B5F12.7090700@gmail.com>
Date: Sun, 29 Nov 2015 21:24:50 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	yocto@yoctoproject.org
Subject: Kernel build gets stuck in a endless loop
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
X-List-Received-Date: Sun, 29 Nov 2015 20:24:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

can anyone give me some advice how to debug an endless loop during
kernel and module recipes with my UDOO Neo support layer?

https://github.com/graugans/meta-fsl-arm-extra/tree/master-udooneo

When I build the kernel for the UDOO Neo kernel or a module with bitbake
the bitbake process hangs in an endless loop:


bitbake -v kernel-module-imx-gpu-viv

+ cd
/data/FSL/fsl-community-bsp-master/build/tmp/work/udooneo-poky-linux-gnueabi/kernel-module-imx-gpu-viv/5.0.11.p7.1+fslc+gitAUTOINC+eeeb23c0fb-r0/git
+ do_make_scripts
+ unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
+ make CC=arm-poky-linux-gnueabi-gcc  -mno-thumb-interwork -marm
-fuse-ld=bfd LD=arm-poky-linux-gnueabi-ld.bfd
AR=arm-poky-linux-gnueabi-ar  -C
/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-source
O=/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts
scripts

make: Entering directory
'/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-source'

  GEN
/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts/Makefile

scripts/kconfig/conf --silentoldconfig Kconfig

  GEN
/data/FSL/fsl-community-bsp-master/build/tmp/work-shared/udooneo/kernel-build-artifacts/Makefile

scripts/kconfig/conf --silentoldconfig Kconfig

  GEN     /data/FSL/fsl-community-bsp-master/build/tmp/work-shared

For the kernel I can workaround this by adding the following line to the
recipe:

    B = "${S}"

But this does not work for kernel module recipes like the
"kernel-module-imx-gpu-viv"

Maybe the cause of this issues is due to the fact that they have
included the backports subdirectory into their kernel?

https://github.com/UDOOboard/linux_kernel/tree/imx_3.14.28_1.0.0_ga_neo/backports

I already added some debugging code to the conf utility but it looks
like it does what it is supposed to do. But  I guess the surrounding
Makefile is not happy.


Regards,
Christian

