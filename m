Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.17048.1592947065875326421
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 14:17:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=aM+RW2GF;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66E50E01D72; Tue, 23 Jun 2020 14:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F9DE01D30
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 14:17:42 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id r18so11578345ybl.5
        for <yocto@yoctoproject.org>; Tue, 23 Jun 2020 14:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bAAe262V9yv3qxOdwXSL/77OaDdvP30FotT9CirufX0=;
        b=aM+RW2GFeNVlUpmibknLvKASC/4W8QZKLenbpAw2JamsdCxaJQzjRNXwr/m/HvR6Uf
         w6M6GDBerPwqvA3mQGxTFuIgmfkDaFaFAD4VRy+hEzVR/7UJpFkMuv8vW9FFU6IMBE+y
         ZiJ5OFFbJPWFzMEdFuTqIsecgJQafGgt9dIFI3y/zfsac5Y/DDCLzT8Dpve2IXxVWJWh
         Pc4A7JBllsgawqKKqm95vpTC2SG4CCZd+5yA1B5HEeU7ElNuY2H/yNLgoWZKE/Ucz5Qc
         OfMVPRWGBIG7MsdBvcsFUxttzDo4Yrkj/It3mSNf4idHmsOroPbH+xyx2AsAHRl+p9/v
         0MiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bAAe262V9yv3qxOdwXSL/77OaDdvP30FotT9CirufX0=;
        b=EEkG+SdQXsIeXR1oz2T4K37V2YFYqUHFOCFBBpUx3pqots3xcqGfAA3iT6awpSxbBa
         V6388AJCES3BTJGEITKrbr+Sckpg0pUf8zVquaoA8JwJVw6SQpe3sts2xdXehiEwoi2q
         dmkUAlEf5G/LhqpnuZ0WHk2jCHZ8YjwWiwCCPTX97/jtvnqXwK3Ldb7CpXF33nzSP0mG
         fzQ6qxo7gxPN4nt/2vDGyPHKp7cE1+x87xBc/jT3ylOZ+eVp8zfrmteTaV3wWV/v0VrS
         l+t8M+cPg0E22N5uM0xNAisRt5WJvGn9Fxg5mNmyhOLL/ShO0EXSu/9Li2QBoriYbgXM
         Dbvw==
X-Gm-Message-State: AOAM5306Bc/oYxfEUtqhBsE/o64IoVijhAjpUMwmhFB1QYb2GhPzLQHH
	QaCPOxqH4S4nl1cQR8N/UEjfGpr2M1W5ZlBt1iZkuQ==
X-Google-Smtp-Source: ABdhPJxm0HuNONuiSP+2nQL8/tIZ8V1cUw3KSBPcEYJNuS1qmEtCPyDdme5D1kJow37YSFIGEF45aA6tPpz0oFE6kD0=
X-Received: by 2002:a5b:986:: with SMTP id c6mr3873480ybq.397.1592947061544;
 Tue, 23 Jun 2020 14:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200623190445.GA21879@linux-uys3>
In-Reply-To: <20200623190445.GA21879@linux-uys3>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 23 Jun 2020 23:17:30 +0200
Message-ID: <CAP71WjzFBPOawEwMZpNZJYSVHpOBj3A+zQbkJXqxZ4ESS362vw@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for June 23 2020
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bff4a305a8c6e334"

--000000000000bff4a305a8c6e334
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 23 juin 2020 =C3=A0 21:05, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :

> Yocto Technical Team Minutes, Engineering Sync, for June 23 2020
> archive:
> https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWV=
Dg9dDH4/edit
>
> =3D=3D disclaimer =3D=3D
> Best efforts are made to ensure the below is accurate and valid. However=
,
> errors sometimes happen. If any errors or omissions are found, please fe=
el
> free to reply to this email with any corrections.
>
> =3D=3D attendees =3D=3D
> Trevor Woerner, Stephen Jolly, Jan-Simon M=C3=B6ller, Armin Kuster, Jere=
my
> Puhlman, Trevor Gamblin, Scott Murray, Richard Purdie, Steve Sakoman, Br=
uce
> Ashfield, Paul Baker, Randy MacLeod, Peter Kjellerstedt, David Reyna, Ma=
rk
> Morton, Tim Orling, Joshua Watt, Michael Halstead, Vineela (?), Alejandr=
o H
>
> =3D=3D notes =3D=3D
> - 3.1.1 was released last week
> - 3.2.1 out of QA, looks clean, for TSC review, release probably in next
> few
>     days
> - still issues with AB
> - still looking for more maintainers
> - lots of unassigned M2 bugs
> - new testing manual
> - ELC + devday next week
>
> =3D=3D general =3D=3D
> TW: meeting next week?
> Stephen: will look if there=E2=80=99s a timezone/agenda conflict=E2=80=
=A6
> (various input)
> Stephen: okay, next week=E2=80=99s meeting cancelled
>
> David: ELC, virtual booth and slack session, looking for people to hang =
out
> TW: do we have to be registered for ELC?
> David: no, certainly not for slack, Tracey and I will work it out. email=
 to
>     come later today with details, contact me if interested
>
> RP: links in status report to devday and to new test manual. please have
>     a look through the test manual. kudos to Mark for pulling it togethe=
r
>     (always getting questions about testing). this was started a while b=
ack
>     with ScottR
>
> RP: re AB. still seeing intermittent issues, causes lots of builds to fa=
il.
>     impacts me and SteveS. couple issues with repositories and/or branch=
es
>     (upstream) disappearing.
>
> RP: issues around the =E2=80=9Cstdin=E2=80=9D bug (wrt testing)
>
> RP: Ross still working on RCU bug
>
> RP: Alex working on a =E2=80=9Cwarnings=E2=80=9D issue
>
> Scott: can we still add 3.2 features?
> RP: nobody=E2=80=99s mentioning anything. we=E2=80=99ve never been so bl=
eeding edge (AUH
>     kudos: AlexK). apt upgrade. Armin working on dhcp and bind updates.
> But no
>     =E2=80=9C3.2 sound-bite=E2=80=9D
> JPEW: multiconfig fixes
> RP: true. and also some RDEPENDS support (should be straight-forward exc=
ept
>     when recursing)
> JPEW: not sold on the feature
> RP: simple use-case is to put 2 toolchains into one sdk. my answer is to
> build
>     the two then combine later (with other code). i agree that we might
> need
>     to look for a different approach
> Timo: the code to bring it all together could do other stuff too, but i
> agree
>     with Joshua that =E2=80=9Cthere be dragons=E2=80=9D
>
> Timo: perl has a new release 5.32, we might want to get that in
> Scott: but it has some new language features, might not just be a point
>     release
> Timo: haven=E2=80=99t dug in, we=E2=80=99ve had issues with perl so hope=
fully things are
>     better
>
> RP: 3.2. held up due to valgrind regressions, new distros (gcc 10 fixes)=
,
>     reproducible builds, etc=E2=80=A6 so there=E2=80=99s lots of good st=
uff going in, just
>     nothing =E2=80=9Cnew=E2=80=9D (i.e. a feature), but that=E2=80=99s o=
kay
>
> Scott: new autoconf (Ross)?
> RP: don=E2=80=99t think it=E2=80=99s released yet, we=E2=80=99re testing=
 the pre-release. if
>     upstream releases then we=E2=80=99ll upgrade, but don=E2=80=99t know=
 their timescale
>
> RP: trying to reduce patch overhead (AlexK has been helping). it has bee=
n
>     slowing moving down, but recently up-ticked a tiny bit. we=E2=80=99l=
l never get
>     to 0, but every reduction helps
>
> Timo: was looking at Sphinx update yesterday. looks good, some glitches.
>     noticed the doc revision history was missing. how important is that?
> RP: i=E2=80=99ll ask MarkM to take a look. if it=E2=80=99s lost it won=
=E2=80=99t break the deal,
>     but ideally we=E2=80=99d keep it


It is not lost. It was not migrated yet. It is on the doc =E2=80=9Cfront p=
age =E2=80=9C and
i have one item in the todo list to deal with docs boilerplate, the histor=
y
section is part of that.


> MarkM: yes, that and some other things (e.g. html version doesn=E2=80=99=
t have
>     section links)
> Timo: was looking at Toaster manual, noticed some images were missing to=
o.
>     also found a broken URL. overall very good, nice to see a modern for=
mat
>     (i.e. readthedocs)


Many thanks for looking at it Timo!


> MarkM: we=E2=80=99re also looking at a colour scheme, Nico simply picked=
 the
>     default, but something else will probably look better
> RP: Nico, MarkM, and I met (it was an open meeting=E2=80=A6 *wink wink*)=
 and
> decided
>     to move forward and are hoping to have it done for Dunfell (LTS) and
>     master
> Timo: agreed. XML is a dying art, everything looks good, kudos! (will tr=
y
> to
>     get some help from some Intel folks)
>
> JPEW: sstate found/miss cache?
> JPEW: a patch to not go out and look for every sstate object, keep a cac=
he
> if
>     one had already been found
> RP: the found cache isn=E2=80=99t the issue, the not-found could be an i=
ssue
>     especially where multiple builds are using the same sstate. we don=
=E2=80=99t
>     have a mechanism to generate an sstate object in isolation, but it
> might
>     be a step away
> JPEW: but it=E2=80=99s the not-found that is the slow path. if the sstat=
e object
>     isn=E2=80=99t there, the build goes out and searches the filesystem =
for the
>     missing object
> RP: maybe we could make the cache time-limited (e.g. 30 seconds?)
> JPEW: yes, that might help. it=E2=80=99s like there=E2=80=99s 2 scenario=
s: local builds
>     with one builder, group builds
> PaulB: maybe we could simply watch the sstate directory for changes?
> PaulB: there=E2=80=99s also an issue of a remote sstate cache over https=
 where
>     packets are dropped so it fails, the machine builds it locally. coul=
d
> be
>     a =E2=80=9Ctime of check=E2=80=9D vs =E2=80=9Ctime of use=E2=80=9D i=
ssue: the check says it=E2=80=99s
>     there, but at use time the network blips and then it=E2=80=99s not r=
etrieved,
>     and then there=E2=80=99s no retry
> JPEW: we saw same issue here: solution for us was to run bitbake twice:
> once
>     with the setscene only, then once without it
> PaulB: we=E2=80=99re trying to offer our customers a common sstate but w=
e can=E2=80=99t
>     necessarily ask users to do the =E2=80=9C2 bitbake=E2=80=9D build
> RP: maybe we need a config setting
> PaulB: i think the issue is we=E2=80=99re checking a URL twice, it=E2=80=
=
=99s the time
>     difference between checking and using that is the issue. perhaps we
> could
>     just do the poll once?
> RP: absolutely not, that=E2=80=99s effectively not possible. decisions a=
re made
>     based on those checks so the two fetches have to be separate. if we
>     combine them, then there=E2=80=99s no savings, each build would be v=
ery long
> PaulB: perhaps better reporting
> RP: people are just going to set the config to ignore the warning then
> builds
>     will fail and it=E2=80=99ll look like the build is flaky. i think th=
e answer
>     is we=E2=80=99re going to have to accept a config option, but we=E2=
=80=99ll have to
>     document it and be aware
> Alejandro: could we switch run-queue classes (by a flag for e.g.)
> RP: the patch isn=E2=80=99t the issue, it=E2=80=99s a philosophical ques=
tion. i=E2=80=99m
>     worried about the implications from a usability standpoint (e.g. =E2=
=
=80=9Cwhy
> is
>     my build rebuilding all this stuff?=E2=80=9D =E2=80=9Cbecause your n=
etwork is bad=E2=80=9D)
> RP: over the years we=E2=80=99ve reduced the number of useless warnings =
to the
> point
>     where warnings are actual warnings now. maybe it wouldn=E2=80=99t be=
 bad to
> have
>     a warning for this situation
> PaulB: some layers cause lots of warnings to be emitted
> RP: heads up for 3.2, lots of warnings are errors now in poky
> Timo: very similar to gcc=E2=80=99s situation, code warnings are ignored=
, code
>     doesn=E2=80=99t work, so now more warnings are fatal for the build
> RP: 5 years ago i wouldn=E2=80=99t have taken that patch, now i think it=
=
=E2=80=99s
>     reasonable
> PaulB: okay, I=E2=80=99ll put a patch together
>
> RP: getting back to JPEW=E2=80=99s issue, i think we=E2=80=99ll simply n=
eed a config
>     option. for the future I see bitbake needing some sort of dynamic
>     directory monitoring code, perhaps notifications from the hash
> equivalence
>     server (if there was a mechanism for sending messages)
> JPEW: true, but if event-driven (not polling)
> TW: but if the network is flaky=E2=80=A6
> RP: depends on scenario, AB should work reliably, over the Internet?
>     anyone=E2=80=99s guess
> RP: maybe a username/password, or web token, or some other auth method
>
> PaulB: what would it take to replace pseudo with some sort of container
>     (flakiness with LD_PRELOAD issues and others). 2 issues: 1: build ne=
eds
>     the sub-uids and sub-gids needed before the build 2: even with root =
i
>     don=E2=80=99t think you can run mknod
> Timo: could be bind-mount in the devices and then add groups, we=E2=80=
=99d like to
>     keep it rootless if possible
> PaulB: but even with root we can=E2=80=99t create device nodes (device n=
ame-space
>     inside and outside the contain is the same (shared?))
> Randy: is the same namespace used on purpose?
> JPEW: not sure how to name-space physical devices?
> PaulB: if mknod is the only thing that could be an issue, then it=E2=80=
=99s the
> only
>     thing we=E2=80=99ll need to get working with LD_PRELOAD
> RP: not just that, but anything mknod would create would need to be wrap=
ped
> PaulB: oh, true
> Scott: do we need the full system image in the container?
> Timo: no
> RP: all things considered, pseudo is still holding up pretty well, is it
> worth
>     wholesale replacement?
> PaulB: still seeing seccomp issue
> RP: there is a work-around for the seccomp issue
> Scott: i like the idea of using the container since it will definitely
> avoid
>     host contamination
> Randy: a container would be faster too?
> JPEW: we still have to record everything
> RP: won=E2=80=99t completely solve the host contamination thing because =
the
>     cross-compile is still happening on the host, depends on which probl=
em
>     we=E2=80=99re solving (LD_PRELOAD? host contamination? performance? =
=
=E2=80=A6)
> PaulB: my issue was mostly LD_PRELOAD, and wic. bitbake runs inside
> fakeroot,
>     but wic doesn=E2=80=99t
> RP: true. i think the tools need to be more granular
>=20
>

--000000000000bff4a305a8c6e334
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0mar. 23 juin 2020 =C3=A0 21:05, Trevor Woerner &lt=
;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; a =C3=A9c=
rit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex=
;border-left-color:rgb(204,204,204)">Yocto Technical Team Minutes, Engineer=
ing Sync, for June 23 2020<br>
archive: <a href=3D"https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2Q=
skANXW3ZT7QwKC5wWVDg9dDH4/edit" rel=3D"noreferrer" target=3D"_blank">https:=
//docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/e=
dit</a><br>
<br>
=3D=3D disclaimer =3D=3D<br>
Best efforts are made to ensure the below is accurate and valid. However,<=
br>
errors sometimes happen. If any errors or omissions are found, please feel=
<br>
free to reply to this email with any corrections.<br>
<br>
=3D=3D attendees =3D=3D<br>
Trevor Woerner, Stephen Jolly, Jan-Simon M=C3=B6ller, Armin Kuster, Jeremy=
<br>
Puhlman, Trevor Gamblin, Scott Murray, Richard Purdie, Steve Sakoman, Bruc=
e<br>
Ashfield, Paul Baker, Randy MacLeod, Peter Kjellerstedt, David Reyna, Mark=
<br>
Morton, Tim Orling, Joshua Watt, Michael Halstead, Vineela (?), Alejandro =
H<br>
<br>
=3D=3D notes =3D=3D<br>
- 3.1.1 was released last week<br>
- 3.2.1 out of QA, looks clean, for TSC review, release probably in next f=
ew<br>
=C2=A0 =C2=A0 days<br>
- still issues with AB<br>
- still looking for more maintainers<br>
- lots of unassigned M2 bugs<br>
- new testing manual<br>
- ELC + devday next week<br>
<br>
=3D=3D general =3D=3D<br>
TW: meeting next week?<br>
Stephen: will look if there=E2=80=99s a timezone/agenda conflict=E2=80=A6<=
br>
(various input)<br>
Stephen: okay, next week=E2=80=99s meeting cancelled<br>
<br>
David: ELC, virtual booth and slack session, looking for people to hang ou=
t<br>
TW: do we have to be registered for ELC?<br>
David: no, certainly not for slack, Tracey and I will work it out. email t=
o<br>
=C2=A0 =C2=A0 come later today with details, contact me if interested<br>
<br>
RP: links in status report to devday and to new test manual. please have<b=
r>
=C2=A0 =C2=A0 a look through the test manual. kudos to Mark for pulling it=
 together<br>
=C2=A0 =C2=A0 (always getting questions about testing). this was started a=
 while back<br>
=C2=A0 =C2=A0 with ScottR<br>
<br>
RP: re AB. still seeing intermittent issues, causes lots of builds to fail=
.<br>
=C2=A0 =C2=A0 impacts me and SteveS. couple issues with repositories and/o=
r branches<br>
=C2=A0 =C2=A0 (upstream) disappearing.<br>
<br>
RP: issues around the =E2=80=9Cstdin=E2=80=9D bug (wrt testing)<br>
<br>
RP: Ross still working on RCU bug<br>
<br>
RP: Alex working on a =E2=80=9Cwarnings=E2=80=9D issue<br>
<br>
Scott: can we still add 3.2 features?<br>
RP: nobody=E2=80=99s mentioning anything. we=E2=80=99ve never been so blee=
ding edge (AUH<br>
=C2=A0 =C2=A0 kudos: AlexK). apt upgrade. Armin working on dhcp and bind u=
pdates. But no<br>
=C2=A0 =C2=A0 =E2=80=9C3.2 sound-bite=E2=80=9D<br>
JPEW: multiconfig fixes<br>
RP: true. and also some RDEPENDS support (should be straight-forward excep=
t<br>
=C2=A0 =C2=A0 when recursing)<br>
JPEW: not sold on the feature<br>
RP: simple use-case is to put 2 toolchains into one sdk. my answer is to b=
uild<br>
=C2=A0 =C2=A0 the two then combine later (with other code). i agree that w=
e might need<br>
=C2=A0 =C2=A0 to look for a different approach<br>
Timo: the code to bring it all together could do other stuff too, but i ag=
ree<br>
=C2=A0 =C2=A0 with Joshua that =E2=80=9Cthere be dragons=E2=80=9D<br>
<br>
Timo: perl has a new release 5.32, we might want to get that in<br>
Scott: but it has some new language features, might not just be a point<br=
>
=C2=A0 =C2=A0 release<br>
Timo: haven=E2=80=99t dug in, we=E2=80=99ve had issues with perl so hopefu=
lly things are<br>
=C2=A0 =C2=A0 better<br>
<br>
RP: 3.2. held up due to valgrind regressions, new distros (gcc 10 fixes),<=
br>
=C2=A0 =C2=A0 reproducible builds, etc=E2=80=A6 so there=E2=80=99s lots of=
 good stuff going in, just<br>
=C2=A0 =C2=A0 nothing =E2=80=9Cnew=E2=80=9D (i.e. a feature), but that=E2=
=80=99s okay<br>
<br>
Scott: new autoconf (Ross)?<br>
RP: don=E2=80=99t think it=E2=80=99s released yet, we=E2=80=99re testing t=
he pre-release. if<br>
=C2=A0 =C2=A0 upstream releases then we=E2=80=99ll upgrade, but don=E2=80=
=99t know their timescale<br>
<br>
RP: trying to reduce patch overhead (AlexK has been helping). it has been<=
br>
=C2=A0 =C2=A0 slowing moving down, but recently up-ticked a tiny bit. we=
=E2=80=99ll never get<br>
=C2=A0 =C2=A0 to 0, but every reduction helps<br>
<br>
Timo: was looking at Sphinx update yesterday. looks good, some glitches.<b=
r>
=C2=A0 =C2=A0 noticed the doc revision history was missing. how important =
is that?<br>
RP: i=E2=80=99ll ask MarkM to take a look. if it=E2=80=99s lost it won=E2=
=80=99t break the deal,<br>
=C2=A0 =C2=A0 but ideally we=E2=80=99d keep it</blockquote><div dir=3D"aut=
o"><br></div><div dir=3D"auto">It is not lost. It was not migrated yet. It =
is on the doc =E2=80=9Cfront page =E2=80=9C and i have one item in the todo=
 list to deal with docs boilerplate, the history section is part of that.=
=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:s=
olid;padding-left:1ex;border-left-color:rgb(204,204,204)"><br>
MarkM: yes, that and some other things (e.g. html version doesn=E2=80=99t =
have<br>
=C2=A0 =C2=A0 section links)<br>
Timo: was looking at Toaster manual, noticed some images were missing too.=
<br>
=C2=A0 =C2=A0 also found a broken URL. overall very good, nice to see a mo=
dern format<br>
=C2=A0 =C2=A0 (i.e. readthedocs)</blockquote><div dir=3D"auto"><br></div><=
div dir=3D"auto">Many thanks for looking at it Timo!=C2=A0</div><div dir=3D=
"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bo=
rder-left-color:rgb(204,204,204)"><br>
MarkM: we=E2=80=99re also looking at a colour scheme, Nico simply picked t=
he<br>
=C2=A0 =C2=A0 default, but something else will probably look better<br>
RP: Nico, MarkM, and I met (it was an open meeting=E2=80=A6 *wink wink*) a=
nd decided<br>
=C2=A0 =C2=A0 to move forward and are hoping to have it done for Dunfell (=
LTS) and<br>
=C2=A0 =C2=A0 master<br>
Timo: agreed. XML is a dying art, everything looks good, kudos! (will try =
to<br>
=C2=A0 =C2=A0 get some help from some Intel folks)<br>
<br>
JPEW: sstate found/miss cache?<br>
JPEW: a patch to not go out and look for every sstate object, keep a cache=
 if<br>
=C2=A0 =C2=A0 one had already been found<br>
RP: the found cache isn=E2=80=99t the issue, the not-found could be an iss=
ue<br>
=C2=A0 =C2=A0 especially where multiple builds are using the same sstate. =
we don=E2=80=99t<br>
=C2=A0 =C2=A0 have a mechanism to generate an sstate object in isolation, =
but it might<br>
=C2=A0 =C2=A0 be a step away<br>
JPEW: but it=E2=80=99s the not-found that is the slow path. if the sstate =
object<br>
=C2=A0 =C2=A0 isn=E2=80=99t there, the build goes out and searches the fil=
esystem for the<br>
=C2=A0 =C2=A0 missing object<br>
RP: maybe we could make the cache time-limited (e.g. 30 seconds?)<br>
JPEW: yes, that might help. it=E2=80=99s like there=E2=80=99s 2 scenarios:=
 local builds<br>
=C2=A0 =C2=A0 with one builder, group builds<br>
PaulB: maybe we could simply watch the sstate directory for changes?<br>
PaulB: there=E2=80=99s also an issue of a remote sstate cache over https w=
here<br>
=C2=A0 =C2=A0 packets are dropped so it fails, the machine builds it local=
ly. could be<br>
=C2=A0 =C2=A0 a =E2=80=9Ctime of check=E2=80=9D vs =E2=80=9Ctime of use=E2=
=
=80=9D issue: the check says it=E2=80=99s<br>
=C2=A0 =C2=A0 there, but at use time the network blips and then it=E2=80=
=99s not retrieved,<br>
=C2=A0 =C2=A0 and then there=E2=80=99s no retry<br>
JPEW: we saw same issue here: solution for us was to run bitbake twice: on=
ce<br>
=C2=A0 =C2=A0 with the setscene only, then once without it<br>
PaulB: we=E2=80=99re trying to offer our customers a common sstate but we =
can=E2=80=99t<br>
=C2=A0 =C2=A0 necessarily ask users to do the =E2=80=9C2 bitbake=E2=80=9D =
build<br>
RP: maybe we need a config setting<br>
PaulB: i think the issue is we=E2=80=99re checking a URL twice, it=E2=80=
=99s the time<br>
=C2=A0 =C2=A0 difference between checking and using that is the issue. per=
haps we could<br>
=C2=A0 =C2=A0 just do the poll once?<br>
RP: absolutely not, that=E2=80=99s effectively not possible. decisions are=
 made<br>
=C2=A0 =C2=A0 based on those checks so the two fetches have to be separate=
. if we<br>
=C2=A0 =C2=A0 combine them, then there=E2=80=99s no savings, each build wo=
uld be very long<br>
PaulB: perhaps better reporting<br>
RP: people are just going to set the config to ignore the warning then bui=
lds<br>
=C2=A0 =C2=A0 will fail and it=E2=80=99ll look like the build is flaky. i =
think the answer<br>
=C2=A0 =C2=A0 is we=E2=80=99re going to have to accept a config option, bu=
t we=E2=80=99ll have to<br>
=C2=A0 =C2=A0 document it and be aware<br>
Alejandro: could we switch run-queue classes (by a flag for e.g.)<br>
RP: the patch isn=E2=80=99t the issue, it=E2=80=99s a philosophical questi=
on. i=E2=80=99m<br>
=C2=A0 =C2=A0 worried about the implications from a usability standpoint (=
e.g. =E2=80=9Cwhy is<br>
=C2=A0 =C2=A0 my build rebuilding all this stuff?=E2=80=9D =E2=80=9Cbecaus=
e your network is bad=E2=80=9D)<br>
RP: over the years we=E2=80=99ve reduced the number of useless warnings to=
 the point<br>
=C2=A0 =C2=A0 where warnings are actual warnings now. maybe it wouldn=E2=
=80=99t be bad to have<br>
=C2=A0 =C2=A0 a warning for this situation<br>
PaulB: some layers cause lots of warnings to be emitted<br>
RP: heads up for 3.2, lots of warnings are errors now in poky<br>
Timo: very similar to gcc=E2=80=99s situation, code warnings are ignored, =
code<br>
=C2=A0 =C2=A0 doesn=E2=80=99t work, so now more warnings are fatal for the=
 build<br>
RP: 5 years ago i wouldn=E2=80=99t have taken that patch, now i think it=
=E2=80=99s<br>
=C2=A0 =C2=A0 reasonable<br>
PaulB: okay, I=E2=80=99ll put a patch together<br>
<br>
RP: getting back to JPEW=E2=80=99s issue, i think we=E2=80=99ll simply nee=
d a config<br>
=C2=A0 =C2=A0 option. for the future I see bitbake needing some sort of dy=
namic<br>
=C2=A0 =C2=A0 directory monitoring code, perhaps notifications from the ha=
sh equivalence<br>
=C2=A0 =C2=A0 server (if there was a mechanism for sending messages)<br>
JPEW: true, but if event-driven (not polling)<br>
TW: but if the network is flaky=E2=80=A6<br>
RP: depends on scenario, AB should work reliably, over the Internet?<br>
=C2=A0 =C2=A0 anyone=E2=80=99s guess<br>
RP: maybe a username/password, or web token, or some other auth method<br>
<br>
PaulB: what would it take to replace pseudo with some sort of container<br=
>
=C2=A0 =C2=A0 (flakiness with LD_PRELOAD issues and others). 2 issues: 1: =
build needs<br>
=C2=A0 =C2=A0 the sub-uids and sub-gids needed before the build 2: even wi=
th root i<br>
=C2=A0 =C2=A0 don=E2=80=99t think you can run mknod<br>
Timo: could be bind-mount in the devices and then add groups, we=E2=80=99d=
 like to<br>
=C2=A0 =C2=A0 keep it rootless if possible<br>
PaulB: but even with root we can=E2=80=99t create device nodes (device nam=
e-space<br>
=C2=A0 =C2=A0 inside and outside the contain is the same (shared?))<br>
Randy: is the same namespace used on purpose?<br>
JPEW: not sure how to name-space physical devices?<br>
PaulB: if mknod is the only thing that could be an issue, then it=E2=80=99=
s the only<br>
=C2=A0 =C2=A0 thing we=E2=80=99ll need to get working with LD_PRELOAD<br>
RP: not just that, but anything mknod would create would need to be wrappe=
d<br>
PaulB: oh, true<br>
Scott: do we need the full system image in the container?<br>
Timo: no<br>
RP: all things considered, pseudo is still holding up pretty well, is it w=
orth<br>
=C2=A0 =C2=A0 wholesale replacement?<br>
PaulB: still seeing seccomp issue<br>
RP: there is a work-around for the seccomp issue<br>
Scott: i like the idea of using the container since it will definitely avo=
id<br>
=C2=A0 =C2=A0 host contamination<br>
Randy: a container would be faster too?<br>
JPEW: we still have to record everything<br>
RP: won=E2=80=99t completely solve the host contamination thing because th=
e<br>
=C2=A0 =C2=A0 cross-compile is still happening on the host, depends on whi=
ch problem<br>
=C2=A0 =C2=A0 we=E2=80=99re solving (LD_PRELOAD? host contamination? perfo=
rmance? =E2=80=A6)<br>
PaulB: my issue was mostly LD_PRELOAD, and wic. bitbake runs inside fakero=
ot,<br>
=C2=A0 =C2=A0 but wic doesn=E2=80=99t<br>
RP: true. i think the tools need to be more granular<br>
<br>
</blockquote></div></div>

--000000000000bff4a305a8c6e334--
