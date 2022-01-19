Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09BB3C433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 21:20:16 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.2834.1642627214891601105
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 13:20:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VehL4fwr;
 spf=pass (domain: gmail.com, ip: 209.85.128.43,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso17276584wmj.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 13:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VmyqgcXDGXmnIypxXrHc4B51Gq7oB8twMHZaJbJ01RI=;
        b=VehL4fwrkZVWGPWyBpiSuV9dg5FYHXYkC3lf0GzfD6C99Qt4Ck4exhD9xAOKvbqmTp
         VqTfduFvjPE17ED/xSUzD2ZAxpQ1tnP+u2CNMohSYB6YWknwswwX+dwxhJdPiLxlhiR8
         R3bBxrBSnhuBNJBr/0WYocK6YRZzWATCG2P9E69hESF1TqhN9oJdRFv3XYXJ2KHmtsOO
         lwu3Ze79Sh6e0jifA8E2Ppb8AaV5Tto5q+vmqyYOws5B68EGG5E5Znxem+1G9J6Jo6f1
         2iPz75C40+bZwYlxWIy0zyIYsPhdj/MgSi3p5gAw3Ecm+SF6AOCvu2Ul/hAPlh+2MME6
         Us8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VmyqgcXDGXmnIypxXrHc4B51Gq7oB8twMHZaJbJ01RI=;
        b=79ChDdgLrh4NVnfbxDHI+Pr9/Bp5EEIQvr0wggyA+D8MTHD2NLlFkziNDjE8Tu+GZ/
         eIXX1xHiUfoQ38PVhL8SobBmzoTti/Oh5Ag4wTV/bcJM4cVJASOh4e+//qboE9aInwJH
         E6iqIySvejIB5HKVf7TwwCJMfxP6vUe8UReX4k40vP9oo0NYaUYS34QxS1oMgTl2eKuQ
         BI5yVJoS6ASWbsS7tZv6FRPjgHTxRkwEc/XcLR9fSx7p8z3S6dq+lDKH8qcydxdMv3JU
         GvuwKBwMo65Osk27ZpAjV+/o8EZFOzWh1fm+/kLftbN5TXobLUmazHSpYCLShQ3KDk+i
         oksQ==
X-Gm-Message-State: AOAM531J0H1cqMt4tgGk8gNIZ1mHt2NoZw9iefO1k4XHcL+LcEFTYjgY
	Ako33YP+E13syU/ty3oqaazOhNe5DfePqZvTNTU=
X-Google-Smtp-Source: 
 ABdhPJznuoYy4VRo8CxjoB1b6CCA2/5vqXrc0W2Bn8lwgFS2No7urr5jdj+wqsw6sm8EWqvO50+srfsQeD6m5U+xaVs=
X-Received: by 2002:adf:d1e9:: with SMTP id g9mr17006903wrd.94.1642627213130;
 Wed, 19 Jan 2022 13:20:13 -0800 (PST)
MIME-Version: 1.0
References: <ad48f342-be1c-eac5-dda7-318c756c9aec@windriver.com>
In-Reply-To: <ad48f342-be1c-eac5-dda7-318c756c9aec@windriver.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 19 Jan 2022 15:20:02 -0600
Message-ID: 
 <CAJdd5Ga0HSFk=shaJbdoNN+hNNNCErBFfH5DxC3qUt2B3iNOow@mail.gmail.com>
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 1/6/2022
To: Trevor Gamblin <Trevor.Gamblin@windriver.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	"MacLeod, Randy" <randy.macleod@windriver.com>,
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 Steve Sakoman <steve@sakoman.com>,
	"Wold, Saul" <Saul.Wold@windriver.com>, tim.orling@konsulko.com,
	Michael Opdenacker <michael.opdenacker@bootlin.com>,
 alexandre.belloni@bootlin.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 21:20:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55923

On Thu, Jan 6, 2022 at 10:22 AM Trevor Gamblin
<trevor.gamblin@windriver.com> wrote:
>
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> Attendees: Alexandre, Joshua, Michael, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor
>
> ARs:
>
> - Joshua to send a patch limiting the size of diffoscope output for reproducibility

Merged as 52d5f76f54eac384f9480dffe96df089d9ee8f33 in OE-core

>
> Notes:
>
> N/A
>
> Medium+ 3.5 Unassigned Enhancements/Bugs: 75 (Last week 75)
>
> Medium+ 3.99 Unassigned Enhancements/Bugs: 38 (Last week 38)
>
> AB Bugs: 66 (Last week 70)

