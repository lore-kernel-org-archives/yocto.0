Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2938.1609700096252535563
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Jan 2021 10:54:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=OSL7O04r;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-masked.atl.sa.earthlink.net (elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 17A0C38C065D
	for <yocto@yoctoproject.org>; Sun,  3 Jan 2021 18:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1609700095; bh=+bDtPq7cmbJqdQN2PprWAjl6H4pP8PJfUTQJ
	SKENP7Q=; h=Received:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=O
	SL7O04rVDE1FzUU7eMLdoIDJPE5HcTGqX328NjPfYqoUpQBBdD83k+0rsTVprB4lQr/
	9bcBB2VlckSBVDjMpWKilbHOUnShD7l2yI+mQaWcT9HQg6iDGbjx2dMEprLkl1TgQ9n
	5PDVoWuXA5abN3PT4M6x7EpkNw60fMckiA+csCCJDaxnObF2ToTUp54EOUl73QELp88
	JbdjO5YEpQFkLJ0Q7Cd2o4R1uqG3vCBFycLhK9dAjY+A2QMUAeT7mBl2rHM7Z2Z+3xr
	cCg4B9txUc3M6QxgcRXHfOTUjD8XkwEIYOJX5ImYZRuBELiPkf85FspOH+MLZ17dLS3
	fVSfwg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=iEtYsjPglPJsPnKZ06RNXGP9nAKcazqu4lMs3DlzIgMTasYCELvVd9ug/htrHS/1nhvqQUy4RZHxcHjD4MWpnZ/LV1DcYJPdzXEgf1V/8syWf2TmFKPkOJgKGE1ogzpyj5gghdt/67Lu06HLnG81PwNBJGJYD18lENG85OfQzM6u8EhgX6YNnHykQbjehhz8+lrslTNO0tzuz8yLiegCLF0VQqBF+4pWPXCRIiqkxwICpxXASWY1lqqRItZKwd/yKQl84vGqf0mf2WJ+I/F6RpOnXEqom4xhcQowCAaLxp55HsmzmXy3KC/qdqXVSSY89UIuzPPE5Wmid5Aulqzvow==;
  h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1kw8Wk-000FzG-1Q
	for yocto@yoctoproject.org; Sun, 03 Jan 2021 13:54:54 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <165692F8157BFD16.5057@lists.yoctoproject.org>
In-Reply-To: <165692F8157BFD16.5057@lists.yoctoproject.org>
Subject: Re: [yocto] Standard library header bug when compiling x32 application
Date: Sun, 3 Jan 2021 10:54:52 -0800
Message-ID: <4352EB5CE4E649DCB6AAF26C3DBD518B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Adbha41C5u8qFU7wS+uGhhsWb5hyTAAlP27A
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068845d0cc207e6767bcf677f2f5266d0df5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul D. DeRocco
> 
> Using Yocto 3.2.1 on an Intel target, trying to use the x32 model. I'm
> getting this compile error when I use the SDK to separately compile my
> application. I get no such errors when I build Linux, or the SDK.
> 
> In file included from
>
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/sys/cdefs.h:453
> ,
>                  from
>
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/features.h:465,
>                  from
> /opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/dirent.h:25,
>                  from ../my_header_file.h:7,
>                  from ../my_source_file.cpp:3:
>
/opt/poky/3.2.1/i64/sysroots/core2-64-poky-linux/usr/include/bits/long-doubl
> e.h:23:10: fatal error: bits/long-double-32.h: No such file 
> or directory

etc., etc.

I solved this myself by building an SDK specific to the x32 configuration,
rather than trying to use the plain 64-bit SDK. What led me to believe that
the 64-bit SDK should work is that the host sysroot includes
/usr/bin/x86_64-poky-linux and /usr/bin/x86_64-poky-linux-gnux32
subdirectories. The latter contains symlinks into the former, which is no
surprise, since one toolchain should be able to do 32, 64, and 64x32, but
the target sysroot include files don't quite work. The only reason I care is
that each SDK is about 2.4GB. So I'm not sure if this is a bug, or whose bug
it is, but 2.4GB seems awfully large for an SDK, especially since this is
the standard SDK, not the ESDK.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com

