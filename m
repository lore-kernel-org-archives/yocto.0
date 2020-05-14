Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7420.1589437770970047561
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 23:29:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G8WR+l9f;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF627E01B56; Wed, 13 May 2020 23:29:30 -0700 (PDT)
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
	*      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09480E01B15
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 23:29:29 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id l19so2171894lje.10
        for <yocto@yoctoproject.org>; Wed, 13 May 2020 23:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mm7slD4WyYfty1yw62+0axVb4alMZmePr0fjmyfp8g0=;
        b=G8WR+l9fEbL2TMgPZZJ7xicW7hwjUANvWEAN63QRoAuHsa7Zibedin9nGSix6YFeXA
         e0ZKykfF8grsFI9MMl69RmJeSQfOQFuNA5yOzaUwhhq6WUN7n23/uXLHb9h4fYOR6TOd
         Ifv4nE9w/KVq6PzhMM4iazMwX4NxTQdM/wnJhXwHDVCJnE/B8C3P+IzA/Lknm63pJlBW
         1mj+sqk9fRLnrVgoFj1NxK1pPOIyZn7HXVa9sws7IPmaQIGx9rlK5PBdI/e0gJ2s2w9N
         /cjvvc3h9zM8RYtO1ctO1yyoPssl9bloqebJXvNJXqED0RPFJExQ16m9JXhKzw5suC2E
         kWXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mm7slD4WyYfty1yw62+0axVb4alMZmePr0fjmyfp8g0=;
        b=Tlib3sFlVQBpwEnyGiDY/iy4f67iRQBysTym6+H9xpttY5qdo0twEDO5lAHH8GMEVs
         gMbKYeC5DJiwIOAA8wuTEuaZefjx4vMYM9P3/pcug6wBOdysVJ7LPsr006KxSzvXYTTz
         yjd+bIqB3FP+kKVHPNUNTkwecn1i6HMYCmbHG/SdG6rkMHe5nWQpZF7ZPz8Y6mO9FoGn
         UlAv0IZ1JSx5mC+fhgPZXVVD21xDUGgqt2J486d0vYNM1h39R+D1Sztg1m4jI2LGG/WL
         KCf6Y3zYhSUw5Hj8wXTgGDfe++UtEv+ypMMH88mefnb25dvERT2suyEdYSi/v6T3vZCf
         JbMA==
X-Gm-Message-State: AOAM5312Z/NzjrgfZ78uNMDAkrOehvKtjtKCO5A5ivfXfeFRxZ6Mz2ae
	dWn8n1WB/i+/dmLBSy2HAZjKIZouxlugv3KhEEg=
X-Google-Smtp-Source: ABdhPJz+HLSwUXITWcu6fLFiKWj+XldB/IYyucUM/+leactJB/jfBaXloYqtqd0M4XpqQApMrAP/C9jzatReYCzPTQY=
X-Received: by 2002:a2e:a40d:: with SMTP id p13mr1661413ljn.183.1589437768768;
 Wed, 13 May 2020 23:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8=B7VDVovCKKCHGer-o8WDQ743TjHUdMN4hjqyUKxT=Pw@mail.gmail.com>
 <20200513085950.GK5896@korppu>
In-Reply-To: <20200513085950.GK5896@korppu>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Thu, 14 May 2020 08:29:17 +0200
Message-ID: <CAEhQi8=bohv8h_3eaTyXYfdxUJuR4+dX9kJh=j8zi3fruvmFhQ@mail.gmail.com>
Subject: Re: [yocto] Is there a relationship between the sstate and the machine?
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks for your answer. Yes I think it is the same SoC supplier since
there is clang toolchain and they deliver it in a binary form and they
have supplied an class for using it. I will look into the meta-clang
that sounds like an interesting alternative. Regarding the BBMASK'ing
which I have used earlier but when trying to use it this time the
dependencies was really difficult to handle I finally managed to get
something working but in the end I ended up missing some packages
required to use there PC tools. I would definitely like to get some
more information about your experience and how you have handled some
parts of this build so I will open a new thread regarding dose
specific questions.

When trying to figure out how the sstate cache actually works the way
I understand it is that it is managed per task and not per recipe
which makes it even more unclear why I am not getting the expected
result. I am building once from scratch getting a sstate cache I then
remove the entire bitbake build directory and rebuild but I am reusing
the previous sstate cache and I am seeing a 99% match. Now if I take
the same cache and supply it to our CI I am getting a 16% match. Am I
missing something here? I am currently not using the SSTATE_MIRROR
instead I am currently just copying the cache over for testing. Is
this expected or is this also related to the this distro somehow?

Thanks,

Den ons 13 maj 2020 kl 10:59 skrev <Mikko.Rapeli@bmw.de>:
>
> Hi,
>
> On Wed, May 13, 2020 at 10:36:49AM +0200, Mans Zigher wrote:
> > I am using a build environment based on the yocto project from one of
> > the big HW suppliers in the mobile industries. They are continuously
> > breaking the principles behind the yocto project and at one point they
> > managed to break the sstate cache because they are doing things in
> > there own way instead of using what already exists. They managed to
> > fix the sstate cache but it now looks to only work when using there
> > machines when I am defining my own machine even though it is a copy of
> > one of theirs the sstate cache it is not working. The sstate cache is
> > detect and the SSTATE_DIR is correct but it finds only a handful of
> > matches and builds the rest from scratch. Is there a logical
> > explanation for this? Or is this yet again some custom crap that this
> > supplier have done. FYI if you know what supplier I am talking about I
> > would very much recommend staying the hell away from them this is the
> > worst linux distro I have ever worked with both on the build and on
> > the system it is some kind of freak combination of a normal linux
> > system and android worst combination ever.
>
> This is a common problem. It is likely that I know which SoC supplier you
> are talking about and have had the exact same issues. We have managed to
> fix or workaround all of them. In most cases by reducing what the SoC layers
> do by BBMASK'ing all non-essential BSP recipes, reverse engineering the
> machine configuration and bbclasses to only use bare minimal ones.
>
> I can only hope that our feedback in terms of patches and workarounds also
> going back the supplier chain(s) and you at some point see the same patches.
> For example we updated the yocto open source layers from 2.5 sumo to 3.0 zeus
> with very minimal support from the SoC and other suppliers and their layers
> are still only compatible with 2.5 sumo, officially. Also switched from
> using a custom Android based binary toolchain(s there were multiple
> at some point) to using meta-clang.
>
> If you have detailed question or problems, it would be nice to discuss them
> here, but I know that some details may be closed. At least some general
> aspects how to debug issues may be discussed without exposing too much
> details or, well, company names.
>
> Cheers,
>
> -Mikko
