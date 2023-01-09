Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C359BC54EBD
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 10:39:17 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.68410.1673260755094823432
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 02:39:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fgEmPMZg;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id o7so8059400ljj.8
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 02:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=65/zgn7n+V2zQxcACNQhcslV6vWf7/K2k3/Eyk33r40=;
        b=fgEmPMZgadJ8aOTU4z6jMAoqLHwb/oMoh3TUhbkFy6XH8PYz9GGcI1mLUNCL4ERMpF
         v4WS2wHxpRegtcNpOOvGi++dTRi/wsfLZQillAMEPRCtZNYVjegDAwFhndyHRXv6TZP1
         BFhP8k0HNYxjxApqZoevnUtAj40QLY/6Ff14F5t1YXjwdYLkQJ0AyDy/TVxiZ+XjE0+Z
         u2ENtJca2oq2Qiq6QYYK6J10G8UFkjb8z5UBQM3fOT0JH2X8iRv+xqg+RN5mrofhtOvn
         qxJhGRZVGoisMBRHSgg371h18fLbVJ0KfqtGa9f8YY9QIiRcg28qrARYGIL0aCLPF5Sz
         2ZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=65/zgn7n+V2zQxcACNQhcslV6vWf7/K2k3/Eyk33r40=;
        b=mv2ewCR4URqxkJtdUSE3JJ+lexf0FcdpzlfRmTPhq0LMTAdGw2FMYNaqTJVAg8NZck
         mkI0r7c8nTTEHME4ol7AOQqvw7EUKuWlh7y3ljJ+aVoclsBiaLQSPj8xNlqeUAPl+jcJ
         XzQSwp5f6KyO5l4DuMfx0usNBEewDiA4bdbPtxAa5LlsJGgwSc+wKJDGHOAHd0oplZW5
         W4tv/9+n9zvNJWR5obHl+1DNwfpaSTsVFyk2dqZ1ByJNn6WXw6M1clGdJpLqcgEKIaTg
         b9L1Et4eCcqoPsWeXcDvRJb8mtKklMp5vPVAPlXDXOz1QOVGlp+vEH9WyWkfMbTipUop
         7Smw==
X-Gm-Message-State: AFqh2krtf4lpv1LqKm40hMx8zK5O1UmWEFpOeEBBEaQULfENPjHH8pVr
	1R+LgCbJsW/JmiwDp5pF3FxdKg3QE1oBLbLu62g=
X-Google-Smtp-Source: AMrXdXtVocWrQNrbl+xDzOaTPLR9eUg0XOuAyFGQyFn9x8Ycj21360wpcaQHn0rYMW8zpPsqAOJaA2dzVLeVf1ztmck=
X-Received: by 2002:a2e:a486:0:b0:27f:e99f:7f2c with SMTP id
 h6-20020a2ea486000000b0027fe99f7f2cmr1394958lji.222.1673260752927; Mon, 09
 Jan 2023 02:39:12 -0800 (PST)
MIME-Version: 1.0
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org> <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com> <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com> <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com> <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com> <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com> <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com> <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
In-Reply-To: <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jan 2023 11:39:00 +0100
Message-ID: <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, trevor.gamblin@windriver.com, 
	richard.purdie@linuxfoundation.org, martin.jansa@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:39:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58941

On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:

> Now it works I'm not sure what to do. Richard marked the original patch
> as WIP. Maybe it's not appropriate for including into poky? If so I
> wouldn't mind carrying it in meta-intel-edison.
>
> Or may be with a little work (from me) and a run on the CI servers we
> could make it go in?

I'd rather teach make/ninja upstream to watch memory consumption
and/or host pressure directly (e.g. similar to how it handles -l). And
offer any resulting patches to upstream first.

Alex

