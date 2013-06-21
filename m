Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B39FE0140A
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 10:17:30 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=jEDVeo9mCn5fyIVMhPs9RR0viSnSNkPTVY5/pmP6aNy/XY4MqG4t0bCqMQB+CMqU;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Uq4xl-0007D4-2m; Fri, 21 Jun 2013 13:17:29 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tomas Frydrych'" <tf+lists.yocto@r-finger.com>, <yocto@yoctoproject.org>
References: <F509B6E140614CC390C878276D4AE429@PAULD>
	<51C41F65.6040804@r-finger.com>
In-Reply-To: <51C41F65.6040804@r-finger.com>
Date: Fri, 21 Jun 2013 10:17:36 -0700
Message-ID: <ED654F8EBE3C4BE3B77C87CB95EC5183@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5uY0pwmP8LG44+Q+C822JZ30UzfgAP5KkQ
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ee1ed45c172c6d63673bdcc3870b67c4350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: -rt and COMPATIBLE_MACHINES
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
X-List-Received-Date: Fri, 21 Jun 2013 17:17:33 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tomas Frydrych
> 
> On 20/06/13 20:40, Paul D. DeRocco wrote:
> > My question is this: why was I able to build core-image base without
> > complaint in the first place? The kernel recipes it has available
> > (linux-yocto_*) also set COMPATIBLE_MACHINE to a list of 
> qemu machines.
> 
> It probably built the linux-dummy recipe. An easy way to see which
> recipe is being used is to run 'bitbake virtual/kernel'.

I'm not sure what linux-dummy is for, but given that it's full of empty
tasks, that looks like something that won't boot. But the resulting image
booted fine.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


