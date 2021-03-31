Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.289.1617219621158388584
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Mar 2021 12:40:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=c2vJGkI1;
 spf=pass (domain: linaro.org, ip: 209.85.218.46, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f46.google.com with SMTP id u9so31786601ejj.7
        for <yocto@lists.yoctoproject.org>; Wed, 31 Mar 2021 12:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tj8zZEvvH3G8ndSMj+KwpW0oqfKYTDwK+gSTRjXWqLw=;
        b=c2vJGkI1XE5Jg0uqgtMBH60onJ6uddO2f//3U8sTgmjkeuhvhkPu4pxgXfxh25dPcz
         g9VDdOhAyF4kSvM+GGckzVf9H5wXite92h+buxmFZ2X2UEKLb1FLd4DTQ/HOLzQ+RCQs
         z4Z3PN9p2fkQuKY4wiHBKrnx9y1jbxjdihXLk/I+S8x88BFvP8TEaooGsCr8dHC3aFUa
         b8jLJZGl8cyrVMNZ5LtxwtRQFEhEMZNrPOqM35A5qNg0fHOYGhw2Ly4Py/wlDiuNilxK
         WLHl6aXfQqQHQUIZXmHssdqDdloD3cxx18hEyeT1H9l72XLrTCNrkgfXYXjLqJtMpAyl
         P3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tj8zZEvvH3G8ndSMj+KwpW0oqfKYTDwK+gSTRjXWqLw=;
        b=EN6JjfUaLPDVTFbeV/c9PXU3EZnYgGtcOqOjAxEEBmTW/1OQl0cgsitWuw6lZC7RYp
         t4hUbrr6sRjHa/bXy2z2OWboZ6kucnQIxjxthUni51jV6s3n63TWab93Z6F9yAy1kCKu
         KkZCcXKxEZmLSoxXM78kUl/3OX9YJZ0NyB7ZTJplPVMOr+SaY91bInIYbuR1UHe6KSvg
         CwCL+Rt/cTAcuwX1v3vP7U+j0WPzKFAb8c11tAhFZFvLzEzmFoUjpH3BowY590gCW59E
         LjiV+Dk+9ymwMGGx08U3NXstABe0vid+TBbCd5T9wXVIxTXfcIZnax03d14fw+PsDCf4
         v2oA==
X-Gm-Message-State: AOAM533iE8A6JCZWCdhLM1/wShfevNOaHoyUZT79jFj1H9keLpktpol9
	n/T2mUYQpt3IuUycb/cjh91sQUGWsRSSHuPkFQ2msw==
X-Google-Smtp-Source: ABdhPJyfWxNxvFhFEvwucYeVTkd4NzPXUsR9/uaQ1igG5c+5Xt3iHqwXGdWXytccpK+TOo8d3o9gdgE8cfVIPZYu08M=
X-Received: by 2002:a17:906:fc1c:: with SMTP id ov28mr5354139ejb.342.1617219619139;
 Wed, 31 Mar 2021 12:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210331142520.GA36347@localhost>
In-Reply-To: <20210331142520.GA36347@localhost>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 31 Mar 2021 21:40:08 +0200
Message-ID: <CAP71WjxXLQJ0kwukSfQW8xOf+sktfuSx2GS55Ayb7SuPMVGU_A@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for Mar 30, 2021
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 31, 2021 at 4:25 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> Yocto Technical Team Minutes, Engineering Sync, for March 30, 2021
> archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT=
7QwKC5wWVDg9dDH4/edit
>
> =3D=3D disclaimer =3D=3D
> Best efforts are made to ensure the below is accurate and valid. However=
,
> errors sometimes happen. If any errors or omissions are found, please fe=
el
> free to reply to this email with any corrections.
>
> =3D=3D attendees =3D=3D
> Trevor Woerner, Stephen Jolley, Armin Kuster, Richard Purdie, Randy
> MacLeod, Jan-Simon M=C3=B6ller, Trevor Gamblin, Tim Orling, Michael Hals=
tead,
> Paul Barker, Jon Mason, Joshua Watt, Steven Sakoman, Saul Wold, Scott
> Murray, Khem Raj, Peter Kjellerstedt (saur), Ross Burton, Michael
> Opdenacker
>
> =3D=3D notes =3D=3D
> - 3.2-m3 released
> - -m4 being built this week, no more update patches
>
> =3D=3D general =3D=3D
> Randy: got info collection thingy working on AB thanks to help from SS a=
nd
>     integrated into results
> RP: have you had a chance to look at my theory
> Randy: not yet
> RP: io-nice doesn=E2=80=99t change async write (I think AlexK pointed th=
is out). we
>     do nice levels for all processes and io-nice for things that write, =
it=E2=80=99s
>     possible that this is where we=E2=80=99re hitting the io block. we m=
ight want to
>     try doing some builds under qemu (then we can enforce more nice leve=
ls) as
>     a means of investigating this issue
>
>
> RP: the valgrind stuff seems to be testing well in master-next, but i wi=
ll
>     defer those to -m4
> RP: the -m4 build date is, technically, monday, anything else to include=
?
> Randy: lttng modules?
>
>
> Khem: i have gcc-11 patches, probably not for -m4, but if the AB has cyc=
les
>     can i send them up?
> RP: on the one hand i=E2=80=99d prefer to not do multiple things at the =
same time,
>     on the other hand i can=E2=80=99t stop people from sending new featu=
res
> Khem: i can hold off a bit. i could send an RFC. yocto project has alrea=
dy
>     submitted gcc-11 patches and i=E2=80=99m looking to expand the testi=
ng on it
> RP: any issues for -native recipes?
> Khem: i=E2=80=99ve found a bunch already and upstreamed them, any that w=
eren=E2=80=99t
>     accepted in the upstream project have been put into oe-core
>
>
> Peter: what about the covered/not-covered (on runqueue) issue
> RP: i have drafted a patch and is in master-next. it doesn=E2=80=99t app=
ear to break
>     anything, but proving it fixes things is hard. have you seen the pro=
blem
>     after adding that patch?
> Peter: no
> SS: i had seen it on 3 builds, and haven=E2=80=99t seen them again eithe=
r
> RP: trying to reproduce an exact same build (wrt sstate, runqueues, etc)=
 is
>     hard, so it=E2=80=99s hard to know if we=E2=80=99ve solved it
>
>
> Khem: in the past we=E2=80=99ve seen issues with bitbake running forever=
 due to
>     =E2=80=9Cmake -l=E2=80=9D issue. so we removed it. but we still see =
long builds with
>     qemarm
> Randy: how much longer?
> Khem: (guessing) 30%
> Randy: qemuarm64 too?
> Khem: no, just qemuarm. same number of CPUs, same underlying machine
> Jon: qemuarmv5 as well?
> Khem: no
> Jon: maybe it=E2=80=99s a qemuarm hardfloat issue. i=E2=80=99ll try to r=
eproduce it
> Khem: i=E2=80=99m building lots of stuff, not just the basics. mostly do=
ing world
>     builds, so maybe it=E2=80=99s a particular package
> <various>: we can give it a try
> RP: maybe by dropping the -l you=E2=80=99ve introduced something else (e=
.g. swapping)
> Khem: but no other qemu=E2=80=99s are affected. most builds finish in 10=
 hours,
>     but qemuarm gets killed after 13 hours (due to a timeout) which is w=
hy i
>     notice it (because it gets killed)
> RP: it would be interesting to look at the build stats data then compare=
 build
>     times recipe-to-recipe
> Randy: is there a bug filed?
> Khem: not yet, i can file a tracking bug
>
>
> TimO: Ross asked me about splitting meta-python out to standalone layer =
(from
>     meta-openembedded). would allow us to use dynamic layers. might help=
 with
>     ptest coverage. it might might other workflows possible (i.e. move i=
t
>     to gitlab and use their things). some have offered strong opinions t=
hat
>     it=E2=80=99s just splitting for splitting sake
> RP: i think splitting out would be good. there=E2=80=99s lots of burnout=
 and it
>     would be great to spread the load a bit more (instead of making one =
person
>     responsible for all meta-oe)
> TrevorG: having to share the support with the rest of meta-oe is hard
> TimO: Khem had asked us to move to a PR mechanism
> JPEW: this subset feels like the best one to be pulled out (as a test)
> TimO: true, meta-perl might be a good candidate too. in any case i would=
 start
>     with dunfell, but nothing before that

I think this is a really good discussion, but I wonder why you want to
go back in time.. I expect users of dunfell branch (which is an LTS
from YP perspectives) would be rather unhappy to see such a major
change in their stable builds. I think it's a change for master only,
so either now before the next release or a change for the Oct release,
no?

> Khem: have you considered this from the users point of view. obviously w=
e=E2=80=99re
>     thinking more of the maintenance point of view but let=E2=80=99s not=
 forget to
>     seek user input
> TimO: obviously it=E2=80=99s going to impact users, they=E2=80=99ll need=
 to change URIs
>     and bblayers
> PaulB: just make sure the layer index gets updated and we could leave a =
stub
>     behind that points the user to the change
> RP: (same)
> Khem: i also think it would help if these layers have separate mailing l=
ist.
>     it=E2=80=99s hard for users to know where to send patches (especiall=
y poky). so
>     instead of using mete-oe as a kitchen sink
> TimO: i=E2=80=99ve always wished for a separate mailing list. i=E2=80=99=
ve had to do lots
>     of filtering but it doesn=E2=80=99t catch everything
> Khem: good to bring to TSC and community to get input
> TimO: it=E2=80=99s fairly quick to split this out. mechanics aren=E2=80=
=99t a problem
> Armin: looking at layers that depend on meta-python, do you think they w=
ould
>     change to dynamic layers? meta-networking and meta-multimedia depend=
 on
>     meta-python, so splitting it out would require pulling it in for man=
y
>     use-cases
> RP: i wouldn't get too worried about the details, everything could be
>     solved, let=E2=80=99s not worry about all possibilities, when only s=
ome might
>     come to pass. i think more layers is good, maybe it opens up the abi=
lity
>     to use the AB for some of this stuff (as stuff gets smaller)
> Randy: so the reasons for are:
>     1. burden on maintainers
>     2. quality and test coverage
>     ?
> TimO: also simplification (if you want some python you don=E2=80=99t nee=
d all of
>     meta-oe)
> RP: i see dependency creep in external layers (since you have to pull in
>     meta-oe for meta-python then we might as well pull in all these othe=
r
>     things too that we=E2=80=99re already getting in meta-oe)
> Randy: do we want to see everything in meta-oe split up, or other splits=
 in
>     oe-core?
> RP: case by case, there=E2=80=99s pros and cons
> Randy: what about incremental transition vs a full change-over
> TimO: i want to make sure all the ptests are in place first, and there=
=E2=80=99s the
>     question of review
> Khem: why can=E2=80=99t we add ptests now? (i.e. in meta-oe)
> TimO: i=E2=80=99d *like* to add more ptests, but doesn=E2=80=99t mean we=
 will/should
> Khem: propose it and see what the feedback is. people are making product=
s with
>     this and we should make sure to move forward in a way the impacts th=
em in
>     a way they=E2=80=99re happy with
> TimO: 10 people will provide 20 opinions
> RP: we can do a POC and move forward
> TimO: we=E2=80=99ve talked about it so much over the years and we never =
agree on
>     trying a change, maybe people can=E2=80=99t see the benefit until th=
ey actually
>     try it
> Randy: could this live on git.yoctoproject.org
> TimO: maybe git.openembedded.org instead
> Randy: would you track bugs on YP bugzilla
> RP: where to host is irrelevant, but there are larger issues (such as be=
tter
>     AB usage, maintainer question, burnout, mailing lists)
> Khem: lots of people listed as maintainers of individual packages, but l=
ittle
>     actual maintainer help. how many maintainers actually review and hel=
p?
> RP: the same problem exists in oe-core. there are some that are active, =
but in
>     the end it=E2=80=99s usually AlexK that does the upgrades
> TimO: it could be an issue of timing, sometime you don=E2=80=99t get to =
it in a
>     day and someone else does it. with unlimited resources we would use =
yp
>     bugzilla, but there are consequences to the members
> Randy: do you want more layers removed too?
> Khem: yes, that would be great. i=E2=80=99m not maintainer by choice, th=
en i could
>     sign up to maintain what matters to me
> TrevorG: if we do it now with meta-python, then it lets us know if we sh=
ould
>     go ahead and do it with others too
> RP: yes, good experiment and we can roll it back. meta-python looks like=
 it
>     would be a good test
> TimO: i have tools that make it easy to do, and then easy to roll back. =
and
>     the tools are not just meta-python-specific, they could be used for =
any
>     sub-layer
>
>
> TrevorW: there is a Yocto Project related virtual conference being plann=
ed:
>     https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
> TrevorW: the CfP is now open:
>     https://pretalx.com/yocto-project-summit-2021/cfp
>
>=20
>
