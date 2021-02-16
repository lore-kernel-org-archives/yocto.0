Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.14556.1613508100424474690
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 12:41:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F0mTWzIf;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id b21so7001562pgk.7
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 12:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=fvDQmrAg6A8cUE8D/kSs5FTu15Qmd0CRO9syM2A96s4=;
        b=F0mTWzIf2KI2OVwgsjAYqvN8x1JyKz9vKaCS+ieUmt9UIc6v3RxR8Ww/xVQrkZU4FG
         9VsGfg5mlDMAKuSo4xVletfDJ2z4lzfl7oxFrEzbktX1AIRV2fc1JWTai4u2D4R/zkhh
         XBq9e7dv1nzGfGHa1v90jttohgTiccXlEFiCwsvPP7Wtw9+ZKGzW33YIcLk4XqYslnQ6
         TOg+zAiff2WahX7L/G0l61ta3N97mxVI3kI9PHBAhFTHuGsSrONoO3GAeJguabu3r0BQ
         NNEMais+0ic7BtWbDO1IJryPNYWYq22ma6ja1EnfySGaRNMec0ghzoJEgHDV/FD8y9qK
         RxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=fvDQmrAg6A8cUE8D/kSs5FTu15Qmd0CRO9syM2A96s4=;
        b=AczmzybLTNWMJXEs1kSXHHUJrdoXTNOa35WMrnvvrNLq5ZlbaXBRsSGJATewr4BPzM
         JfTyFbDVTFMjwIFGeMDSsyK/0ojBdNVz4AG6sakK4Fom9INN1R066iveDz8y15/lH22O
         eOtUxFwdCKYekZmakySVRnVlmOTzIL3NVmRGsDInJnYLNBfMR85CpAQsntB44xKwsRwO
         68yj5IeDzjqDtBFo5yFA1634O/n+J7TuxC8z7FSk1D49XIcfxtvuT6rJah/Zp+XXpU3T
         eHggis5V75lmhUjdqYpHCnzX4EGLMN8T85OYQ7I7olzwmQ8omMoNhRdI0y6ewkmyguDc
         i6ZA==
X-Gm-Message-State: AOAM533DH810wvGexCZ/BRB+0wzDMGnI1vj1Huhco835XAM3IhmtrlIG
	hjq4ja/7EgM3NTMxUXAdVaWQcF7PFYeiUQ==
X-Google-Smtp-Source: ABdhPJx6yVa2+rOdopXPqqmWYvYtDrjunm4SAW9vBHCAh130JnrmcWMJATXE72q81d4MRswbJcJgoQ==
X-Received: by 2002:a63:d20d:: with SMTP id a13mr20656193pgg.357.1613508099331;
        Tue, 16 Feb 2021 12:41:39 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:3567:4d62:c82e:b7f7? ([2601:202:4180:a5c0:3567:4d62:c82e:b7f7])
        by smtp.gmail.com with ESMTPSA id s7sm12609pgb.89.2021.02.16.12.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 12:41:38 -0800 (PST)
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20210216191013.GA36798@localhost>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <3e18b390-127b-1f50-077b-f5a8483089ff@gmail.com>
Date: Tue, 16 Feb 2021 12:41:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210216191013.GA36798@localhost>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Trevor,

On 2/16/21 11:10 AM, Trevor Woerner wrote:
> Yocto Technical Team Minutes, Engineering Sync, for Feb 16 2021
> archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit
Thanks for taking and sending the minutes.

-armin

>
> == disclaimer ==
> Best efforts are made to ensure the below is accurate and valid. However,
> errors sometimes happen. If any errors or omissions are found, please feel
> free to reply to this email with any corrections.
>
> == attendees ==
> Trevor Woerner, Trevor Woerner, Stephen Jolly, John Kaldas, Peter
> Kjellerstedt, Jan-Simon Möller, Armin Kuster, Alexandre Belloni, Steve
> Sakoman, Mark Morton, Randy MacLeod, Michael Halstead, Scott Murray, Joshua
> Watt, Yi Fan Yu, Richard Purdie, Jon Mason, Bruce Ashfield, Tim Orling,
> Paul Barker
>
> == notes ==
> - 3.2.2 started building
> - glibc-2.33 caused build issues in containers
> - YP has a reputation that it isn’t reproducible (?), we’re better than
>   99% reproducible
> - fixed a number of reproducibility issues in many recipes, still some remain
> - automatic update helper ran, please fixup any issues before -m3 (start of
>   March)
> - added umask (helps with reproducibility)
> - still have some autobuilder (AB) issues, please take a look
>
> == general ==
> RP: lots of churn due to unintative update and extended tarball issue
>
> RP: the state of pseudo is worrying
>
> RP: lots of low-hanging fruit wrt reproducibility issues
> https://autobuilder.yocto.io/pub/repro-fail/2021-2-15-rp/rp/
> I’ve removed some of the larger ones
> Peter: what’s the status of RPM?
> JPEW: there’s a fundamental problem with reproducibility wrt RPM
> RP: we’re not going to focus on RPM yet
> JPEW: you could use ptests and see what happens
> RP: reproducibility was originally a project that was started with debs, so
>     debs supports reproducibility the best (so far). there’s no good reason
>     why RPMs can’t work, but we assume the non-reproducibility issues with
>     RPMs has something to do with RPM, and not the build itself
>
> Randy: high priority valgrind bug, traced to glibc upgrade, traced down to
>     a select(2) call, could look at reverting a patch or two and see what
>     happens
> RP: we might need to take it upstream
> Randy: we’ll verity whether or not we need to get upstream involved. do you
>     want a patch to skip it, or wait
> RP: if we had a patch we could move the bug from high priority to med or low
>
> RP: the next high pri bug is ARM libevent. seems to happen more frequently on
>     ARM for some reason
> JonM: i’ll take a look after the call
>
> Randy: rust: rebasing my patches, build running now, if it works i’ll send
>     them to the list.
> Randy: looked briefly at fetcher changes (from Andreas), will get to it later
>     today or tomorrow (it’s not how the Rust community is doing it, so
>     we’ll have to see if that’s okay)
>
> RP: 1804 builder 3 has an issue (missing git user email)
> MichaelH: oops, i missed that on IRC. i’ll take a look
> RP: there’s a missing git module, wondering why the bring-up didn’t
>     notice/install it
>
> Steve: kernel CVEs
> Steve: on the weekly CVS reports we whitelist linux-yocto (Bruce applies
>     them but they’re not upstream so it gets missed) i disabled that
>     whitelisting and found over 60 CVEs just in Dunfell. do we want to
>     continue whitelisting them?
> Armin: typically kernel CVEs say “every possible version” they almost
>     never lock the version down, so i doubt it’s actually 60. creates a lot
>     of work because the list isn’t precise and many could be non-issues for
>     a specific kernel version. Bruce does keep up-to-date, so he brings in a
>     lot of the fixes (from upstream)
> Bruce: i agree with Armin
> Bruce: if we bring the fixes into our repositories too early, and then
>     they’re applied upstream, it causes even more work, so ideally it would
>     be preferable to wait until they hit upstream and pull them in that way
> RP: i like the feedback we’re getting from the automated CVE messages going
>     to the mailing list, but we’re not sure, as a public project, whether we
>     should continue whitelisting the kernel-specific ones
> AlexB: there’s an overflow issue with some of the older kernels (sub-version
>     number going above 255)
> Scott: so things like uname might report “wrong” info
> Bruce: i don’t have major concerns, as a project the best we can do is
>     keeping in sync with upstream (and let the vendor trees do their own
>     thing)
> RP: we have ~50 reported against master. i think it would be great wrt how
>     we’re seen externally to keep up to date with these things
> SteveS: as a first step we should probably turn on the visibility
> RP: it might be depressing to see the count suddenly jump so high as we turn
>     this on
> ScottM: maybe report, but keep separate?
> RP: maybe SteveS could look at the tooling to see if we could list them
>     separately
> JonM: maybe report a little this month, some more next, and then more; add
>     them gradually?
> RP: in any case i think we need to get this list out there; preferably in a
>     way that doesn’t tarnish our reputation
> SteveS: I can do a one-off to the mailing list and we can talk about it there
>
> Stephen: 3.1.6 should be built next week, do you think dunfell will be ready
>     for a build next week?
> SteveS: I’d prefer to wait a week or so, i think more pseudo stuff will be
>     trickling in
> RP: 1st of March is feature freeze for m3, so we either try to slot dunfell in
>     now, or after
> SteveS: thoughts on pseudo?
> RP: older glibcs are in a reasonable state, the problems we’re seeing are
>     with 2.33 and uninative. so as long as we stay away from glibc-2.33 i
>     think we’ll be fine
> SteveS: the other issue are the python3 changes that are rippling through
>     meta-oe
> RP: hopefully we’ll get through their review. my feeling is that we’ll end
>     up merging those, so we should be able to try the build early next week
> SteveS: if they pass Armin’s testing, they could be merged in
> RP: let’s aim for next week
>
> RP: there are quite a few reproducibility issues on master now, but they seem
>     “safe”
> SteveS: i’d like to wait on those, and do them after a next build
> RP: i’ve traced things down and feel better about a number of them, so i
>     think they’re okay
> SteveS: okay, we’ll aim for next week
>
> TimO: a cryptography module for python now needs rust to build
> TimO: i’ve been playing with qemu images under libvirt, it doesn’t come
>     up, but i think it can be solved with the qemu manager. would it be okay
>     to add the agent into core, or be a bbappend in meta-virt
> RP: dependencies?
> TimO: not much
> RP: sounds good for core
> Saul: point me at it
> TimO: it’s in poky-contrib, i’ll point you at it when i'm done
>
> Saul: LTS 2022/2024 are we still targeting “every 2 years” as stated on the
>     wiki?
> RP: it’s a decision to be made by the YP member companies. the TSC will
>     flag this at the next members meeting: 1) when to start next LTS 2) what
>     happens to the current LTS at that point? funding will influence those
>     decisions. no answer yet
> Saul: it’s a ways off, but some would like to be able to plan
>
> TimO: are we still doing a devday?
> TrevorW: i’d like to plan something
> RP: thanks. i’d like to see something. i’m worried about the hole we have
>     in advocacy. the advocacy mailing list is a good place to have that talk.
>     make sure to loop in people like Nico, AWaffa, DReyna,
> RP: i could find the right people at LF if we need to setup a registration
>     (payment)
> TimO: i really miss those round-table OED{E|A}Ms that we used to have
> TrevorW: it’d be great to have a round-table on a Sato replacement
> TimO: also a gui tester (dogtail?)
> TrevorW: the big thing will be advertising
> RP: LF and Nico can help with that
>
> TimO: when the next OEHH?
> TrevorW: next wednesday, feb 24th
>
> 
>

