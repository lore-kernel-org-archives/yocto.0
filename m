Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D6A2E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 12:40:06 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=mLS4lWjsF7NYrBtGwwpbtHoisT2Bx5ntlQQmQTPFWIFJPt7lYls1GpEcdsnGShif;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UpkiD-0004cP-Vr
	for yocto@yoctoproject.org; Thu, 20 Jun 2013 15:40:06 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 20 Jun 2013 12:40:11 -0700
Message-ID: <F509B6E140614CC390C878276D4AE429@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5t7fpPJ6csWanOSBq5VyJZozwt+g==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068867a5328ef4c59cf22b13cccbc8fca9f2350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: -rt and COMPATIBLE_MACHINES
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
X-List-Received-Date: Thu, 20 Jun 2013 19:40:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I was able to build core-image-base from Dylan with no problem. I then added
my own layer that specifies an RT kernel by including "linux-yocto-rt" in my
top-level recipe, and then setting PREFERRED_PROVIDER_virtual/kernel to
"linux-yocto-rt" in bblayers.conf. It complained that none of the available
kernel recipes (linux-yocto-rt_*) were compatible with my machine, because
they all set COMPATIBLE_MACHINE to a list of qemu machines, which isn't what
I'm building for. So I created a linux-yocto-rt_3.8.bbappend file that just
sets COMPATIBLE_MACHINE to what I'm building for, and now it's building
away.

My question is this: why was I able to build core-image base without
complaint in the first place? The kernel recipes it has available
(linux-yocto_*) also set COMPATIBLE_MACHINE to a list of qemu machines.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


