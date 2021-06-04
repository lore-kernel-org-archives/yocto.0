Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7399.1622809653211375705
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jun 2021 05:27:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rHho19pz;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DDC7238C066A
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 12:27:31 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id t3so10908617edc.7
        for <yocto@yoctoproject.org>; Fri, 04 Jun 2021 05:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ch1xcqHoPhHu0Nn7KS4G+j3XV3IMjDOQABwUE1QJNg=;
        b=rHho19pzOwsQJZh4+0KaGlB685da+wLuWznzXIrlkkTWS9jOj+xghDQVbVMgxPQCLi
         n0UO6lXTkghMxq8kBZBUJMAlQQjq/iKH4lJTBgl5+zqaS5AY4CpAGqYTaQJctCYbJ20a
         7RWhwrg+u7NsDlI4o5ZSR9bu3HIsnz0cXigvdIATHBFXDmA+AK1vQ/rmxnUdVuTm6htz
         V7DVQDk/eQrFrZZUyWPD+1eIdhG6WLFKf4XQwZKTuEMRgHtrEYmgC9bkxa5/Szz32r7A
         suoWdO2t9VRa0D7d9IIiwUdWjrTCtAXxuAHeJZKQ+UMTL7ggoL5om42t30yIEhduMTkz
         cpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ch1xcqHoPhHu0Nn7KS4G+j3XV3IMjDOQABwUE1QJNg=;
        b=A7UUzIuM1M6mRWfyaZvA/6OP4AjZ/Iig2uDxUpy3xz4d9l9mzB7WkE0BlUsGYRuckh
         tGSOvEosxmueVSRoUAder/VenuX+sBqswzmjX1bo/UMemIwuYfcNCpakIwfiHgjm+o0v
         TTVQzwGQkUsSNm5d1+32aSmEb9G9wSee2jmel3ROyo8s/vRV0jZo2vDSKQ9W4SIORU0T
         jUPknqyoqrwIpL1pztvuqy8IHKsRve/EGd4QUOHhuc4GCrIc9fgYGPnL8+8B7h8azRIW
         JgL7SXzz0+9jmAsYunwaFyLhelZBRQIGCHYDKRcXBLpe7lsdE+iSzzlLhWqDraiZbAgf
         X3ug==
X-Gm-Message-State: AOAM530ogzoweH5kvelpPr0Xk2nDILBsk+EpWYCoeXbbSDzlEO9uSAfv
	lq6nBPVYDRGF4Zx0iJ/nXoCftlQEUN6b/w1KoTKRbMBGtHFJ2A==
X-Google-Smtp-Source: ABdhPJyU8qZH9zkIeqBE/xqs2jgRSjICqsakm8DORCmmWe0I5WwNvi5j3hjoGPxrHRhsRYOJcuhx4Q2LhjZbPIWdI0g=
X-Received: by 2002:aa7:c885:: with SMTP id p5mr4626901eds.234.1622809650334;
 Fri, 04 Jun 2021 05:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210604030619.35679-1-kai.kang@windriver.com>
 <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com> <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com>
In-Reply-To: <8a264bd7-49f4-1672-55b6-e97be9556ccd@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 4 Jun 2021 08:27:18 -0400
Message-ID: <CADkTA4NLc6OHOjPrhvEyCp=s15JHZK4yRkU1EoRD=W-Pg3ApbA@mail.gmail.com>
Subject: Re: [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Kai <kai.kang@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 3, 2021 at 11:35 PM Kai <kai.kang@windriver.com> wrote:
>
> On 6/4/21 11:22 AM, Bruce Ashfield wrote:
> > On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
> >> From: Kai Kang <kai.kang@windriver.com>
> >>
> >> Replace hardknott with honister in layer.conf which aligns with
> >> oe-core.
> >>
> > I had added this back in April, but apparently didn't push the change.
> >
> > I also noticed that I've been updating the wrong branch with compatibility.
> >
> > That should all be fixed now.
>
> Hi Bruce,
>
> Thanks. I have seen your commits.
>
> But 3 items in LAYERSERIES_COMPAT_realtime will cause layer index show
> warning:
>
>    WARNING: YPCompatibleVersion.name: dunfell gatesgarth hardknott:
> length 28 exceeds maximum (25), truncating
>
> Could we only keep the latest LAYERSERIES_CORENAMES (honister) in branch
> master, please?

Nope. It is compatible with those releases, so they need to stay. I
see no valid reason to be limited to a certain number of characters.

>
> Or it set in oe-core's layer.conf:
>
> LAYERSERIES_CORENAMES = "hardknott honister"
>
> we just align with it to keep the latest 2, please?

That is just as arbitrary, I'll keep it as-is.

Bruce

>
> Regards,
> Kai
>
> >
> > Bruce
> >
> >> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> >> ---
> >>   conf/layer.conf | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/conf/layer.conf b/conf/layer.conf
> >> index 007f578..8ae67ba 100644
> >> --- a/conf/layer.conf
> >> +++ b/conf/layer.conf
> >> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
> >>   # This should only be incremented on significant changes that will
> >>   # cause compatibility issues with other layers
> >>   LAYERVERSION_realtime = "1"
> >> -LAYERSERIES_COMPAT_realtime = "hardknott"
> >> +LAYERSERIES_COMPAT_realtime = "honister"
> >>   LAYERDEPENDS_realtime = "core openembedded-layer"
> >>   LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
> >> --
> >> 2.17.1
> >>
> >
>
> --
> Kai Kang
> Wind River Linux
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
