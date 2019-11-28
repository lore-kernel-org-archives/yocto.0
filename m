Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5586.1574942048187173820
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 03:54:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=y/4gOn0V;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2690E0108E; Thu, 28 Nov 2019 03:54:07 -0800 (PST)
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
	*      [209.85.217.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD171E0108B
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:54:06 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id x18so2015044vsq.4
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qiKkE7GoH0so5f5daRQLyrNyHZdm/NBIVQzlx2hN5XI=;
        b=y/4gOn0V8X/bg9U7rwI/LugyDSaxuhwOWW6H0yQseOyKEFiGNRIcWlOsJtj5wpMQpY
         99bGOLn5uT7EiGVeBO8jqjxS1fZKKfekLTdxkjobSt+BaXnktLKF49/ifW48uDL8KmzA
         ynISY9BgMb9LgwF41ZDupejnfy+mGWNKo9pEZJAYz9KwI9K/lsgGcC0X9fGph9G/iFvN
         n9yvzCleDN9ZdVzd102Y2WxGAEVYcGGkQkE1V4lBaDVP5DvSxxnMc30QF2BMK+F+6daZ
         Q1dvnJSZ+15agS0U2+nxfU2rRH9uA0DsWxqIuF3ZZT+FKlm4ksePvcIfJKQ47DycCOEv
         Iqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qiKkE7GoH0so5f5daRQLyrNyHZdm/NBIVQzlx2hN5XI=;
        b=kR7UxBBNfOc9MUZL2pl3jmitStNzRhtpUyEh6xXg/BdVVpbIKSYnIySFeba1TGvGdD
         VrTw1mPh8WDHf5/suHoCXxPj9KLETDie0aV1Trtvp+RSjKmcIFZkRZnn+R7wuBDiE0py
         5mnagE8GNbAKgrVBGa4iYMHFBVPkQfrgM+OYIml8jnaQWdOIsqc66rBKCiTj6YVSMkeQ
         BSTk/rX/vxRpQWmyoOVElqjFhRW+QjschX09CvRhebmfFIbISSKNNS/te2WHMnIHX7Wt
         JEG8EE/lOOdXbn1gPNBO82JlKW8Cbc0ONOjvc6PtftaNNcFe2FgiVk2998OMYNg+kxNG
         F3/w==
X-Gm-Message-State: APjAAAVgzaozkfKTixqq289MCvqXe42WAgHQE7BW2JuMIRupW0pFPrFg
	EwCl8F6uLFwBn8mJ4chznIvU++RIhEAHXKw1Ciw5IJZ/p6p5nA==
X-Google-Smtp-Source: APXvYqwnhJ35tYlyzhez+9bV8juAi12J5s7VTxd9qy844JRleP4tP+GMIByjISCSAMRIH/CViLxWq4pYYXH93q25oWQ=
X-Received: by 2002:a67:887:: with SMTP id 129mr2693084vsi.174.1574942045571;
 Thu, 28 Nov 2019 03:54:05 -0800 (PST)
MIME-Version: 1.0
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain> <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
 <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain>
In-Reply-To: <20191128114104.vgrmyherbnrkiqtd@jholzmayr.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 12:53:54 +0100
Message-ID: <CAMjhiJg=SwoEGQyZ0hObP8Q-qLHb6yz6bKauwNJb-7kFaqYE+A@mail.gmail.com>
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 28, 2019 at 12:41 PM Josef Holzmayr
<holzmayr@rsi-elektrotechnik.de> wrote:
> On Thu, Nov 28, 2019 at 12:11:52PM +0100, Leon Woestenberg wrote:
> > Let me then first describe the issue I am having, which I think
> > results from my misunderstanding then.
> >
> > I would like to package a UEFI bootloader (GRUB), bzImage and
> > initramfs.cpio.gz into an FAT partition using WIC.
> >
> > 1) Should I adapt my existing my-initramfs recipe as follows:
> >
> > IMAGE_FSTYPES += "wic"
> > WKS_FILE = "my-disk-image.wks"
>
> I think I'm starting to see the problem. Do you set those things in your
> image recipe?

IMAGE_FSTYPES += "wic" goes in the image recipe, yes.

WKS_FILE is there as well for this image, because I need to create
multiple images with different WKS's.

> If it included things like that, how could we use it
> as a "hello world"-style image for about every platform?
>
I want to create several images. The one I described is a recovery image.
I also want an application image which has a different WKS.

However, this is not the real issue. I first would like to understand
if I need to follow 1) or 2).

Regards,

Leon.
