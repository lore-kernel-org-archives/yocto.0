Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F171FC27C75
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 08:47:09 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.6507.1718182018625837482
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 01:46:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ESFO1X9n;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52c7f7fdd24so2530029e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 01:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718182017; x=1718786817; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e+CjCsOpOHgbe5785ZjuYM1+NJSxx81aN+f5C5V8gPU=;
        b=ESFO1X9ngugt/khUevZb5M4m3Dof+fMUl8tpUWn1wy5Wa7tWvZoJYB+lTTIGdwNC0A
         AdrtaJaNrTW9EDFHf/RPEs+7b/fHmAvGKMFG9JugtUdUgoJddztU6xAF8pzcMIwwztj7
         dbKHx/1KeWVhNCDhM3uQjLSVdjzeJPHOi+kVxrWdPlYETIOvbWdkxsWwqktMszjF7Rpe
         XV958Imp59p4fHCZO9pWCTREKlkALBihs2ZbCCxqwsLeWsHTulMxF3RLWlEc1NopZftT
         A5uIFYaGoPdU/dkDH4BfRheIxYNkLQ9QS4bHAhxjkFu/+4Cp2Dy5+qm0VXa7v+Vsv+BG
         jgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718182017; x=1718786817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e+CjCsOpOHgbe5785ZjuYM1+NJSxx81aN+f5C5V8gPU=;
        b=AP8RdnY/sVaGLv7VVceaGWlt7ThZ2OiToSCB8HKBa3GmWT4dfB9SoTN14p6TBsv1wv
         SbfjFGSSUhkgPxgGhaFuvFJ7V0BLLICaDNQZ/Wv+pfieE4630Bjgn597CAEBMZWysxVI
         WCqvVlOK0BexnBkItdYIac13bBTuPVV+9sPhMt1tnTvK/15BVWNVFzU4F8gz+ill2sFf
         hTML7s0z/D9pX0ofGcE0nbd5Tf/XrO45ovbp7/sRu+mfJN8tU4hwxOWG2ma3/x2eIH7e
         eueZHlLuhdLI6D1IqxdkWhwskLmlqOxzaJ5yO6iGYvEIXy32klPY8aaqHhgnjxSx3HsJ
         gBPg==
X-Forwarded-Encrypted: i=1; AJvYcCUbuvdRVZV/wd8yUV1MWhHiHp8RoprV8wUjcwaw991i35cZpjRtOWUvmq5YqLFngrSfNh18obpqQZnLPO/qrrSNlwm105IWrhY7s5NO
X-Gm-Message-State: AOJu0Yz6Z1poQ/DMLvT/3tRLJT4NtAPsnTRP3dDrAbYHbuwNg1mxAL6E
	FxBr0cpkrEfIlTYzgPCD3u3Dd1AbTojOvzA8nq7cyVsN/93Xp99e7h9QHvz/LLCXDdvfR4hUzrW
	ib+FE/GJd51PCGZh3OaNWIxGrsCw=
X-Google-Smtp-Source: AGHT+IFjlyqREq1YYldBKxj+FqzQrEoX3NDNp0RUICfSxic4yinjfIzQMu5qTiZwPGaZjJEuk1G5EeBDQqlH6h8yFqk=
X-Received: by 2002:ac2:4254:0:b0:52b:79d6:5c28 with SMTP id
 2adb3069b0e04-52c9a3fd532mr602472e87.52.1718182016581; Wed, 12 Jun 2024
 01:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240502105745.3073153-1-alex.kanavin@gmail.com> <17fdbe98636e4e93ba2f7dfd52e294d2fb479ff3.camel@linuxfoundation.org>
In-Reply-To: <17fdbe98636e4e93ba2f7dfd52e294d2fb479ff3.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Jun 2024 10:46:56 +0200
Message-ID: <CANNYZj_iodZF96JEnnUi6_fa5_CqO1UGhZSHYur=iKWjbMA=yQ@mail.gmail.com>
Subject: Re: [Openembedded-architecture] [RFC PATCH] bitbake-setup: add the
 proof of concept implementation
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: bitbake-devel@lists.openembedded.org, yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org, 
	Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 08:47:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63324

On Mon, 10 Jun 2024 at 13:22, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> From the init command, it isn't clear what build.sh is for. I think it
> should also mention the traditional build env file too, make it clear
> where that is.

The printed note is: "Run path/to/build.sh to build using this configuration."

Can you suggest a better wording (I have ideas, but want to hear how
you would put it)?

> I struggled to find the --build-dir option to init, I tried to specify
> a direction as the next parameter but that has to be named.

I wanted to keep build-dir as an optional argument, so that users
don't have to specify it and the tool will decide for them.

This can be re-done as an optional positional argument (with
nargs='?'), but then everything else would have to be done via named
options (e.g. picking one configuration out of several - note the json
nests the config in ['bitbake-setup']['default'] to allow for multiple
entries and alternative tools in the future).

> For the cloning of repos, I wondered if we should have some config file
> in HOME with a pointer to a central downloads/clone cache? The
> autobuilder will certainly need something like that. Whether we could
> use a common cache with DL_DIR remains to be seen too.

Having a tool config on disk crossed my mind several times, but I left
it out from the prototype due to uncertainty about how writing to it
should be handled by the tool. There is a spectrum of possibilities:
from a rich 'git config'-like UI to handling it as a strict read-only
item that needs to be manually created and edited. The config could
contain other entries which are currently hardcoded in the tool  and
can be overridden from command line, e.g. the location of the default
configuration repo.

> I'm not sure I like the build config being moved out the way when
> updating. The tmpdir "ABI" and conf file versioning should protect us
> from the worst problems?

Yes. The tool could back up the previous build/conf when that has to
change, but preserve everything else in build/.

> Also, once you're "in" a build environment, can we can bitbake-setup
> without parameters, i.e "bitbake-setup status" and "bitbake-setup
> update"? Effectively that means teaching init-build-env about the
> environment it is in so that bitbake-setup can then read the right
> config from the env.

Yes, I'll look into it.

> For demo purposes it might help if we could add a "poky-ng" config,
> which would be poky, but built using the config from the individual
> bitbake/core/meta-yocto/docs components. That shouldn't be too hard to
> add?

I think so :)

> I'll be experimenting a bit more but I wanted to give some feedback now
> I've taken a look.

Thanks :) I can do a v2 once we settle the above points.

Irrelevant but hopefully amusing implementation note: I've written
this with 'nano' like pretty much everything else over the past 25
years. I'm that first person in https://xkcd.com/378/ .

Don't be shocked, I have reasons:
- too lazy to learn a 'real' editor or install an IDE. Emacs in 1998
made a *really* bad first impression, sorry.
- lack of 'modern' features like syntax highlighting, code folding,
cross-referencing etc. forces me to be concise and get to the point,
and don't write more code than I can fit into a single brain (or that
can be read from a github webpage and fully understood that way).

I can fumble my way through vi when I'm forced to, but otherwise nano
all the way.

Cheers,
Alex

