Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49C9E0094C; Mon,  8 Jun 2015 11:06:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD73E00496
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 11:06:44 -0700 (PDT)
Received: by lbbtu8 with SMTP id tu8so69873999lbb.2
	for <yocto@yoctoproject.org>; Mon, 08 Jun 2015 11:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KxYFW55qhqJuKjHdr4xUuT4wqFtFLP18dFhiV5vdNt4=;
	b=DxQ7AKqcyCGKIoZpHKjQdFx2hrMPR6ZJ+01bmDRenTnMxQQ+gfaNyoTzCy5rfdIShF
	oxclfF7Y28hU8zwFGmAfeH8dh/B2G6nNJHUHx+e1UTjxa9yu4wwcJLWYyey8M+37Em7i
	5WSb1koCa4xGOVQt6XpplMD2J33HlJmHHALsiF+l0p5+IToWLFK5uFLsJ8Pdn2i/oBkH
	tfhnwqUShxSgwlG4NjrDjg3jJQ1yYy5OeSb0v1h2Ku98w/u1T/Dofk7tP9anMP2HXHIw
	Jffaq3HKk+LBaf2nJjPikYdFHubQNuQhjdtAne/d4eviILp6gpnraR1l++2aquHg+dIh
	IVhQ==
MIME-Version: 1.0
X-Received: by 10.152.18.199 with SMTP id y7mr18199928lad.39.1433786802287;
	Mon, 08 Jun 2015 11:06:42 -0700 (PDT)
Received: by 10.114.211.72 with HTTP; Mon, 8 Jun 2015 11:06:42 -0700 (PDT)
Date: Mon, 8 Jun 2015 11:06:42 -0700
Message-ID: <CAGMdoFnO-ikosPoL8ZRn6QDYxp=re3Mp6CxpEKOVQAR8Hqn_4Q@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Limit RAM for Linux
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
X-List-Received-Date: Mon, 08 Jun 2015 18:06:50 -0000
Content-Type: text/plain; charset=UTF-8

I am using Yocto with meta-xilinx layer to create a distribution for a
custom Zynq 7000 board with 512MB RAM. In my uEnv, I'm loading the
kernel to 0x0010_0000, device tree to 0x0190_0000 and ramdisk image to
0x0210_0000.

Later in the boot process, I see this:
    Loading Kernel Image ... OK
    Loading Ramdisk to 1e16f000, end 1ed221fc ... OK
    Loading Device Tree to 1e166000, end 1e16ef40 ... OK

I'd like to restrict Linux to the lower 256MB out of 512MB of RAM.
When I add mem=256MB to boot arguments, the kernel doesn't boot.  I
can specify "mem=" down to only 494M, I assume to get it just over
those 0x1exx_xxxx addresses. Any lower and the kernel doesn't boot.
Where do the 0x1exx_xxxx come from and how can I change those?

I also tried changing the memory in device tree.  It was originally:
ps7_ddr_0: memory@0 {
    device_type = "memory"
    reg = <0x0 0x200000000>;
}

I changed reg to <0x0 0x10000000> thinking this would limit the RAM
that Linux sees to the lower 256MB, but Linux still reports seeing all
512MB of RAM.

Can anyone point me to where else my configuration needs to change?
Thanks for your help.

Edward

