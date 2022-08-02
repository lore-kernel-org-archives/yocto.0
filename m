Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E29EC00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 16:30:23 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web12.8459.1659457817053904083
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 09:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BAwebrof;
 spf=pass (domain: gmail.com, ip: 209.85.208.173,
 mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id q7so16150691ljp.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 09:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Vt0Q3S2NJSGxN7/dfgG1Pd33Bdzc94Hj7cTYjQJgHQc=;
        b=BAwebrofy7cx3BGj/5GvsnGsQgTagt6QkBtPjwjBF95oE0ZlayGt3i5M/egrR9u73c
         hKHWOwdZR4fCYmGniPYTa5WWN9owwEbFfOvGc9AFtmt4gaNmnffA/o/Zw8aYKXQkaTIM
         tWx+/ebH5inIHNYkmMJCRGk1gt5X0ngzIt/KOFqItnJyg8iFFlTt7LRfKoqpeSWiZ+Rz
         JBMNcimmEREpOiIQDApK68GOt+Pev/4bt4pJssOANhySkDF1rqapf8HGbzxihGBov71B
         bA2OEzwa7QTk+YIOMlooi51LqwSIbOpHx/ch1DAdXU9JAef52hyT5MVdRAibPFwNoMS7
         mf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Vt0Q3S2NJSGxN7/dfgG1Pd33Bdzc94Hj7cTYjQJgHQc=;
        b=J2T/QDy+ve8POfInVfPp+hSoLSPs/qI9TZBRqGWD5VMslVY9WAQ//AmkB1YF4awnel
         T7sa7DoKxm3nvDWsZgRmmSq0/o1Yl/9kyTTi39euY7iVwMuHkdP/fs99mXhXhELPlESq
         196okRp6TcZfXbAwNSubiNkIAiioydgWZ5dBf+bECsRMxNzfkrmfLWK8SRzPPvwb+z5I
         +sqptYz7UnzwG7c82YpCFdfDZ4pDUlSSk95pnsq4Le1KXyc3guF9BieButyumlSEpW48
         WfIwWOVANVLmdcDTgVmJHKcmh4LQrbEvgq64Vh6FcLvsNM6fNkmdymO7sPAds6VFG20M
         pyXQ==
X-Gm-Message-State: AJIora+SCuOLSjLXUa/3TOqwhG0+vLGDJB7keo+UO9VaMp1Wq+gRAWmN
	FBo0MU9uZX+OnsKMME9lLjpiHTTQmjKmFCaQChU=
X-Google-Smtp-Source: 
 AGRyM1spp/b1nrrWSd+RnO/UX3iBu8H/DC9DC4kgdZlz9ZQRoC1F/vP73GT9jM9mmIoiqsPdqoOX36paKS4eO0aSMeg=
X-Received: by 2002:a05:651c:a12:b0:25d:9ab3:4b38 with SMTP id
 k18-20020a05651c0a1200b0025d9ab34b38mr7260512ljq.409.1659457815148; Tue, 02
 Aug 2022 09:30:15 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAODMxsLgFeENYpTGMJO=Y7QQUF_2Vg11STnY+cmeJXvHrdAtzA@mail.gmail.com>
In-Reply-To: 
 <CAODMxsLgFeENYpTGMJO=Y7QQUF_2Vg11STnY+cmeJXvHrdAtzA@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 2 Aug 2022 18:30:03 +0200
Message-ID: 
 <CAApg2=RJQ8W3hVs6S1HuUg9uM_LcNvwupMQxi_far8JD54S26g@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 02 August 2022 (WW31)
To: Neal Caidin <ncaidin@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, openembedded-core@lists.openembedded.org,
	Stephen Jolley <sjolley.yp.pm@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 16:30:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57740

On Tue, Aug 2, 2022 at 4:49 PM Neal Caidin <ncaidin@linuxfoundation.org> wrote:
>
> Current Dev Position: YP 4.1 M3
>
> Next Deadline: 22nd August 2022 YP 4.1 M3 Build
>
>
> Next Team Meetings:
>
> Bug Triage meeting Thursday August 4th 7:30 am PDT (https://zoom.us/j/454367603?pwd=ZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
>
> Weekly Project Engineering Sync Tuesday August  2nd  at 8 am PDT (https://zoom.us/j/990892712?pwd=cHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
>
> Twitch -  See https://www.twitch.tv/theyoctojester
>
>
> Key Status/Updates:
>
> YP 4.1 M2 was released
>
> YP 3.1.18 passed QA and is due to be released
>
> The debug file mapping issues have moved slightly further forward thanks to some help from Ross but are stalling due to insufficient developer time available to resolve the issues.
>
> Some rust toolchain improvements did merge, including an automated rust toolchain test. The bulk of the rework is stalled on a handful of remaining issues, particularly a couple of reproducibility problems but also a mips n32 toolchain issue.
>
> We have one open CVE on master against qemu, help to backport that fix would be very welcome to keep the numbers down. CVEs in kirkstone (LTS) significantly reduced.

Do you mean CVE-2022-35414?

Regards,
Marta

