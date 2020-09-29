Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
 by mx.groups.io with SMTP id smtpd.web11.5512.1601412432404406192
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 13:47:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NmbrlMp7;
 spf=pass (domain: gmail.com, ip: 209.85.166.52, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f52.google.com with SMTP id v8so6297233iom.6
        for <yocto@lists.yoctoproject.org>; Tue, 29 Sep 2020 13:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=EPRA/eavgFoC5Oslh9zrsjth5J6RaGUPkunO3l0GPns=;
        b=NmbrlMp7yywdGXsWZ6Nt5SbNPswfzXwicZVEx3E9AvLgkqFHnL6Y46mfLsA+KLwOKu
         fljkK7xg189NafEyECQbvRKrrgTvAmxeAH/CXnB/r/fhtnzGnWWLthhHevuIZqtT9N+L
         RiQm1TWNiPc5kLjxjbJCi665U9gvNFixpE7UPkTzd6qDTAqQEsvPe/f9kRXbhZtRwIWP
         gpB4rwN9zM6DQyT+6ikpdypOsUEzuECC9DlCpZSf4dqltTjW2gfovWMnnI0INEiyQY9R
         45Hai+z6PxFbkx9PFIY+Cc/i3c+mdYwQGcDQz7cNSZbhbjaAHp5I1tfRnkVnwnnugoHN
         NiRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=EPRA/eavgFoC5Oslh9zrsjth5J6RaGUPkunO3l0GPns=;
        b=V1HAMK6ud6dSQ5j3wK7xEwUJ2+4RLq5Y+Gp3Hjabjv+zTxL//PV8v+gDOCo5S0CJxL
         gW/KB6pirsBhIt31r5CpyaXHJmxN4S2WA/Cz/8hFguCD4UXBWEeadHC3y/6Q9r/PAJnu
         CL5m390imVkxq8/qwX4prrQ/QWbTwF+wHxuT5cK/Lr6qrKPZM/EbT/JVEHuC5u+yT3Le
         E3FuVPrAA8PoQkqIqGYFZWJs3eSvc7UB2Jgg6zh402EDsm35LxSHfEiqRhiZiEwPlpBa
         2MSriobm5diWcBu1B/U6cq4l/YYCl0UjI8P1N2Ffat89AwdcrXCho2Hoa46iwtM1AE5j
         kECw==
X-Gm-Message-State: AOAM532fDHkOp8sEkzGTd27QKmnf2sR+jeFXLM2FM8EcmEHM8pI5GL35
	rGeSslL7eSNUDhSKOg6ixoV7TfR2dKDOCQ==
X-Google-Smtp-Source: ABdhPJxZDwcku3nO+pAv2dzDydEUEKK01SDJIiI3zdD7Lxf5uTfpuXZBFMvleo7iF0JrCXAqZUCOPw==
X-Received: by 2002:a5d:8b88:: with SMTP id p8mr4032957iol.172.1601412430895;
        Tue, 29 Sep 2020 13:47:10 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id l6sm2957087ils.6.2020.09.29.13.47.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:47:10 -0700 (PDT)
Date: Tue, 29 Sep 2020 16:47:07 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 29, 2020
Message-ID: <20200929204707.GA11905@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for September 29, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Saul Wold, Armin Kuster, Richard Purdie,
Bruce Ashfield, Jon Mason, Michael Halstead, David Reyna, Jeremy Puhlman,
Jan-Simon Möller, Ross Burton, Paul Barker, Scott Murray, Tim Orling,
Steve Sakoman, Randy MacLeod, <phone-in>, Alejandro H

== notes ==
- M3-rc2 through QA, release for later this week
- 3.1.3 in QA, release Thur or Fri this week
- more AB issues resolved, but many remain
- --x corruption in pseudo, probably undetected in many cases

== general ==
RP: 2 of 5 bugs fixed against M3-rc1, so we’re ready to move on

RP: the pseudo issue explains strange bugs we’ve seen over the years
Randy: any solutions?
RP: seems worrying, Peter thinks it should abort. with the aborts it only gets
    through 2-3 tasks before aborting
PaulB: can we do something when non-pseudo tries to touch these paths?
RP: pseudo assumes it has 100% access to the entire system, but there are
    things we change outside pseudo (which are fine), so we need a patch to
    tell pseudo to restrict what it can see, but the ignore-list isn’t
    complete. e.g. pseudo and qemu don’t get along so we stop pseudo to run
    qemu, qemu then touches files that pseudo controls, but we can’t tell
    which files were touched

RP: despite all the changes we’ve made, we’re still seeing timeout issues
    on the AB

ScottM: could we scan a set of directories
RP: we could do an integrity check, the problem is deciding when to do it.
    there are a number of tasks that run in parallel, so the trick is figuring
    out when to do the integrity check.
ScottM: how amenable is that to someone helping without deep knowledge of
    pseudo?
RP: once it’s down to analysing individual changes, we should be fine
ScottM: do we need a failed build to work on?
RP: no, with the aborts in place the issues crop up quickly
J-SM: could the abort patch be made available conditionally so people can dig
    in?
RP: possibly. the build dies very quickly with the patch, so if we can get to
    a certain point before failing then others can jump in
PaulB: other distros use fakeroot, is it worth looking elsewhere for ideas?
RP: we use pseudo because fakeroot had massive issues that didn’t map well
    to what we’re doing (not sure if these have all been addressed) e.g. if
    you open a shell and do the whole build sequentially in that one shell,
    then fakeroot will work fine. but with us we use different tasks, in
    parallel, etc which fakeroot doesn’t support
RP: these issues tend to only appear because of the heavy heavy load of the
    build servers, these most likely won’t affect people doing “normal”
    builds on mostly not-overloaded systems. i.e. the inodes are re-used very
    quickly on our AB infrastructure

RP: i have some patches in master-next which i’ll push later this week. but
    it raises the question about what to do regarding -stable
J-SM: i suggest doing the same, make the patch optionally available
RP: i’ll try to get it working somewhat so others can jump in more easily
Randy: things generally look good
RP: i think this bug’s been here a long time, but was exacerbated by
    recipe-specific sysroots, these generate a *tonne* of database entries
RP: the only way people might have noticed this in the past is if someone did
    a binary compare
Randy: right, but nobody’s complained about /bin/ls not having --x (for
    example)
Jeremy: i’m guessing the issue has been around since 2.4 (Rocko). we have
    been seeing issues where random executables would be missing --x
PaulB: we have to make sure to not attribute this issue to too many bugs

PaulB: Randy and i emailed the maintainers of meta-rust to bring rust support
    in during the next development cycle. looks good so far
Randy: i have a patch
PaulB: and the patch adds the fetcher into bitbake

TW: OE happy hour tomorrow

TW: there was a discussion re default values, any resolution?
RP: nobody liked any of the suggestions well enough, so it faded

PaulB: inclusive language: add to contribution guidelines? the contributing
    guideline only appears in the wiki, should we have something at the
    top-level of the repository?
RP: go for it, anything to help new users
