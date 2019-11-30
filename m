Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4308.1575077397751868390
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 17:29:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvwkIOyr;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A54E00F0D; Fri, 29 Nov 2019 17:29:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD174E00E11
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 17:29:56 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id b15so8223201iln.3
        for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 17:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=tK9nBpMzVepgTs5w9u6Ue3Y/ebhILPdzudch0ujKPoA=;
        b=cvwkIOyrq8T1Zy6Sp5slqOh/U8YwI1D6mxaFJn6TqG3jzgRq6IRR92YPYZCTodE1L/
         IgXRKzR0kYpIjjkZf64y+dJwoj+GS02Lev7uBTYLZv1dAzmtxi6cctcs/aqQWaZdfwwN
         /hMYlV9ocCmw2fJ1bS7wdqO0T/x9djosSIKFYHsqv8RSrCNsNJ4zfKx4VcVWxc+IzBaL
         iNAEMAbua+elAA+zp8/7oKMbhDfliTnqePSFifyZi2BuLw5jMnA7JgJApM3KaB1v4dss
         V3pgcKOjUGV5JGU6coicF/Y1jDQQ65gFTHktNA+VyV+CSPjCtxuk8Wx/7gpG6woPNpAT
         c+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tK9nBpMzVepgTs5w9u6Ue3Y/ebhILPdzudch0ujKPoA=;
        b=RlmAD5nBg01h1Mb4jLG85Dizh6Vq3lAp+1wqlmA7VBlx50VhEYIwCv6UB2VTKcme4m
         AoOStSBJLpSTqU76dtUBzcs4btf/Vv1/JxS58DHV+YGJIbO8qBzpGYCfA2zsp5ce7Z2x
         Rk439kkwNcG4ebaFsWDuUKl/ijjBoswWvdwLyHxEArX5m9AncCgEARXiy3gVLmL6ZOy9
         gzqoAq8h2svOfGb5pWTPZ/yl2+Osd8arGSHoVw0hn0KjDVFny+HdnsUv0BZ2qaYc7ShG
         w0ivNu+slJZ3p+oPg4NBzEmoO/WTjbE9EiXuBbK7wUCtZtrM06AaltcKAX3TbcLNi8j7
         gFBQ==
X-Gm-Message-State: APjAAAXM73YMP8MSVsu3i8z3w1mFWPBAnbqBgTjmnEh90mihWg9USOdK
	J0c04cFc843sEnpx0qPIwLdjj0StvIa8vyCUPDJKUQ==
X-Google-Smtp-Source: APXvYqzkuNwdhao0xyB/6O6bNo8aDsUJrxhh/+GyC5fHE5RaTXY+ra6UV4A2diSLLMvkZSc6TJYMpSlGuZhs6ZrecNc=
X-Received: by 2002:a92:d849:: with SMTP id h9mr58994796ilq.301.1575077396012;
 Fri, 29 Nov 2019 17:29:56 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Fri, 29 Nov 2019 17:29:55
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 30 Nov 2019 12:29:55 +1100
Message-ID: <CAA=hcWSx-D83VHCcnvFx1Rr7CkEjODEBHC2s4S4hELnvBQh-bA@mail.gmail.com>
Subject: Add package to rootfs
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I built a Yocto image in a file app-image.rootfs.tar.gz, I also built
a kernel initramfs to bundle the rootfs, but that kernel rootfs is
different to my app-image.rootfs.tar.gz, how to define IMAGE_ROOTFS to
have my kernel rootfs point to the same rootfs packaged to
app-image.rootfs.tar.gz?

Thank you.

Kind regards,

- jh
