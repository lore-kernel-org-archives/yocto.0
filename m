Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7472.1614070879985140664
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 01:01:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=bW2qvdFB;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-masked.atl.sa.earthlink.net (elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E8ADE38C0647
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 09:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1614070879; bh=wMjik6qE1YSwW3fghRMVI4ijxnowmwqxgKwR
	d+aRUzo=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:
	 thread-index:X-ELNK-Trace:X-Originating-IP; b=bW2qvdFBR7jPFE7DdjH6
	nnOJSCkv7hc5Bj5zYGMIa59ZiMFXSx6+ofJV+3tbJ8YUpO7FfO0GtGBdSM8DIbTdyWT
	CFJUfjQaLuGiec4b9cYIZDdJFxysN1j8T0bTa1vdJaUNr5OC2GBBVNEuw0hW+zZkGTf
	0rYAARP/Z5CYt93ltWzO6JZZ8HIH3JGQgU2RhqlPEcKp+zLsiF0YDXyAai1Y9M4hCXE
	kgL2WBEiVVWGAjwckEXeIe8MLds4mcCiJJjQnqqRj+Z7VUDy8iRJcon2lBPtqfUzbsO
	i7OxiSZy3xg9VgOctmdBE9SvB3+qPxWyvUtl729Kd0K9B313JPr2Fg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=JAC3gNiHCTcSub91io4b5m+9muQipZHGEhPon1wJ42Me/j+NPtH2ZDrqUEGODercBd4BkjBcaB3IwpuAFoGaXwOIMiYC4Cj5ppDs84XrtxIGcNVsQgWhQ5x2UYnbsx45NsmXISM/WtOmXNk6i0MdZl4eIjvUHNG97lu8jl5anyBoQ+YWDtaOpWbI6E3O+TOqnifA71qVa8BcuLJsZyaYI4YjZ4n737xICxwRRCTWvGMR/Xwp3nZuq2eSfFK8z2z24VCkEetF89Q/fC8gOclc8Xr8F7eUXImVQm3o78j7t6kBE4RNcd55dD/6MX2Ju6QHr0i9aN9DrKHaoe1K0dLrMQ==;
  h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:thread-index:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1lETZF-0005FP-Ko
	for yocto@yoctoproject.org; Tue, 23 Feb 2021 04:01:17 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Subject: Trouble booting basic x86 image
Date: Tue, 23 Feb 2021 01:01:19 -0800
Message-ID: <712700BE27414926A00727DE5BDD7EB6@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
thread-index: AdcJwnNSs+ODUT99Rz65vrfWqD4+kw==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068835b491b21de466af149a4479a7d29fd2350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yocto Gatesgarth, using meta-intel to build core-image-minimal
Intel D2700MUD mini-ITX mobo with D2700 Atom
Ordinary USB 2.0 flash drive

I followed the instructions in the meta-intel README, and had no problems
building the intel-core2-32 and intel-corei7-64 machines, as well as the
latter with an x32 tune. But whenever I try to boot any of them, I get the
following stuff from the kernel:

usb 1-6: new high-speed USB device number 4 using ehci-pci
usb-storage 1-6:1.0: USB Mass Storage device detected
usb-storage 1-6:1.0:  Quirks match for vid 090c pid 1000: 400
scsi host4: usb-storage 1-6:1.0
scsi 4:0:0:0: Direct-Access     FLASH    Drive SM_USB20   1100 PQ: 0 ANSI: 4
sd 4:0:0:0: Attached scsi generic sg0 type 0
sd 4:0:0:0: [sda] 3932160 512-byte logical blocks: (2.01 GB/1.88 GiB)
sd 4:0:0:0: [sda] Write Protect is off
sd 4:0:0:0: [sda] No Caching mode page found
sd 4:0:0:0: [sda] Assume drive cache: write through
 sda:
sd 4:0:0:0: [sda] Attached SCSI removable disk
(countdown from 27 to 0)
Mounted filesystems
Available block devices
major minor  #blocks  name
   1        0       4096 ram0
    ... (others edited out)
   1       15       4096 ram15
   8        0    1966080 sda
Cannot find rootfs.img file in /run/media/* , dropping to a shell

At this point, it doesn't drop to a shell, but just sits there, responding
to keys by echoing them, so I have no way of investigating. Ctrl-Alt-Del
reboots.

Since there is no kernel serial output on this board, even though the kernel
command requests it, I videoed the startup, but didn't anything that looked
suspicious. I didn't see any message, though, about mounting anything in
/run/media.

As I've said, I've tried three different builds, totally generic except for
using the Intel BSP layer. I've tried two different USB drives. I've tried
it with EFI enabled and disabled in the BIOS. I've looked at the drive on
the PC, and the contents look normal. So why can't it find the rootfs.img
file, which is right there on sda, large as life? Anyone have any ideas what
I could be doing wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 

