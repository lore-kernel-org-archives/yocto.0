Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C2FEC38A2D
	for <webhook@archiver.kernel.org>; Wed, 26 Oct 2022 19:18:53 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web08.90.1666811923472624022
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Oct 2022 12:18:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SWRiFuBK;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id p8so30708490lfu.11
        for <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 12:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QfSqQxcjMrtMfjUfzGtnMSyef2bOR3m+OlDnoJpH5TU=;
        b=SWRiFuBK75/PRPULKoBkZBBTLTobfknY/YG27rGpTkFKAgeGcDR1awU3WU7LmR87EG
         w90Zavibdp8CF8KZeDrVIKW+n7jYpJP8kKH/CHVoCShNCD5347nVYLjY+uKAUKq4dbSC
         Jt8vRJ3YUvPDeTYNaNTDeXkCWrgt4RMZjsBS4LCwYxRq6hjRqD63bEXD4TE/XRhClOmR
         2PNiquOA2avp8o0RRCwMLObAfDvdjMbIEo3L3t+fETQZGUNNfagVGVOcgv5DVZLxGZFQ
         T/tVnWXcn+tudogh2JmgApa6Bv1RXE7+BKBQlioSrloYZ252bhoZ25FOfLmKZ+fn2Dmu
         YGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QfSqQxcjMrtMfjUfzGtnMSyef2bOR3m+OlDnoJpH5TU=;
        b=RCrELpVeKsNz2Hp6QxMUOmTiq5YODfweHpDlIVJdJsOFcnzg3F09gYsYUPX0C41lj0
         kduIYAJUJ8rHo9naounJ6KI067kG99ilLJqLeZjptAX64kOFOharodvMMs7Tz4yTR/BR
         ON1KHNrtMSp1CARjSv5pZLLQjh3bWuK+nG9JxvR1/Vi5SYFFDpE61GDEqT/i18lUvhVk
         utXR8dOIJtoaQSdCq0ZittpnJVotCtwca1sGDJZ/kRzO3v+mtiPjI7Hc7oTaC6VwpC8o
         3GrgsYzLlXgf9sLEQN5hqJijk6qtoTNCriSmVkEaJOMPtBMvDAdX+LKlwywSU64oQpvt
         EH+Q==
X-Gm-Message-State: ACrzQf0WC0nt2dJQ0mn72iivH0KPeI96jeko2r0giHO4Ttuu9AmGAAJJ
	Bpn+jR3VF/DrC9HNNv0VNjixJWDm7Z7nrdY7cJgpjmCl
X-Google-Smtp-Source: AMsMyM7y97HmCbiIh7X30FMoUOpFFrcSSrTrAAcnuVbUubZI6zQOTiXY0XOxP2nr/FkV2gjTns+bCYFOnglquPeZ1ss=
X-Received: by 2002:aa7:dc06:0:b0:461:b683:5fba with SMTP id
 b6-20020aa7dc06000000b00461b6835fbamr17337027edu.72.1666811911415; Wed, 26
 Oct 2022 12:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <87baa7a6-ddcc-10d5-9fb3-11d05738ea67@kernel.crashing.org>
In-Reply-To: <87baa7a6-ddcc-10d5-9fb3-11d05738ea67@kernel.crashing.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 26 Oct 2022 14:18:19 -0500
Message-ID: <CAJdd5Gb9w-Ehbfj3GFSJzghr_trtv=_-ADWPE6VozROSXg1khA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] Branch for langdale?
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Oct 2022 19:18:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58420

Ya, I'll push one now

On Wed, Oct 26, 2022 at 2:17 PM Mark Hatle
<mark.hatle@kernel.crashing.org> wrote:
>
> Doesn't look like langdale has been branched in meta-mingw.  Is it in a state
> where it can be branched?
>
> (I tried master and it seems to work for my use-case.)
>
> --Mark
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58419): https://lists.yoctoproject.org/g/yocto/message/58419
> Mute This Topic: https://lists.yoctoproject.org/mt/94589220/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

