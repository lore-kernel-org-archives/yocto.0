Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16D94E00F85; Tue, 22 Sep 2015 18:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E00E00927
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 18:20:48 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=OVuWxq/+9CFUbvU75saWPUCi3DEqQiS9KHkERB3Uf92Ot/2ci99XBrm8R4GAw+vT;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZeYjT-0001nJ-F8; Tue, 22 Sep 2015 21:20:27 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Daniel.'" <danielhilst@gmail.com>,
	"'Fred Ollinger'" <Fred.Ollinger@seescan.com>,
	"'Mantas Mikulenas'" <grawity@gmail.com>, <yocto@yoctoproject.org>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD><CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com><3DB96F2F9D444EFE931CA8443BAFBACE@PAULD><CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com><DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD><1442946736651.15866@seescan.com><23E6267BFA52430DA768DDA7DC46AC9C@PAULD><1442965676104.72571@seescan.com>
	<CAF3SDA57zC-__WTA0+S5jRWtyeKavsee8i47PBn9j+GgSknnxQ@mail.gmail.com>
In-Reply-To: <CAF3SDA57zC-__WTA0+S5jRWtyeKavsee8i47PBn9j+GgSknnxQ@mail.gmail.com>
Date: Tue, 22 Sep 2015 18:20:31 -0700
Message-ID: <07E7C33EDCA14076B4233C9DE71E4451@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdD1lyvzITUBpRglSLasyvbM5Z+01AABeU2g
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a4d07cf566b7d3bd68723ba28488bb04350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 01:20:52 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Daniel. [mailto:danielhilst@gmail.com] 
> 
> If there is any process using the mount point the umount may 
> fail. If you have a bash running in a folder from the mounted 
> filesystem is the sufficient to umount fail.
> 
> You can use the fuser -m MOUTPOINT to check this. Adding -k 
> would kill all process using that mount point.

Now I'm totally confused. Renaming /bin/umount to something else, and then
plugging in the drive, is no longer leaving the successful mount intact. I
saw it do this twice, but it's not doing it any more. I even tried
replacing /bin/umount with a script that ran fuser with the results going
to a file, and it's never being invoked. But the missing /bin/umount does
indeed screw things up, giving me a slew of FAT-fs read errors. It also
leaves /run/media/sdb1 as an empty directory that can't be deleted
("Device or resource busy") even though fuser doesn't show any processes
using it.

This makes no sense. How can this auto-mounting not work? Is it known to
be brittle, or is it believed to be reliable? All I did was include
udev-extraconf in my build.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


