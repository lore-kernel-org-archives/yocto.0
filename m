Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D83EBC4321E
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 18:32:45 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.52616.1669919564103069766
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 10:32:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Du0guHIZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id u12so3218645wrr.11
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 10:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yDQYB+BqZp2cI6ejAAU1gy4mBrG6MT+liMp+PiIO6cE=;
        b=Du0guHIZx+jZ8q5OMsnCkVvrEi6Tn8v+SpajNLh2vcIL3PTwAyL7cXsCzaxgndk952
         YGnJtkNkCaU6+tGdTkWIRRbMzHcpd66/rHpL9nWZLoKzL0UhK1qSAv7uszSwid59XaPX
         AtlrQ5uk3grOQzgaXL/HlE3cXh+BaeTG2iYGCcdoPg3lprGp8qPgBJU4gm/nKHNjQCKy
         AUqVGabzcYLBFfvlFw4Y7rnkMQTxSuDeox1jAKFa3PnAErzDvNBdkWXygeqv+5gFUaLU
         ymgfsPJxkRi38dMcv16ko2XG5t4urrsfm1U/UJ111C3JNzFsqaT9B+rN7QhK8iyBIOm3
         8SdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDQYB+BqZp2cI6ejAAU1gy4mBrG6MT+liMp+PiIO6cE=;
        b=e7sc1BaHAjdGTUXXqXs3kV5ygvROjDXkbISoAmciN2vE8uybx6NslFgo/Y32cghdyK
         sJg4ID87Al8YbCWjbNN8QkP4YvLiVo1bd7jAIRO71aYnbl+ayC8Jmo4fySzqOk83kdn4
         ovqLO59s0dCPQQxMghDRbvxs/Y+pR5OfbX4hCJoRGL/ODC79VuKec0HRlzQWunEOqQLb
         cugs3e1yqHadt+NIbFmRnBqcKjAARrCvIBWrrmioTBfG/mbw6MyBLrXztE2XR3/KzG1U
         s5K8bCurX8n3PJ6NItQqnUck97O/wcii390c369O5Bz0l2vd9vMgBKwr6PDoT+yo5R1y
         M5mA==
X-Gm-Message-State: ANoB5pmjxWJkzHdYm61EZPK+FU1o04QZL4L0uPUCFdSqesBh2kRFpUDR
	unfY3zBixz7oMmX+cLiFSFcWc9KhIxpGalhbixc=
X-Google-Smtp-Source: AA0mqf5JaKK9REQmCUyGXyhCzcMKK9dIqaekaWKcejXTFJevV7HM8sIUzgqkMaLESbKdBftMCWJSeGxqYgWEWhPRVwo=
X-Received: by 2002:a5d:474c:0:b0:234:d495:d3ae with SMTP id
 o12-20020a5d474c000000b00234d495d3aemr34564298wrs.448.1669919562317; Thu, 01
 Dec 2022 10:32:42 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
 <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
 <4f4a8c61-be1c-27e2-950e-4266d1c358b2@ibeeto.com> <CANNYZj8DSp=j+gdn2x+dUb1=efg0-BL2RXKp1kNHx2-2a0BRrA@mail.gmail.com>
In-Reply-To: <CANNYZj8DSp=j+gdn2x+dUb1=efg0-BL2RXKp1kNHx2-2a0BRrA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Dec 2022 19:32:30 +0100
Message-ID: <CAGAf8LwLOCbje++RdXieYFc78Zcr2fxnR1x5ivP7bcoW5koCMw@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, Martin Jansa <martin.jansa@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 18:32:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58711

Do not bother... This is a war between me and the entire YOCTO
community of founders... It has been going for a while. Lot of INTEL
guys and former INTEL guys against former INTEL guy. Me.

But, I came here with Peace. It seems some people could not overcome their EGOs.

I am trying to ask for a brainstorming. Now, I am trying to
understand, why the backpors took place from kirkstone... Once my
scripts were working for hardknott...

But they do not work anymore.

Well...

Not my fault. Just trying to push forward.

Zee
_______

On Thu, Dec 1, 2022 at 6:01 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> On Thu, 1 Dec 2022 at 17:41, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> >
> >
> > > Recently I've also seen this:
> > > LAYERSERIES_COMPAT_phytec = "${LAYERSERIES_COMPAT_core}"
> > >
> > Oh no, now the entire Yocto Project world knows about this hack. Now we
> > need a sanity checker for this in the insane class. :)
>
> It's a slippery slope. We can also for example make bitbake forcibly
> not expand any variables in it, and write out an angry rant when
> someone tries, and then I'm sure determined people will find a way
> around that too.
>
> Alex

