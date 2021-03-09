Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.11693.1615307557581866830
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 08:32:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGU6NRIp;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id t4so13660147qkp.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 08:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=yDsNS7qjXYqkbvGbNoQhSsUYqERcQzDTk0hKzQ3IAYI=;
        b=DGU6NRIp3lHLkaOb8eSwNqjdYYhUtrKThAEb/Qnl4mwmG/HzQcxPO73wSCS2QcZ0Yz
         s9wKodn11B2+hDiJBTjSqh/BEUOQdKTw9r92N1X98qAp4EjYkfG0vEvkjHl+xqf12HuT
         qA9F0FLah8YY3WtwHiNJqGLJS/wum2kXs+UK4IQocIAYHmJyNAemmJkHuYhMFJwASzLF
         4KBR1GEq7kO6HqhZJk8QeQPpR7HvzdSrte6J5HzTtnLKOD/pIya+jP1xlrIHQsrOWHhF
         uYiOZljc/ZSNfWB6tqehlKkdDEl3o3tE90ysyOlRFoY8kUhzrxZLxQmw90q02NX3rGtT
         0K6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=yDsNS7qjXYqkbvGbNoQhSsUYqERcQzDTk0hKzQ3IAYI=;
        b=OBKoGgLuRcvgtVpOJ/XQJh2eCi6QqCVDBmcRXy0F0uRmiPRzPdRCcOPWdSkgtw4s8R
         5gyFFobsD3BefS2U2p8jL2peEqMY0ev2bxVaeIPDMDHx5djFYlXKReNjlUmPX8s7KaNF
         yVs67SPvm9Td4L4SJ4rAr1B6zB3b7zzcGSLUt4ifdgQmqsDKmBpg5s0fN5FbIcE7UlPB
         sJXAQGxVXuQCyMqEODvQiXQWdzLuHpRt7zjHpd641IIp5Qa/MqpZUCUekuQPJs4Y+kgl
         1bIcTJAzpZyWdQ/8JToyfH85wYShP1LGJQTB5kSw/7zDD+Yor/OagxeSnN61p9WJbvgU
         Qtgg==
X-Gm-Message-State: AOAM532RHYjA96O8HRQNnG/2P5hz+WAnBcLKp1ka2woAtPLSSP51Nhy/
	ARcUr2qmFQE6hQyInVb/58N9zGAX76g=
X-Google-Smtp-Source: ABdhPJw4bduTNZN8r2ivw0yl6EgnRi2jRb8LkJLPnEPxWHkEUXY8sdUkmP363u2PMVThQn0DvXhcyg==
X-Received: by 2002:a37:4242:: with SMTP id p63mr26065213qka.396.1615307556146;
        Tue, 09 Mar 2021 08:32:36 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p1sm10598968qkj.73.2021.03.09.08.32.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 08:32:35 -0800 (PST)
Date: Tue, 9 Mar 2021 11:32:33 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes/Engineering Sync for Mar 9, 2021
Message-ID: <20210309163233.GA20612@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for Mar 9, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Alexandre Belloni, Armin Kuster, Steve
Sakoman, Joshua Watt, Jan-Simon Möller, Richard Purdie, Paul Barker, John
Kaldas, Jon Mason, Michael Halstead, Randy MacLeod, sakib.sajal, Saul Wold,
Scott Murray, Tim Orling, Ross Burton

== notes ==
- -m3 not yet built
- rust deferred to 3.4
- reproducibility is good

== general ==
RP: side-tracked with a run-queue bug (in bitbake), good to have it resolved
RP: there was also a bitbake logging fix which was why we couldn’t get logs
    for some things
RP: wrt to the regression we saw last week (long initial parsing time)
    haven’t confirmed or looked into it, but am quite sure I know which
    patch caused it (multiconfig)


Randy: Sakib and I have developed a tool to help with some AB intermittent
    issues. looked at the dmesg output of one builder and saw that it was
    unable to schedule for 120s.
RP: it might be tricky to write one script that will work on all systems (e.g.
    on some dmesg requires root)
RP: AB-helper might be useful too. it could be that disk cache wiping might be
    an issue
MichaelH: only some of the workers have that at this point
RP: could you give us a list of which workers have that enabled? maybe we will
    see a correlation
MichaelH: sure


PaulB: pr-serv changes going into the next release
RP: yes, i was under the impression we’d need a bit more time for it
PaulB: yes, i’m not 100% available at the moment
RP: no problem, it’ll reduce the pressure
PaulB: agreed, getting it in too close to the release could be risky


RP: i’m looking at removing a bunch of code related to dynamic hashing.
    i’m pretty sure it’s not being used anymore, but need to double-check
    it


RP: there are ~6 reproducibility issues, have patches for them (submitted
    upstream) including:
    - ignoring the Go issue
    - i think Bruce is close to getting perf working
    - meson python compiled header issue
    - ovmf hard-coded path issue (Ross is looking into it) strange build
      system (edk2)
    - ruby-docs


Randy: there’s a valgrind release in the works, but we can wait for it
Ross: there’s grub as well (CVEs)
RP: do we have any timeline?
Randy: upstream says “…in a matter of days…” 8 days ago
RP: i won’t block -m3 on it
RP: would prefer to not upgrade valgrind too close to a release (history of
    causing ptest issues)
AlexB: are the ptest issues performance-related?
RP: not necessarily, just that we often get issues
