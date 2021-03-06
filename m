Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5441.1615023443014339558
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Mar 2021 01:37:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=ZY3IjBf1;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-dupuy.atl.sa.earthlink.net (elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4353338C07CE
	for <yocto@yoctoproject.org>; Sat,  6 Mar 2021 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1615023442; bh=v/uuLI1vZ6uw35UBml4tc4QCvwcrfNBm6o4t
	+whWz9Y=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	 X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=ZY3IjBf10b1gNPpIfyVr9e0
	/2W8zPf2c9w55WSQ+Y/RVtrBNuj13+/CpVLPewIKfcwxs3JnQKY1x9Ecr/Centlx3mW
	y3xi2Dn1Z/ua8CfsUSVzNF12lm2DfVsJ5yuZzGGlwXChr/1pzBtFgXMFguMCWmvZ5iS
	k5+FLo/lraHcEhGIWaFSlxmxzwwwULdrVuS6MF+bzE1E6GwTbie47sUzg37EO0WlD3U
	qfHmvyLQXaPptwkIo9f0KZM+f5kEzq+/QMuYQUlUgkeIYBWuU9VZK2FHeYkuSgMza32
	f2aUzsa1rgoV5sy43/1rgFdf1mmaiEs5rGr2mt3hJyJLVfUrp6Q==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=drC8VCDt3ZZWqNT3/YRAgXF9h8GhA1xn2TDWqHxGhmh5B5vXUcp+qM4Ufwa+ynR6MCakFVuAf1NhDHO2cXV0Tj0tfbNI4as8BDZXUo/Egrfpt5XdanZWgg9xcOloFH4SD9MUiybXhKIeWSkj3tIN/D3XeZZwhcJzqYKY5zY36ZtqWi+YLvNte3RVItJfBmWtGlqgtdWeUBkpgEvUWhwezx0iC26lZORJyZWj9eRF4jxd/00pUmZcuKu/SF8i9DvtnfLqT88iVx5LYkSjU13VLWsK2UoymI7gkhinn4xW2jisjl6NmdwUZngHhM+o3Gia6MOV/5t4UQAp3BI9omODQA==;
  h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1lITNB-000APP-7u
	for yocto@yoctoproject.org; Sat, 06 Mar 2021 04:37:21 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Subject: Where is the kernel configuration file?
Date: Sat, 6 Mar 2021 01:37:25 -0800
Message-ID: <A5F4C33C9C88499FA80F8501DEFD4C3B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdcSbFCfPZQRFcqaQvWGbO+ZWmpGEA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606887767222813dced26b6303f5ea3fa2fc7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've found various answers to this. The correct answer appears to be in
tmp/work-shared/<machine>/kernel-source, but I didn't even have this
directory, after doing a working build of core-image-minimal. After more
searching, I discovered that this was because most of my build was from
shared state. So I ran "bitbake linux-yocto-rt -c menuconfig", and it
unpacked the kernel source into this location, but there was no .config
file. I told menuconfig to save the current configuration under that name,
but it said it hadn't changed, so didn't save it.

I ran menuconfig again, and told it to save it as "fooconfig", because I
just wanted to look at it. This time, it didn't complain, but it didn't
create that file either. So I ran it again, and told it to save it as
"/home/pauld/fooconfig". That finally worked.

So the minor question is: When I told it to save it as "fooconfig", why
didn't it create that file in the kernel-source directory? Or did something
in the do_menuconfig code subvert the menuconfig program and delete its
output?

The bigger question is: Where is the config file that is actually used to
build the kernel? I'm trying various builds in different trees, and would
like to compare the configurations. There must be _some_ file it's reading,
mustn't there?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 

