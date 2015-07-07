Return-Path: <rcagley@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40BBAE009F0; Mon,  6 Jul 2015 18:16:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rcagley[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21F7AE00978
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 18:16:16 -0700 (PDT)
Received: by igcsj18 with SMTP id sj18so249222135igc.1
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 18:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WTNSQVXd1b7SeIpd0jg/JHprV/0m6D9OB/7Un9zMzu8=;
	b=DxqsqvBxDkDwjC9acFpEEh9W/E7WmtuAL/PeEVOQzXqdr1dEw0qydw2FJV1vsvxZaz
	VWtDBADSVoHRnhc0xPtdFyrarREtUbtgK38Entnj1vZOrLfX7ohSvEJUART4JYFPWByd
	e8WruCxXtpMbo8ARxnU2xKGUXEF5DickDBAmYE1kcoOl2FFPh1ouGrcFx4uLFbqWI1z4
	/wgN9kzLwfkc8t/BKzygJRaM4temm6Jqd/E4Sh8QXkIWrJz+whHe4HWcCxkDwTipGFdV
	WOs4UcDKVFY/tMvZyxh0DmDcs+q+vnbfYs9PgXsYfLDR7ic2ZxYsPNvEd78QklDb48Rm
	9nIw==
MIME-Version: 1.0
X-Received: by 10.42.249.147 with SMTP id mk19mr38982136icb.26.1436231775998; 
	Mon, 06 Jul 2015 18:16:15 -0700 (PDT)
Received: by 10.107.51.84 with HTTP; Mon, 6 Jul 2015 18:16:15 -0700 (PDT)
Date: Mon, 6 Jul 2015 18:16:15 -0700
Message-ID: <CAN-NoH3OUDBmKqmO4hzUBjKt_LprWc-uwc1X8w6zRDwmUpQFKg@mail.gmail.com>
From: Richard Cagley <rcagley@gmail.com>
To: yocto@yoctoproject.org
Subject: installing kernel modules in root filesystem
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
X-List-Received-Date: Tue, 07 Jul 2015 01:16:20 -0000
Content-Type: text/plain; charset=UTF-8

I have a kernel module that shows up in my build work directory after
I configure the kernel accordingly
build/tmp-glibc/work/zedboard_zynq7-oe-linux-gnueabi/linux-xlnx/3.14-xilinx+gitAUTOINC+2b48a8aeea-r0/image/lib/modules/3.14.2-xilinx/kernel/drivers/dma/xilinx/vdmatest.ko

But, when I add "kernel-modules" to my IMAGE_INSTALL in local.conf I
don't see vdmatest.ko show up in the resultant root filesystem after I
run bitbake core-image-minimal-dev and untar the image

Is there a way to tell yocto to install all kernel modules or a step
I've missed?

