Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5998.1574944390767082498
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 04:33:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=S/G1Xbfo;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 579CAE0108E; Thu, 28 Nov 2019 04:33:10 -0800 (PST)
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
	*      [209.85.222.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B2AE007D4
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 04:33:09 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id p18so8144449uar.7
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 04:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uINsrSylmEIogvXtA/LoClkNKS6IgJAomDW9eHQI9ZQ=;
        b=S/G1XbfolZaHQRt+/G1Ls7Lxjh8CPuCZq6FAGzNt3Cej5iNfqIFvPZqOxqeKfmq6wR
         GjXUjbtlCu+8fzlyPm/OA8rm+3v+pJZyQzu0zoWEf6bEASPjTpNdVpCio+nUA8oXRAZr
         VCH35HeOfCYP1b0x84JAh8WsQZf+/ElxTTmp+zzaVev0xhQE738ja5GB+Yfvwrh5lgTu
         PvhzvvgBhM2C+6DhDlWu5/eKHgGj+u9IdStZQkCI85295+UwCYtpcRnN4hZVfB2faFhO
         6wYjoz3FMoxW2r9QL0Ox5ZYbApslTPi6+4hiQCkMR76DT9cVsTIflX8Lxwb5PBLBJvcq
         rcWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uINsrSylmEIogvXtA/LoClkNKS6IgJAomDW9eHQI9ZQ=;
        b=e1I0h55s6ngYtv5+HCm1JQwmSNCtaoWiuSndZHx1bFiDdQk1c4khdkYyUgQHetbN1G
         9BVgTv+bdBOMsh6vZJk3WAl3ClKsurTXx4ISgwp4gAej2Le122/s6fprPgxGjEdweir1
         si7S9Gtkt+dq6cnV4ZJJiXvh1AvuzyoSNna/aQ21ZHm+A4tmYQ2cHTiYrY2MNLyV0SwU
         PUkSGpXVWPnHfr+pNdg+860sNYUPakjocdlLMn3VCML5kwwvH1ziIXtmFh+xgXVYbQdY
         KyJHy6jkX5qX69AzaYpvo9DDmAmH8WRoSU7O5VikyvU/pMWx2PtSojOYbsJ8zU6cizAF
         TJOg==
X-Gm-Message-State: APjAAAWu9L5tpadYvZ9AKNv36xYNnvA+V1n4Xa/oaFhyyO8yrW9CByM0
	0POXJS81sl4hRKNRdANk2BwT76XG3/EljugAHojp5vbDMk1u0Q==
X-Google-Smtp-Source: APXvYqzOl/biNYGGpGMz/1Q9ah/Jr2EQRIcOvea/tmw2AR1PzSYE3NZyywcC/cVL8tJz6n8p7JFCBzWapHfFx9ARoBs=
X-Received: by 2002:ab0:4e2d:: with SMTP id g45mr6234256uah.29.1574944388207;
 Thu, 28 Nov 2019 04:33:08 -0800 (PST)
MIME-Version: 1.0
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain> <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
 <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain> <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
 <20191128121501.xixbvexzhoeuihna@jholzmayr.localdomain>
In-Reply-To: <20191128121501.xixbvexzhoeuihna@jholzmayr.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 13:32:56 +0100
Message-ID: <CAMjhiJh6S8VezkWQiJ9fBF66ynQwFSg5EviagrjEw_V+j2ZQqQ@mail.gmail.com>
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Au contraire :) It is the real issue because neither 1) nor 2) is the
> correct way, and I pretty much explained why that is.


So let's then consider the case that the WKS is machine specific. I am
fine with that.

- Does Yocto support building multiple images from one configuration?
- (How) can I build multiple WIC images with different WKSs?

I am not asking anything strange.
I just cannot find an example of a grub + initramfs + kernel packages
into FAT through WIC.
Or documentation on how to implement this correctly.

Regards,

Leon.
