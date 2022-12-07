Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B6C352A1
	for <webhook@archiver.kernel.org>; Wed,  7 Dec 2022 13:37:51 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web11.15339.1670420269302538582
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 05:37:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=West3hRh;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id h6so5996605iof.9
        for <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 05:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GNy1Fl+NbANslC37plAqwuceN5PRP6TOCRbREkQHQXw=;
        b=West3hRhbmvpzuBCCquhALGC2Yecww+rijIKZhVvKLagwQ4Mzx5UoCCvsfIERqLugc
         HmcYOSBM/tJFLFriCqe3iUGgi4ENqGApVeHECRJhHy/faX2OyZcPXjNSyhD9qMxi9LSk
         6oc/Y2d/jES5LbzuaDzbKMuB6aPTcKFj1ziTF57wPvS6GsCE4viCXibgkBM520kjAe8n
         n3+2PoNdv4mzL9VX343mLwLIgfeCXBt8+D7oPagyYEiPtG5D+25hqy+wqLPn0ge7SM1l
         9f3E7YJfUQRHHzdzazuDfRVAdOp1PmBesEUxgVijYAMhzutH2JrQb0o2peti3suYd3aL
         ZpkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GNy1Fl+NbANslC37plAqwuceN5PRP6TOCRbREkQHQXw=;
        b=RfQ4lDrIE71j+p+j/S9qQk6VYCMVlx6AD3biqqKkX1LrVxagAEnAXS3bMwR3dTyxQl
         jc4G42+5YR2jdoT4TXFmGSIc8Lg3gGav/KGn1klxwCdUBY1D9i7icD3kVvSoFH7qzgTo
         vUFvB2QEBhMa9Qjh/PcUcv+VHEkcwBww+2+d8zht3jmwNO2HnwojFSo8m4U+y/8LzEPt
         mdeT6yK/ctnOxUTppgiNlwoTFixG6aJumXkDmoIZDgmRAlUqcLFH5Lh1STgj5gzRkTJT
         YWatsxH9bp7xx32Baf5wv8wzN+Dr/ir8y7NU+/T1v6/Onctfj4ALaYyPmRmcmozZHP9o
         idaQ==
X-Gm-Message-State: ANoB5pnJOJrNJy2jtJVKD4A46lYam9xf775QjC4G6GRRgaxbPOlvRu7N
	6Tu+f1/AJDzM0uOWT43qcj6N8LS3LRKEd8tU68I=
X-Google-Smtp-Source: AA0mqf5AeazMO2HZzxnD2MFP8f5LWQr6aRVbf6BcW7zrA2rUc0ub/7Gy8pq3vRBn1Iqu2N47rxcFQGvlk2RFSpqkalI=
X-Received: by 2002:a05:6602:3997:b0:6d9:f687:d19d with SMTP id
 bw23-20020a056602399700b006d9f687d19dmr42646434iob.160.1670420268477; Wed, 07
 Dec 2022 05:37:48 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
In-Reply-To: <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 7 Dec 2022 08:37:37 -0500
Message-ID: <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: Christopher Friedt <chrisfriedt@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 13:37:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58746

On Tue, Dec 6, 2022 at 5:07 PM Christopher Friedt <chrisfriedt@gmail.com> wrote:
>
> In all cases, the problem is traced back to a Makefile, where
> something calls $(shell git ... ) to get a git version.
>
> I was able to find out because one shell had executed a script called
> scripts/setlocalversion that looked kind of suspicious in terms of
> error propagation. In this script, if I manually echoed "1.6.0" and
> then exited, do_install would not hang.
>
> Some early discussion suggests that it might be avoidable with 'set -o
> pipefail' in the shell, but I haven't investigated further.
>

I don't have anything super helpful to add, but when that git command
is hung, are you seeing any stalled network connections or processes
in D state ?

It wasn't clear from your first message. Are all native processes hanging
at do_install ? or is it a subset ?

Bruce

> C
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58743): https://lists.yoctoproject.org/g/yocto/message/58743
> Mute This Topic: https://lists.yoctoproject.org/mt/95499663/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

