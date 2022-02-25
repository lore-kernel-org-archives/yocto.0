Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DB43C433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 18:50:54 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web09.1062.1645815052149149601
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 10:50:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=D41oPSRb;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.41,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f41.google.com with SMTP id a23so12589470eju.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 10:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/2cSG3VdMHBEOoHx3UlBwne8U1abB5Ld9TvMiDaE5o0=;
        b=D41oPSRbXz/MSNAPw+RQU84ysk72L6Z/4GCbGJy9IsHblscOtMkzzKnGemOn5wv+9J
         LOYz1eUhwkPYcbqjwtIBMqkU5RiNKC6yJ4+FfFhkauuAqFOBeHp6YBNh2GAeaXZVeB8t
         kvUBiOQ+Mkpg2tU1zqjIRyJMJjzJ+mCwNgNG43kurz1APpUpvHFdBpbmETWAd6Qs9ev5
         Zwv+AQ68TqgX617yUINEEKWT4Ey2B1Gx6oJzsC5zxco7L+7BwmN+/aaY1tQdDMCizAjS
         dZs/ba2ra5f++fqX2rA70mwpaQYnfnMbLXm5dCKQUQKsqoXP9NIfBTGiha9P/VLnN9pW
         +CAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/2cSG3VdMHBEOoHx3UlBwne8U1abB5Ld9TvMiDaE5o0=;
        b=3WKfCKDkgl1Hfu6Hza22zR/Q7av2slfkL7vyupwG5x+ce8wVcY6888fzfIuiYMpzEE
         UFfVezVwjrQ9D6HwLfzGEOdkuSL3+6cz1v+u/0A2xB5UsRHfOvNrU195lTwM3BsFZmiz
         kfG+v9FZ9RS4cLjj0JtKwIbfFiGjUyCHnCNldApKD5zlSzDkmH8sw4+a7Y4OZ6q2skzm
         k5TA+RPYgLIY8J32Pl4Saw2PNedQAmBz0C3twSYjv1NL7sQyGUutYjdYVEGwPtQhrLWi
         nTXcOHk2u2SAHevs6eCVOe+j4Wf7QWCJ4d3pFUmxnvzYIhf6B8Ibj+Zc5+n6JvdxdqfK
         P5VA==
X-Gm-Message-State: AOAM531OairPJ4ZcEVlKvHuY2D7zRygvFBoSxHXmKERtOV1HnyzTPJYM
	vUVV7MuWR0cPH1lp/LfwKp53phFwDPbP7EDLt3BaMA==
X-Google-Smtp-Source: 
 ABdhPJyU6LrI1JnvLLARtaCj+FchnkagfEZPBSumX95Fw0HX8IrcAWAFPWZmIdYJqp2nQlX/QJ8liEk6JtE3mjYTt9E=
X-Received: by 2002:a17:907:2bc4:b0:6cc:e4b7:dcf8 with SMTP id
 gv4-20020a1709072bc400b006cce4b7dcf8mr7242908ejc.596.1645815050250; Fri, 25
 Feb 2022 10:50:50 -0800 (PST)
MIME-Version: 1.0
References: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
In-Reply-To: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 25 Feb 2022 08:50:38 -1000
Message-ID: 
 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
Subject: Re: QA change - reduced number of reproducibility builds tests?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, "Mittal,
 Anuj" <anuj.mittal@intel.com>,
	Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 18:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56285

On Fri, Feb 25, 2022 at 8:09 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> Hi All,
>
> As the project develops, some tests are valuable and some become less valuable
> over time.
>
> When we first started reproducible builds work, testing reproducibility heavily
> across multiple distros highlighted some unusual bugs and let us improve things.
> We therefore currently run a-full with the targets:
>
> reproducibile-centos
> reproducibile-debian
> reproducibile-fedora
> reproducibile-ubuntu
>
> I've noticed we pretty much always see the same set of failures with these
> targets now, i.e. if one fails, they all fail the same way.
>
> Those targets are heavy builds which don't reuse sstate for one of the build
> streams and hence load the autobuilder heavily.
>
> I'm thinking they've served their purpose and that a-full should go back to just
> the randomly selected reproduiclbe target.
>
> Does anyone feel we shouldn't do that?

I support this.  It has been quite some time since dunfell encountered
a distro specific reproducibility issue.

Steve

