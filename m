Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFD82E00DF4; Wed,  6 Jul 2016 11:19:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978E8E00DF1
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 11:19:51 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160706181950130_0484
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 18:19:50 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=51676 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bKrS3-0005Hb-CI
	for yocto@yoctoproject.org; Wed, 06 Jul 2016 14:21:35 -0400
Date: Wed, 6 Jul 2016 14:18:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: how to tftp download a newer u-boot into RAM and simply execute it?
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
X-List-Received-Date: Wed, 06 Jul 2016 18:19:56 -0000
Content-Type: text/plain; charset=US-ASCII


  ok, i'm trying to do something on my MPC8315E-RDB that *should* be
really simple, and i'm getting nowhere.

  currently on this machine, i have u-boot in NOR flash, and it's old
but it will still boot the other images also stored in NOR flash:

  U-Boot 1.3.0-rc2 (Mar 21 2008 - 16:00:02) MPC83XX

i just built a new image from the current poky repo for precisely
this target, and my generated artifacts include the newer u-boot
binary image:

  -rwxr-xr-x. 2 rpjday rpjday   423964 Jul  5 06:46
	u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin

rather than immediately write it to flash, i'd like to download and
test it first, and everything i've seen suggests i should be able to:

=> tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin
=> go 0x100000

  well, the downloading seems to work fine:

=> tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin
Speed: 1000, full duplex
Using eTSEC0 device
TFTP from server 192.168.1.13; our IP address is 192.168.1.127
Filename 'u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin'.
Load address: 0x100000
Loading: #############################
done
Bytes transferred = 423964 (6781c hex)
=>

so the number of bytes transferred is correct. and then bad things
happen:

=> go 0x100000
## Starting application at 0x00100000 ...
NIP: 00100008 XER: 20000000 LR: 07FC6614 REGS: 07f2fcd0 TRAP: 0700 DAR: 00000000
MSR: 0008b002 EE: 1 PR: 0 FP: 1 ME: 1 IR/DR: 00

GPR00: 07FC6604 07F2FDC0 00000080 00000001 07F329E4 00000010 00000001 00000030
GPR08: 00000041 00000020 00000006 FFFFFFFF 00000000 00000200 07FF9000 09FB2000
GPR16: 00000000 00000000 00000000 00000000 00000000 FFFFFFFF 00000000 00000000
GPR24: 07F32930 00000000 00000000 00000002 00100000 07F2FF4C 07FF98F8 07F329E4
Call backtrace:
07FC6604 07FD767C 07FD6D10 07FD6E98 07FC6110 07FB6BF8 07FB568C
Program Check Exception
Resetting the board.


  am i missing something? downloading to the wrong address in RAM?
jumping to the wrong entry point? i'mopen to suggestions, i know i've
done this sort of thing before.

  i'm willing to start a new configure and build from scratch if
someone wants to supply a recipe. since this is the current YP powerpc
reference board, it really should work out of the box, no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


