Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64238C3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 17:51:04 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.27532.1747763454262495396
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 10:50:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Iu+UBDPS;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6f8aabbffaeso54720356d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747763453; x=1748368253; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ug/E9hy01LP9q6BWM5byaB87nLZ8WZug0dLBOEMLNsU=;
        b=Iu+UBDPSVCgRaqPrZlvQ6oSBip1zBaED2PV+NHNXSuVt8VXtlSQNOiTeuT1Pa/YKy3
         7r5Nj4gctgP4aTl0XF8Yd4tCDyplcwI19CCrPt4PADmmy5VEhwEywRsRYMdQqRtK8Vot
         pC9omSkyUfYKyK5HOCj7896D2HTrTbhYySaY4tRBduUrDRQ9bek6jj92FjyLnvIbkagS
         Jrj5tctm4sq+rRrhRP62Q73hv/8QSeB/gP3uXndDK6UqDpSVg1L2x1fQcuu//d7o41UW
         E6L7glrLbNWr932eFU6HY6o9hhBsM3LMTzqZYbeZEC+EdZxt7clCVWViQ/3jX+xfChBW
         XUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747763453; x=1748368253;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ug/E9hy01LP9q6BWM5byaB87nLZ8WZug0dLBOEMLNsU=;
        b=T6N8teExhL+4KBKxFvdkfAfLIu5C7Wi5d26njhCDTBTo5XMzbKszNpqLXALZLv/f3t
         hkqFVqzcX/8sKvlfaOlo1uamYl/q/X7xesR84Al6qj33eRS4sWTQ9YZkovEF3T0zN6za
         0XSHYndPCk1epXCZAn+VArgpMvOLF+4HYOOZ02DIen90QGyKIxgxyf3KTV8UCjrx3hhC
         sFmK4qXHlc8C4GVy7xTU7uUEbtHjQ+sww3g1SMU1DalRuAzLf6v4oy4RbD7wgfFhKMEh
         nLBbljrbipP5TRcjjgu1nOLY/E3nLQ6HZgkAuIYG7vq8x4dJYRLSZSylQv0NmhMF/39C
         Gdcw==
X-Gm-Message-State: AOJu0YwOeoGY0lDjithSx3N8wpLAfYkNRKABnhbNFGOggbiKW37SHGt7
	hQiW6lyAS/C9IehRCBjJi4Ympu06bKiq2EwhLWRU22p9vv2Xw66mQvFpWgzSmT4/8mvEA6rMxjW
	EkL9Uxi8kXR9EGOHRTEVmAbx0d5l5Ivvv7JZx
X-Gm-Gg: ASbGncuXYRZs6J38gJ9oRT1ZtzfSJ5amXOxLwzw3m/h9mUgjGyRK4mCWlox9fcloAP3
	+vYgRr8KZ7GBVr1wL/Qondf6FcuffonwLc6S95Q5E39fK2RlM1BlBAWtdUikLjAUFvoW6PoXjV8
	l8BGmGNphh2NLqcCE6JXEhU87wGAaXE/hTpA==
X-Google-Smtp-Source: AGHT+IEwtOGL4g3hJgfDZmh3zJuc4iGdTqyU2W+WajbElIuMLXiDUm8SUTCqT5pAuT0wauC8+8H/T6xoESdgyUyfkYI=
X-Received: by 2002:a05:6214:da2:b0:6e8:89bd:2b50 with SMTP id
 6a1803df08f44-6f8b2cb9a48mr285520516d6.7.1747763453128; Tue, 20 May 2025
 10:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
 <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com>
 <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com> <18414D6A60926FCA.30463@lists.yoctoproject.org>
In-Reply-To: <18414D6A60926FCA.30463@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 May 2025 19:50:41 +0200
X-Gm-Features: AX0GCFue7cc3U9eAO6ZX5SM1LfcK9dyn36DcIa_29H80d9Q11QSdIUX_YFks09I
Message-ID: <CANNYZj8hw_5f23m_Pk6OQNgA6Gs36W51Ji+jcJZajYpJf71jgA@mail.gmail.com>
Subject: Re: [yocto] Only build the packages that needs rebuilding
To: yocto@lists.yoctoproject.org, MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 17:51:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65379

On Tue, 20 May 2025 at 19:47, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> On Tue, 20 May 2025 at 19:29, MOHAMMAD RASIM <mohammad.rasim96@gmail.com> wrote:
> > So i still need to build the image first to have the cache, which takes time if i have a modest machine specs.
> >
> > Are there any public sstate caches that someone can use?
>
> Yocto project publishes the cache that is used by its CI test
> pipelines. If your target machine is qemu-something and your config is
> standard poky distro, then sstate from that will match, otherwise
> there will be misses, or it won't match at all, depending on how big
> the deviation is.

I forgot to give you the config:

BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
SSTATE_MIRRORS ?= "file://.*
http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"

You might also see good matches for targets from meta-intel and
meta-arm, and some other layers. But again, no promises.

Alex

