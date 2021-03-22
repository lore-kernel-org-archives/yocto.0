Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1042.1616428225499117020
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 08:50:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNyl5z8x;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D156A38C05F8
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 15:50:24 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id g20so11004121qkk.1
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 08:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lDGHMUGy3r2+is8nikzbKMdRVAPuqe6GrN9+mNPQMn0=;
        b=nNyl5z8xhduzxX0BUIbS/pEgCxdZ8ddZF1CTQpJm21Fk9pzE3J0spJaSeyS2vWFPG+
         SC06p797PSqpn++JmqwOiq+FQ00Ln2O5N8sF8c7wGTzbha1UqUnh36bs7Fn3Tj/Lr/7f
         5er2Gv3k3cnqsqJl3c7qO78r0aCcbCzkptfQNe/Cy+cG31Jsfm80pvpvGC+n/D0Wq7DY
         4YaPIpzBsOjUMAEVPC//Utnu0FFE2HQMX9NhV4kUdkU4N7BQKkJv1EuKmMy4Xjbc/1/N
         1UKQdLeWd9pYi7+Drvy1NbqkiusDp1U2KQSf5Nxx0iTMTxct5h1mo8QUXpWIBZI3/4Q9
         /D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lDGHMUGy3r2+is8nikzbKMdRVAPuqe6GrN9+mNPQMn0=;
        b=dj2MispOqgZcTNLE0ki59KsZwDez7RquZcN3PqBp0T7JN+47aWiPAxbm56KHLM73/w
         4skQswWSIj+YWwvc+c+nC9ztGoT4HyIrzKDxp4OIhoKb16pyTvhy51e2/WLkfh1ubuxz
         kTmh3oZEvF++oexL/BOGduzwTrkINsbVWcVrv/P2wZcPgldDkl8q7AD09TtBp2dGaBPv
         TcnRz/TV/r6ZylNjuc1r9fiE1MQSJwUA0CszLU+I6iITLtT5sU8C4gf8JOLkmJmsh+Tu
         foPw9BSr+6QXc1Nb+vpSv6OYaGdP6WDwLQtlfb+E0yUQ5SaM9YfwiacJpbtWQ48scLbb
         sy1A==
X-Gm-Message-State: AOAM530ImDlfUMmU3AMUEX3NrTDuN/MFxjLwJWBQ86w43ZTtBU0up5R9
	Oh+RVvL+ofQb4XEYDCIeefw=
X-Google-Smtp-Source: ABdhPJywzkjWHNTbyZJayURsJXjCZFwtYI8j0Ed8oIz9AfrQtnzoKvYQCV5cBold+cT5NM3Jd6GwDQ==
X-Received: by 2002:a05:620a:801:: with SMTP id s1mr706128qks.152.1616428223958;
        Mon, 22 Mar 2021 08:50:23 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id j15sm9101286qtr.34.2021.03.22.08.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 08:50:23 -0700 (PDT)
Date: Mon, 22 Mar 2021 11:50:21 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Yann Dirson <yann@blade-group.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
Message-ID: <20210322155021.GA23379@localhost>
References: <20210322134212.576790-1-yann@blade-group.com>
 <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org>
 <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Yann,

Thanks for the patch updates. I'll look at them soon.

On Mon 2021-03-22 @ 04:31:01 PM, Yann Dirson wrote:
> BTW, I'm also unclear on what to do next to better support those
> boards: with the default
> kernel config only a subset of the hardware is supported, and for
> state-of-the-art hw
> support we'll also need patches not yet in upstream kernel (from eg.
> armbian and libreelec).
> 
> I feel it would be good to provide defconfig files for those machines,
> but then there are
> several options to handle that.  Would a minimal hw-focused defconfig
> suitable for
> `KCONFIG_MODE = "--allnoconfig"` be a good option ?

I feel exactly the same way.

By default all arm64 kernels are configured with the one, in-kernel, generic
arm64 defconfig. That gives me a kernel that is over 11MB in size, and
includes all sorts of useless drivers.

I've been working off-and-on on a mechanism for meta-rockchip that would allow
users to decide between the default in-kernel arm64 defconfig (which would
be selected by doing nothing) or using a leaner defconfig that I have been
tweaking specifically for each board. Currently I only have a lean defconfig
for rock-pi-4b, but it was my hope to generate defconfigs for all supported
boards.

Ideally I had wanted to leverage the linux-yocto kmeta mechanism to generate
defconfigs dynamically based on the specific machine and specific user
preferences, but that didn't go as smoothly as I was hoping, then I got
distracted by other things.

I had created a spreadsheet with a comparison between the various boards that
would have been a basis for the individual kmeta pieces. Maybe I'll find some
more time to poke at it later this week. I could also push my WIP stuff to
somewhere if you'd like to take a look.

In any case, my point is, I'm very interested in something better than what
currently exists :-)

One thing that I'd like to keep clear in meta-rockchip is to always allow the
user to choose between upstream and "extras". My feeling is: the simplest
build, if the user does nothing explicit, will always pull from pure upstream
with no out-of-tree patches or vendor pieces. But I'm not opposed to having
a mechanism whereby if the user does something explicit, they can choose to
use a vendor tree or make use of out-of-tree patches for various things.

Best regards,
	Trevor
