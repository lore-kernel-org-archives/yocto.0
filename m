Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EC11C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 17:37:20 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web09.190.1635183439077651014
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:37:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C55sy48f;
 spf=pass (domain: gmail.com, ip: 209.85.222.171,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id g20so12620183qka.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 10:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xfH6ldgLpimPvgbu/SxCOZAAcoFMhMYF7k4cPlHkIg4=;
        b=C55sy48f805kams/LjeGdVCXJnlMOLMVbH+xr+Uwr9fg1ZzI+C55NPrDixglEKvMSm
         4sz2sjhS98AgaqO//ZJVF54kKvOfnymDB/xjvWiCVZLQmzYvzCb+95CHqhdzLfmBT4dy
         Buj6/NAh50fVMqgbTix3/PhheQhYQX9q4ijXNv/qzySQ1HCHfVF00gqrgJm54r9K2jNm
         DB8Nj6qprC0cBeu5J3xVwrsT78HuDxmHnTMaAQrLZ9fV6tfMR2YTN5GzU6CxG+vIScNL
         +XdzdovUx30gr0O7xngqjdZxRvyyqo/FujVo/lnbBQo8MGtwtRBavqHX+1tn67Zec5jY
         SubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xfH6ldgLpimPvgbu/SxCOZAAcoFMhMYF7k4cPlHkIg4=;
        b=pv4GqUdL3gIoaN2GziV/DQuhjUEU6RNwZzT5fAn4MpxkFjtA3KsmFesHUxceEJoLpH
         dQ8wJLpASFyyNY/Pg0ttvlsv9ene+hJQdJssBYCBo+y4eD00JRGj9lIZr5bSomDHCEKR
         2KByzY3noYrowzDK+mVVCNC6xXa+vCdp8WKItMS1XP0YnDrkbTjJeapmnUjyyxKy/n9P
         B1zjigHu0+vP8Be0PugfK/TXTb/R+m6vYZgCE9/ScJTaYpjDP9xlfFzv0hZ/v5pHgF/W
         U6TEV7Kbmu2EOezjYIE3Js5F+KA7qWS/lT2RH9oTLp35naTD8K30qyXmdppZwRQTqQ3C
         paoA==
X-Gm-Message-State: AOAM5333hsC2blXfUBrZ+lEjqKjDcQ9aBZ/40P8i9cpON/+vNMvEfneP
	Z6auu25feDW1ICjMFPmtar7E63LtwYrFWs6xPZI=
X-Google-Smtp-Source: 
 ABdhPJyn8owBpTUNo68JcWGshnwggsVSR6XL5NjtrPvPzZTyVoWZxQoycQ3+NcPb2NiwpvnmArbD/yW5xX5vM+AkTsg=
X-Received: by 2002:ae9:dc84:: with SMTP id
 q126mr15076450qkf.128.1635183437990;
 Mon, 25 Oct 2021 10:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20211025140710.5419-1-anuj.mittal@intel.com>
 <c328e39e-921e-7ba7-8afb-7eca03a83f22@gmail.com>
 <CAOSpxdYkS9L48DEg=xYXPdGUriVzeLJhLSGMckis0Pono5soKQ@mail.gmail.com>
 <CAMKF1srzRTSzG8ZbY2ZZJjy6tNKiNic44WgCR_tGsfi2NOqWYg@mail.gmail.com>
 <CAOSpxdb0ejpKz=x6uDN=VjfupZj5WQ1Bo09FS=9m1uzNgF0kvQ@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdb0ejpKz=x6uDN=VjfupZj5WQ1Bo09FS=9m1uzNgF0kvQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Oct 2021 10:36:51 -0700
Message-ID: 
 <CAMKF1sohAt10Csj9SqoyXtGgvS08pRZV1aBN7JS7SCd+Ct2Epg@mail.gmail.com>
Subject: Re: [yocto] [hardknott][yocto-autobuilder-helper][PATCH] config.json:
 set max load in PARALLEL_MAKE
To: Steve Sakoman <steve@sakoman.com>
Cc: Anuj Mittal <anuj.mittal@intel.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 17:37:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55151

On Mon, Oct 25, 2021 at 10:30 AM Steve Sakoman <steve@sakoman.com> wrote:
>
> On Mon, Oct 25, 2021 at 7:00 AM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Mon, Oct 25, 2021 at 9:46 AM Steve Sakoman <steve@sakoman.com> wrote:
> > >
> > > On Mon, Oct 25, 2021 at 6:09 AM Khem Raj <raj.khem@gmail.com> wrote:
> > > >
> > > >
> > > >
> > > > On 10/25/21 7:07 AM, Anuj Mittal wrote:
> > > > > From: Trevor Gamblin <trevor.gamblin@windriver.com>
> > > > >
> > > > > Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
> > > > > builds based on the detected system load. With this option added, if
> > > > > either tool has at least one job running and detects that the system
> > > > > load exceeds the given value, it will wait until either the system load
> > > > > average drops below that limit, or until all other jobs are finished
> > > > > before starting additional jobs.
> > > > >
> > > > > Since most autobuilder machines have 56 cores, this should help keep the
> > > > > system from being overloaded during builds.
> > > > >
> > > > > Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html
> > > > >
> > > > > Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> > > > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > > > (cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
> > > > > Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
> > > > > ---
> > > > >   config.json | 2 +-
> > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/config.json b/config.json
> > > > > index 33d36ad..d397365 100644
> > > > > --- a/config.json
> > > > > +++ b/config.json
> > > > > @@ -43,7 +43,7 @@
> > > > >               "PREMIRRORS = ''",
> > > > >               "BB_GENERATE_MIRROR_TARBALLS = '1'",
> > > > >               "BB_NUMBER_THREADS = '16'",
> > > > > -            "PARALLEL_MAKE = '-j 16'",
> > > > > +            "PARALLEL_MAKE = '-j 16 -l 52'",
> > > >
> > > > We have seen a lot of hung builds when we used this option internally on
> > > > builders, Additionally some packages like bison started to fail
> > > > intermittently which seemed like a parallel build issue but never got to
> > > > see why it would happen only with -l enabled.
> > > >
> > > > So this change would need some testing before we make it permanent into AB
> > >
> > > Which branch did you test this with?  I had some issues when I
> > > originally added it to dunfell but after the last patch series I am
> > > getting green a-full and meta-oe builds on the autobuilder.
> >
> > it was dunfell primarily
>
> In that case you might want to try again with the current dunfell
> head.  It was a couple of weeks of pain, but I think I've eliminated
> all of the issues with using this patch.

OK, I think it will be a while before I can get to tip if dunfell though.

>
> Steve
>
> >
> > >
> > > And master has been running with this for q
> > > Steve
> > >
> > > >
> > > > >               "XZ_MEMLIMIT = '5%'",
> > > > >               "XZ_THREADS = '8'",
> > > > >               "BB_TASK_NICE_LEVEL = '5'",
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > >
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#55146): https://lists.yoctoproject.org/g/yocto/message/55146
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/86577772/3620601
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> > > > -=-=-=-=-=-=-=-=-=-=-=-
> > > >

