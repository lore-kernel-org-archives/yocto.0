Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web08.13922.1613505869223333197
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 12:04:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S+S4TBNa;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id c3so10008427qkj.11
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 12:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ohjCdEarSj+UEJoawQXz3NxHPsZ344SQlhPxbl0PKe4=;
        b=S+S4TBNaW2E9EXIMlis/jAhTEpLli0cwL6WKv+xKSwtUVwZjzQSIIQ97UQc3Qzkl4I
         g8jvUieqrDHNhP3lTeuiTUUaeT4jHsiFIL5UjLx4oW/AmXOIr3UUjqcMGGpo6TA8fE54
         0rDYAMKtlIkNE1m72wPqGxCE1OL7PoeVKfUmFor6gkGSHWas/vwGowREbe3AyckNp3BE
         9/Plvu76fwoSei2yo39ZNn0X1cN4Lch692Z61eRX0D8CVMSL3V4fCqNgRQKJG/nPq7Ng
         3BZCCIYjGMikQ8Ay3FFtDg6Q0GTL00XMwDXef9K7ZRk5b1oFRV4KWAjVs+nlYGi0qZ6i
         kGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ohjCdEarSj+UEJoawQXz3NxHPsZ344SQlhPxbl0PKe4=;
        b=F1/6WdBDM5bHnWba6V9YsQhJj/Z20rsArGs30c7guMIL9OXSIvifrr2MHo3Nw28xJu
         hrBpXgxtMiUgr/CqmBmT9XjL6BVF4EQ78VRUGnIw6GEL5PT03aUVS1d2OFCih5RALsHY
         FtpkdNHrkB8bw0dSpzfIVQXGfMT6K7f6G5gGo47omDiLSeXsPnk9lO0urzr5d9tp51xm
         BIFrIu5zKgoDBdDFTAib+bzxoSV55uvB4uBHTo1RmGpX8Zj4oyramwjc0SVztSdKmBHE
         kfgDGn4n4DR4DnKmFKKrjZfeRAIZx46TN6cRID9+0kGYGhMq8ZyMNLvNwod36pEGNsDr
         wb9A==
X-Gm-Message-State: AOAM530V/Um0TyoavAIxz+NgVxjf5LTxj52QmLmWB9FMs1KzY/ws3+27
	Zh6dWwxCWfqDhuPFYLLUTXUS0mCcMIMxmjS/LnE=
X-Google-Smtp-Source: ABdhPJwNiRYfL/fQO2PtfOJ4wk0YZIWLtOcb/lNa1+LBCMqg2LdMsyGVUDeZxeOY9B4/5ROf3THhixWlrXiau7f2EaA=
X-Received: by 2002:a37:9f02:: with SMTP id i2mr21629945qke.25.1613505868355;
 Tue, 16 Feb 2021 12:04:28 -0800 (PST)
MIME-Version: 1.0
References: <d16e306d-528c-b748-6fb6-a7494b0ab6f8@optimcloud.com> <633.1613504614588092041@lists.yoctoproject.org>
In-Reply-To: <633.1613504614588092041@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 16 Feb 2021 12:04:02 -0800
Message-ID: <CAMKF1so6c7yo8RUQ2dvP7aYAg+y1UHjoe__m=0ny9fTi7A5Q-w@mail.gmail.com>
Subject: Re: [yocto] Timing a recipe
To: rustyhowell@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 16, 2021 at 11:43 AM <rustyhowell@gmail.com> wrote:
>
> "time bitbake recipe" is perfect for manual things. But I wanted to also=
 measure the recipe times when building the entire image.  I ended up creat=
ing  a bbappend with new pre/post tasks for the main tasks (fetch, unpack, =
configure, compile, install, package).   The pre task drops a timestamp fil=
e and the post task reads the file, calculates the elapsed time and logs it=
 to a file.  It's a bit clunky but it gives the information I want.  Thanks=
 for the help.

you could also look into using buildstats bbclass
https://wiki.yoctoproject.org/wiki/TipsAndTricks/InvestigatingBuildTime

>=20
>
