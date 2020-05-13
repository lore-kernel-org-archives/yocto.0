Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2017.1589359023650783109
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 01:37:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UGKZhUJS;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 074CDE01B4C; Wed, 13 May 2020 01:37:03 -0700 (PDT)
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
	*      [209.85.167.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0614E01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 01:37:01 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id v5so8807223lfp.13
        for <yocto@yoctoproject.org>; Wed, 13 May 2020 01:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=gSwbSIb6pvcpJVUJ38iG4mkf/qFYVfg/8QhzGAvu2x8=;
        b=UGKZhUJSkg/gxdN5IWoi2QOfKxWVnlWNG00VNlLhJR+v76/eXkYEUzjrcWX1j2oRwx
         h4gAmJYGciG9gZWOkaIx7pWAcna8dti3c0o4yFfi0twTLt3u67N6IPSXLYrNyAo+GHtG
         bztEGFBg0AT8uFUlWR966tvdV91I22mZQZiIsxZ+WQOsbI+zVqpH5YBM4SP926kLHnvK
         6aWKUmg1T/cuxCSdPO8Hydez43OEk50lTNHNPQpi1Lqk2121/tfULOz+Fnxj+oAy5evK
         pahTpILu9daukXyHg6kGH5IGVIIqNrRyNKvitsaCA6lSACIGUmIDPhVxKBeUAdCMmP3f
         UBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gSwbSIb6pvcpJVUJ38iG4mkf/qFYVfg/8QhzGAvu2x8=;
        b=sFl1QZ0m3hJFx5VOlgr1rHxTqqXKH421e6CsliQDU6oxtXdpczlkHP9a4dlbaJ4ced
         5ZcRcXd4CrPN9xCyrjg++pug1wYYDtHEfNowhYjz9tRPgM2VqnuguYgUg0ZRU+FbVGg6
         AS0pb/xS83ulz2f/PxajnMDbZd/GdbV6Mk4eYGnyCuyQ5ihJD9r7UVPtMXShmgT3lGQL
         1mxwK6NImQxOxsTKekHZ5dfvqqE+ARnXhUV5+ETqIu909ZzF/sPhJrFdFOVDqEB4T5Z+
         OgdFYGNnk0v0a/pxwH7SK4T8LpTVekkGptWvqHoRIohAaUy5FEuiIyTf60QgSAE0QV5R
         xGKA==
X-Gm-Message-State: AOAM532we0pTBiMcjIafnxiT0JD2dhlLxFzAbs6wzEpbyaxfWiYFtisv
	OhVkgjs9udmhqHC++Ia4JhZg6QX0z89oZStrg+g67tKK
X-Google-Smtp-Source: ABdhPJzofBiFG1NEjt1uKRiMu1XjaMPrisyAFreBmKFMLz2rlxKto05gG/c5l42e+C+AvsIaBmYpzwuFHTPin5eSATI=
X-Received: by 2002:ac2:4910:: with SMTP id n16mr17494651lfi.35.1589359020269;
 Wed, 13 May 2020 01:37:00 -0700 (PDT)
MIME-Version: 1.0
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 13 May 2020 10:36:49 +0200
Message-ID: <CAEhQi8=B7VDVovCKKCHGer-o8WDQ743TjHUdMN4hjqyUKxT=Pw@mail.gmail.com>
Subject: Is there a relationship between the sstate and the machine?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using a build environment based on the yocto project from one of
the big HW suppliers in the mobile industries. They are continuously
breaking the principles behind the yocto project and at one point they
managed to break the sstate cache because they are doing things in
there own way instead of using what already exists. They managed to
fix the sstate cache but it now looks to only work when using there
machines when I am defining my own machine even though it is a copy of
one of theirs the sstate cache it is not working. The sstate cache is
detect and the SSTATE_DIR is correct but it finds only a handful of
matches and builds the rest from scratch. Is there a logical
explanation for this? Or is this yet again some custom crap that this
supplier have done. FYI if you know what supplier I am talking about I
would very much recommend staying the hell away from them this is the
worst linux distro I have ever worked with both on the build and on
the system it is some kind of freak combination of a normal linux
system and android worst combination ever.

Thanks
