Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web09.6091.1615888175611911892
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 02:49:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=X6a0Ygz3;
 spf=pass (domain: linaro.org, ip: 209.85.218.50, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f50.google.com with SMTP id ci14so70881073ejc.7
        for <yocto@lists.yoctoproject.org>; Tue, 16 Mar 2021 02:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CS/u0HyccCuj/YAPEueGjfF8NaKm/i6Na6rAO9ntGCk=;
        b=X6a0Ygz3uYMJ/O1Bdyvtw0oIiU7w1VXPkS4k1MofgESwe+d/AYf7xzAfNgXMIVdIS4
         7GMBrVPs9aNBJ0NoxHpcYJ7tbSLh3g77/j6k7JdM4b6PjXNwUSecttzEfLIuFqIbTe3V
         uOTgap7LddUaxGY7ywYGfUJFI+Q+iVS5bzemdC7ZqQKYe9N3drTvU3JOKQ2mE1Y75Lbm
         4bn++kHr+zpvWUaJxYTEH+X5rAf5j4Ul0sZWcUJbcz7bP27ARI9De6IVGL+vMXptbmuh
         IFpnSScvEHJbAmhLkIBCtpGLrPGtVAMIneVdroyzrkl7UnBtvokxBijm/2iOZUK2R3tw
         WihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CS/u0HyccCuj/YAPEueGjfF8NaKm/i6Na6rAO9ntGCk=;
        b=WAPhXKG+WiVG9dLS7al8pAYvxScG62TfNt1s5a0ceNN8LIeTZX6Aw/Y3hmToWGpPR0
         2RjSMh7Y87iEYFyjolQzIFTzA7Idp6VZbMLFit7vC4cplT4bMtjPjLortEU3OpFW2MWP
         +qOP4U/4/Jg9H+zfWXSlGjSYE4qhYGq8ep2rFDXeoCu6q0T7yWZsQDjnt8hAlBIMORLL
         /yoWDta8uw1iJ81L+/6S8gv7DhJ2bOL+U7fA7PHNfXfBT0tv+KpaHAcbl1lzuLwCviFI
         gsdK4+pDQ8b21IkbywYV85tLuh2UaOsGqOfwnPB4b31wN196dipCrnfC3+CxdcSSHi++
         2ALQ==
X-Gm-Message-State: AOAM533ArORwAiuMy0rTxeExktOPxYeYBTzhohKkAouHrSwJCnXgPrWB
	VKRXTAjINfEx0KAIYmBQw7Jk7P5WNvVd8xGMTsoXmQ==
X-Google-Smtp-Source: ABdhPJxtDyalXEivP39oVmEH0D3G3QJnI/XhhCU7VU9wab6EmVKpXYjzdw4jo1+FCpz1Fnh8/UoTEij+catZ0vEk17U=
X-Received: by 2002:a17:906:fc1c:: with SMTP id ov28mr28807085ejb.342.1615888174038;
 Tue, 16 Mar 2021 02:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net> <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net>
In-Reply-To: <247c426e3db4a7f031aad842303134f1@vivaldi.net>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 16 Mar 2021 10:49:23 +0100
Message-ID: <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
Subject: Re: [yocto] Building test code?
To: jchludzinski@vivaldi.net
Cc: akuster <akuster808@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 16, 2021 at 8:07 AM jchludzinski via
lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> It certainly appears to be BUT I'm not certain what I'm looking at?
>
> What is meta-openembedded?
>
> Is it a GIT repo that can be cloned and built?

Short answer is yes. The whole Yocto Project / Open Embedded concept
is based around 'layers. A layer is a repository that contains recipes
(and/or machine/distro, ..). The Yocto Project releases include a
couple of common/core layers, but there are plenty of layers out there
which can be used
I am sure there are quite a bit of documentation on this topic, but
perhaps you might want to start with:
https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-project-layer-model


>
>
>
> How do I use this to build spidev-test?
>
>
> ---John
>
>
> On 2021-03-15 19:54, akuster wrote:
>
> On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:
>
> I got a piece of code from github:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c
>
> I'd like to add it somewhere under /*tools/testing*/ and build it there.
>
> Not sure if this is appropriate? If so, how do I go about this?
>
> If not, what's the best way to build this?
>
>
> Is this what you are looking for?
>  https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-test/spidev-test.bb
>
> -armin
>
>
>
>
>
>
>
>
> 
>
