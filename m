Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FF2AE00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 13:52:52 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so1029819vcb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 13:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dTrBbsfd6SbD/0ujZ6dL4cqOKrRmCwctMtq/FwUJHtw=;
	b=ExUKduba4GbWK6M/uh8+xUMugCa+unXD1d9iZKM+4RxzS+kw2ZWKq+uKRIr/ZH01U1
	4Qsz/uuF92croQG43XPWelLlNEmXlVGHsgtKakgXofTG0dNewuAIyKAZXA3htWRxmiUm
	A93NlNpDLHb6nz2LpZsEkEJnJrZIwZaRtvrzA=
MIME-Version: 1.0
Received: by 10.220.231.130 with SMTP id jq2mr2131837vcb.24.1325800370713;
	Thu, 05 Jan 2012 13:52:50 -0800 (PST)
Received: by 10.52.159.9 with HTTP; Thu, 5 Jan 2012 13:52:50 -0800 (PST)
Date: Thu, 5 Jan 2012 16:52:50 -0500
Message-ID: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Trying to compile mono on target for machine crownbay
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Jan 2012 21:52:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

I bitbaked core-image-sato-sdk, copied it to the target disk and tried
to build mono natively on the target machine and I got the following
error:

libtool: link: cannot find the library `=/usr/lib/libglib-2.0.la' or
unhandled argument `=/usr/lib/libglib-2.0.la'

the filesystem does have a /usr/lib/libglib-2.0.la and it seems to be valid

I am not sure why there is a leading '=' in the path. Needless to say
- mono builds fine on ubuntu, so it is unlikely (not impossible) to be
a mono build issue.

Has anyone seen anything like this with mono or some other piece of software?

Thanks

Autif

