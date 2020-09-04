Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web12.1265.1599236218222329833
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 09:16:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ME0+iVDd;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id w8so6830992ilj.8
        for <yocto@lists.yoctoproject.org>; Fri, 04 Sep 2020 09:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=9YC1Y5sqxRupiyfcfXzwizYOTDp7ObE/glifAiF6XWA=;
        b=ME0+iVDdXmtEtnlfCAdzbWAXt1bvs35hFVqEyyMlLzucK1I7wOziRPwwlCPUXhBR32
         OsZtT85oKhefk9vbr5tDq97vkLEI1rf7bM4H3ta9ecgFAKtC3aCfbDLlHpX6EHYj+77G
         RutTfEfq1k0UgTWdbdtFL3eYk3soz02l8OvoVNogNoCwkmfbzaIW1bDic/NDncCcXyG4
         3Dp9ATBm6h/Egekn//Gk2cLvUEEZ60LvL556pC1eDDjLaAiKRw1f3eUJJL0P/KWtjyP1
         pcCNwjElk4solfZL/skue79OKZhbTwEdzeTd5TcQSgN+re7MFF7jK28Bj+aibr6+33hP
         TU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=9YC1Y5sqxRupiyfcfXzwizYOTDp7ObE/glifAiF6XWA=;
        b=n5tLmdNAa4xaB97iiLq1q1+XQbOAc0XwLuVw4f+33L0OdjPKr4r2S2VmXP2OHw86P6
         1eKMDB22CEfzvEoAkavX1JTo4uP4Jz2tlV23T9pvAqaqRSP5DKo+mkOHiC2p2NTV/XvQ
         YJX/DgLEjmpX1txADuAFi71wRnNo/S4RZn4Te4XPF+7l5Gan2ElRiBeC+a2jnclEDSij
         o2zcRGvrmKNcAJ59ydD+Xf4pZAKZVE+o8iCdXs9Pu/GuDXg8Mzzt6V5RS5i5h76RquYq
         1K85DYQ8jc32FPbBUAgzTfNwBD1FtAGZ6Zii6juMKfMqbGHGu2mPa9RivA0P6ZmRr2WE
         8cGA==
X-Gm-Message-State: AOAM531xpmAJl3aErGWtmhL1j00TCecJCWYcDPgNJ2VB6vxoXwCW6gij
	B4nKKZm8J6Cxcgx82xXKnPKr3bg6nDY=
X-Google-Smtp-Source: ABdhPJyjp6I1AO4mKOZuPTlAtNYEcJuwa7Pxd8f9D6zZ3bmkiLWODLR084J01z+NoWCj2FGxRa7lgw==
X-Received: by 2002:a92:7a0a:: with SMTP id v10mr7656380ilc.99.1599236216931;
        Fri, 04 Sep 2020 09:16:56 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id p65sm3534447ill.23.2020.09.04.09.16.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 09:16:56 -0700 (PDT)
Date: Fri, 4 Sep 2020 12:16:53 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for September 1, 2020
Message-ID: <20200904161653.GA32319@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for September 1, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Jan-Simon Möller, Alejandro H, Bruce
Ashfield, Armin Kuster, Richard Purdie, David Reyna, Steve Sakoman, Michael
Halstead, Ross Burton, Paul Barker, Mark Morton, Scott Murray, Jeremy
Puhlman, Joshua Watt, Jon Mason, Randy MacLeod

== notes ==
- entered m3 feature freeze
- working on a couple patches for 3.2
- bitbake server startup changed to avoid recently discovered issues will wait
    for 3.3 to make default
- one more round of recipe upgrades before m3 build (later this week)
- -fno-common back to gcc10 default
- still some AB issues
- looking for help with unassigned bugs

== general ==
RP: list of 3.2 things:
Mark’s hash equivalency prserv fix
RP: where are we with bind?
Armin: haven’t gotten around to sending them
RP: please do so
RP: want to get more of the AUH upgrades in too.
RP: Alex has queued up the rest.
RP: high priority bitbake bug on startup that needs to go in
docs changes, we want to cut over to sphinx before m3

TrevorW: what’s the -fno-common issue?
RP: gcc changed defaults with gcc10, caused namespaces to overlap (and code
    builds to fail), we temporarily switched away from the new default, waited
    for upstream and created patches, now we can switch back to gcc10’s
    default

Joshua: what still needs to be done with the docs?
RP: check Nico’s doc. right now: mostly marking up the code sections. please
    coordinate on the mailing list

PaulB: will be giving a talk at the upcoming Linaro Connect on license
    compliance with Yocto, Linaro Connect (virtual) is supposed to be free to
    attend this year

RP: i’ve heard that YP was mentioned at last week’s Plumbers, does anyone
    know when/where it could have been mentioned?
(various): not sure
Scott: I don’t see Khem here, maybe he was talking about it?
TrevorW: Alistair Francis is a contributor to YP and RISC-V, it could have
    been brought up in relation to that. the RISC-V YP BSP carries a lot of
    patches

Randy: Saul Wold is joining WR today!
RP: glad to hear he’s returning to YP
