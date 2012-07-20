Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 181D9E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 09:48:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q6KGmXSa013699;
	Fri, 20 Jul 2012 17:48:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13343-03; Fri, 20 Jul 2012 17:48:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q6KGmNfH013692
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 20 Jul 2012 17:48:24 +0100
Message-ID: <1342802906.21788.45.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Fri, 20 Jul 2012 17:48:26 +0100
In-Reply-To: <1342742515-29091-1-git-send-email-paul.gortmaker@windriver.com>
References: <1342742515-29091-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315: build u-boot v2012.04 by default.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jul 2012 16:48:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-07-19 at 20:01 -0400, Paul Gortmaker wrote:
> Validated on real hardware:
> 
>    U-Boot 2012.04.01 (Jun 29 2012 - 13:48:03)MPC83XX
> 
>    Reset Status: Software Hard, External/Internal Soft, External/Internal Hard
> 
>    CPU:   e300c3, MPC8315E, Rev: 1.2 at 400 MHz, CSB: 133.333 MHz
>    Board: Freescale MPC8315ERDB Rev 1.0
>    I2C:   ready
>    DRAM:  128 MiB (DDR2, 32-bit, ECC off, 266.667 MHz)
>    Flash: 8 MiB
>    NAND:  32 MiB
>    PCIE0: No link
>    PCIE1: No link
>    In:    serial
>    Out:   serial
>    Err:   serial
>    Net:   eTSEC0, eTSEC1
>    Hit any key to stop autoboot:  0
> 
> [YOCTO #943]
> 
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> ---
> 
> [Resending, since the OE core changes this depended on are now in,
>  and having an old u-boot _may_ also be the cause of YOCTO #2775 ]

Merged to master, thanks.

Richard


