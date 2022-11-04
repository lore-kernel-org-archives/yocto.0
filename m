Return-Path: <ricardo@foundries.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C593C4332F
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 14:56:01 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web08.12227.1667573758659527219
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 07:55:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=A0/2anOT;
 spf=pass (domain: foundries.io, ip: 209.85.208.170, mailfrom: ricardo@foundries.io)
Received: by mail-lj1-f170.google.com with SMTP id d3so6733661ljl.1
        for <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xhVSkC3l+1FzoFaWMnHn7owEc7fcwtV47eah2vnFwKc=;
        b=A0/2anOTEfRY80aGt1IbbHMeiUc+QJZ4gELiYjI4AvxYM805IUUMzVa/byeOuSpsyJ
         UHSzMthjj2vbn4Z7RnMoYc3pVYBGGFwFH0UZb+kEoz554NPHlludbPgBgb1pxDi+aZHD
         z1Z/NcxgIyrGNsSIdynRZt05IqFDOVWeSqmKrxa5XZSfAbXz2bkHEgwJd9cj+txGsPwD
         EcNqxqEZhdlXhehRsGw+g6KkwgK3Ww+RJ7/jGLjeROS35g3zzNiJH/fHQJIONeKVH9g3
         3C6V/eQijHyOIQtofxQnNa7FCGMgPyONSkQw9W6sh3qrNrbVNKB0VcLshpQhCkvNIOnk
         cwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xhVSkC3l+1FzoFaWMnHn7owEc7fcwtV47eah2vnFwKc=;
        b=KZ60xNWClnEPt5Yuz8tF6owjlDutyxSMgJD51mzCpNqJdAkT7DRKxxKTXmkMRMSI+c
         RPmIFOLmD2zRcue0EpFxjwn0CaVQ7Tgwf6lbiRuiss4TWPuqlQnHrYN4Q4mrshlCCnuJ
         DfDZ2wYkSm2Gaqic7FK09P244sxGDDebfX1+FD2VB9954FOsHWKM5xo4/o4ujLcKB6NE
         w9XTI3fOImCUnBB8VYLtOwu4kK1AcZqNG1tKB7v1/6kSYfEJG7CiLpiRDtYI+vSJ7FEg
         HDq405MqJmIdb6AS/fESqkkQ1YwJ198y0iDojGvqrID6c9fT04VPvpcbWZSYfV19gWsF
         wF9w==
X-Gm-Message-State: ACrzQf1owVOV6exvb7b6KwD6vsNkrgSRSh3Kq1NTWkvs4uwBZZDWPp8Z
	lSF3GjXx9wSrDaDpSpb9vl0Vllid18+XSQJaDvFk
X-Google-Smtp-Source: AMsMyM5cdi/rgoEYFCh2CoDHKZPvYybRHliahrIso8sgNzLFE3uDyQyOKDLjtTrh5o5sdJTQH66GhCite3U5Z38+KMY=
X-Received: by 2002:a2e:a0d0:0:b0:276:ffd1:d7c8 with SMTP id
 f16-20020a2ea0d0000000b00276ffd1d7c8mr2126299ljm.176.1667573756452; Fri, 04
 Nov 2022 07:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
 <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com> <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
 <40a6ff41-cce0-957c-8d89-fa3a2e01f254@mvista.com> <CAAaKDhH6n4S8qL=bHtgZsrvZAKmidHdQ860Cv55+XnVtWS1LQA@mail.gmail.com>
 <CAOSpxdaqN99koQdTTEM3M8aDw5PGjYaZyctoDymwvH=iYAnX5A@mail.gmail.com>
In-Reply-To: <CAOSpxdaqN99koQdTTEM3M8aDw5PGjYaZyctoDymwvH=iYAnX5A@mail.gmail.com>
From: Ricardo Salveti <ricardo@foundries.io>
Date: Fri, 4 Nov 2022 11:55:19 -0300
Message-ID: <CAAaKDhFBq4NG7qt2cOxMDWME-FRBPAjDXMCZMirQsGMnK73qjA@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Steve Sakoman <steve@sakoman.com>
Cc: Jeremy Puhlman <jpuhlman@mvista.com>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Jose Quaresma <quaresma.jose@gmail.com>, Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 14:56:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58490

On Fri, Nov 4, 2022 at 11:38 AM Steve Sakoman <steve@sakoman.com> wrote:
>
> On Tue, Nov 1, 2022 at 2:06 PM Ricardo Salveti <ricardo@foundries.io> wrote:
> >
> >  On Tue, Oct 18, 2022 at 7:54 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
> > >
> > > On 10/18/2022 3:31 PM, Bruce Ashfield wrote:
> > >
> > > On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
> > >>
> > >> On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
> > >>
> > >> On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma <quaresma.jose@gmail.com> wrote:
> > >>>
> > >>> Hi Rudolf,
> > >>>
> > >>> I have reported this issue and together with a path [1] to fix it.
> > >>> Anyway Bruce has fixed the issue in another way in [2] and this works for me as well.
> > >>>
> > >>> [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
> > >>> [2] https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626
> > >>>
> > >>
> > >> Yes indeed. This has also passed my other regression testing, but I was traveling today and couldn't send my pull request.
> > >>
> > >> I'll send it over the weekend, so hopefully it'll be merged shortly!
> > >>
> > >> Bruce
> > >>
> > >>
> > >> Did this end up getting sen to the list? I also validated updating to the specific hash resolved my issue too.
> > >>
> > >
> > > Nope. I got tied up with some other issues, I'll send it tonight when I get a moment!
> > >
> > > Bruce
> > >
> > > Thanks!
> >
> > Just noticed the same issue is now happening on kirkstone, since the
> > kern-tools-native was also updated there.
> >
> > Seems we're missing backporting
> > 533720a1756454447341769c4a0969fce8d6f287 (kern-tools: fix relative
> > path processing).
> >
> > Sakoman, is that one already on your list? Otherwise we can send it to
> > the list as well.
>
> Yes, it is now :-)

Awesome, thanks!

Cheers,
-- 
Ricardo Salveti

