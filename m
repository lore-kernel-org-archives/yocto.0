Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08D1AC433F5
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 12:07:49 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.6678.1652962058690966618
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 05:07:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DC6+IYsU;
 spf=pass (domain: gmail.com, ip: 209.85.167.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id v8so6806358lfd.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 05:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/XBRn3AIfxz5pw7DJiJgMrLrK0y0OTdpPFrwDtkXQk4=;
        b=DC6+IYsUjqk9jT+aD/30KeiuINgRSWrFyKvhg8rlJRXBcDu8FCq9+bg4PQgZO7R7+w
         ZIQiOp213MLYGqxNVlINZP6wwJoLYJ+5BDsqTjgStEpdl96Nx5VzEe04yBjbdnDo9U0o
         VDh5NUGVzNBWn31gTFVSmKq+w/BHzshdmiUCYBlDxI5m7F8/rl/dwIvZmcMJdKzV6n3D
         DEU+SjquvqZmKzp80LAv036Upb1LnZeJ/iV/4FssbXoaNJLSUx1RJL7JETtlIBW/57pC
         JyfBmNKtsP4Ux7FglLMKq5+104Q9EeaQt2Ah/cvvmxaLszlydr9ydk4GDcZPVCN+a+Uo
         uIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/XBRn3AIfxz5pw7DJiJgMrLrK0y0OTdpPFrwDtkXQk4=;
        b=qNx2R4vIYRnwThvulZCw9bWFT4s4PWdrALBXp7OCjBkRqeNh1JG/fsWkQV8yzrQseK
         f1tDjlcQT288+sgtl4bK///eNdCgZA2dq0YrtFMWsiOL0WTElGiTNYek5ysm8RzG9+HI
         r0xROiZmw5YVCM4yPazhAhEa2wAz63JpqkNYjXYK5HF1lE9dQ0Sz1eXPThC9Uf4QB6jK
         hHcENClCHqvRFK5r+QAGGiAd86YFI8NYc3u4/xai9yKkTSPbx+QGQHl60Oq5muDo7VEG
         uTksdkfexz9sphPWbL/q2n4+ncQdwcMGwS+npt6ypEpGLczDakl4AnF3+VtUhyCyUQsS
         TW1w==
X-Gm-Message-State: AOAM533s6j36v3ZXjSQ4Hbs6tq7WrBaKfsSVp4q4pBs6mo9qrVpWS3ao
	Y2fW27MufM7ACvdxk3ZPyNQ0C3qJ5LjPfB0U19E=
X-Google-Smtp-Source: 
 ABdhPJwPmS/rmxuL00kQpZCcdPHQ8bZs1rDxTek7uvMxkM27yR5Wzlf/tdl9n3ZpEkvhFxUYKb1IufXaxmRW/0ltXLI=
X-Received: by 2002:a05:6512:3047:b0:473:cf43:6d8f with SMTP id
 b7-20020a056512304700b00473cf436d8fmr3272718lfb.380.1652962056606; Thu, 19
 May 2022 05:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <b9999975-f517-eb6e-e0f0-881558fa38ae@balister.org>
In-Reply-To: <b9999975-f517-eb6e-e0f0-881558fa38ae@balister.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 19 May 2022 14:07:25 +0200
Message-ID: 
 <CANNYZj97fyH=5BLGc5yRJnZOkteOsWpbh2m7RkAL83GQH8tfkA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] OpenEmbedded Developer meeting
 reminder
To: Philip Balister <philip@balister.org>
Cc: "openembedded-devel@lists.openembedded.org"
 <openembedded-devel@lists.openembedded.org>,
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 12:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57138

Hello Philip,

when would the time slots be allocated? It doesn't look optimal to
leave this to the last minute, as people need to plan their day.

Alex

On Tue, 17 May 2022 at 03:53, Philip Balister <philip@balister.org> wrote:
>
> We are finalizing the agenda for the developer meeting this Friday (May
> 20). The agenda has some topics carried from prior meetings and some new
> ideas we will cover at the bottom. We would like to get additional
> topics that matter to users and developers. Please review:
>
> https://www.openembedded.org/wiki/OEDVM_2022_05
>
> and add your ideas for topics we should discuss. Members of the
> OpenEmbedded board and Technical steering committee will be around on
> irc in #oe on libera.chat.
>
> Philip
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#1545): https://lists.openembedded.org/g/openembedded-architecture/message/1545
> Mute This Topic: https://lists.openembedded.org/mt/91155434/1686489
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-architecture/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

