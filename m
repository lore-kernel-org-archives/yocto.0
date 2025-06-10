Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681EAC5B543
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 14:46:57 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.89065.1749566807672742410
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 07:46:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i9c2RFqU;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acb5ec407b1so998193566b.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 07:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749566806; x=1750171606; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q1QhKP9h3YEU9spV261xDZ9LWy/kS2hdcjXSvFnIGL8=;
        b=i9c2RFqU9qee7G3JPlsgorCToRQtnnxHwODNn1uS9F46aHh9JJjjb1Ql/mFCUkjUWp
         zgiT+Acs+wK7wH3jwgGWgB6vLa5TJPrDczLp8H4eRH79V1pB9hjdAMHUWwHx4EuVs4yK
         2Cvn4saGOoxJ4MGYnH63ewSQMihQZON+SsyyADHKqzNnmWT5FE/ye7AG2M2f5/GEn450
         PLGRouV/6YqZu2M9v990m6Rg095ZtiKPWQlGLSb/3na/DFijiT/GUPybyjIkUnsDv6qP
         jDFjwDnyQ7Q1McoctiYOaY/xs6yrf6wqlI+zf89PURk6uK3PFEX7ip+AZ9wyABbiLzze
         J60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749566806; x=1750171606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1QhKP9h3YEU9spV261xDZ9LWy/kS2hdcjXSvFnIGL8=;
        b=r1kiTII6iXyqDskEhOW/Lf6V27yusbKnhxtJMKbodkrrcmG/kxtEZHq0qjOzHQmH3t
         ZZGMMkFK3eEodbXPCEoGkeuJCAmTiNjxNLTk8ts+9JUx8FKkqNtYzZKOzKcaZAjyeL0y
         y6H5LJh4+rEKlqB9YRsGJd9kzKi4eRV7SKEOzACTYPSUIw1DQE1YasHh60yUOrwa68o5
         kF221B5pVd3jh+8pWPakqFf0yx9rWmrdhQVZRgggkLxKKvguE8cJgwpRskARNAtj/Uns
         A4wWkQ/SqGLl9M3RheWdPG8OZMjcprmiKfLPAh0PuAGgL00GvUcFCZ4ER3U2WZUk8nNn
         VgiQ==
X-Gm-Message-State: AOJu0YzdxTCg6cjdbt+GwTEdafwd/dv4qzDrd81TS53GD5q5kBI9KkiI
	Nu23o0XCq9o34BSI1iCRhEFOaqBIoNu+j69wWihBCaF5Ojs7f9FNFzkhT9yait1G
X-Gm-Gg: ASbGncsnH+OzfcX34i6CywgMlMZpLKpF74xZcR6lPYJ+1mn6/JuEzXk00icdYCWjF6Q
	MH+X4XFLFtOkqaq/twT+ty/PFS/43DstCw3Z4X9+Ju6EhheN3WjW9zAVgxWrm6BXDyDARg+TSF3
	8kSLrizto8zlRgDrXCls/aMmN8kDXmzV9iRy9DqZLuZvXqOmBF2RGxmKP/iQZlOpTIkX83pwo4G
	M0mBeSyfLlqUHvh4lMtaufwwLe39c0v7RHMR+iUVHSayzZCKaN7yQbRkLEhbOEJ2D7XHjXJnvu5
	pTwVmL9YobHachYvflxSYFyyVoqIT3Dkvln3WaNuR7Z14QYZzwupnIkBZdy9m8Vpmy4oqBUUt+Z
	gizSJ
X-Google-Smtp-Source: AGHT+IHPfCqtJWSmsQninwwMU5yHg4U58Bkgupk4UGacNNwDS81+AHIT3W0Ax9SUYSXgtVhVW6trBw==
X-Received: by 2002:a17:906:6a16:b0:ade:7c3:7e14 with SMTP id a640c23a62f3a-ade1ab8771dmr1640726366b.46.1749566805502;
        Tue, 10 Jun 2025 07:46:45 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db58180sm738327566b.62.2025.06.10.07.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 07:46:45 -0700 (PDT)
Message-ID: <8ce48df3-b8a2-4b95-96df-bf0fc1ac1eaa@gmail.com>
Date: Tue, 10 Jun 2025 16:46:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto Project Status 10 June. 2025 (WW23)
To: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com,
 "openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>
References: <CAK5yBb-PRoA1biG6PA_hX_RndM9QqG7G_7ikYFUZE3goEaP-_Q@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAK5yBb-PRoA1biG6PA_hX_RndM9QqG7G_7ikYFUZE3goEaP-_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 14:46:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65498

On 6/10/25 16:40, Stephen Jolley via lists.yoctoproject.org wrote:
>
> Current Dev Position: YP 5.3 M1
>
> Next Deadline: YP 5.3 M1 Build date 2025-06-09
>
>
> Next Team Meetings:
>
>  *
>
>     Bug Triage meeting - Thursday June 12th 7:30 am PDT
>     (https://zoom.us/j/454367603?pwd=ZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09
>     <https://zoom.us/j/454367603?pwd=ZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09>)
>
>  *
>
>     Weekly Project Engineering Sync  - Tuesday June 10th 8 am PDT
>     (https://zoom.us/j/990892712?pwd=cHU1MjhoM2x6ck81bkcrYjRrcmJsUT09
>     <https://zoom.us/j/990892712?pwd=cHU1MjhoM2x6ck81bkcrYjRrcmJsUT09>)
>     <https://zoom.us/j/990892712>
>
>  *
>
>     Yocto Project Patch Review - Thursday June 12th 10am GMT and
>     Monday June 16th 9am PDT
>     (https://zoom.us/j/97762397148?pwd=1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1
>     <https://zoom.us/j/97762397148?pwd=1xkiC9hp9SjEonaTaONwTb6iWry4Eb.1>)
>
>
> Project data dashboard: https://dashboard.yoctoproject.org/
> <https://dashboard.yoctoproject.org/> 
>
>
> Key Status/Updates:
>
>  *
>
>     YP 4.0.27 and YP 5.2.1 were released.
>
>  *
>
>     YP 5.0.10 is due to be released.
>
>  *
>
>     YP 5.3 M1 is now due to build
>
>  *
>
>     Patches continue to merge into master for upgrades and fixes.
>
>  *
>
>     The clang build time and size increases continue to cause
>     significant concern.
>

Is there more info available on this somewhere? I'd be interested if
there are any concrete recipes/configurations where this is showing
prominently and could be used as a benchmark. Or is it more like an
overall "lot of small things add up to a big one" issue?

>  *
>
>     Patches for changing the workdir layout for unpack have been
>     proposed with potentially significant impact for git based
>     recipes. Feedback/review is welcome.
>
>  *
>
>     Network access outside of do_fetch now causes yocto-check-layer to
>     fail which is a new change/requirement for Yocto Compatible v3. We
>     need to work out how to handle this for go recipes in particular
>     in meta-openembedded.
>
>  *
>
>     Patches were sent out for a proposed toolchain selection mechanism
>     implementation, feedback/review is welcome.
>
>  *
>
>     Icecc.bbclass was removed.
>
>  *
>
>     lz4 was removed from HOSTTOOLS as it was unneeded.
>
>  *
>
>     Fitimage restructuring was merged, thanks Adrian.
>
>  *
>
>     The project has switched to a different CDN setup with a different
>     URL. This is proving reliable on the autobuilder so far, huge
>     thanks to Michael Halstead for working on this.
>
>
> Ways to contribute:
>
>  *
>
>     As people are likely aware, the project has a number of components
>     which are either unmaintained, or have people with little to no
>     time trying to keep them alive. These components include: devtool,
>     toaster, wic, oeqa, autobuilder, CROPs containers, pseudo and
>     more. Many have open bugs. Help is welcome in trying to better
>     look after these components!
>
>  *
>
>     There is an issue open upstream with the openssl project related
>     to making path relocation of openssl easier (as used in our
>     buildtools tarball and SDK). We’d love assistance in moving this
>     forward and getting some kind of upstream feature merged to make
>     this easier: https://github.com/openssl/openssl/pull/19260
>     <https://github.com/openssl/openssl/pull/19260>
>
>  *
>
>     There are bugs identified as possible for newcomers to the
>     project:
>     https://dashboard.yoctoproject.org/bugtriage/#newcomer-container
>     <https://dashboard.yoctoproject.org/bugtriage/#newcomer-container>
>
>  *
>
>     There are bugs that are currently unassigned for YP 5.3. See:
>     https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium+_5.3_Unassigned_Enhancements/Bugs
>     <https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium+_5.3_Unassigned_Enhancements/Bugs>
>
>  *
>
>     We’d welcome new maintainers for recipes in OE-Core. Please see
>     the list at:
>     http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/include/maintainers.inc
>     <http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/include/maintainers.inc>and
>     discuss with the existing maintainer, or ask on the OE-Core
>     mailing list. We will likely move a chunk of these to “Unassigned”
>     soon to help facilitate this.
>
>  *
>
>     Help is very much welcome in trying to resolve our autobuilder
>     intermittent issues. You can see the list of failures we’re
>     continuing to see by searching for the “AB-INT” tag in bugzilla:
>     https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=AB-INT
>     <https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=AB-INT>.
>
>  *
>
>     Help us resolve CVE issues: CVE metrics
>     <https://autobuilder.yocto.io/pub/non-release/patchmetrics/> 
>
>  *
>
>     We have a growing number of bugs in bugzilla, any help with them
>     is appreciated.
>
>  *
>
>     Regarding bugs, even if you can’t fix a bug, submitting a failing
>     test case that can reproduce the issue significantly improves the
>     chances it might get fixed.
>
>  *
>
>     Further help on optimizing build disk usage would be most welcome.
>
>  *
>
>     Ongoing project development plans are being developed in this
>     document:
>     https://docs.google.com/document/d/1xsnN_HcaMhqg6Dn1P_19AnumDaUMQSdFZ_I4rjD830A/edit?usp=sharing
>     <https://docs.google.com/document/d/1xsnN_HcaMhqg6Dn1P_19AnumDaUMQSdFZ_I4rjD830A/edit?usp=sharing>
>
> We need to continue to develop this as it will allow us to potentially
> find ways to fund specific work items.
>
>
> Tracking Metrics:
>
>  *
>
>     WDD 2740 (last week 2778)
>     (https://wiki.yoctoproject.org/charts/combo.html
>     <https://wiki.yoctoproject.org/charts/combo.html>)
>
>  *
>
>     OE-Core/Poky Patch Metrics
>
>      o
>
>         Total patches found: 1089 (last week 1089)
>
>      o
>
>         Patches in the Pending State: 157 (14%) [last week 157 (14%)]
>
>      o
>
>         https://autobuilder.yocto.io/pub/non-release/patchmetrics/
>         <https://autobuilder.yocto.io/pub/non-release/patchmetrics/>
>
>
> YP 5.3 Milestone Dates:
>
>  *
>
>     YP 5.3 M1 Build Date 2025-06-09
>
>  *
>
>     YP 5.3 M1 Release Date 2025-06-20
>
>  *
>
>     YP 5.3 M2 Build Date 2025-07-21
>
>  *
>
>     YP 5.3 M2 Release Date 2025-08-01
>
>  *
>
>     YP 5.3 M3 Build Date 2025-09-01
>
>  *
>
>     YP 5.3 M3 Release Date 2025-09-12
>
>  *
>
>     YP 5.3 M4 Build Date 2025-10-06
>
>  *
>
>     YP 5.3 M4 Release Date 2025-10-31
>
>
> Upcoming dot releases:.
>
>  *
>
>     YP 4.0.27 was released.
>
>  *
>
>     YP 5.2.1 was released.
>
>  *
>
>     YP 5.0.10  is ready for release.
>
>  *
>
>     YP 4.0.28 Build Date 2025-06-30
>
>  *
>
>     YP 4.0.28 Release Date 2025-07-11
>
>  *
>
>     YP 5.2.2 Build Date 2025-07-07
>
>  *
>
>     YP 5.2.2 Release Date 2025-07-18
>
>  *
>
>     YP 5.0.11 Build Date 2025-07-14
>
>  *
>
>     YP 5.0.11 Release Date 2025-07-25
>
>  *
>
>     YP 4.0.29 Build Date 2025-08-11
>
>  *
>
>     YP 4.0.29 Release Date 2025-08-25
>
>  *
>
>     YP 5.2.3 Build Date 2025-08-18
>
>  *
>
>     YP 5.2.3 Release Date 2025-08-29
>
>  *
>
>     YP 5.0.12 Build Date 2025-08-25
>
>  *
>
>     YP 5.0.12 Release Date 2025-09-05
>
>  *
>
>     YP 4.0.30 Build Date 2025-09-22
>
>  *
>
>     YP 4.0.30 Release Date 2025-10-03
>
>  *
>
>     YP 5.2.4 Build Date 2025-09-29
>
>  *
>
>     YP 5.2.4 Release Date 2025-10-10
>
>  *
>
>     YP 5.0.13 Build Date 2025-10-13
>
>  *
>
>     YP 5.0.13 Release Date 2025-10-24
>
>  *
>
>     YP 4.0.31 Build Date 2025-11-03
>
>  *
>
>     YP 4.031 Release Date 2025-11-14
>
>  *
>
>     YP 5.0.14 Build Date 2025-11-17
>
>  *
>
>     YP 5.0.14 Release Date 2025-11-28
>
>  *
>
>     YP 4.0.32 Build Date 2025-12-15
>
>  *
>
>     YP 4.0.32 Release Date 2025-12-24
>
>  *
>
>     YP 5.0.15 Build Date 2026-01-05
>
>  *
>
>     YP 5.0.15 Release Date 2026-01-16
>
>
> The Yocto Project’s technical governance is through its Technical
> Steering Committee, more information is available at:
>
> https://wiki.yoctoproject.org/wiki/TSC
> <https://wiki.yoctoproject.org/wiki/TSC>
>
>
> The Status reports are now stored on the wiki at:
> https://wiki.yoctoproject.org/wiki/Weekly_Status
> <https://wiki.yoctoproject.org/wiki/Weekly_Status>
>
>
> [If anyone has suggestions for other information you’d like to see on
> this weekly status update, let us know!]
>
>
> Thanks,
>
>  
>
> */Stephen K. Jolley/*
>
> *Yocto Project Program Manager*
>
> (    *Cell*:                (208) 244-4460
>
> * *Email*:                 _s
> <mailto:stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com_
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65497): https://lists.yoctoproject.org/g/yocto/message/65497
> Mute This Topic: https://lists.yoctoproject.org/mt/113570840/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


