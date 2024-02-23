Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 890FFC54798
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 11:43:06 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.8708.1708688579708368549
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 03:43:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N5h9dIba;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d0cd9871b3so2374711fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 03:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708688578; x=1709293378; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yb7htjQ+yhLIZqXHewbdBuP4ya4oGS4PmJdV0edHtZ8=;
        b=N5h9dIbamP8KSoLXp3+NME9C+Tw2K0bZNRkdM9XQ6/gp+CMTlW894W+Es7AqnbtMV4
         Kfib/O4DH5N+aklRa4AREjSim52wP+yKAnW+30XRIX1w2kNsBkGtVl6LCn4UtmKOXZra
         /82UcMs+QohNngTkMVd/zGIWxLB0rnhGsHyzfiPsdbKXBUZZbnOQWtM7U9CnjMPc2vkK
         fE+5nJWMk6JB3SNdJLkrSZiRR3jC6lJ+/yCjM9D26V8SnHM5l4XvKwjtjWv1Fcfgen4J
         77bekT15AxjKCLxWgbfwzxhFThw2vMs3Qfyytu9tdWSh4fD0UkjzdH4jxZIWtEaPx1b7
         XX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708688578; x=1709293378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yb7htjQ+yhLIZqXHewbdBuP4ya4oGS4PmJdV0edHtZ8=;
        b=QkbZjoWgZhHWe4mqkoWLRKhb5uphIV2d7JwDYtK24Xtmy/1g2Agf7nfhxgeOa4GfdS
         LqkI/et1qrrBSSeMIwxKpbzrZ9uTSexDNUdiJknqLbrZ4ARnJZtSl5/ZGnsHSecyF/aA
         HX5h1PF1Odv4Cz56PH0WYVOmiZ8OtbqIJlzqF7MvRrbUNVjjDZjhBdvlzM5dtRpegNXU
         fPVYwJSDPeaNX16Bdez9S5xBQXsXv8M7zR78Q+E0arLP5depbWw7M8tMDmBXwrvyeXXI
         02HfItJ7FMW0htg3pn9LnGFiEObYicNKkJOUMkHxpGMLApRUbbLg2ZkIUwfN5tyQLCkR
         Ey1w==
X-Gm-Message-State: AOJu0YxRZ3j/NlHJLyGoIACklyTIuznLDq7q/PM5Xf43HgLWX8cZO5zc
	UqRDZvcYfMYkRTD86tB3JwhKOcbTYD8EqNy3ZeUcDnW9op9oqmtQXuqoGe7bWMsnrWbJDbdBb3u
	P4CliHwxG2glZPwqFPqSv/qHat6I=
X-Google-Smtp-Source: AGHT+IGLbxZtYp0dfoyITdoY+/g74GSFMCwgK/VIjZOCyPMMmij3GHhVyEnJclRiuId+DKLMfZUBeICtJD4tqiUT2BM=
X-Received: by 2002:a2e:a7d6:0:b0:2d2:7392:ebf8 with SMTP id
 x22-20020a2ea7d6000000b002d27392ebf8mr455161ljp.11.1708688577628; Fri, 23 Feb
 2024 03:42:57 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com> <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
In-Reply-To: <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Feb 2024 12:42:46 +0100
Message-ID: <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 11:43:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62579

On Fri, 23 Feb 2024 at 12:32, Konstantin Aladyshev
<aladyshev22@gmail.com> wrote:
> Thanks for the response! What would be a proper way to fix this problem then?

1. show how to reproduce the issue in plain poky master.
2. check why none of the tests expose the issue. You can for example
grep related keywords in meta/lib/oeqa/selftest/cases. I think there
are tests that check devtool kernel operations there.
3. see if existing tests can be easily extended to cover it, so that
they fail without a fix.
4. perhaps the fix would be to check git version first, and add the
argument only if the version is recent enough.

Alex

