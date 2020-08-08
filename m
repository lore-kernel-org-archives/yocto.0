Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7061.1596899806800563075
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 08:16:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rQyPUA0b;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CBD1E01FBD; Sat,  8 Aug 2020 08:16:46 -0700 (PDT)
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
	*      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.66 listed in list.dnswl.org]
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC2A6E01FBB
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2020 08:16:44 -0700 (PDT)
Received: by mail-ed1-f66.google.com with SMTP id ba10so3344763edb.3
        for <yocto@yoctoproject.org>; Sat, 08 Aug 2020 08:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=THixhwoBrFECBiJpCF/MdEp4wa6MWpfpy8V6nTCWy00=;
        b=rQyPUA0bknYgaLw9PZmJN/5TYjO04ETkDjuNn8FdcPAY5etpyFfAZLr9VVxFukDTpm
         De81LIQZ9oTIKdQkfg7PKVB/vt4/PC08Eb1BH8gQhRtvNbuSmcebU0txP2D9cFTfsyO0
         emFNWhLz4zs1/qmTJD9Bx8aucnBxIFkiOKApxZ6Dj/XV7M3p/HcKsRHkRx/Hq1/uZrvM
         xOR3ygqO1Pq4TPZwu1LFk7bRX0vrRrlH7ctjbqFBkDb/R+/l/CQRxntUM0vUWrL6CHpo
         8tJCbyIQzpAna+DKyOsQADXa0ZD1T9ZMksTczSSuA8yT58rxjJ5CyPRfYGxzF6m4ZSR4
         qscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=THixhwoBrFECBiJpCF/MdEp4wa6MWpfpy8V6nTCWy00=;
        b=h/cLZNbgAEDiYEZ9wE91mQEO+cznsMQPPLXShCyBm/TvBqFo7ly21WMm6OLaN30LcB
         /zHG/su1APzvEBthquUhwf+UAZxNrYnxw+F/t50SMatE7b55oihKbRYDrIwyujJI4B3u
         4KDb/Sh63J6w/YtDO5hL3Kr2uwV/DlJHtbcDFnv8yw4Ca9qHOS+gC2InPS8FX8udcL31
         PDc1cIEHt0CcTckKlwCxOa2HoIL4vjHuDCgAFs7LACDDmAVQZx0kNUOuIjbiSW3SRP5i
         h1tTbrnpHz/xauh9vB+hwwyiHBzlXV/NypkJZUWuKEVkmkVLISgPjEad15NCkl2YOdxR
         4b3Q==
X-Gm-Message-State: AOAM533o7eBTnbEBb/EyLyza+72om0YtWScYO+vPAL5TTsPRKC2MbN2A
	MrmY8b45GL/21ga4p0TSkm7DZMG0yKAslVmmlAhth67a
X-Google-Smtp-Source: ABdhPJyQbPL7z7HoPaQBW9yiG7aFE4QtQM+ic5OZ2wMatTohvgPVVrgMc58ZKchU+iYGoxcSLuhq/nT0FK9wMMPZwaI=
X-Received: by 2002:aa7:c70b:: with SMTP id i11mr13391939edq.272.1596899803216;
 Sat, 08 Aug 2020 08:16:43 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Sat, 8 Aug 2020 17:16:31 +0200
Message-ID: <CAAfyv34h5WrT9evbGdYMFwUbLksspPhzJxLxd0KmguXLYH7H0g@mail.gmail.com>
Subject: luajit build issue for rpi3
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build luajit for rpi machine and getting strange error
on build machine:

gcc  -m32     -o host/minilua host/minilua.o -lm
/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/7/libgcc.a when
searching for -lgcc
/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
cannot find -lgcc
/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
skipping incompatible /usr/lib/gcc/x86_64-linux-gnu/7/libgcc.a when
searching for -lgcc
/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/hosttools/ld:
cannot find -lgcc
collect2: error: ld returned 1 exit status
Makefile:605: recipe for target 'host/minilua' failed
make[1]: *** [host/minilua] Error 1
make[1]: *** Waiting for unfinished jobs....
make[1]: Leaving directory
'/home/builder/teamcity/work/2bf058ae8f7d2c6d/.build-rpi3/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/luajit/2.0.5+gitAUTOINC+02b521981a-r0/git/src'


IIRC luajit built some host tools using i386. I installed
libc6-dev.i386 as stated in luajit but it doesn't help. Also it looks
like it's looking in the host directory for libgcc?  Any ideas what
can be wrong?

Thanks and BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
