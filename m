Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web11.30898.1590741807983661854
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 May 2020 01:43:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=lgs/fEgm;
 spf=pass (domain: konsulko.com, ip: 209.85.167.182, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f182.google.com with SMTP id x202so1485656oix.11
        for <yocto@lists.yoctoproject.org>; Fri, 29 May 2020 01:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qApqwlBohWFP7C2Ie661zmyBOtxqRVZC/wtwV3GYViA=;
        b=lgs/fEgmfMg2A8J+73TrIcUEyojPXw1BEOomTi03Bzg77XkZj46G5vjRMZie8jo9I0
         UGURMQSNM3s/nwBlmy9XC2URkmX+a2KBaCmnxRqQUIFJat8dzGSCyM9Iz9E/FjAQqQvS
         jm1vBIPwAmphKJcy8a9q+b+JtFWm/RoryX0zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qApqwlBohWFP7C2Ie661zmyBOtxqRVZC/wtwV3GYViA=;
        b=jHMau7whfPIPHhMRczp7r1w6abw2JnBarNJrLdIoPvzRYCnyvGf1rHsnA6PR9Quio0
         DCGwJ4WThMlEHxFMD6o/DCswrUlpD6qb1jwcMPLNo/mVgcrem817nD2UhAxUUOKikB3a
         4U7xyKzjtse6aQ709P4QkRW+UKBEjCNkwhkupa9LYXVzCTFi/9WOih8/O/BD6m3MnmTb
         E3L9uUdQ03SxxJIgT5tfJ9jyR03EZYijLVsXIAA7OhDp0Cd4QrzpEKK1GR/adBNQUAl4
         vbRwkvD2BXECP03SJNaNTBE8GFrg3eRBcbR67J2wQDjs9ODnO6A+AQk/kuDJXFsFzE7/
         Fapg==
X-Gm-Message-State: AOAM531DPFt2jASExQkhnNYC8HE5tcW37MbG+xCv+nPmSjI6gTBoaPr3
	lddm2XRhf4xJ87ipaL/KbhDpIMCNkToacIdYqhTiaQ==
X-Google-Smtp-Source: ABdhPJzJipty4w5rrXivdvijQ0Hm3dw4PJclvfr4ajoEOxvmomYTNVd/rE+K4O2HS3PKaPJpL40KIuNw/P0Cau/o3fA=
X-Received: by 2002:a54:439a:: with SMTP id u26mr3243562oiv.6.1590741807330;
 Fri, 29 May 2020 01:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
 <CAEkELtCwRke9wKWGz=o8QQK0f6aDtAW_UPOoo0WVr5qEqAUUqQ@mail.gmail.com>
 <MA1PR01MB3660114818BF26883BF11FC7EE8F0@MA1PR01MB3660.INDPRD01.PROD.OUTLOOK.COM>
 <CAEkELtBeyoejF_00HYgFBx3U1ULiqKGpP_kSRVrNMNRdwva=sA@mail.gmail.com>
In-Reply-To: <CAEkELtBeyoejF_00HYgFBx3U1ULiqKGpP_kSRVrNMNRdwva=sA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 29 May 2020 09:43:16 +0100
Message-ID: <CAM9ZRVsyYuT5YyJdkCm8s9Zas1DC727OCWjFEobppi8u5Xf8KQ@mail.gmail.com>
Subject: Re: [yocto] Yocto,core-image-minimal for RPI4 #linux #yocto
To: Siddhartha V <Siddhuvgowda.18695@gmail.com>
Cc: Pankaj Vinadrao Joshi <Pankaj.VJ@exaleapsemi.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 May 2020 at 09:23, Siddhartha V <Siddhuvgowda.18695@gmail.com> wrote:
>
> Please follow below steps to check the image.
>
> In build directory :
> to check the sdimage for installing on SD card.
>
> $: ls tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg
>
> Check the image by running above command and then follow the steps i mentioned previously.

Siddhartha, you're confusing the issue here by giving inaccurate advice.

The original command posted by Pankaj was nearly correct: `sudo dd
if=core-image-minimal-raspberrypi4.wic.bz2 of=/dev/sdb`. The only
issue is that the data in the wic.bz2 file needs to be de-compressed
before writing to an SD card.

I recommend installing bmap-tools and using that to copy the data, it
handles decompression automatically and uses the block map in the
wic.bmap file to allow it to only write blocks which actually contain
data (saving lots of time that would be otherwise wasted writing
blocks of zeros). You can run `sudo bmaptool copy
core-image-minimal-raspberrypi4.wic.bz2 /dev/sdb`.

Thanks,
Paul

-- 
Paul Barker
Konsulko Group
