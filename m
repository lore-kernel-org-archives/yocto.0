Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA6FC47084
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web08.6400.1649235841834362348
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:04:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SVm8gINH;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id m12so2302384ljp.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S58Y5tYRgZSKPoWZFXkKkeVR5WEgLnoS9HOVCmdEJ8U=;
        b=SVm8gINHehGtr08an3gbvRECB1Fvrt1sBcPAxwPF8wVX2ZlZsedLkS7/pTSmWmh/Bp
         gfdS0al0pbYjqKCO/EIBu2A/UidD/sLbc9DaJ+GqQyfeS1MnILw3hXfXTqnownIJbXGW
         Olc5s9xynGNOwr/l7bvWZ3oX+sjTIdEGnSS9Dfc7/ZXNjDUZRczyU2mTfAi3oqzDX4H2
         NGJgVn1h6kXvnXlxGqbICL9+ngj6DT6/yylXqvfe8UiNUs4s6nepcybhQOVrAOK/erlM
         7viRx6uFAb7okcmOo2zJaqMFl2vgWGMBVkBH8C/cebPWR53VdQXr25o/H47Yex5Q2s+M
         qJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S58Y5tYRgZSKPoWZFXkKkeVR5WEgLnoS9HOVCmdEJ8U=;
        b=8Id4JImwv+BbJQ31Dzy5fkN2OWoZ8KRhJC1WOAB/ZRJN3YxNgm014dankTohBSU6RV
         7q5OHvWJ4d4KTuFn83xGQo2hPRaAGko2wi/drbMUVc+LLv2jkufOydahgsGfWXo8yruI
         z/2ufgTsO4EUC6L1E7ON4M3szsUOh4LDNA/a6zqRUVdxuZf5e73vx13G0bNSr6LOzjwI
         zLByq+nf9RGH+3yjkdKmwB9tJL6C+P4IYX9sZ9LouvMz2mwKE9o78J/wCzXCKRnApY57
         sqCeK9ZlQd20rX0dFpEvbvCplTT5JieKC7YeIaSitYT01JWx2X4ony1WQ9lPmUZbSfzr
         nXKQ==
X-Gm-Message-State: AOAM531Num2484pt/u901TvCj2qrKS31TBCDpfO7w4orYcr98M4GsaDl
	Qca7AE2EFkNua/zH2XHHNDhyqw7eDD1sEcmufJs=
X-Google-Smtp-Source: 
 ABdhPJwpWVRtWAWdmvzSPzcMMi9NGueoqo2mnWgV9bOfiupJUe2uFAgxg806XYKipFKflMVsNeyzxham4GK0aNJ/U3Y=
X-Received: by 2002:a2e:b989:0:b0:24a:d5a0:bfaf with SMTP id
 p9-20020a2eb989000000b0024ad5a0bfafmr4668139ljp.513.1649235840029; Wed, 06
 Apr 2022 02:04:00 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Apr 2022 11:03:47 +0200
Message-ID: 
 <CANNYZj_UvDZWC+hD1pjxzkOKK_sL4wB+mu3a8GiPZVwUnEO4iA@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56673

I'd suggest you start by setting INCOMPATIBLE_LICENSE per image, e.g.
enable gpl3 ban only in the images that ship to the customers and not
across the entire build. Then carefully look at what pulls in bash
into those images and why, and reconfigure those pieces to not do that
(e.g. by reconfiguring the PACKAGECONFIGs), or rewrite the scripts in
posix shell.

Alex

On Wed, 6 Apr 2022 at 10:59, Mans Zigher <mans.zigher@gmail.com> wrote:
>
> Hi,
>
> I cannot use GPLv3 packages in our image build. I am no legal expert
> but from what I can understand most companies will not be able to
> comply with this license without allowing the customer to compile and
> deploy a new version of any GPLv3 package to the target. I know it is
> possible to comply with this but we are using secure boot and have not
> the time and probably no interest in setting up a solution for
> allowing customers to be able to deploy GPLv3 packages on the target.
> We are trying to make use of INCOMPATIBLE_LICENSE but that results in
> several issues. We have made sure that we don't include GPLv3 in the
> image build using a manual process but would like to use
> INCOMPATIBLE_LICENSE to alert any developer about the issue. It seems
> like INCOMPATIBLE_LICENSE is a bit harsh since it will catch any
> packages even if it is only part of the SDK and also for native
> packages that are not part of the image build.
>
> I cannot be the only one with this problem so how are other companies
> solving this issue? Are they just not using the INCOMPATIBLE_LICENSE?
> Are you setting up a parallel process for checking for any
> incompatible licenses issues?
>
> A more specific issue is that there are so many packages with bash
> dependencies which are pulling in bash which is GPLv3 so how have you
> solved that? Currently we have done some pretty uggly hacks which I am
> not that happy with but we needed to keep it out of the image.
>
> Thanks
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56672): https://lists.yoctoproject.org/g/yocto/message/56672
> Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

