Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83D3DC46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 16:57:06 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.188012.1703955425303322928
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Dec 2023 08:57:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Vyga3M5w;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e7b51b0ceso4339212e87.1
        for <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 08:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703955423; x=1704560223; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rUE9hjWJn1VhmsJZse6nz8AjSags8e0g8JpEUJ1jLGU=;
        b=Vyga3M5wjSduS0Umm3hYQOwbgsNqddHfhxLjRE+teBemQo318spPebelzebU3sSNMJ
         oP4LtisERoLjv5w7SRYEpjhQww/vWGhqgNVtcBESYSS0uAaX4nCiXVyd6OyHzKHiOial
         iE6TC5dxQs0nihLRL9/zkNl1UuH1yloekU3JagCkjM3NmCVQGs7jKkAv7Jl35p4g5Ll+
         WMA0rQvWhpBmr/vNN4DhhJfZNeG2LATeSXkI5vBP29kWJCRtrb1Q12j7lcJQeOPcPg/F
         S5EWRbMHw7pVbP+DP4BcRQSZ28qFFaWaRw+s92MrwCEOJTAWFCEX+zRIL4rj2wvgvIEV
         wZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703955423; x=1704560223;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rUE9hjWJn1VhmsJZse6nz8AjSags8e0g8JpEUJ1jLGU=;
        b=re9dBaVHXctAZeo/LqFhvD1gdSGWIjXrjlYTqUHZhbR7bhztVL+MWYl5dybLc76pHF
         d+kxlojpemuHFsR5QrT5BeIxiuIvXkpESOE27bcucjBuk4EXdjUTp7Rm5YvYsnJlOkMZ
         mHNTBAuH9H2b6KqgjthoDOVd12YvVWz0iRM/M52UO8pUWdrKLNiZbKqHxs4QOvgLr8ts
         hL/1gmcxRLPlzndfNCSRX3OIQgMGt9lctwvlIb9bpQopOD2E6yv3FPqCTvvy2KISRrEY
         TKfPsdA6xHfYQSNuzun8ZGDXexDsElrtL1YNPOpDs3grTW9yZVfqjo3rS3QSAR1302rA
         ZpCQ==
X-Gm-Message-State: AOJu0YwcGaR8kVpoQy5cVKMtREZd6D9DsTX+LnSwv7MonVTjiT7gO2iM
	x58ve+Cazg2jrtSFKUMWBLZE5hyFL6VFdqH7+zorvCvU
X-Google-Smtp-Source: AGHT+IGX6IzmUPci2maVEpmVm91waHKgx0JBa/h8/qTjPtYdPXxJVqNXY8Atf3L2ZRDMR9z8WM0AzNLhTCBl/C7Tk+k=
X-Received: by 2002:ac2:53a8:0:b0:50e:7bcd:7c11 with SMTP id
 j8-20020ac253a8000000b0050e7bcd7c11mr6172226lfh.6.1703955422900; Sat, 30 Dec
 2023 08:57:02 -0800 (PST)
MIME-Version: 1.0
References: <d7fa009c81cdef2d821fd879c44619a4@benfm.de>
In-Reply-To: <d7fa009c81cdef2d821fd879c44619a4@benfm.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 30 Dec 2023 17:56:51 +0100
Message-ID: <CANNYZj9FYeeUj2GRBfuPJgqcmgOpLq1W1rE04zLzCiV_eXYhiQ@mail.gmail.com>
Subject: Re: [yocto] icecc support broken?
To: yocto@lists.yoctoproject.org, flix.yocto@benfm.de
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 16:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62060

I think it's not being tested due to lack of a dedicated maintainer.
If you can come up with fixes, they'll be taken, but having regression
tests requires dedicated manpower to take care of both the tests and
the fixes.

Generally icecc is not the first option when it comes to speeding up
builds: better local hardware and networked sstate infrastructure are.

Alex

On Sat, 30 Dec 2023 at 10:31, Felix Mellmann via
lists.yoctoproject.org <flix.yocto=benfm.de@lists.yoctoproject.org>
wrote:
>
> Hi,
>
> to speed up the build process I would like to use icecc as described in
> the manual (https://docs.yoctoproject.org/singleindex.html#icecc). When
> using Yocto 4.3.1 this leads to an error while parsing the recipes:
>
> ERROR: /Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb:
> no-pn NULL prefix
> WARNING:
> /Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb:
> Exception during build_dependencies for set_icecc_env
> WARNING:
> /Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb: Error
> during finalise of
> /Yocto/poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb
>
> I bisected this problem down to poky commit 3be00a (bitbake.conf: Add
> BB_HASH_CODEPARSER_VALS). Since then the problem seem to exist.
> And voila when I remove "PN=no-pn" from BB_HASH_CODEPARSER_VALS in
> bitbake.conf or add
>
> BB_HASH_CODEPARSER_VALS:remove = "PN=no-pn"
>
> to my local.conf the recipes get parsed again and the build starts.
> Currently I'm building a vanilla yocto-4.3.1 core-image-full-cmdline for
> qemu using icecc and see if other problems are arising.
>
> Actually I'm not able to tell what BB_HASH_CODEPARSER_VALS does and
> what's the outcome of removing this entry. But this issue shall be
> either fixed or documented within the manual.
>
> Is icecc and the support within oe/yocto still actively maintained or is
> there any superior mechanism I'm not yet aware of?
>
> Best regards,
> Felix
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62059): https://lists.yoctoproject.org/g/yocto/message/62059
> Mute This Topic: https://lists.yoctoproject.org/mt/103429714/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

