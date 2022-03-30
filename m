Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FD92C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 17:24:24 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web08.783.1648661063627880253
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 10:24:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NPL6o2bz;
 spf=pass (domain: gmail.com, ip: 209.85.160.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id t7so18690716qta.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 10:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A/1cJ01KXh7+VMIYCVyu7BSsrIACGnXd5c+3PE1uSp4=;
        b=NPL6o2bze/sOUt+rCyKL9B+K0OPQ5Nw5mKko6dygZVGgoX85Y1xnuZL7mNd86GeZHj
         NIVnZDAjP6SXsCkrpbYCo8aqfM+5J3EEyGnVInd32/LGpIFCsUTvLqbbzGP2mWqdBTwl
         m2uAv2cmYfE49ycl0X4I+IsoGJzwhUwpcTKqJeLMnpebYf9wvKZPprbTReCRj9XsaoeI
         ZZQENDIFvCn5EcU3WkjnTQhC+mzBSNJKboFKpB6YT5qbWRSuwD5OCpZKP5xnk+rA5Rci
         UdwouSfZfHz4K1UUN/q1cSiM04yueAbqsc16VtBYo+2qTevPN/R9mkADUw6up8DBDivR
         Ew3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A/1cJ01KXh7+VMIYCVyu7BSsrIACGnXd5c+3PE1uSp4=;
        b=ZnwmejHRY1qIq7nY+8uMYj+CFOYwM9sBzwA9xbNNWk5963pvYbivFVo2q3cNh1uz5M
         OOE/64GIo/Q12Pgv7hRu1T1+9h6d6zERz3jagM5ZP3Kf80kMKqsPBDqoVqes0DVlxbIJ
         sYgcTAc6V0wXlTecCaWcJKkTtJ7CcTC+9i3WkgqqkUXt6IzOuMAud4en0RM2kItrAEpN
         Rq+ZgBOgHm+HFSU+Xp7whgzFT91a+77wksq7dZV5vTjVpNP8mxQOz0NKt7XIcIFaQYfM
         94qxt93hyYVjKl8WXPbMv5HsFCcnyi60/bTts1x/FNneX+YpNhuyH5DG77AES3eQo4tx
         84Yw==
X-Gm-Message-State: AOAM530/WGANA7ACiNktPZlmE5YElPn6Wgxt/f6FEtJGG8RBQ40dj/rK
	BV5DRhH1PTKQms3spvXbNKv1GRGzkaIkigti22E06iq/
X-Google-Smtp-Source: 
 ABdhPJw7dakRiQNxd3uq5Ox7CNz2W05OuxIiYYUUG9OrNkXdGbcVM9rT3JXvmHWN7U+tqgxoeZBerbj0SX6wpslwqdw=
X-Received: by 2002:ac8:5842:0:b0:2e1:aa10:e7cd with SMTP id
 h2-20020ac85842000000b002e1aa10e7cdmr595513qth.330.1648661062521; Wed, 30 Mar
 2022 10:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <16E122970083F378.12707@lists.yoctoproject.org>
 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
 <CAAnfSTvsKf6DBeWcYLXkdEfRmN9Aa23QD-qqC3zaj6==q24SmA@mail.gmail.com>
 <688f29903f6c8321a3a235f3bf9b1bd66c20e823.camel@linuxfoundation.org>
In-Reply-To: 
 <688f29903f6c8321a3a235f3bf9b1bd66c20e823.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Mar 2022 10:23:56 -0700
Message-ID: 
 <CAMKF1sqcBOCL=v4hOLhNb=knt_w4yXxq5fps7B-_evH+pBAG5w@mail.gmail.com>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ross Burton <ross@burtonini.com>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 17:24:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56606

On Wed, Mar 30, 2022 at 4:29 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2022-03-30 at 12:18 +0100, Ross Burton wrote:
> > On Wed, 30 Mar 2022 at 12:10, Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > f) Switch the problematic recipes to use shallow clones with something like:
> > >
> > > BB_GIT_SHALLOW:pn-binutils = "1"
> > > BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} = "1"
> > > BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "1"
> > > BB_GIT_SHALLOW:pn-binutils-cross-testsuite = "1"
> > > BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} = "1"
> > > BB_GIT_SHALLOW:pn-glibc = "1"
> > >
> > > The challenge here is that in order to be effective, there needs to be a
> > > PREMIRROR setup with the shallow tarballs on it. This means we couldn't do e)
> > > above and have this have much effect unless we craft some very specific
> > > PREMIRROR entries too.
> >
> > Even without premirrors this is a lot faster for glibc:
> >
> > $ time git clone git://sourceware.org/git/glibc.git
> > Cloning into 'glibc'...
> > remote: Enumerating objects: 6956, done.
> > remote: Counting objects: 100% (6956/6956), done.
> > remote: Compressing objects: 100% (2938/2938), done.
> > remote: Total 670093 (delta 5328), reused 4750 (delta 3932), pack-reused 663137
> > Receiving objects: 100% (670093/670093), 205.19 MiB | 16.39 MiB/s, done.
> > Resolving deltas: 100% (573265/573265), done.
> > Updating files: 100% (19011/19011), done.
> >
> > real 1m56.255s
> >
> > $ time git clone git://sourceware.org/git/glibc.git --depth 1
> > Cloning into 'glibc'...
> > remote: Enumerating objects: 18809, done.
> > remote: Counting objects: 100% (18809/18809), done.
> > remote: Compressing objects: 100% (9704/9704), done.
> > remote: Total 18809 (delta 8812), reused 12185 (delta 7968), pack-reused 0
> > Receiving objects: 100% (18809/18809), 41.79 MiB | 11.96 MiB/s, done.
> > Resolving deltas: 100% (8812/8812), done.
> > Updating files: 100% (19011/19011), done.
> >
> > real 0m8.701s
> >
> > A full clone fetches 200MB and takes 2 minutes (a lot of that is
> > actually resolving the deltas, not the fetch).  A shallow clone of the
> > current HEAD fetches 40MB and is done in 8 seconds.
> >
> > Why would we need a premirror?
>
> The code doesn't do "--depth=1".
>
> https://git.yoctoproject.org/poky/commit/?id=27d56982c7ba05e86a100b0cca2411ee5ac7a85e
>
> """
> This implements support for shallow mirror tarballs, not shallow clones.
> Supporting shallow clones directly is not really doable for us, as we'd need
> to hardcode the depth between branch HEAD and the SRCREV, and that depth would
> change as the branch is updated.
> """
>
> Put another way, you didn't specify a revision in your clone above and if you
> try, it becomes rather tricky.
>
> To make this work we therefore need a mirror with the shallow tarballs on it.
>
> Just for info, the binutils mirror tarball is ~1.3GB, the shallow tarball is
> 65MB.

right, I think shallow clone should be default IMO for all git fetcher tarballs

>
> Cheers,
>
> Richard
>
>

