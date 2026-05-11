Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A78CD37AC
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 08:56:55 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.46142.1778489808353837619
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 01:56:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=lmpaImAH;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8bb4e8a5240so45809916d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 01:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778489807; cv=none;
        d=google.com; s=arc-20240605;
        b=MBN5YA5pB+LCsL6tEo+E4yx2P4oo2VZ/FejV9igTt2MbRZmDf6mCQYlmlE4oB/dNaD
         aR96t6sn64APijZTxoEpRHY4OBEOz9viY5XFl/1RWrpjgvrxqDRE2B31ejPAHLWD7ZP0
         9/L4I70T8kOR3rtHwwjBBOmfRbjxeyju0iY2G02DjLPtIB776axn32H8wONtciEUxIZ0
         m7B8Sqqytnwr3UWGMciuiBAdVDEeeutZKatLCCQ7JFv3RWW1rp7lhV1+8Uvd65GKUrxj
         mRjpuQvjb8KsFH7mnKWH8d5s2XKOLDLtQKYejJxtYQVYIlFsOOxizslMiHvmriLV9BzN
         2SAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Esbj/c1j+jTihs+mXlRyOj70vg+7jyNp/LiI/WI3hEs=;
        fh=KDEgMEeanGUB3ncWPbh5aT2hbUy1Pe59mfg+8Si3Qnc=;
        b=Dwl8Fo3wMzyjnH1EisqAbWWn83MEYvNzQwTSKr/YVLOXHGtRS37g6VNcQAs5wc6k1E
         U6OLw8awrQIiqR9lrV1PBgPYZzlYuVjmwxMywixOz1MQBj8JUDVZRDep6znVGjOGpdSD
         ElrL7oWvkLDd2MYH+LLezkEcMcNW/l2zOFsNcoLUPJ3ru9YljuPvm9xKdKW4KIIbUM8Z
         J71bNBg+18hMrcov+Fd6EkX5sjHZAXojhSyGIlPw5fpG/Nct3qwyCm5BiTVgUFGpHakK
         qcOdSLRi4TEPPbvptH4WdnWdKiGG7aD5jLuRpscA4FsEHioYkDlX5HEHaCNOTqKi7bxF
         +liQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778489807; x=1779094607; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Esbj/c1j+jTihs+mXlRyOj70vg+7jyNp/LiI/WI3hEs=;
        b=lmpaImAHDOrpAqTo9ptqKvqaAG+8Yb1RNck+XxUE1V3eh2eLOMfauPn9ha4RwD1kMZ
         AGvaIiz1Y/aqAZw8jgbSc7XoyCthefvXsuV4laoKBwF7YGVu8LjbqZ9qSSDHoPZl1wF/
         E9Wel7jClQz2xkOd+OezMa5zDAK/SG0oMgKetgLMvFcaEt1Zo6plXK9luRji0XEK2exx
         GU8YlbvFrG5iTKxkkbcBMUYHSpwZ0jNmLsLQvrZHVso6W9JSjeuS+6AVGToXtl/b5zXU
         oJ0C581eef8xINE4Q19DsXEhfKqOGsHpwAJNmvhFd9w9Q6HrpWY5h2Zn4SXS7iWyZbhG
         yYXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778489807; x=1779094607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Esbj/c1j+jTihs+mXlRyOj70vg+7jyNp/LiI/WI3hEs=;
        b=Y9NK/Li/lDD2JbJ1Ika+odQbAY+Lo/J8Wu1dVhhLOgjaN4xJwBqvP57Cy5VR6InXoq
         m9/yqSSeuklE7XFD5gZvmU4qj3LawZwtJBk+V6aBEsunlxaGO1oKYx8uIlx58/7xAK/u
         zexuL2xUlCV7vkqmtJ8udI3kpZp09qKO7bXaGCfIbMSJ41+vFgDXQ6VHZYDbEUG+RHXe
         JIHr0C9+0ldoWFVRIGg6JxEHhhBz16STVUxCqIiQNcq3NvzNaSvgEmp8KYfErPMG80Q4
         5rLLUyyM7IgbYPqok3AKRO66ymNNoMhAIFlxZWxDxHLO7uyekYX6HUksLiX3k7Hkr6ho
         3XEQ==
X-Gm-Message-State: AOJu0YzV3qTHZhNkH98BdPDUf093aRmCe8lzA1HQbP10drZe3dVrNk8L
	pw0hARjwSGm7Tcvy0rdLh/gRJrmqTMMdt77fOcEcBdVY7Snfw9eBw0PW/U8zVKb3dvuI9Al/5b/
	fJwKZD4BNURE8H5WKMuN9frVj2Rz/ZqFq6FS2
X-Gm-Gg: Acq92OGBUiyK9OS/2KuU70N0Dmtx6YdGvr6TzKEhFz8QqkYL4OmAsTY2J7drYRDNmkF
	obls4m40XR0mf+TYfnVKxIQ/6cZdPJAB0Ec/5kOKBk2QHxdnM8wxMyGgbAMp6LDAwcUGbLBnNd/
	WA2C9FxMM7AXAQwdM4+3igxq2qlFYVokgzPEzRuSRRbBOvFG3qQGyUAMq3vYmUdn5tYKPfemN3u
	GI1Ha3ZflU+TKQn3mlhy/3ZRSv2CkdaJD7U+oKijW1kdm+tIYys42W5adgRxfDfcs8oMeK+pIxC
	zQ6Ok90tPNDeW8JEcnIY8/hSTWEs1ROZykKma3wePg==
X-Received: by 2002:a05:6214:2c05:b0:8ac:b088:439a with SMTP id
 6a1803df08f44-8bf3e3919ddmr212995666d6.0.1778489807374; Mon, 11 May 2026
 01:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <nBqk.1770208426472571743.QePX@lists.yoctoproject.org>
 <CAMSfU+7rTEt-8GQ-QsSZ3j-MC+UoaL9QT8Gv1J2OGQpRMPr7pQ@mail.gmail.com>
 <CADkTA4NwGLAthwCQmsg8L4UFG1BvDiBA4-+vuMtto62CSJcEHw@mail.gmail.com>
 <524987.1770280337052637714@lists.yoctoproject.org> <CANNYZj-b-_GFmSa4tvN-eG=jcNDRT-1aU9nShQpbBxGTpHJLFA@mail.gmail.com>
 <1495889.1778428699339827501@lists.yoctoproject.org>
In-Reply-To: <1495889.1778428699339827501@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 May 2026 10:56:36 +0200
X-Gm-Features: AVHnY4J8tB5fTGbtoCJmcWKbmNDC_vqARhw0Bsk1heYT6PEoz1HQjMpZLfb0SxI
Message-ID: <CANNYZj-cpdn7uV=TS=gGVSaLbe_HjxzAjA9xc7tErteWtCsLGA@mail.gmail.com>
Subject: Re: [yocto] State of crops/poky-container
To: karprzy7@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 08:56:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66521

You should probably take a look at
https://github.com/moto-timo/meta-yocto-containers-demo

Alex

On Sun, 10 May 2026 at 17:58, Karol P via Lists.Yoctoproject.Org
<karprzy7=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi, has there been any development in this matter? I've looked at meta-virtualization mailing list but haven't found any info if there is a planned crops container successor.

