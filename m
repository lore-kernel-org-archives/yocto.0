Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web09.1463.1614715547402051431
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:05:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ZCgW8aSQ;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.44, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f44.google.com with SMTP id w7so3261565wmb.5
        for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 12:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EtxX5mFUneABBbTITzanra5hsXEq1oQY1QQH03KFXio=;
        b=ZCgW8aSQpjx6TgM5/Qo/vbhdh0bA+famaH9Uqz2c97y3x0R1VCpLjigenx3Ija1JMj
         rIp++u16CedIDzuxkTuNvkTIsoa6YFJ2m6AunO2P1o/2xck0DTMJTzdA2ssx3suOzS56
         Jh7rQyWaHq8bJMpAbhFbYf1XVJW78SYG/KfeaI+B7HMRVzoqV7Z/+c3U6Q0UR5MWoG24
         sph/KyEtXX66OmZHn0nXfN2l4t1X+aCkeHWI4Nc9fofHScg11K5He6fonrbPU4bk1oKs
         SOcZMFZJzzLIJR7GRu38jF4GiOAqhXZ4MwLJLQi0BcH8hhxAd/wqGU5KJAfKN034g5RK
         hqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EtxX5mFUneABBbTITzanra5hsXEq1oQY1QQH03KFXio=;
        b=KOCKnexgK79d0RFSPGBm3Ri8yo/BaBE5Nbd1K5vjdDv+BYlH9aulWzGBfvu0STeieK
         C0m59NaNyTYsJ0TGITrNyyt45rS6S8/6PZH+oOKn2VC808LsiJ9rP9h/IkM6UDB0Ju/6
         Obhms6wig1CnY6GCbxaiN6fNE05hzbC/mZMAe718eun02pPGC1cdOufQRcL/LfHbpgsZ
         QqMDF2t1A9kCDGm+W0AKY5KHZ/6ALpqWuuZJ+/PgTZxS7PMzj5NgocNLUFfshNgTBQ8u
         n+po3L38wngdPpacKbBnvGTc6gNwvpzAssp3yjMuxQbjOl2bIFfzLWRhVFHrQbpAsYt7
         qZRw==
X-Gm-Message-State: AOAM5304FtQpfGiaFLfcP+FIqptGAMwgJNxJQK694TUvPUKQ5yJByxf2
	8D3i7EdybX281FaV9cgyCE5qb0rIWPndDToNObXwag==
X-Google-Smtp-Source: ABdhPJyUlmURmPtRnu4pvtgbHuLexb4l04hT0TQaABzGGB09qy/DXWIP8hCuFwKPvLOW0JAPwyzFLMm+aLC3a2/aI9Q=
X-Received: by 2002:a7b:c083:: with SMTP id r3mr5593242wmh.177.1614715545860;
 Tue, 02 Mar 2021 12:05:45 -0800 (PST)
MIME-Version: 1.0
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org> <16689EFE3DC0BB92.17298@lists.yoctoproject.org>
In-Reply-To: <16689EFE3DC0BB92.17298@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 2 Mar 2021 10:05:34 -1000
Message-ID: <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
Subject: Re: [yocto] Reducing the perl footprint on my image
To: Steve Sakoman <steve@sakoman.com>
Cc: rustyhowell@gmail.com, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via
lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
wrote:
>
> On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
> >
> > I have an image that is using debian package management  (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require perl, perl is being installed in the image.   No problem.  Except that the entire perl stack is 669 packages.
>
> I just took a look at the manifest for one of my images that includes
> PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
> perl-module packages.  Are you sure that something else in your images
> isn't pulling in all of those other perl-module packages?

It just occurred to me to make sure you are looking in the image
manifest to see which packages are actually installed in your image.
The perl recipe does generate 676 packages (in dunfell) so perhaps you
might be looking at the generated packages rather than the installed
packages??

Steve


> > Most of the packages are super tiny and are probably not needed by apt or dpkg.  Is there a way to strip down the large number of perl packages in the image to just what is needed by apt/dpkg?
> > I haven't found anything in the MegaManual yet.
> > Thanks in advance.
> >
> >
>
> 
>
