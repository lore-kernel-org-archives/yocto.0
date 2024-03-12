Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13E70C54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 17:42:33 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.2951.1710265344960875708
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 10:42:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gqKPDV/M;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d309a23d76so561331fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 10:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710265343; x=1710870143; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RnFr0k8JdCqrQX3r3PsVvvSUl/FlBP83VVWd5c07yNk=;
        b=gqKPDV/MwDnt/+HxYYmhBT+HNB5W/hS/AeOUq7qh1MFBYZPgkNkKTo//8giEA7nDD3
         wwq5W12xVL84NowdnEgh3ID6PaiC1LBQkauSgImMfmk5sq9bZhEABh0zHDIGYqD4UJv8
         6BTU+Ph1RdM2CzENo03Mz4l/AbTYiUhTuZ/ttKD6A7Mdc1t7DQZmoImiFg/Ytaxa9GDX
         FBIXiilvENGUIemwk7WPbyDTYsXRcqMkDywdcwUyJczXyZTFxeSJveWwK3lUq00g2vON
         /Tpmt4bp30DlVlXhAoD2Nd7SUe9YOvBJcBxYHeY9kQXftI3XK5PQWwWcGQmIdjkO9Qm5
         xORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710265343; x=1710870143;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnFr0k8JdCqrQX3r3PsVvvSUl/FlBP83VVWd5c07yNk=;
        b=SR8fOs1s1/U7jLRwEstJMDkDhQx4/gwG0hQS+4YGW6G/FS109M7BsLDWHGi3EhHFg0
         +Qz0b8nhsszyK8c/iEh7E8Drf1ZIV6SriafLeXp/gmrmLCVJq7o8POOMasK+EbZo5f8k
         +UDtu1yU4rXrGIV17CirO3/qha4sVo/lafgC5lGviSMDyUWBZaCG/B9zpPnRaPOK/Qb6
         CJtn8U61wFBqHO6of5maQPUoTivPPSnR0RypIL9NdWdDOJkndQmhKvPqbUk7681oOpFj
         J2NTtpQYNw0Fcj1Ys8Gg5780Wh8qrH8XLYK8qUZTmoQ9bmtFzmCkylCdoSEDDm6PYh5n
         F/ig==
X-Gm-Message-State: AOJu0Yw9cIbQCPqVz365I+d0Xvj+TnheLTDAwy3p5doRVVWG+mFIeXs+
	ygIzxyuKQy/XTDYPK6JWdTACj8m/UAEUeUUWTTYAL5moIJQq9LIKbb3Hwj94i547/hyoqHmCN3f
	7bJB+esCXIhqsqsfUqUZ47h00VXk=
X-Google-Smtp-Source: AGHT+IH8CiRM/q8+PCJrGfKL5s8iyzqncngDOIdUqKfQkmFdCRmorsGAkfeeMzn4UfN6C0ssPFisrGhHVnV6Hqhmmtk=
X-Received: by 2002:a05:6512:15a3:b0:513:9cc8:f082 with SMTP id
 bp35-20020a05651215a300b005139cc8f082mr94161lfb.11.1710265342924; Tue, 12 Mar
 2024 10:42:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-rUZzdqbXD4yoHiF5V-L2sOg1DVWMEsDGXWk36F2cexQ@mail.gmail.com>
 <CANNYZj9q5baYcA1AZ6UkqL+E+Z=H+4aJ3iAeD9SuCB7SoktX5g@mail.gmail.com> <2c6b60473e843b212695a2609ab0fa88181fbf6a.camel@linuxfoundation.org>
In-Reply-To: <2c6b60473e843b212695a2609ab0fa88181fbf6a.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Mar 2024 18:42:11 +0100
Message-ID: <CANNYZj9-yshEb3tVXzqFt_5d92qhRCngNK-smzGry9isgxwhqw@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 12 March 2024 (WW11)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 17:42:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62746

On Tue, 12 Mar 2024 at 18:29, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > I'd like to see the issue, as one recent change in devtool tests was
> > in the minicom version update commit.
>
> e.g.
> https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/6519/steps/14/logs/stdio
>
> which looks a race between:
>
> overlayfs.OverlayFSTests.test_correct_image_fstab and
> devtool.DevtoolUpdateTests.test_devtool_update_recipe_local_files
>
> (over makedevs).
>
> but there looked to be more going on there too.

Right, the minicom stuff is probably not the culprit. At first glance,
devtool tests do ensure to make a copy of meta/ and operate on that,
but the failures seem to indicate they modified the original common
meta/ instead :-/

Alex

