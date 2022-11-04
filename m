Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FE3C43219
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 14:38:41 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.11919.1667572711148315662
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 07:38:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=joarr5gB;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.50, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f50.google.com with SMTP id u24so7851348edd.13
        for <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 07:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XC7Uc91wux4IwOQmV6isacG0WnVciZfGHjc+HOQigds=;
        b=joarr5gBA+jdQTFyrKqDwIYJWHc3ajjLJKbyNlB07ldU6W/os4/cGjjRWPtz6y7PHl
         ErdDiUL+gQqIkfD9/e1Ol7yZIunCSLQCE15LriwbF5IJssL3OJUi42XKliWnj9LsUlra
         Dsfewcb2/XQAwrVcQpHmcStF3yRYF9e6R1EeusswQpvDV/9LFHSWIIuZQTHhvDDvFmjl
         uwrXl3UeR8kVKoFKxTBlBdfuGI6+kin7YbeZvCOWCAQ9EuUiwMbXPu+KNw5EIGh6eCID
         du5QdcHsUFZT80xQDv3Yj9t7yz2lQ/KUdxuDKhn+PvotOY40gu2Uy31SBSp0+lrOG11W
         bYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XC7Uc91wux4IwOQmV6isacG0WnVciZfGHjc+HOQigds=;
        b=57ugqDCu/8X3uHgTjuhq6O7+Oh+ZPAnAUKTU74XHnI30XVKBUlU4N0QZ8bryzP8BEn
         +kuRu9qkwq+2xNpxkY74cwsz//LUEUvALVgs8oPXirLA+NnSgPb4NFXi0s14o790533z
         DgEJj70i5/7Y9cHbAx8lC9n2Tdk9Zo9KS1WntMsWsnDLt9oMMsS8hEGpCxiswjHfOyPY
         N9j0sWDzITzF63ZvmPheamyeVQVE0Xs0txAe00dnbIIEQlMIJ6Tcs9g2bSKaBPVqnc0V
         03MdpfQEAymDXcskrhTnjYq3ZT6PO0tDHn79yCREgEz3u99c4lr5l5AzltlTVjKBmm/0
         frgQ==
X-Gm-Message-State: ACrzQf2AnXItKUxiujuvk68J6VRnWweD6G1g9fLvbnLPNeZMBwe/qnnm
	tRfRNy0xS4DrHW8Y5lnI7pCMBnI9Qv+pS8qJIf0NvQ==
X-Google-Smtp-Source: AMsMyM5hRlzdb5OKNvPjcyMgKz2cc5MX7gCwYqcgFBVPj0t2EhvcWp+eiQ+aa05kdCok+oxss85hCfCXYovrFEC8Dhc=
X-Received: by 2002:a50:eb05:0:b0:457:c6f5:5f65 with SMTP id
 y5-20020a50eb05000000b00457c6f55f65mr35445890edp.311.1667572709495; Fri, 04
 Nov 2022 07:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
 <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com> <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
 <40a6ff41-cce0-957c-8d89-fa3a2e01f254@mvista.com> <CAAaKDhH6n4S8qL=bHtgZsrvZAKmidHdQ860Cv55+XnVtWS1LQA@mail.gmail.com>
In-Reply-To: <CAAaKDhH6n4S8qL=bHtgZsrvZAKmidHdQ860Cv55+XnVtWS1LQA@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 4 Nov 2022 04:38:18 -1000
Message-ID: <CAOSpxdaqN99koQdTTEM3M8aDw5PGjYaZyctoDymwvH=iYAnX5A@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Ricardo Salveti <ricardo@foundries.io>
Cc: Jeremy Puhlman <jpuhlman@mvista.com>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Jose Quaresma <quaresma.jose@gmail.com>, Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 14:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58489

On Tue, Nov 1, 2022 at 2:06 PM Ricardo Salveti <ricardo@foundries.io> wrote:
>
>  On Tue, Oct 18, 2022 at 7:54 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
> >
> > On 10/18/2022 3:31 PM, Bruce Ashfield wrote:
> >
> > On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
> >>
> >> On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
> >>
> >> On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma <quaresma.jose@gmail.com> wrote:
> >>>
> >>> Hi Rudolf,
> >>>
> >>> I have reported this issue and together with a path [1] to fix it.
> >>> Anyway Bruce has fixed the issue in another way in [2] and this works for me as well.
> >>>
> >>> [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
> >>> [2] https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626
> >>>
> >>
> >> Yes indeed. This has also passed my other regression testing, but I was traveling today and couldn't send my pull request.
> >>
> >> I'll send it over the weekend, so hopefully it'll be merged shortly!
> >>
> >> Bruce
> >>
> >>
> >> Did this end up getting sen to the list? I also validated updating to the specific hash resolved my issue too.
> >>
> >
> > Nope. I got tied up with some other issues, I'll send it tonight when I get a moment!
> >
> > Bruce
> >
> > Thanks!
>
> Just noticed the same issue is now happening on kirkstone, since the
> kern-tools-native was also updated there.
>
> Seems we're missing backporting
> 533720a1756454447341769c4a0969fce8d6f287 (kern-tools: fix relative
> path processing).
>
> Sakoman, is that one already on your list? Otherwise we can send it to
> the list as well.

Yes, it is now :-)

Steve

