Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4834.1594187643605517715
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 22:54:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=tdaRD4tl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 224F9E01E22; Tue,  7 Jul 2020 22:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDD8BE01DE2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 22:54:01 -0700 (PDT)
Received: by mail-qv1-f45.google.com with SMTP id h18so19961791qvl.3
        for <yocto@yoctoproject.org>; Tue, 07 Jul 2020 22:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=WmQ19sdWmeMnGy3KlHeFIfVjjJneDNLZknG8LveWiWY=;
        b=tdaRD4tlfxEK1Zfmy5+pbPVEFjBIJXX/FobHWSAQn5x9TC1nphw2P4jgyYbfJkLbgm
         /YitV/r8g+OjsZNwiCEfSha3Lw/jXsC5boVjMXL8r8nn7Wp29bI9A8+SoNktM3SG2MZI
         omn8zJu/hxPmc/oFacsQCOdtK2myHlc3vT1f5IifrnEwkZsL7tawQ/ZOYOMzDVyf0g1I
         Pn7k4hCnjpVzjD9pJT3cFcqy3A9jdVnE5JvMTIb0iMmNbhCwjVXf5xBzwkC3KXQGLSOR
         nKSo0tPUPxdDePICGX2GC3a1zQ5q8zJo3J+qlKloRGDwpXIi9cjymKx1boyCnZFdVT6M
         PV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=WmQ19sdWmeMnGy3KlHeFIfVjjJneDNLZknG8LveWiWY=;
        b=aHHDDN7/pFHFPUmi1AkdVlIMceVjyWq840IKCnQ9DxsX2Sjz2sGkMwIhzeK3nUkM7T
         pALvtx9++HMri4J91luVFcm4POpKnXHxykrVZeXcRKwSNyES5n7oD3g1S9Y+r12zzcip
         YPLQHUzIS7w1taypes9TFLcj1zaofjN7gCXyG2AQAcQ6JkYC4k0dc3dyYghnh3EUQGMz
         oUNf2umKA8NsJPpuMGKgIQsagahA5tX8t3rvrGbsW2KbdafMcM1DMSwh/P82ndbTrZKt
         DwDm47uoq1VXiQpCinI4ZbDEFtconG35uGPADwydkl6K0wN60ay84r2kc79hEmtdyHFR
         thKg==
X-Gm-Message-State: AOAM5322Cbzw53JWveGV+7TgdM4d9G3/9uoG7q0/P9DNOGCK09qPnoeo
	t59NOp7VQMqeEutoMgFB5THK6oLf
X-Google-Smtp-Source: ABdhPJyWXN88ZmiBt3dGGRoA121CesVTAi382ODuQO11J8RA/gBg4wIyUKVVeIGYkE54EzVkrg53kg==
X-Received: by 2002:a0c:8603:: with SMTP id p3mr54152335qva.227.1594187640338;
        Tue, 07 Jul 2020 22:54:00 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id o145sm26055052qke.2.2020.07.07.22.53.58
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 22:53:59 -0700 (PDT)
Date: Wed, 8 Jul 2020 01:53:56 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for July 7, 2020
Message-ID: <20200708055356.GA39163@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yocto Technical Team Minutes, Engineering Sync, for July 7, 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7=
QwKC5wWVDg9dDH4/edit

=3D=3D disclaimer =3D=3D
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please fee=
l
free to reply to this email with any corrections.

=3D=3D attendees =3D=3D
Trevor Woerner, Jan-Simon M=C3=B6ller, Stephen Jolly, Josef Holtzmeyer, J=
oshua
Watt, Trevor Gamblin, Steve Sakoman, Armin Kuster, Scott Murray, Peter
Kjellerstedt, Saul Wold, Ross Burton, Richard Purdie, Michael Halstead,
Rahul, Vineela?, Bruce Ashfield, Tim Orling, Randy MacLeod, Mathew Zeng,
Rob Woolley, Philip Balister, Paul Barker, Khem Raj

=3D=3D notes =3D=3D
- thanks to everyone involved in any way with ELC and DevDay!
- still have AB instability
- still looking for more maintainers
- looking for way to attract and thank contributors
- lots of unassigned bugs we=E2=80=99d like to see for 3.2 (see unassigne=
d bugs)

=3D=3D general =3D=3D
RP: happy to have some things fixed in AB, but still issues

RP: thanks to everyone involved in ELC and especially the Yocto DevDay

Timo: i see the perl update was merged, but it seems like lots of things
    were dropped (RDEPENDS), so i predict there will still be issues with
    split-packaging
RP: i noticed that too, the AB was all green
Timo: we=E2=80=99re probably missing tests

Saul: heard a rumor about Stephen
Stephen: that i=E2=80=99m retiring? yes, next week. but i=E2=80=99m conti=
nuing on as a
    volunteer with YP
Randy: how long at Intel?
Stephen: 34.5 years

RP: ? licenses are inherited globally, are people using the license packa=
ge
    directly?
JPEW: we display the generic and specific license because they=E2=80=99re=
 there
SS: customers i=E2=80=99ve known have always used just the generic
Randy: WR has its own code for analysing the code to pull licenses, but
    customers appreciate having the generic
Peter: we have to go through the code to sort out the 20 different variat=
ions
    on GPLv2, a mess!
RP: it=E2=80=99s been pointed out to me that the checksums of the generic=
 license
    files are not checked, so if there was ever a change in the generic t=
ext,
    there isn=E2=80=99t anything that would alert the users
Peter: is it meaningful to use checksums for the generic text? that=E2=80=
=99s not
    the same case as the license of some upstream code changing
RP: well, if that changes then the task-hash should change which is suppo=
sed
    to case rebuilds etc
JPEW: there was a bug filed
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13917
RP: this shouldn=E2=80=99t be happening, but there are probably other =E2=
=80=9Cgames=E2=80=9D
    going on

RP: is anyone using the SPDX class from OE-core? i hope the answer is
    =E2=80=9Cno=E2=80=9D, i imagine it=E2=80=99s quite broken by now. i h=
ave a patch i plan to
    post
Randy: i don=E2=80=99t see WR using it (quick look)

Timo: i was looking at patchwork again, is there somewhere we can run a t=
est
    instance somewhere for testing
Michael: vm at digital ocean currently, i can create a staging instance o=
n YP
    hardware. who else will be using it?
Timo: Amber, potentially. i=E2=80=99ll give you an update
Michael: i=E2=80=99ll spin up something new, the current is ubuntu 16.04 =
so it needs
    an update anyway

TW: how did the booth go last week at ELC virtual?
Philip Balister: the interface for the booth was clucky, didn=E2=80=99t g=
et any new
    contacts
Timo: i had one interesting contact at the booth, but it didn=E2=80=99t g=
o as well
    as it could have
Josef: not a lot of new folks, got a lot of people contacting me in thank=
s
    for the live coding stuff, lots of contacts from the middle-European =
and
    south-central Asia, we have lots of contacts in west Europe and NA, b=
ut
    need to develop more in the other areas
RP: this would be a good question for the advocacy list
Randy: do you know what sort of communication would work best?
Josef: lots via linked-in, stack overflow. irc and email are not that pop=
ular.
    lots and lots in twitter!
Timo: agree with twitter

Timo: what did people think of using slack?
TrevorG: hard to know whether to reply in-line or as a thread
Philip: feel it=E2=80=99s terrible for open source to use slack (free ver=
sion
    loses history, bad optics). gnu radio tried slack, moved away. recomm=
end
    mattermost
JPEW: slack can work if you have the ability to create arbitrary channels
    (which wasn=E2=80=99t available with the ELC slack)
Scott: the mattermost interface has better handling for threads, a =E2=80=
=9Cbest of
    both worlds=E2=80=9D between slack and irc
Timo: gitter (meta-python, etc) works better for me. i agree with Philip =
that
    the thread thing
Philip: i=E2=80=99d be curious to see a mattermost try
RP: matrix might be a good way to bridge both worlds (traditional use irc=
,
    younger crowd using other things)
Philip: matrix worked well for gnu radio
Paul: agree with others that slack wasn=E2=80=99t that great, but think t=
hat we
    should explore other technologies
Timo: looking at what Fedora has done, it=E2=80=99d be great to see more
    integration. e.g. reports from AB reported live
Khem: i=E2=80=99ve used matrix and like it, can=E2=80=99t comment on matt=
ermost, i think
    Fedora is also using discourse to amalgamate email, irc, etc. matrix =
is
    nice because you can edit, so the log looks better than irc
RP: resources, risk of forking the community (some follow email, some fol=
low
    A, some follow B) i=E2=80=99d like to have a central dashboard but we=
 need to
    find resources
Paul: people who use a given technology might not be the people to are
    interested in various aspects of the project
Timo: i like the idea of integrating
RP: it sounds like it can all be integrated
Balister: if the bridges aren=E2=80=99t setup properly it can be detrimen=
tal
(PaulB has visions of messages going around each platform recursively for=
ever)

Timo: how did people feel about the hands-on sessions?
Khem: i think it went well in general, in-person would have been more
    effective
TW: usually there are 2 tracks, break-out rooms
Khem: virtual is much harder, hard to get people the help when you=E2=80=99=
re not
    sure who is at what stage, people have to speak up
Timo: in the past sometime we would just get to jump in and give people a=
 new
    instance
TW: hard to know who=E2=80=99s struggling, no feedback
Timo: large numbers too, glad to see the number of participants, but the
    larger the class, the harder to manage.
Rob Woolley: https://github.com/conan-io/training?files=3D1 did a hands-o=
n that
    i thought was really well done. instructions on git, thumbs-up to say
    =E2=80=9Ci=E2=80=99m done=E2=80=9D, scripts to get people caught up
Khem: yes, good idea!
Josef: unfortunate that the biggest devday ever had only 1, mostly advanc=
ed,
    track. and the first couple talks were on advanced details (licenses,
    containers)
Scott: i think they were merged because beginner numbers were going down
Khem: we should have separate rooms
RP: there was a definite trend, in real conferences, esp in NA towards
    intermediate/advanced talks. beginner attendance higher in europe
Khem: lots of people from everywhere around the world
Randy: why wait for the next conference? maybe do this monthly
JPEW: was there a survey?
various: yes

Timo: i really missed not having an OED{E|A}M
Philip: board is talking about it
TW: what about #oe-meeting on irc, we had a couple a while back
Philip: give us a bit of time to figure something out. nice that we don=E2=
=80=99t
    have to put it against ELC/ELCe

Timo: want to give a shoutout to Josef for his working especially bringin=
g in
    new people via his Twitch streams
Josef: thanks! lots of neat stuff coming up. we=E2=80=99re over 32k views=
 in last
    few months, 150 new followers each week
