Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4596.1614157614964177400
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Feb 2021 01:06:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=gorm03MI;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-masked.atl.sa.earthlink.net (elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AC10D38C0846
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2021 09:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1614157614; bh=ScoDYCStmULwfg+9x8Wj1BAL3Cj5ngFk+Hm5
	qU9FMm8=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=g
	orm03MIkvw1NLhDVRBTeoJT+qASa2hnPTD/Rt0i4x9ExdJhpvZm3wIIV0QJKiDwOZD3
	EYQ8pXF9f5l1N9Ctv7WZOmgini1n0IR5iCn4gntR7SOkSfbB64kMXEUdsQaoUAc2/RJ
	THrnsyHNsgiVD+T+FnFe0ulCRBKdq/IOhoky/ev0Otd/TTTEG4azvIDXR1GZr0RJzuz
	m49KEKwnLPLlCgeGz90rRSD5ThUA9vOUIlN+9VM9TlZEuQfv1DjlnJm0PGFb5P80abj
	y6u8XSBgLYAfzBmnzYP4DGMBd72lDZ7Da/YpWw0dovZfejRVhpTPKGeqn4qu1nSemSx
	h1TVNg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=aTjZWMXoC3YfxJwPX7CSEGcWXbwhKnJCbN0plNom+6yLA//W13SohaP8SkxSB43kSBAGizeNf/t3QiZlfKdDxIMyuR4Gyy0Eqwq+kXpmy+NLrzm/giHSSJH1QnaqroSlqK0HAWE9KGs02i8iNeUZG/+lIaQqf1VE16vLZosdxBt8UFZeSu42gTRZw7lKNOLt8a5Q8E8p1s7/BY2ZW6fhkcdlpgBMekrS79Gr7WZIxnfeUzFybi/1dCxSZ6rx3y0f68t4qNuyaO7q69iNKqJZtu+bZwBs783kNdChRnzsnM3EzydhFNqJBySwFjL/t4X6U65jE4tgG6Cd/p2f7dE51g==;
  h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1lEq8B-0004mY-Ti; Wed, 24 Feb 2021 04:06:52 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Mittal, Anuj'" <anuj.mittal@intel.com>,
	<yocto@yoctoproject.org>
References: <712700BE27414926A00727DE5BDD7EB6@PAULD> <2b38ddaaf31df09528d577470349c67c33819b36.camel@intel.com>
In-Reply-To: <2b38ddaaf31df09528d577470349c67c33819b36.camel@intel.com>
Subject: Re: [yocto] Trouble booting basic x86 image
Date: Wed, 24 Feb 2021 01:06:55 -0800
Message-ID: <9DCB52D4B07B45E3897130B11588E169@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdcJwnNSs+ODUT99Rz65vrfWqD4+k///5tyA//5XRbA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ad6ac7bc5eb4d3317ac27e84d77819de350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mittal, Anuj [mailto:anuj.mittal@intel.com] 
> 
> It looks like you are using the live option in hddimg image? Can you
> try adding "rootwait" to kernel parameters and see if that works?
> 
> Not sure why it's not dropping to shell, but may be try 
> adding explicit
> call to /bin/sh in meta/recipes-core/initrdscripts/files/init-live.sh
> before this point to make sure the media is actually mounted at that
> point.
> 
> Also, have you tried wic image to see if that works?

Thanks for the advice. I decided to try wic, since that's actually the x86
default if you don't set IMAGE_FSTYPES. It also looks cleaner than hddimg,
since it has a real ext4 partition and no loop mounting.

For the 32-bit build, it produced something my BIOS wouldn't recognize as
bootable, even though it looked fine in gparted. For the 64-bit build, it
booted part way, crashing on an illegal instruction in systemd. For the
64x32-build, it booted but failed trying to run /sbin/init with error -8
(invalid executable). When I look at the drive in Ubuntu, the properties on
that file say it's a link to /lib/systemd/systemd, which makes sense.
Strangely, though, it describes it as a shared library. objdump -f says:

/media/pauld/platform/sbin/init:     file format elf32-x86-64
architecture: i386:x64-32, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x00024490

So still no joy. I'd rather get this wic version working than go back to the
hddimg version, but I'm not sure what to try next.

Ultimately, I'm just trying to get a vanilla reference build, so that when
the "real" system I'm creating doesn't work (which is often), I can compare
kernel configs, etc., to a known working system.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com

