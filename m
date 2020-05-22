Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.12987.1590154638788261175
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 06:37:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=UG1p4s/o;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 292F6E01BDF; Fri, 22 May 2020 06:37:18 -0700 (PDT)
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
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E83E01BC7
	for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:37:16 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id z6so12614256ljm.13
        for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e27mrNdPM45zr186ijGeK4xjBR7kUz5Tx/G2YqyCAwQ=;
        b=UG1p4s/ouIM21NLf0s325qviYGQ+i2W6JSurKRg9qRGt+LbHkj9RRr1CWM40FazjpQ
         uF7OPpTi0h+7UXVAYHRpxERl7ksp1gxq18Kv4PmfSxFXH8dRnDS2qKg2ApeJafiunAJ9
         72Eiz/XbFAOV6zKdqe0VPhizVPAPc97BmPQV72uS4cEal4tTqKwIhiAYRrehaXAacKz6
         ec+6Ti5uzOU9axTX007C+FWpx/+Y824N0X90t2GB+Ddb0o4UcZ8asEsqFi2DcgMmxhcD
         fJNEIneLb7ObwonMFzcoaPV7F+8n8zbebf5pkugxRhyhn/63eiRWnefZx+T4fk9UfgmI
         LEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e27mrNdPM45zr186ijGeK4xjBR7kUz5Tx/G2YqyCAwQ=;
        b=Ixh0yGAxjHJbUreLR2Md9IqefU16bFTyo4+MIeBjoPBm0PqQPhQxkMArZP5K+z9Kpu
         OuW38v6nnSd5PrzDD6z39jjJGhN5PfXgBCY4dTLeIybTOcP8j8Hvm4mCsKINl8WkIipy
         Hh+KgG15MjdwI4ukcG3DmHMS6uBDJmhqDtxq6Pexe6kKuWVY8ow+SNjvevgWPkQdKxLi
         CRnde/BvUy5Z36ZPYeCjV6LqYoqx10e9bO4uycit9KVjFDnE0FG5q/KSTucljLYPOfxT
         VMf9juukIMRavn1dGNXi8UNwS2alfBXSasazsnWX6yiQE3xd3NjoKHSdVqm7hu3GnQZt
         emIw==
X-Gm-Message-State: AOAM533MFfRmCTJwNsWyx1ZCGTLnvLJCoUJqAeHpI2/GdAaND824dM1r
	FW65wq354yuhIne7yZk4do9Zd921/efEOTE8EF9teg==
X-Google-Smtp-Source: ABdhPJxu/kO/h+uZhQS6IQOd5q6M4rSto4NxY7pIj/3w+5ZLQUbJVvtABLlXi1fsvmnXOOo8JzjkFS/B/jHKjaP06w8=
X-Received: by 2002:a05:651c:11c1:: with SMTP id z1mr5149145ljo.352.1590154635528;
 Fri, 22 May 2020 06:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
 <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
 <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
 <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com> <CAM9ZRVtN371hZaR1-b8sdPcxfHSo=QkuHdvin8xgNvicAcqMHQ@mail.gmail.com>
In-Reply-To: <CAM9ZRVtN371hZaR1-b8sdPcxfHSo=QkuHdvin8xgNvicAcqMHQ@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 22 May 2020 14:37:03 +0100
Message-ID: <CAAnfSTuZJqF67pw28Z8pv-dgYDAtDjagvHwiuZgfkb+xC5Durw@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: Paul Barker <pbarker@konsulko.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, zangrc <zangrc.fnst@cn.fujitsu.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 May 2020 at 14:31, Paul Barker <pbarker@konsulko.com> wrote:
> > We could have a recipe in oe-core with this in, or just drop it into
> > the python recipe directly.
>
> It's packaged on pypi: https://pypi.org/project/betatest/
>
> I need to do a new release as I tidied a few things up and added a
> subtest wrapper after I published v0.1.0. This gives me a kick to get
> that done :)

Awesome.  I endorse a pypi recipe shipping that, which recipes can then re-use.

The next question is how to integrate that runner with pytest.

Ross
