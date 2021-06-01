Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web08.59960.1622562334802366071
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 08:45:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A+c3mo5A;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id k2so7419188qvc.5
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jun 2021 08:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=uiGkH3vlGnRi1hfiMYQQpOupPvSlCjXVWlzKnCQu6do=;
        b=A+c3mo5AcyVHpltcfpkH45A582f7mOU7PTqfueV5XFvukgSg0NLSEMJS4YrQYGB5vP
         pqaiBs5G/aDdUiSiQBI6SRXCuKUH1uMN3cY6J8OpS5fPFRmrqwDxZvMUTsQpQcsRKO+L
         hrQHx7QF8b2ibMqglNqYYYqmLNZ+qhiuI26paONP5DYAub7ZdthSPaRi+hxnvHGb+Idx
         UsGiQ/aI6n7Bfj9zGA4zVNBon7Ku0H/jBYQU0isY1mVZ3hTCIc5woR89CwEQTunqxefR
         ZZewha9yUZj4yKrozal/zuLO5P4E4VCwCI+NYh7X6ywz2PL+csVFCF+ewW4eLeqF1WHt
         6+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=uiGkH3vlGnRi1hfiMYQQpOupPvSlCjXVWlzKnCQu6do=;
        b=tf27MMrYF+TWyrBp4Y0t0Oj/b9+fhB8A63tAI0YT67L5T98FfeVN3AOH9B7sW3x6I4
         3yvC5Vel9qVrJ16Kr4h2mctCuOwrSX8AL9NYm9zdYYJQi7pSnbxJsNX+WSQVlnPghLf6
         cCudq1FEL0k9rHTbnqLknmVSRNZzjX9ouGENqPzTT5nbJf46rJebCv37cntjDLQCW/oE
         hEekJhX1B9r8SvFyyymOhad5KaLdN25lLqailQ8c5FCOeD8k0mkjiO1x/2mP8z3umtbr
         LPLrlHAzIHW+a3Ea/G1d3BNXuCeE2wUUukkTztpqd95KzRy86p5RKPsGjNzZMslhHb2T
         zopQ==
X-Gm-Message-State: AOAM5311fb5fWLXQSK5HOAx6B5yot4p4Ko/9LeFhkJWyLO0Wzi9pu5bT
	YPOd5ZQ26ieQN7seLwbIXgRqrEBA8GT9Jg==
X-Google-Smtp-Source: ABdhPJzAmkh4EOG9vtY5jfgUieuwqzZ65IQwRkvpFR4PZ1K+t+THFLFKupZnwIDzPJPAoR9Dg9ZhTw==
X-Received: by 2002:a0c:d409:: with SMTP id t9mr23281601qvh.18.1622562333174;
        Tue, 01 Jun 2021 08:45:33 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p21sm4843343qkk.42.2021.06.01.08.45.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:45:32 -0700 (PDT)
Date: Tue, 1 Jun 2021 11:45:30 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for June 1 2021
Message-ID: <20210601154530.GA6198@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 1 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Colin McAllister, Armin Kuster, Joshua Watt,
Steve Sakoman, Saul Wold, Richard Purdie, Philip Ballister, Bruce Ashfield,
Randy MacLeod, Michael Ambrus, Michael Halstead, Daiane Angolini, Peter
Kjellerstedt, Trevor Gamblin, Ross Burton, Tim Orling, Alexandre Belloni,
Jan-Simon Möller, Scott Murray, Tony Tascioglu

== notes ==
- 3.4 M1 (honister) to be built next week
- 3.1.8 (dunfell) passed QA, waiting final approval for release
- CVE issue count: master=6, hardknott=14
- AUH to run more regularly
- multiconfig issues still not ironed out
- ptest based on core-image-minimal instead of core-image-sato
- record high levels of AB intermittent issues

== general ==
RP: AB int issues seemed to be helped by limited the number of threads used
    for compression


RP: two cases of trying to talk to upstream but found problems with our
    logging, upstream says “go away and fix your logging” before we can
    continue discussions


PeterK: question about yocto-poky tags
RP: we stopped adding “hardknott-pokyversion” (e.g. “hardknott-25.0”)
    tags and this broke PeterK’s workflow. i would prefer to move away from
    these tags and use yocto tags instead
PeterK: i’m okay moving to something new. “hardknott-3.3.1” would be
    better than “hardknott-25.0”. also, could we wait and not change this
    in the middle of a release series? (i.e. wait for the first release of
    honister).
RP: i need to talk to MichaelH and Vineela and figure something out
RP: this is part of a larger task to rationalize the release process a bit
    better (e.g. also need to tie in the documentation releases too with Nico)
RP: this tells us that people are using some of these things that we didn’t
    think were being used
MichaelH: Vineela and I have a couple other release things we need to go
    over, i’ll make a meeting. we could add tags going backwards so we
    can transition now. this would give us some correlation to the tags in
    openembedded etc


TimO: freenode?
RP: we didn’t do anything last week (due to Summit). i think Nico needs to
    coordinate with MichaelH. i believe we are moving over to libera.chat
Scott: fd.o seems to have moved to OFTC
TrevorW: do we have ops in #yocto and #oe?
RP: yes
TimO + PhilipB: we’ve got slack too
JPEW: matrix integration too?
TimO: yes Jan-Simon


JPEW: SBOM
RP: please discuss on licensing email list
RP: i think there’s a plugfest going on and i don’t think anyone from YP
    has signed up
Randy: Mark from WR is attending
RP: i’d like to fly the YP flag there
JPEW: details?
RP: https://docs.google.com/forms/d/e/1FAIpQLSdVOewc3uCZh39inX4X7QsA_jaQMqyrEiLFrWEZEpWxRCi3eQ/viewform
Philip: who’s interested in showing up at the plugfest?
JPEW: i would, but 22nd doesn’t work for me
Philip: i could go
??: what’s the layer?
Saul: meta-doubleopen
Ross: 22 doesn’t work for me either, but i could help put stuff together
    beforehand


TrevorW: videos for YPS are up
https://www.youtube.com/playlist?list=PLD4M5FoHz-TwWYbaJwduH8ZYNYvva76QQ
https://elinux.org/YPS_May2021_Presentations


Jan-Simon: what’s the procedure for updating layerindex?
RP: PaulE is an admin
Ross: I was added recently
RP: MichaelH who are the admins?
MichaelH: myself, PaulE, Ross, JaMa, Nico, Randy
TimO: PaulE recently added me too
J-S: there are a lot of issues with the layerindex (e.g. emails bouncing)


Randy: should we move the next monthly meeting to avoid the 4th of July?
RP: sounds good, we’ll move it to July 13th
