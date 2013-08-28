Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A02E002FB
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 17:10:43 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=GxSAPrvca0e6HToxjXFC//CXiGPWJWdSBhEjFRrqcnAmil0MITHcnmvjLk36Ec7g;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VETLK-0007DQ-VZ; Tue, 27 Aug 2013 20:10:39 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Gary Thomas'" <gary@mlbassoc.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
In-Reply-To: <521D354E.1020909@mlbassoc.com>
Date: Tue, 27 Aug 2013 17:10:42 -0700
Message-ID: <8EB78E64DFE9436EAFB462E357C464EC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6jfLPpROGE5GBCTdKdPRwFTfBCVgAAvELg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688db2a1679d33ac1b2cb3ad7b3a6055422350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 00:10:45 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Gary Thomas
> 
> As far as I understand, the 'do_rootfs' step in building an 
> image is basically
> equivalent to running "${PKG_MGR} install 
> <all_required_packages>", where PKG_MGR
> is your package management method of choice - ipk or rpm.  
> This seems to me to
> be a very single-threaded process.

If there's a way to command the package manager to install a package
without enforcing dependencies (Is that what opkg --nodeps does?), then
couldn't the package manager be invoked on one package at a time in n
threads, just like the other tasks are now run? I don't really have any
sense of how long it takes to install the packages, as opposed to building
the final tarball or hddimage and applying the permissions from the pseudo
database, which would certainly be single-threaded.

> Perhaps you should think more about how you are using this.  
> If you don't need
> to rebuild the whole image every time, maybe you can use the 
> package management
> tools instead?  For example, I routinely build images as well 
> but I also try to
> use 'opkg' as much as possible to manage package updates, 
> etc.   This is a huge
> time saver, especially when making small or incremental 
> changes.  I only rely
> on the full image builds when I want to "checkpoint" the 
> state of the system.

I'd like to try that, but I'm not sure how. If I've tweaked one recipe,
how do I get it to build it and package it, and then stop? Do I use
"bitbake -c package"? And then do I use "opkg -d" to manually install it
directly onto my SD card? If my rootfs is a loop mounted hddimage in a
FAT16 file (as it is on my Atom project), do I loop mount it on my build
system and install into that?

Installing directly to the card would be nice because copying the whole
damn rootfs to the card takes an annoying amount of time, too.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


