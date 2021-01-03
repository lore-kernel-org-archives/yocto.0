Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.19777.1609635510446425517
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Jan 2021 16:58:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=L/WRON4y;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-kukur.atl.sa.earthlink.net (elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3691138C062C
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2021 00:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1609635509; bh=Zga7TylpVQNDeSvm+em+kNYZriTjpez4CVUf
	5k2XSDA=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	 X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=L/WRON4yA/MS507m/+qc12W
	9LoHmrHbl70jGKgEaPzdgMLIRt63yR3rU910ipAsQhpJCwxGm7KFZP3sTBm7p5URGB5
	4H7kV2NvXWNz0u36NkPSYoYMHpEjM82SABA4pcO65stZcGlaAYkEWeM9Vi9/e0GtaZv
	foH46Xaqej7Fdk0poxYfltKRTZxd0NPxLr350isrxU6uVtKQ6h2qyjV613k1qgo380a
	+pOP2MLITUn5cqtbMG/KYP42Yy2vGGte8GkTAaK7SwVwGvUWBPEl3OQGOkEB/b+CZzc
	GfikJrFqftnuqf88qej9v4P1gj7S0bo7BCmyhwRG5ukaAd6CTew==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=NPzYHXFZG1QSmpyXx47f17Nn3fhhe+WhFLJx4n7QnjneKE4gfteD6mNqY/4cKyGlusBaLebA6fSYfndg7M+YBly5JwrnQ07GRBhL8Ake3QEzGp8zqdZ67Q6J/20aHSk2SbHsf/ZTWu+7TzPhwqzdKKFhbuQt3hGS3IPK/OAv5FCr2GUSG90o39VNFQ80cikpiYiGXw8LURlcIowsfgPb2S5HXbCnbXQ9TiZw0KfPlU6fdKsL1OzDrfN+pvldal40t7WEAGN+0LBWR4tpx1cBgorvkFYXJs9xX33FB7wFY7nRz3UtBoW3/xm1qrs/m5JRjPaxa4oRPtDFlZ5IOgPF+w==;
  h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1kvrj1-000CsK-R2
	for yocto@yoctoproject.org; Sat, 02 Jan 2021 19:58:27 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Subject: Standard library header bug when compiling x32 application
Date: Sat, 2 Jan 2021 16:58:30 -0800
Message-ID: <7F0EB87C8B6F47978F84ADC3A1AAC516@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Adbha41C5u8qFU7wS+uGhhsWb5hyTA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688223b1230f91be864fc40f006fb546783350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Using Yocto 3.2.1 on an Intel target, trying to use the x32 model. I'm
getting this compile error when I use the SDK to separately compile my
application. I get no such errors when I build Linux, or the SDK.

In file included from
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/sys/cdefs.h:453
,
                 from
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/features.h:465,
                 from
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/dirent.h:25,
                 from ../my_header_file.h:7,
                 from ../my_source_file.cpp:3:
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/bits/long-doubl
e.h:23:10: fatal error: bits/long-double-32.h: No such file or directory

long-double.h includes either long-double-32.h or long-double-64.h based on
the __WORDSIZE macro, which is 32. This works fine when compiling straight
32-bit or 64-bit code, but fails in x32 code because only long-double-64.h
exists. I don't see why the characteristics of a long double should have
anything to do with the "word size" of a pointer or long int. And indeed,
the two headers it chooses from are basically empty, except for defining
__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI. I'm also not sure why it would be
harmful for both of these files to exist always.

So this is an obvious bug. But my question is: what's the cleanest way to
get over this hump? Patch cdefs.h when building the SDK? Use a bbappend on
some SDK recipe to copy long-double-64.h to long-double-32.h? I have no idea
where this recipe would be.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 

