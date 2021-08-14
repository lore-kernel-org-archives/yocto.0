Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.1121.1628955952675360800
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 08:45:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=QEBxIG4f;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.54, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f54.google.com with SMTP id v4so10290155wro.12
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IJ82k4IAI8CVMKNV8jAlkB+xLovE3+JkMJvvX0EwiBg=;
        b=QEBxIG4fr++WJqTToMAegJKjKTqsFA/eR1cGPYl2grPc2CWJRCYgtyhlwN6EZZDJ30
         MGtJKqbVdedaimsmTCLeyE7euCBx6TAtX/G7fRheP7z/GJYJE/+v0m+iR+FkreybBkRx
         7Wgti/+QwIwWHJGKeQtpnlkea3h4SkqY0uWWGACB+tQI4VgPLRRaRUA208V5kbgQd1QH
         4ez5doVWoY8+wY2/h9MKxbiwlI0dqmaZW3s8gHxinDivNxI3DAWkmWPTU2qtFvWoaeXP
         unfXAmzNlXkPCqUg/TrYtpnEI8+CPxupRYxp1AUJDgM9/z6EyP2BftZVk5i1uXUyT64i
         OQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IJ82k4IAI8CVMKNV8jAlkB+xLovE3+JkMJvvX0EwiBg=;
        b=QxdOiPrmRa5ZrAfNtuCXcJKzzoY5SK5LMC/Q61p9fne7X+A6+dv8891qACtvMJz4PT
         FRBOszmU3gq/sRLRwHdqSDh6BvyjReNps5hqRSk+ka6LBJKKMYMNEuteurAESAqcvMlm
         sZ+uDADO0jr5cXvczUJT4/96DVHwZF7YkEPXvPyMrPfUxGBBU/U7tX/0UGOQsX5f6VEX
         fgVzZmD9bfGSRz8pEV0dw7Safy/myqig/O7Ljzs0BBXMgDGk0LBOaIFURJLMaireAdpj
         mUNcfAU30KyBtPpVLsBv6f9XFv4KH0WLfEiXum/h1TOjZ4/utNNGZMEdTEI0G9cwLuZA
         WaUA==
X-Gm-Message-State: AOAM530R/kGIPMQU8eViVCobk4SFYW7Vp1IkaKoToR6L6h6jSBbSja+k
	LN6f7Gn+MtwB4KtUuBIrPWWvzrt5IvH4wtccHyro8g==
X-Google-Smtp-Source: ABdhPJyvfIC1tpWBYdXLnal3wQeeV8j5i9NuN1LJg+Yv4tyXU0pHqPmXUPOYltywdIl+EONaRnk0kcb+Rc/+ZKWNHoE=
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr8792173wrj.329.1628955950752;
 Sat, 14 Aug 2021 08:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
 <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com> <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
In-Reply-To: <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Sat, 14 Aug 2021 05:45:39 -1000
Message-ID: <CAOSpxdYBUeZc0pu_L0cEwxFaS6Lb9PRHpmvuHQ_9jmf3s3MNtQ@mail.gmail.com>
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Aug 14, 2021 at 2:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>
> Am Fr, 13. Aug 2021, um 23:59, schrieb Steve Sakoman:
> > On Fri, Aug 13, 2021 at 11:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> > >
> > > Hello all,
> > >
> > > I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
> > >
> > > Since then, the build is failing with the following message:
> > > ```
> > > ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> > > ```
> > >
> > > Indeed this line, and even more the one after look strange.
> > > https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104
> >
> > Note that you are using the master branch of meta-oe              ^^^^^^^^
> >
> > If you use the dunfell branch you won't have this issue.
> >
> > Steve
> >
> I feel like an idiot right now. Thank you! With dunfell it builds indeed.

We've all done this sort of thing :-)

>
> Now I have to deal with the following:
> ```
> ERROR: Layer multimedia-layer is not compatible with the core layer which only supports these series: dunfell (layer is compatible with honister)

Looks like another case of the layer's master/honister branch instead
of dunfell.

Steve

> I guess I'll have to analyze the layers .conf file to see where that comes from.
>
> Thanks, Manuel
