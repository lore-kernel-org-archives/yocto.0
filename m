Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.12971.1628100501335971111
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 11:08:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ayzhtqlz;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id f12so2445736qkh.10
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 11:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=dGNPW4F6236fOJLu2whIpHQOvNS/NN3jP6nnG5kju+c=;
        b=ayzhtqlzaQqt9baG2DPnanSQ++CO2wbg6EV+iJ1OJf4UcUuE5hrtBpd6Y06jG6TXjX
         nZpRB5jXqs34+77oyQFPNiUUD7PKoZQ5qkVvvBqSWZN8uF1GivLfD6FAXn5HjYCIP6mi
         n54mr0srPTZJUwGcAc0woSL14iYvgrGahdSrOeLh5PUdDM/PQe6ELMbwzGix32AnuO/F
         VhqKE0w1SL6LLGQaLMG4zXj3Ena47CF7uQrevfPjEV99Qm8e/gDlek7zIP1wkxzaCkyH
         hEgPw775dpCwn3hmL3JaLWB3b8R6SbyrLJjlJ3saJ0ezj25NPQhD2WqcuuuCCOZfD/VZ
         Cdhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=dGNPW4F6236fOJLu2whIpHQOvNS/NN3jP6nnG5kju+c=;
        b=LJXCho+ODmVE5u8DqA/e4P8TtvnTAPlW/nIWghLQcAOhAVMYkCZgYWQ+WoT4bFigwK
         EGg34nIAr+chfdsgoNWfAEXkQWJ0kvJrHGDt7hrVB93SqSExyAsrXKD+foi56bNk5hfz
         R0K503EaQf7QwW6tkZv4JOB6Y2bOGvIQTD5SkrBRJSTv2ZLTSWq2nTQTjwIjaPqhVE34
         UlycGuQa1Ej7ckkLQwDx4u6ndITz6UOrjD216cPFQNLkOuD5EZutqXsWz0GqWn/lZGcH
         4wHPSiN/6vcf+XJaH0w7Em1DZxpAKT6AlyAKfN3zPMLFisfqdotdE33h269SV+I1aewu
         Lwfg==
X-Gm-Message-State: AOAM533ME3qU33vUefKID7G0Kx/u2fbMr0ykYhIAqQQZ1O7eB5O/1gI2
	GjaneAlEwS3EhrJmD5zbgVvLD95pFrE=
X-Google-Smtp-Source: ABdhPJzukRy6Zm1yIKzzS9wZ1DFFnImvbp0deA6SVFR6CfQiBAXUsWs53GJ0gJdADNo4AQ5uDxe1ww==
X-Received: by 2002:a05:620a:120e:: with SMTP id u14mr646205qkj.309.1628100500113;
        Wed, 04 Aug 2021 11:08:20 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b3sm1163813qto.49.2021.08.04.11.08.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 11:08:19 -0700 (PDT)
Date: Wed, 4 Aug 2021 14:08:17 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for August 3 2021
Message-ID: <20210804180817.GA16037@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for August 3 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Richard Elberger, Saul Wold, Scott Murray,
Steve Sakoman, Tim Orling, Trevor Gamblin, Armin Kuster, Richard Purdie,
Joshua Watt, Michael Halstead, Jan-Simon Möller, Rob Woolley, Denys
Dmytriyenko, Tony Tascioglu, Randy MacLeod, Michael Opdenacker, Philip
Balister

== project status ==
- 3.4 m2 (honister) released
- 3.3.2 (hardknott) through QA, pending release approval
- 3.1.10 (dunfell) in QA
- new syntax change is in, all layers need to update to new syntax
- older releases of bitbake support the new syntax too (includes dunfell)
- layer compatibility updated to honister
- fix to bitbake’s datastore pending
- prserv rewrite still ongoing
- some AB-INT issues
- multiconfig still not 100%

== discussion ==
RP: big change to override syntax. fallout period ongoing

RP: subtle datastore bug in bitbake fixed (identified by Ross last year).
    there might be some fallout. if you have a variable that isn’t assigned
    a default value (or anything) but does have a conditional override (e.g.
    _append) then it changes the value from “” to None. one such case was
    found in all of oe-core (DRIDRIVERS in mesa), but others might exist in
    other layers

JPEW: so now only the new override syntax is valid in master?
RP: yes. i added some checks in bitbake so it will now error if it finds
    _append, _prepend, _remove. this doesn’t catch all instances of old
    syntax, obviously, but it’s a good basic check
ScottM: will the syntax changes be backported in oe-core?
RP: there are no plans to do it in oe-core
ScottM: it would help with cherry-picking
RP: there are other incompatible changes that would make it hard/impossible to
    backport the override syntax change to older branches
TrevorW: i’ve noticed a couple examples of overrides that don’t
    seem to work when updated to the new syntax. in conf/layer.conf
    BBFILE_PATTERN_<layer> aren’t overrides?
RP: no. the things in conf/layer.conf aren’t overrides. also IMAGE_TYPEDEP
    isn’t (…yet). there’s a chance we might reconsider some
TrevorW: and SRCREV_<name>?
RP: yes. SRCREV_<name> is not, but SRCREV_pn-${PN} is an override
Elberger: is there a list?
RP: i have a list… in my head, there’s things in the manual, but we should
    probably add more notes. we should add it to the migration guide
Elberger: it would be nice to make it consistent
RP: this is the first step, i think there will be follow-on steps. we changed
    tune variables into overrides for example, but they’re not always
    overrides
TrevorW: these inconsistencies are a great reason to do the syntax change
TimO: this change provided a nice to opportunity learn more deeply about
    overrides and override syntax
MO: nice that the project isn’t mired in the past, it is able to make such
    changes

RP: i’ve added a MAINTAINERS.md file in oe-core. it doesn’t give exclusive
    ownership over an area of the project; i will, for example, apply patches
    that i think are okay if maintainer feedback isn’t forthcoming. we’re
    basically trying to document tribal knowledge; wanting to document the
    list of people who are knowledgeable in various areas. we’re also
    trying to encourage people to take ownership in various areas. this list
    shouldn’t describe any changes to what people already know.

ScottM: (re: prserv) am now able to reproduce some of the bugs that have been
    reported by others and that we’ve seen on the AB. i have ruled out a
    bunch of stuff. the issues seem to start at python 3.8 (rather than 3.9 as
    we were expecting)
JPEW: is it still related to exiting?
ScottM: that still happens, but this is something else. after the
    prexport.bbclass cases run other things are stuck waiting. it looks like a
    message might be getting dropped
JPEW: how large is the message?
ScottM: that’s what i thought too. but they’re not very large. maybe 100
    bytes? hash + prnumber + packaging. there’s probably more than 1 bug at
    play. looking through Paul’s stuff there’s also a case where something
    gets shut down, but other things are left waiting for it to shut down

RP: (to the OE board) were there any discussions to promote OE membership (the
    oe tsc election is coming up)
Denys: we discussed this at our last meeting
Philip: we need to figure out how to recruit members, we’re looking for
    people active in the community. we would like to get feedback on how to
    attract more members.
RP: it’s not obvious that OE has a membership, or what its benefits might
    be. i don’t think people who are new to the project know about OE, what
    it is, why to join, how to join
Denys: we used to have developer meetings (OEDEM/OEDAM) but we don’t have
    that now, those would include general assemblies.
Philip: if you want to become a member send an email including a bio and
    reason why you want to join to board@openembedded.org and we can vote on
    it
RP: maybe a reminder to various mailing lists would be good too

ScottM: do we have a booth at ELC?
TrevorW: check with David Reyna, i think he’s working on getting one

MO: is it okay to update the docs with the new override updates?
RP: yes. i had said “hold off” a week ago, but now that’s it’s in we
    should go ahead with the changes to the main yocto docs
