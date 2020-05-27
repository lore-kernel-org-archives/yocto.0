Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3045.1590573780361640448
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 03:03:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fgax+NNo;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D676FE01BDC; Wed, 27 May 2020 03:02:59 -0700 (PDT)
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
	*      [209.85.208.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com [209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA01EE01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 03:02:58 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id m12so25764498ljc.6
        for <yocto@yoctoproject.org>; Wed, 27 May 2020 03:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=We0YSJUiQrDHQRXL5Cw8w3UmRgGFxbDwluB3UD3EIGg=;
        b=fgax+NNo8hP6mDun3BFeAyrZcDoLgs7loq7Ll+GooB59nxhvx8in1SfbP9alLwqkom
         zntSQlVkf5OTQHh/ZG0cWXzwIG0fOJKS6i2vvcANHzv/b96X1C1vKUccb7XHj+mt/Nt/
         b8DFP2HaKSMw/JaraK18u4XHlbtZXZxejq1cHZk111CdFIAKV27DEk4VAaQo8cexT/e5
         0xq0M6yI2yVSNshERG8Ml05hHNB6OGNFw/k81sjpLkKNIZsRv5jQOFZDzr9jDA5CtJP7
         Z5BobelKLSZBDg39GtlyI5xCDVW0k9sM+v9BIhqQVVnu8D4lWL964U88dH/YveNUhaoP
         T0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=We0YSJUiQrDHQRXL5Cw8w3UmRgGFxbDwluB3UD3EIGg=;
        b=XWdQPX+UZiWTFbTNOBHOum7JYRvJ6iIDGUuhuONHNgfoFjtYIMQCYryRSMqt3U8M3Z
         6GKR832iT2LgVxPSzAQ/AfMjkglixMimQGNupIfpF12M7vxNVp44TutSzXQtKrVNAfSJ
         Ag+tRb9hb+8EbwCXE8q/FZ4Q3CjlNhyq2qnhRmG8NIEDkdjUBpyjHrM5aq6mLmxHzN6d
         1GfQRtUiJ16PMbCFjE9PWVttzBies4w29RGvAXzTDrbQ0Jr43+IxWquYFdoMi/waqnjt
         LOtE6akzQUjS7J4M90rcbR3yvGhpIRFhZrc4bQ3RQIqiltDnpVxih3pXTaF0dgzCF7YQ
         pR8w==
X-Gm-Message-State: AOAM532h6rJ5QA7aZpjCPOzzamVg6qShwxlGjVOTTpHcA+VkB44izbDg
	skU4wdYV7UZnL11va6bhEUZGHSIbQHjYGtiPmkE=
X-Google-Smtp-Source: ABdhPJwftibCIVeoo7hkGjvO1dujOpJc/fXpD2sAfz1fGqhOgjURvDnCgZ/AF33tTB6wr1Ky+1lb/HWCeF6/CQocFFQ=
X-Received: by 2002:a2e:9f41:: with SMTP id v1mr2879220ljk.383.1590573777468;
 Wed, 27 May 2020 03:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
 <20200527091612.GY108868@korppu>
In-Reply-To: <20200527091612.GY108868@korppu>
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Wed, 27 May 2020 12:02:46 +0200
Message-ID: <CAEhQi8kyydmmLSwNEwCTtj-=GRUWGOLgy8B+-OHoLfxcdEPNqg@mail.gmail.com>
Subject: Re: [yocto] what to expect from distributed sstate cache?
To: Mikko.Rapeli@bmw.de
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Thanks for the input. Regarding docker we are building the docker
image and we are using the same image for all nodes so should they not
be identical when the nodes start the containers?

Thanks,

Den ons 27 maj 2020 kl 11:16 skrev <Mikko.Rapeli@bmw.de>:
>
> Hi,
>
> On Wed, May 27, 2020 at 10:58:55AM +0200, Mans Zigher wrote:
> > This is maybe more related to bitbake but I start by posting it here.
> > I am for the first time trying to make use of a distributed sstate
> > cache but I am getting some unexpected results and wanted to hear if
> > my expectations are wrong. Everything works as expected when a build
> > node is using a sstate cache from it's self so I do a clean build and
> > upload the sstate cache from that build to our mirror. If then do a
> > complete build using the mirror I get a 99% hit rate which is what I
> > would expect. If I then start a build on a different node using the
> > same cache I am only getting a 16% hit rate. I am running the builds
> > inside docker so the environment should be identical. We have several
> > build nodes in our CI and they where actually cloned  and all of them
> > have the same HW. They are all running the builds in docker but it
> > looks like they can share the sstate cache and still get a 99% hit
> > rate. This to me suggests that the hit rate for the sstate cache is
> > node depending so a cache cannot actually be shared between different
> > nodes which is not what I expected. I have not been able find any
> > information about this limitation. Any clarification regarding what to
> > expect from the sstate cache would be appreciated.
>
> We do something similar except we rsync a sstate mirror to build
> nodes from latest release before a build (and topic from gerrit
> are merged to latest release too to avoid sstate and build tree getting
> too out of sync).
>
> bitbake-diffsigs can tell you why things get rebuild. The answers
> should be there.
>
> Also note that docker images are not reproducible by default
> and might end up having different patch versions of openssl etc
> depending on who build them and when. One way to work around this
> is to use e.g. snapshots.debian.org repos for Debian containers
> with a timestamped state of the full package repo used to generate
> the container. I've done something similar but manual on top of
> debootstrap to create a build rootfs tarball for lxc.
>
> Hope this helps,
>
> -Mikko
