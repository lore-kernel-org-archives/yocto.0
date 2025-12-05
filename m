Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CFAD339A0
	for <webhook@archiver.kernel.org>; Fri,  5 Dec 2025 17:21:28 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.238.1764955280973876759
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Dec 2025 09:21:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IHwOpnMs;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-880576ebe38so23808266d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 09:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764955280; x=1765560080; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d4yTP9cLzLSuOZfAiaYk53UI8gaYZySq/S+dESRt1eY=;
        b=IHwOpnMsVQmeBUDSje5uLVNwU6VRWDkqxRO5KdEzAZjcRKeRqpMzFj9OEUnFRy7t+R
         SCrtCNRCUi36IkOSOZXV8xM6xzQBk8W8TxyE9PH5XC5o9tYSqsDfSM00W/RiUiWxn48I
         M8EZpfZfzWDPReRcPkns0HA+m3xJy6jB1YWIl1aC56W4DRlJkHtW2Vv3mw1a4smI49bH
         j8+mRLKrbvP7DmApbstn75sPVE4N0hZlmfFSWmffH0BR9qIURBN0ZCDCrUlzfbqDrJxF
         7GzoXEQd9leDHVkX0CR74qt9VZcouY8rnAxlPE8Cmw3pX5+JWyc4HVKYiOg5UNS7HXS+
         3jHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764955280; x=1765560080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d4yTP9cLzLSuOZfAiaYk53UI8gaYZySq/S+dESRt1eY=;
        b=eXzy2kN3RjQsGk8fo6VMCgx8Wdxur2QYZp1N0gFXAdr5EV8K2JrzZRBg8G0z2VgTTf
         ks4ZPEN2NaZbiTQwInMsdUjvBPwnHb1LUA4zH0aaNW0xyzEFdzBVyxjDgQHA52YsVCHR
         DcUnd91Kh9JSsg/jTholo6HaL8LxHbEZoz6Y0hv60/mEbT7AsGvubbU4qkxwjTpa8JTx
         Gr5gp2LyNiHuZEChzVGOf7ALy5bwFHvl/XLKei8FMKYVA4ZNynnvbAxZxsFrQSumUgpP
         I/X4iarp6FMhNiJlfb1Wu0Px1N90zYguebBjQRguaDnMEr2I3ajXn4/l8NsL/v777AEZ
         R5Og==
X-Gm-Message-State: AOJu0YyXIrqvtSxrcIhKR9iaJ0Uyy07rqklvSAARgWXI4IEZ/JwY747I
	mwqFehrJEUBx1KY7Jv8mOjwG0bL+Jx/m80bwhsPehD5kmyY+NBjh9Q+9r0s7V7w9T0zyHIJBZdL
	Q2A/xdzmKZVnis0FhQmKMJ7IEzth9GAIhxQ==
X-Gm-Gg: ASbGncuYIT2m1co30YevMB4+R1a67hBU/Wvxf7KScL47gExHRtchhBzcbF7jZiPLekZ
	FzFpFMvkRbHFSNOemAYHCB9XUrHQM70W5aCowY5ninS5c3BD611pqkZextEL4nO0yIbxkTeozL+
	IHIJPlyIoKG1Cpspn4UK2WPN27O2QzkMz85f9HRB9jem1xgJXvBprKVN4HF+Gn3z/UkgefPV2Bb
	i4pRual4nISZ6AM3B3EGOAid93IagvfjsKciFveQjyS9O3kYa5JMqddcqYlKiBpvVEWtaA0E31W
	ZWnxW7l8N6Gr2732SDIY9oinF0VHMw==
X-Google-Smtp-Source: AGHT+IEL8ceNTsfz1dh3I9JIaJiN1+7LxI39SjnL2u/OPYvbph5F215NST3XNquEV1cIroas+knSK6yO7FJeJgLus5Y=
X-Received: by 2002:a05:6214:ac9:b0:7e3:cc6e:3c89 with SMTP id
 6a1803df08f44-888248b7d62mr127790786d6.56.1764955279978; Fri, 05 Dec 2025
 09:21:19 -0800 (PST)
MIME-Version: 1.0
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com> <96936.1764884505239996619@lists.yoctoproject.org>
 <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com> <123016.1764951634952562755@lists.yoctoproject.org>
In-Reply-To: <123016.1764951634952562755@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 5 Dec 2025 18:21:08 +0100
X-Gm-Features: AQt7F2oVtk_X5vUzttogl6wD6dRZj-VvgVeWNGqMEhEoh6DuK_HZWc5eTTvqh5k
Message-ID: <CANNYZj9gF-rbvhYQhEMZUgdkznOxpcwqOPUjc8ZEdbL1VAU0Yw@mail.gmail.com>
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: yocto@lists.yoctoproject.org, christian.leeb@hitachienergy.com
Cc: Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 17:21:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66093

On Fri, 5 Dec 2025 at 17:20, christian.leeb via lists.yoctoproject.org
<christian.leeb=3Dhitachienergy.com@lists.yoctoproject.org> wrote:
>
> Thanks a lot, Gyorgy, for your feedback. Maybe a bit of background what w=
e are trying to do.
>
> We have the following situation - we call it "top-up":
> We start bitbake fetch as described with DL_DIR containing the sources of=
 a previous release.
> The state cache is empty.
> The idea is that bitbake fetch only re-fetches repos which are not up-to-=
date.
>
> In a regular release, we always fetch all sources anew from upstream (deb=
atable if this is the right approach). At the end of the release we archive=
 all sources of the dl folder. We do not archive the sstate cache.
>
> For reproducing a release we take the archive of the release and rebuild =
without network (BB_NONETWORK)
>
> The motivation for "top-up" came from last week's outage of cloudflare: w=
e urgently needed to issue a release, but one upstream server was down. So =
we used dl archive of previous release, removed the "BB_NONETWORK and hoped=
 it would fetch the missing stuff (in my example some commits of the kernel=
) and then we can build.

Keeping DL_DIR between builds to enable incremental fetches is a
standard practice used by everyone, and it works, but you too need to
do it regularly to ensure there's nothing strange in your
configuration that gets in the way.

In your builds you either throw away DL_DIR, or you use it only in
offline builds, so incremental fetches are never happening. It would
perhaps help to look at log.do_fetch from that task that was supposed
to do an incremental fetch but didn't. We'd at least see what it tried
to execute to bring in the latest commits.

Otherwise you can try with a test recipe and a test git repo: make a
fetch/unpack, add commits, change SRCREV, make another fetch. It will
work. Or if it does not, we then have a way to reproduce the issue and
look into it.

Alex

