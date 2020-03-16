Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.65909.1584359550620592027
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:52:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=F34Pf5BG;
 spf=pass (domain: googlemail.com, ip: 209.85.221.52, mailfrom: matthias.schoepfer@googlemail.com)
Received: by mail-wr1-f52.google.com with SMTP id h4so197391wru.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2020 04:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=s3Io8azKcSgO7H8THbcB3dDUbr0QRiAdSn3epybETts=;
        b=F34Pf5BGVfew6H1In15j1LJBVEx7jecHXWNdHyr6gHFfzer6j2pUhsMDdZrSascPBw
         xYKl6xD9XfGSciTw5l+JHXbcxpMWj0gJvEXtSFwKzBPnV7U4p+tzLzkxZhlFgF29TZX9
         kCVFvYK62hbmX2QVVS8mtfFf7srDDKiz0mVFI/bOguSZvT/ogFQ64axHXlhUPhpCIM9+
         2NHoztXxPWuado/7M9FcAV4HC3vLvhyZXIlU3kD/eLNucpnEATkEcJcJAhzqcuAG2USq
         c6DZaEbeZ0Vp/g24NMgnP5HRa+jPOSkR8l6QtNFg3+raUBknAAfF0p1Xjgnfo8xqZl4g
         /EIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=s3Io8azKcSgO7H8THbcB3dDUbr0QRiAdSn3epybETts=;
        b=jKjS/jnCwDKRKFq/yKnAGv7bLp/xTqq0M3r1DOIH++daJ8ROdNMKP12B6nNmtnZsW6
         uXmcpI/GGZhauDmkpkDiCBY47I7jyd7hbqgvj66cpdXuz8L0nQ7dZI8V7C71E9pnW6Gm
         V/GmPZjejaRWPrwgXt0b2Jy3C5PNbmTBbSddEhneDLMmFucat7bFGS18G03NCam0+7a2
         TwoLj0hJPI5a2IGGQgdZVp+/DIupNi/fyRBFJ0bJs/sgki4gHYlIh1Gem4+3KTYfV8ZW
         wu/+n6wt/3oEKd8KXiRNVpejR9txjFK/sH3KHk2rO341GYbejQs99BVwMJ/ZW1lWEdyP
         8Cuw==
X-Gm-Message-State: ANhLgQ2hi1ezugYXwVeeBSIycZRwlbv+Gek4IJVXhJJS2tmxBXeCyfAV
	Yzm7riko7SeDF8PuHFdyuIFZU3vO
X-Google-Smtp-Source: ADFU+vu4u1iQtYSf8GUIhPNHd5AVNI3nh/VX4Jq7IG7a0iMnus0rRPau6loiVrIOAsNHzNC56sKMUw==
X-Received: by 2002:a5d:6282:: with SMTP id k2mr31519342wru.401.1584359548663;
        Mon, 16 Mar 2020 04:52:28 -0700 (PDT)
Return-Path: <matthias.schoepfer@googlemail.com>
Received: from ?IPv6:2003:e5:1719:5600:7d4d:3d78:3409:ca00? (p200300E5171956007D4D3D783409CA00.dip0.t-ipconnect.de. [2003:e5:1719:5600:7d4d:3d78:3409:ca00])
        by smtp.googlemail.com with ESMTPSA id i21sm30937371wmb.23.2020.03.16.04.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 04:52:27 -0700 (PDT)
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org>
 <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
 <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com>
 <1ff9ea04-a995-606c-45c6-d51bc4839b57@googlemail.com>
 <CANNYZj8VnfmmEU_VHVu+Tq_NoiyzUGEmFpisxeg4bJ8Vr_00fw@mail.gmail.com>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Message-ID: <17c9ee3f-5c7c-9515-f9fb-bfff0cb1fa0e@googlemail.com>
Date: Mon, 16 Mar 2020 12:52:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CANNYZj8VnfmmEU_VHVu+Tq_NoiyzUGEmFpisxeg4bJ8Vr_00fw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi Alexander,

thanks for your message. I will try to explain my issue once again, 
since it still seems not clearly formulated. We build our images on CI 
(Jenkins). There, we have a shared download dir, so that we do not have 
to fetch all sources on every build. This gets shared for our 
"experimental" builds, that use latest git master HEAD (yes, evil 
AUTOREV) and our "stable" builds, where only tagged (i.e. no AUTOREV 
versions) are used. Our software uses the git tag to create a version. 
So, when on experimental, you might get something like:

# ourCoolSoftware --version
This is ourCoolSoftware version 1.2.3-3 (gabcdef1)

What happens is, that people check their changes on the experimental 
build. After testing, it is considered for the next release, so they 
attach a version tag to the git repository and update the _<version>.bb 
accordingly. Now they build the image with the "stable" profile. But the 
hash "abcdef1" has not changed. Hence, although we pushed a new tag, 
yocto git fetcher does not update the cached download git, since git 
hashes match (same with SRCREV). Which means, even tough we have a 
recipe ourcoolsoftware_1.2.4.bb with SRCREV="abcdef1..." which will 
build the correct hash, our software checks the local repository, which 
is missing the last tag and will still be reporting a wrong version 
1.2.3-3 for example.

If we were to do a
bitbake -c cleanall ourcoolsoftware && bitbake ourcoolimage

then we get
# ourCoolSoftware --version
This is ourCoolSoftware version 1.2.4 (gabcdef1)

because we artificially force a complete fetch of the repository.

We usually do a clean build (no sstate / tmp / etc.) but we use the 
download dir, because we do not see why we would need to download gcc 
etc. every time. A workaround would be to bitbake -c cleanall our 
packages, but it seems hacky and prone to error (need to keep lists of 
our used software in at least two places). My question is therefore, if 
this is a "bug" and if we were to investigate this and propose a patch, 
if this could this be considered for merge, or if this behaviour is 
intentional and adding a fetch --tags would be considered harmful in any 
way.

Hope, I could bring my point across now.

Thanks and Regards,

  Matthias

On 3/16/20 9:43 AM, Alexander Kanavin wrote:
> 'devtool upgrade' updates SRCREV to match the version tag that you specify:
> 
> devtool upgrade -V <tag>
> 
> If you omit -V, it will upgrade to the latest tag. It updates PV as 
> well. Why is it unsuitable for you?
> 
> Alex
> 
> On Mon, 16 Mar 2020 at 09:35, Matthias Schöpfer 
> <matthias.schoepfer@googlemail.com 
> <mailto:matthias.schoepfer@googlemail.com>> wrote:
> 
>     Hi Alexander,
> 
>     does it solve the Problem of a SRCREV, that has been fetched (for
>     example for a _git testbuild) and now gets a tag applied and build with
>     the _<version> build. The problem is *not* that the yocto PV package is
>     wrong *nor* that the wrong version of the software gets build! The
>     problem is, that the tag does not get fetched and our software gets its
>     version from the git tags. Since this is very convenient to have the
>     version information in one place only, we will not change this.
> 
>     Thanks and Regards,
> 
>         Matthias
> 
>     On 3/15/20 5:02 PM, Alexander Kanavin wrote:
>      > On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via
>      > Lists.Yoctoproject.Org <http://Lists.Yoctoproject.Org>
>     <http://Lists.Yoctoproject.Org>
>      > <matthias.schoepfer=googlemail.com@lists.yoctoproject.org
>     <mailto:googlemail.com@lists.yoctoproject.org>
>      > <mailto:googlemail.com@lists.yoctoproject.org
>     <mailto:googlemail.com@lists.yoctoproject.org>>> wrote:
>      >
>      >     2) It allows for very convenient bump of versions. We develop a
>      >     product,
>      >     so, version bumps are on daily or weekly basis. All that is
>     needed
>      >     is to
>      >     rename the .bb file. No need to edit SRCREV.
>      >
>      >
>      > You can trivially script SRCREV updates ('devtool upgrade'/'devtool
>      > finish'). The disadvantage of using tags is that you lose
>      > reproducibility, as tags can be moved or deleted, and so I wouldn't
>      > encourage this practice.
>      >
>      > Alex
> 
> 
>     -- 
> 
>     Dr.-Ing. Matthias Schoepfer
>     Mobile: +49 175 2062739
>     email: matthias.schoepfer@googlemail.com
>     <mailto:matthias.schoepfer@googlemail.com>
> 


-- 

Dr.-Ing. Matthias Schoepfer
Mobile: +49 175 2062739
email: matthias.schoepfer@googlemail.com
