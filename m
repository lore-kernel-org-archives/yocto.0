Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.20432.1621844891040214304
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 01:28:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MRA3mT9G;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id j12so19566317pgh.7
        for <yocto@lists.yoctoproject.org>; Mon, 24 May 2021 01:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=N6SXXy7Uh9QpIbaBalH8jnGSKq4GaG6cr/oWHAURqSQ=;
        b=MRA3mT9GcxDNtlP9DtO8gpZ4XoD1IG92T+AhLCKNb7iMjCKFFtCvfBU+MaVNdQQR66
         UA05iIuIMUihyJ9lM9vpsF9eMCTEAPe/WX91uOQudHpko+bpjJ12TwMLxDOD/p8iPi8V
         hoRiQnovw2uW+tx++2lIVtEp1LGTsOVZnVlEf2QyFhfO7egkzP5xqJDjeo7QUXPGZaNm
         C3rW4GkH4Ut17smEm6qvOdaNVtHkfKvna4YU6HBKfGZ+IsxwYgZwuJPsBkoQ/kQo2Lvw
         SjVeoahsxow6JNjWWbWCesuEIq1Mu+W6iUU5AIKPwopBPNQSdQBeflxDs7jAVjBqbTkq
         0Rmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=N6SXXy7Uh9QpIbaBalH8jnGSKq4GaG6cr/oWHAURqSQ=;
        b=iV+xQbqm1lHMNPlQfV9jByZP2KApIQiPNB/TbZ9GjPFuIsMGn5CGfuVSJ3oT7aQ1dK
         8CmP4zU2AdT4GnakUCmFBJfmhTDkeARVsAkjp8xxM3dzW77dppYl468n+qSrGH1/A9wH
         OQ/vn0GLANVm1kYxgeZVeIrZC2UCkPolgO2P4U38Arixh86lIkRXj9ssKfFTxnl/FIvf
         a5RloFsUEEOP3cMp0xyjMVivQMttQXp3Dyr93nrZpGiO4+5xBppxxc+nzeNtglY3o5WU
         c0iFkuubhrc3CGJ3DlKrgVmd9oqTWcnoaPBonxXZ2t7xfFPYr1tuwYIXxgvj2SlctB/l
         k2Og==
X-Gm-Message-State: AOAM532L+/dhLHuaipGlVifbbuMyvPEf2XbqzD2qvDZNZpCRDM9+aZXo
	gEYtI7x8ZFGZpxr8kiNrQtuIT7wyhDCwrrigjRKJQhjNAs+CQQ==
X-Google-Smtp-Source: ABdhPJy0484EFhsWp4YmQM4QeHuq+jnTZvUxmApm5eb7GYAZf6y08g/ycC7ZRusT87+5Z6pkih03N4WZTGs8O1unLgo=
X-Received: by 2002:a63:fd44:: with SMTP id m4mr12678690pgj.396.1621844889928;
 Mon, 24 May 2021 01:28:09 -0700 (PDT)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 24 May 2021 10:27:58 +0200
Message-ID: <CAGAf8LzBFh2PrDYN1wyZGZ9==uAEk+BfNxUOaRGFBJsy6TniUw@mail.gmail.com>
Subject: ERROR: ParseError at .../bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4: Could not include required file images/basic-dev-image.bb
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Scott Ellis <scott@jumpnowtek.com>
Content-Type: text/plain; charset="UTF-8"

Hello again to YOCTO Folks,

Here is another blunder I ran into while fixing a yocto-setup.sh script:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh

While executing $  . ./yocto-setup.sh dunfell, everything ran smoothly.

I did the same routine with the $  . ./yocto-setup.sh gatesgarth, and
approximately after:
Parsing recipes: 9% |##########

The following message pops up!
Loading cache: 100% |
                                                | ETA:  --:--:--
Loaded 0 entries from dependency cache.
ERROR: ParseError at
/home/vuser/projects_yocto/bbb-yocto-gatesgarth/meta-bbb/images/console-image.bb:4:
Could not include required file images/basic-dev-image.bb

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

If you peek into the following github repos:
https://github.com/jumpnow/meta-bbb
https://github.com/jumpnow/meta-jumpnow

You'll see that in later  images/basic-dev-image.bb does exist, as
well as in the dunfell branch:
https://github.com/jumpnow/meta-jumpnow/blob/zeus/images/basic-dev-image.bb

As well as in gatesgarth branch:
https://github.com/jumpnow/meta-jumpnow/blob/gatesgarth/images/basic-dev-image.bb

What I see upon the logic, something changes in poky/ setup, while
transitioning from dunfell to gatesgarth.

I also have created an issue in bbb-yocto repo:
https://github.com/ZoranStojsavljevic/bbb-yocto/issues/3

I would appreciate any ideas or hints...  Maybe some changes required
in local.conf ?

You can all try it yourselves, and see the same!

Thank you,
Zoran
_______
