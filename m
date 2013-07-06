Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6571E00343
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 18:23:48 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=VjwuwWE4w/S5X4A4ewGP8uWToriZkoQ7AhwFaSM57v3jFdVP50LjYLTbEAJkumX4;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UvHE3-0006gT-SG
	for yocto@yoctoproject.org; Fri, 05 Jul 2013 21:23:48 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Jul 2013 18:23:54 -0700
Message-ID: <9C4B6D7C047D4970BA9248AA4264E8A6@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5553rRZBijTYGKTBihWqsllb9vrg==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a5ea08e1585bfbc3c37cb4f6969df61a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Changing syslinux configuration
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
X-List-Received-Date: Sat, 06 Jul 2013 01:23:48 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

For my system (something similar to core-image-base running on a Cedartrail
Atom mobo), the syslinux.cfg file needs to be tweaked. It is built by a
script in syslinux.bbclass, which is controlled by various variables. First
of all, it's important that it not try to use a serial port as a console, so
that means I'm supposed to set SYSLINUX_SERIAL to "". Second, it's providing
two choices called "boot" and "install", and I'd like to eliminate the
latter, which involves setting the LABELS variable to "boot".

I see that syslinux.bbclass has default value of "0 115200", but it has no
default value for LABELS, which would cause a failure if something else
wasn't setting it to "boot install". I see that it is inherited by
boot-directdisk.bbclass, but it doesn't provide a default value for LABELS,
either.

Does anyone know what recipe actually sets LABELS? And then, do I override
these variables by creating a .bbappend file for that recipe? Or are these
two symbols global symbols that I can somehow supply values for in my layer
file? I really have no understanding of the scope of all the multiplicity of
variables in the Bitbake system. Does each recipe have its own namespace for
variables, or is everything global?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


