Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6050.1574946307193999483
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 05:05:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=twsKxPZE;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C681E00E85; Thu, 28 Nov 2019 05:05:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5304FE0085D
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 05:05:04 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id z9so8173551uan.3
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 05:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Oz6XTDyQkCmB5ROnmCRBLI6YD8p9tPYIdLpnRayoyek=;
        b=twsKxPZEe6wlN8iRon5Ku7PxbQ7GSZ109TZFKtKzGJf8KJc92w/fVOYVG85gJXT/tc
         5ppaM72yaEnEP15qwwLcILD8skVf6ri5bpy/MBY0T0RqjyltrPLHoblHg/QJFAUV2vse
         NybALxOrV+Ut22IIBU/g2Lqyh+GEgmm+XQ/w+eFk3FwiGHK76kELCiMeKhjaVdwy3Tok
         KAA33Ni61UrLh2OI0hY8V8hIOxDxGiNZ+jkJd1GCSeMuiGMg7t7bkBqX+WHIbLtNk7eP
         aPKn05SUT4G+UmpiM/EOpZsPtSkZeAAR9tQNZ4eFo3pWKKwEdsEHkwg3DM8v5pCvxtDJ
         mFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Oz6XTDyQkCmB5ROnmCRBLI6YD8p9tPYIdLpnRayoyek=;
        b=GEV4ujQ6/EO3Tw3d/47/Ugz19wOGit5niVWWCiN3MGhh3mmWj66Y7fgsPx6bhgO7aT
         XIMaUqjv1mLKlfARzWQgHkWCTt8HIGUC1GcvR/Zk6UEIKf0lzKCa7NJclzraRJWcC1Lz
         VmKvpmAGqc27TauolDt1NyGt7ncao5fj8VgEYG9EBI4coN+vfcZ/5wup8dEiid/qgCqg
         68cgMrY2zf/iA3FRXiu0NLP0zvHjVCDgJdOJ6o1m1BwR043VySP1QttfBkDTofjHHY14
         yOKcxn2JrilqYV1gIQMP7TAWd06+eeW9W906nB/mR8JKiGAke5ngePZEZUG04LQjFzNI
         L2Dg==
X-Gm-Message-State: APjAAAX+A2xO1dlyP/BimFyuC/lBnLQWxPsRSC7yE7wWUlJWt2N9hCNq
	OzUUpK5IsaDbcZKloXRc1kYTK4z20D0YUsSZvL5MK82Ruck=
X-Google-Smtp-Source: APXvYqyQRXcskTgd8rBWQgSEIUio2DT+CUNjiVp2LX223r3aZTucZG3w49RoLyFTf5+tjsPK3CAT10JdwHphdJpsyWI=
X-Received: by 2002:ab0:7d2:: with SMTP id d18mr6434314uaf.68.1574946304170;
 Thu, 28 Nov 2019 05:05:04 -0800 (PST)
MIME-Version: 1.0
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain> <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
 <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain> <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
 <20191128121501.xixbvexzhoeuihna@jholzmayr.localdomain> <CAMjhiJh6S8VezkWQiJ9fBF66ynQwFSg5EviagrjEw_V+j2ZQqQ@mail.gmail.com>
 <20191128125245.3vzwdrqexpyuc5j6@jholzmayr.localdomain>
In-Reply-To: <20191128125245.3vzwdrqexpyuc5j6@jholzmayr.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 14:04:52 +0100
Message-ID: <CAMjhiJiFvL9cjnJoOPHAB_2L1n6LbVnBvw_FvBwj6UU0oTB-dw@mail.gmail.com>
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 28, 2019 at 1:52 PM Josef Holzmayr
<holzmayr@rsi-elektrotechnik.de> wrote:
>
> On Thu, Nov 28, 2019 at 01:32:56PM +0100, Leon Woestenberg wrote:
> > - Does Yocto support building multiple images from one configuration?
>
> Of course it does. If you have set DISTRO and MACHINE, you can
> bitbake core-image-minimal
> bitbake core-image-x11
> bitbake ... whatever image.
>
> Thats exactly the point of the MACHINE / DISTRO / IMAGE seperation.
>
Yes, up to there everything is clean and nice.
And I understand I can build multiple images. I have used this feature
since 2006.

My point is, that we do not support images of images correctly. Or, I
do not understand how it works.

If I have an initramfs image, my next step is to build a disk image
that has the initramfs.cpio.gz, but without generating a new rootfs.

How would I do that?
