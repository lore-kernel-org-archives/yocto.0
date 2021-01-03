Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.2752.1609699494843073759
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Jan 2021 10:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=LT7mzNhb;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-mealy.atl.sa.earthlink.net (elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2AB0538C0627
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2021 18:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1609699494; bh=9r7B0y1q2l70RmSGejUmOZLFB5ufit23zJXI
	H4kjxgY=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	 X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=LT7mzNhbLmkILKUVIVMHE0R
	OxdnJvT/Lv/KJa/j6mH6l9ZbgQNCY4oWCBTmp/RWsAy9Uw3UiXAlSJ/Psn6ELlhpQuv
	z3NAIgJFQ6T54n5GCJLCou2qvoWlx6j0wN3EgDgyM6hofprdBCv1R3+dXQdQfNtYWNv
	qoqy8R5V5whXCTOXkrPzoHJaxRdqxN/toVIMOW62XhsVDcZbmS3EAaDr0wobs/MWKit
	tesDN7jZpkqSxzKhrbI00shJIKtZc0EQ3aCr3SMwAAU0UAq+DFo9q1XL+EVvaQLNi9p
	MH/0im2h4qUSWXFiWpls2VXw+T+gy8kHMsDpVrpX+VUdkCterMg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=X6G851Djbv3PIsS4T9eyR9IzcOQYgbdMmnxkpWjJxXedNbhzPbZ1IonjOjP+3njPgqqFUr1w8abCeq2FLgkYVdPXIUIkFEpvWK7anwcAL5z2qkiCoOL+V0XYVcI/rye/x9Hu497lSu21XM9sXDfqNol0O5lhtabq6RGvCxEx5STux93Nk4Lkm1fJ0oXUTf5QX0Sj+2531cUxK7/jlUmJNMj3AqSKmzvOgUhXe6SwcfDVaL8IVIXnz7fsNfFuqo/c4bOLXqlYi5X7sVM/9yDAgZMWyfOOXHqkGHm20DTYmajHTRNd2SJYn1XDBVU5RdW5IkFRISZAgqD5EQJu1ZbUBQ==;
  h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1kw8N3-0000yJ-4A
	for yocto@yoctoproject.org; Sun, 03 Jan 2021 13:44:53 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Subject: How do I build an x32 Intel system?
Date: Sun, 3 Jan 2021 10:44:51 -0800
Message-ID: <113956D0E12D407782FFFB70D620DEAC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdbiAIVMifdLDdUITMOnfxnk5Y8dPA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068898f28565b394d1c3fa1727de7dfbc7af350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been resurrecting an old Pyro project under Gatesgarth. It's an Intel
32-bit system that needs maximum speed, so I decided to try to build the
system and application as 64-bit, for more registers. It pretty much worked
on the first try, and is about 8% faster. Now I'm trying to do it as x32, to
see if that speeds it up even more.

Unable to find any specific instructions, I set the DEFAULTTUNE to
"core2-64-x32" in my BSP conf file. Also, in the old project I had tinkered
around with this a bit, and had found some kernel config settings somewhere,
so I tried using them again:

CONFIG_X86_X32=y
CONFIG_COMPAT=y
CONFIG_COMPAT_FOR_U64_ALIGNMENT=y
CONFIG_SYSVIPC_COMPAT=y
CONFIG_KEYS_COMPAT=y
CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
CONFIG_BLOCK_COMPAT=y

Other than the first one, I don't know whether these are correct, or where I
originally got them, or if there's a stock .cfg file that does all this.

The system built fine, the SDK built fine, and my application built fine,
but when I boot, I get a kernel panic, preceded by some message about "kmod
busy with 50 threads for more than 5 seconds now".

Is there some instruction on how to do a proper x32 build? I couldn't find
one Googling. Barring that, do any of those kernel configs look bogus?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 

