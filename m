Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web12.9294.1619077638055406778
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 00:47:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=MYr0ct2H;
 spf=pass (domain: linaro.org, ip: 209.85.218.52, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f52.google.com with SMTP id u17so67373038ejk.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 00:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/XC4OvHal2dp+Rx9URiMX6PZKl/6Sp/W8ETsTQbD9Eg=;
        b=MYr0ct2HJcJqNaxpae/ds2g5m1l1vin5mVNvgOfTJnLZnArhhjPJCE1EN1TZfS+TXs
         lSUqCRjTuzadhR5oTbVsDQPF13YsrnGZQn2xVDRCOhY4VIxaAn0WXSNMf37MI+69LYic
         l2SAa/maT+/gg2Th5e7kBksWL5uomgoFQrbIcwMgBirNbGTyDU4iM2JBIvNg5WiKJbIl
         8nB5EyglOP8AZQMfuXvoc+IiefXyGcmZUY6mG+6pjfAlJtkUt8QukV1PX97mms6J0Qva
         ed3HOm/SRiFLZtPDY8CtZfFddN9ATbdFzKlYmrLhsvNTBuudVt7sX+MTrioimII32hUv
         1Jrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/XC4OvHal2dp+Rx9URiMX6PZKl/6Sp/W8ETsTQbD9Eg=;
        b=srgLBZOGWVKZ/f7kvrf4QtqXBuonxcPywxvBpBFJiH7jGV+EMkP54cRnzowMmmtgIg
         TEw8NJInjlc9QLfdYIloyUVz0aEOwR4VT8wF9CzWX5fvOpHWkoQxnwcqN4u8BuTtf6EP
         SHpGor8zmKuuJuBSnq3LWyU53Bbnf59ZpfPcgu4fW+2bBICDPiQECrLoIDJcQzMmJWED
         zALXiqjjOsko0LAOwv22oTtv1V1Uto/crrbcL+KyLLyr6DCDWATEdpihCEIY1MJCZKIG
         XyA5KjdOsaOzIBACD6xrL0owGMEhOU8Za2J1sQEHvr2M67y6GNuOQA0KFTBTmnelDKQI
         UJbA==
X-Gm-Message-State: AOAM531hDuP+6hZiA3aj2eGJjer3g0SjB53xudRQYfTxbYARMMGPDpuC
	rVwJbXSBlR4c0JRFh2WKAkG1zY5BI7QnKoy57VAK6A==
X-Google-Smtp-Source: ABdhPJwsP+WIWEacYk/mr7KP4H4zFSnvwfINIKM3mL2o4MSUnhPhYOeEt3GTWfpzChVSfIlWh8MbaEGyaW81a71wdFg=
X-Received: by 2002:a17:906:8812:: with SMTP id zh18mr1973812ejb.342.1619077636157;
 Thu, 22 Apr 2021 00:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210420173537.GA17644@localhost>
In-Reply-To: <20210420173537.GA17644@localhost>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 22 Apr 2021 09:47:05 +0200
Message-ID: <CAP71WjyNm5pEBii6VLZKcTTEJJCkzB7o_ocDgyvwfNbhZv6hcA@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for April 20, 2021
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005e07db05c08ae32d"

--0000000000005e07db05c08ae32d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 20, 2021 at 7:35 PM Trevor Woerner <twoerner@gmail.com> wrote:

> Yocto Technical Team Minutes, Engineering Sync, for April 20, 2021
> archive:
> https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWV=
Dg9dDH4/edit
>
> =3D=3D announcements =3D=3D
> The upcoming Yocto Project Summit is taking place May 25-26 2021
> details: https://www.yoctoproject.org/yocto-project-virtual-summit-2021/
> CfP: https://pretalx.com/yocto-project-summit-2021/cfp
> registration:
> https://www.cvent.com/d/yjq4dr/4W?ct=3D868bfddd-ca91-46bb-aaa5-62d2b61b2=
501
>
> =3D=3D disclaimer =3D=3D
> Best efforts are made to ensure the below is accurate and valid. However=
,
> errors sometimes happen. If any errors or omissions are found, please fe=
el
> free to reply to this email with any corrections.
>
> =3D=3D attendees =3D=3D
> Trevor Woerner, Stephen Jolley, Armin Kuster, Steve Sakoman, Peter
> Kjellerstedt, Alexandre Belloni, Michael Opdenacker, Scott Murray, Jon
> Mason, Michael Halstead, Richard Purdie, Bruce Ashfield, Ross Burton, Ra=
ndy
> MacLeod, Saul Wold, Tim Orling, Daiane Angolini
>
> =3D=3D notes =3D=3D
> - 3.3 (hardknott) released!!
> - 3.1.7 (dunfell) through QA, pending TSC approval
> - YP TSC: 3 seats re-elected, 2 seats up for re-election
> - master branch open for 3.4 (honister) and things are starting to merge
> - new command proposed: bitbake-getvar
> - AB issues: 59 (going up)
>
> =3D=3D general =3D=3D
> RP: the re-election for OE TSC is coming up in August, but the re-electi=
on
> for
>     the YP TSC is in May. a call for candidates will be going out soon
> TrevorW: do we want to align the voting with the conference?
> RP: probably not
>
>
> MichaelO: is there a 3.3 celebration?
> RP: usually we do it at the conferences, but we=E2=80=99ll have to do it=
 at the
>     virtual one this year
> MichaelO: i didn=E2=80=99t see anything on lwn
> RP: we don=E2=80=99t have a mechanism for this
> MichaelO: there are usually release notes
> RP: yocto-announce mailing list
> TrevorW: release notes?
> RP: yes, PaulE put together some notes
> TrevorW: is someone putting a release note together?
> MichaelO: okay, i=E2=80=99ll put it together and email internally first
> RP: advocacy is less that it was, if people can think of places to
>     help/advertise that would be great. sometime i publish something in
> the LF
>     newsletter
>

I think we should indeed improve that a bit. As far as I know, the only
place for the release notes is the 'email' sent to yocto-announce, which
includes the content from this file:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/RELEASENOTES

At the very least we should probably produce (as part of the release
process) a similar document that we publish on the website site. That woul=
d
help us share the news on various social media. We either need to reformat
the content for the web , e.g. more verbose, or at least copy/paste into a=
n
html page.
We also recently discussed moving the release notes to docs.yp.org, so
perhaps that could be enough to publish it here. The point is it's simpler
to share a link on twitter, linkedin, .. that this 'raw/text' file.


>
>
> RP: bitbake-getvar, instead of =E2=80=9Cbitbake -e | grep=E2=80=9D. save=
s people some
>     keystrokes
> RP: uses tinfoil, acts as a very good, very small example of how to writ=
e a
>     small tinfoil tool (e.g. c larson=E2=80=99s bb tool). maybe a way of=
 expanding
>     this infrastructure to make it easier to add tools in the future,
> perhaps
>     expandable in layers itself
> RP: also perhaps could be used for layer and config setup (e.g. kas,
>     combo-layer)
> AlexB: sounds great! i often show students =E2=80=9Cbitbake -e | grep=E2=
=
=80=9D and
>     they=E2=80=99re often surprised and happy to see it
> ScottM: +1
> RP: it=E2=80=99s in master-next. there are probably a lot of tutorials t=
hat will
>     need updating after this :-) and there are places in selftest where =
we
> do
>     =E2=80=9Cbitbake -e | grep=E2=80=9D (it runs it once then builds a d=
ictionary of the
>     results to avoid having to run it multiple times throughout the test
> run)
> RossB: it=E2=80=99s similar to bbvars
> RP: i=E2=80=99d like to keep it simple, single variable, i don=E2=80=99t=
 want to get too
>     much scope creep which makes it more complicated. not meant to solve
> all
>     problems, just solve one elegantly. if we add something to take
> multiple
>     vars then we=E2=80=99d have to return JSON (?) or something else tha=
t would be
>     machine-parsable
> RP: i think a separate command to do multiple vars would be best
>
>
> PeterK: don't forget to move poky-conf back to master
> RP: ah, thanks
>
>
> Saul: CentOS 8 issues, grrr
> RP: i haven=E2=80=99t looked into it
> Saul: i think qemu is dying and qmp is trying to read the linux socket a=
nd
>     getting nothing. maybe i could take out the centos builder for a whi=
le
> RP: sounds reasonable. if you want to pull one builder out to work on it=
,
> that
>     would be fine
> Saul: i=E2=80=99ll talk to MichaelH about it
>
>
> Saul: any cmake experts out there?
> <crickets>
> Saul: i have a nasty cmake + python issue wrt ceph: it doesn=E2=80=99t f=
ind the
>     core gcc libraries, sysroot being set to /not/exist. i think there=
=E2=80=99s an
>     environment passing issue between cmake and the python
> RP: that /not/exist is something *we* hardcode into the compiler to make
> sure
>     sysroot gets set
> Bruce: have a look at what we did in libvirt recently. we had a similar
> issue
>     with meson whereby it couldn=E2=80=99t find getent from libc. we had=
 to create
> a
>     patch. meson+cmake couldn=E2=80=99t find getent from libc
> RossB: i=E2=80=99ll take a look at your patch Bruce, meson acts strange =
in some
>     ways, but sometimes there=E2=80=99s a way to straighten it out
>
>
> ScottM: Steve: 3.1.7 this week?
> SteveS: up to TSC to approve it
> RP: it=E2=80=99s through QA, QA didn=E2=80=99t flag any issues (there wa=
s one failure but
>     it succeeded on a subsequent build). the TSC meeting is later today,
> so if
>     they approve it=E2=80=99ll be out by tomorrow
>
>
> Randy: latency monitoring. turned down from 10 to 6 seconds, tuned timeo=
ut
>     from 5 to 15 seconds. new column in AB console to link to this new
> data.
>     generates graphs of =E2=80=9Ctime to dd 100 kb periodically=E2=80=9D=
 to hopefully help
>     correlate failures with load. we usually see 3-5 seconds but sometim=
es
> 50s
>     for unexplained reasons
> RP: that=E2=80=99s very interesting. but we still don=E2=80=99t know wha=
t the system is
>     doing at those times when we see the 20. it=E2=80=99s one thing to k=
now it=E2=80=99s
>     happening, it=E2=80=99s another to know why. i=E2=80=99ve noticed th=
at webkit builds
>     add a lot of load, also compression adds a lot of load (xz)
> Randy: behind on the rust things since i=E2=80=99ve been working on this
>
>
> RP: speaking of languages, Go also worries me. Go has 2 issues: the fetc=
her
>     is messy and builds are not reproducible. are there any Go experts i=
n
> our
>     community who can help?
> TimO: Bruce and I have been struggling over a bunch of things, but it=E2=
=
=80=99s not
>     fun
> Bruce: working on something; i=E2=80=99m currently up to 37 fetches, but=
 it=E2=80=99s not
>     just fetching but also a layout issue. if you fetch something to =E2=
=
=80=9Cc/a=E2=80=9D
>     but Go expects to find it at =E2=80=9Ca=E2=80=9D then it won=E2=80=
=99t use it
> Randy: someone wrote a cargo module for Rust to do something similar (i.=
e.
> a
>     translation between Rust and bitbake), would that pattern be useful
> here?
> Bruce: probably, hard to know at what point we need to make deep changes=
 vs
>     patches on the surface. the =E2=80=9Cmake=E2=80=9D infrastructure do=
esn=E2=80=99t help, too
>     many hard-coded paths and options in the Go  =E2=80=9Cmake=E2=80=9D =
files
> RP: and that=E2=80=99s only =C2=BD the problem (still have build reprodu=
cibility issues)
> Bruce: Khem can bump the Go version, but then we need to chase after all
> these
>     fixes
>
>
> Randy: suricata?
> Armin: yes, those are in meta-security now, donated by ARM
> Randy: did you use a cargo build
> Armin: it was a couple things, had to start with one but then switch ove=
r
>     partway
>
>
> TrevorW: is there any update on the =E2=80=9Clayout of where patches go=
=E2=80=9D work?
> RP: you mean =E2=80=9Cwork directory=E2=80=9D vs =E2=80=9Csource directo=
ry=E2=80=9D?
> RP: pretty invasive things, put it aside for now. a change like this wil=
l
> end
>     up causing lots of follow-on issues for weeks to come. the cleanup
> would
>     be nice, don=E2=80=99t know if the cost is worth it and would eat up=
 my time
> for
>     a while. although i agree the time would be best now to do it (start=
 of
>     new release). i think this is the second time i=E2=80=99ve tried
>
>
> RP: parallel make job server (another such example of something I=E2=80=
=99ve looked
>     at and think would be nice, but have had to put aside for the
> time-being)
> RP: the todo list isn=E2=80=99t too bad, but it=E2=80=99s something that=
 fell off to the
>     side.
> RP: i get the feeling that some of the things Randy is trying to track d=
own
>     (load on AB servers) might end up being helped by having a parallel =
job
>     server, but we just don=E2=80=99t know
> ScottM: is that branch still around. i=E2=80=99m interested in tinkering=
 with it
> RP: ignore the branch, just take the commit.
> RP: i had hard-coded the fifo to one place (/tmp) on the machine, which
> means
>     every build on that machine is tied together. is that good or bad?
> ScottM: is that something you could see being global for all bitbake on =
the
>     machine
> RP: as long as all the builds are being run by the same user. probably
> need to
>     create a separate fifo, give it a relevant name, and place it somewh=
ere
>     where each user can access it themselves. maybe i should try it on t=
he
> AB
>     and see what blows up
>
>=20
>
>

--0000000000005e07db05c08ae32d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 7:35 PM Trevo=
r Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Yocto=
 Technical Team Minutes, Engineering Sync, for April 20, 2021<br>
archive: <a href=3D"https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2Q=
skANXW3ZT7QwKC5wWVDg9dDH4/edit" rel=3D"noreferrer" target=3D"_blank">https:=
//docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/e=
dit</a><br>
<br>
=3D=3D announcements =3D=3D<br>
The upcoming Yocto Project Summit is taking place May 25-26 2021<br>
details: <a href=3D"https://www.yoctoproject.org/yocto-project-virtual-sum=
mit-2021/" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.or=
g/yocto-project-virtual-summit-2021/</a><br>
CfP: <a href=3D"https://pretalx.com/yocto-project-summit-2021/cfp" rel=3D"=
noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summit-2021=
/cfp</a><br>
registration: <a href=3D"https://www.cvent.com/d/yjq4dr/4W?ct=3D868bfddd-c=
a91-46bb-aaa5-62d2b61b2501" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.cvent.com/d/yjq4dr/4W?ct=3D868bfddd-ca91-46bb-aaa5-62d2b61b2501</a><br>
<br>
=3D=3D disclaimer =3D=3D<br>
Best efforts are made to ensure the below is accurate and valid. However,<=
br>
errors sometimes happen. If any errors or omissions are found, please feel=
<br>
free to reply to this email with any corrections.<br>
<br>
=3D=3D attendees =3D=3D<br>
Trevor Woerner, Stephen Jolley, Armin Kuster, Steve Sakoman, Peter<br>
Kjellerstedt, Alexandre Belloni, Michael Opdenacker, Scott Murray, Jon<br>
Mason, Michael Halstead, Richard Purdie, Bruce Ashfield, Ross Burton, Rand=
y<br>
MacLeod, Saul Wold, Tim Orling, Daiane Angolini<br>
<br>
=3D=3D notes =3D=3D<br>
- 3.3 (hardknott) released!!<br>
- 3.1.7 (dunfell) through QA, pending TSC approval<br>
- YP TSC: 3 seats re-elected, 2 seats up for re-election<br>
- master branch open for 3.4 (honister) and things are starting to merge<b=
r>
- new command proposed: bitbake-getvar<br>
- AB issues: 59 (going up)<br>
<br>
=3D=3D general =3D=3D<br>
RP: the re-election for OE TSC is coming up in August, but the re-election=
 for<br>
=C2=A0 =C2=A0 the YP TSC is in May. a call for candidates will be going ou=
t soon<br>
TrevorW: do we want to align the voting with the conference?<br>
RP: probably not<br>
<br>
<br>
MichaelO: is there a 3.3 celebration?<br>
RP: usually we do it at the conferences, but we=E2=80=99ll have to do it a=
t the<br>
=C2=A0 =C2=A0 virtual one this year<br>
MichaelO: i didn=E2=80=99t see anything on lwn<br>
RP: we don=E2=80=99t have a mechanism for this<br>
MichaelO: there are usually release notes<br>
RP: yocto-announce mailing list<br>
TrevorW: release notes?<br>
RP: yes, PaulE put together some notes<br>
TrevorW: is someone putting a release note together?<br>
MichaelO: okay, i=E2=80=99ll put it together and email internally first<br=
>
RP: advocacy is less that it was, if people can think of places to<br>
=C2=A0 =C2=A0 help/advertise that would be great. sometime i publish somet=
hing in the LF<br>
=C2=A0 =C2=A0 newsletter<br></blockquote><div><br></div><div>I think we sh=
ould indeed improve that a bit. As far as I know, the only place for the re=
lease notes is the &#39;email&#39; sent to yocto-announce, which includes t=
he content from this file:</div><a href=3D"http://downloads.yoctoproject.or=
g/releases/yocto/yocto-3.3/RELEASENOTES" rel=3D"noreferrer" target=3D"_blan=
k">http://downloads.yoctoproject.org/releases/<span class=3D"gmail-il">yoct=
o</span>/<span class=3D"gmail-il">yocto</span>-3.3/RELEASENOTES</a><br><div=
><br></div><div>At the very least we should probably produce (as part of th=
e release process) a similar document that we publish on the website site. =
That would help us share the news on various social media. We either need t=
o reformat the content for the web , e.g. more verbose, or at least copy/pa=
ste into an html page.=C2=A0</div><div>We also recently discussed moving th=
e release notes to <a href=3D"http://docs.yp.org">docs.yp.org</a>, so perha=
ps that could be enough to publish it here. The point is it&#39;s simpler t=
o share a link on twitter, linkedin, .. that this &#39;raw/text&#39; file.<=
/div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
<br>
<br>
RP: bitbake-getvar, instead of =E2=80=9Cbitbake -e | grep=E2=80=9D. saves =
people some<br>
=C2=A0 =C2=A0 keystrokes<br>
RP: uses tinfoil, acts as a very good, very small example of how to write =
a<br>
=C2=A0 =C2=A0 small tinfoil tool (e.g. c larson=E2=80=99s bb tool). maybe =
a way of expanding<br>
=C2=A0 =C2=A0 this infrastructure to make it easier to add tools in the fu=
ture, perhaps<br>
=C2=A0 =C2=A0 expandable in layers itself<br>
RP: also perhaps could be used for layer and config setup (e.g. kas,<br>
=C2=A0 =C2=A0 combo-layer)<br>
AlexB: sounds great! i often show students =E2=80=9Cbitbake -e | grep=E2=
=80=9D and<br>
=C2=A0 =C2=A0 they=E2=80=99re often surprised and happy to see it<br>
ScottM: +1<br>
RP: it=E2=80=99s in master-next. there are probably a lot of tutorials tha=
t will<br>
=C2=A0 =C2=A0 need updating after this :-) and there are places in selftes=
t where we do<br>
=C2=A0 =C2=A0 =E2=80=9Cbitbake -e | grep=E2=80=9D (it runs it once then bu=
ilds a dictionary of the<br>
=C2=A0 =C2=A0 results to avoid having to run it multiple times throughout =
the test run)<br>
RossB: it=E2=80=99s similar to bbvars<br>
RP: i=E2=80=99d like to keep it simple, single variable, i don=E2=80=99t w=
ant to get too<br>
=C2=A0 =C2=A0 much scope creep which makes it more complicated. not meant =
to solve all<br>
=C2=A0 =C2=A0 problems, just solve one elegantly. if we add something to t=
ake multiple<br>
=C2=A0 =C2=A0 vars then we=E2=80=99d have to return JSON (?) or something =
else that would be<br>
=C2=A0 =C2=A0 machine-parsable<br>
RP: i think a separate command to do multiple vars would be best<br>
<br>
<br>
PeterK: don&#39;t forget to move poky-conf back to master<br>
RP: ah, thanks<br>
<br>
<br>
Saul: CentOS 8 issues, grrr<br>
RP: i haven=E2=80=99t looked into it<br>
Saul: i think qemu is dying and qmp is trying to read the linux socket and=
<br>
=C2=A0 =C2=A0 getting nothing. maybe i could take out the centos builder f=
or a while<br>
RP: sounds reasonable. if you want to pull one builder out to work on it, =
that<br>
=C2=A0 =C2=A0 would be fine<br>
Saul: i=E2=80=99ll talk to MichaelH about it<br>
<br>
<br>
Saul: any cmake experts out there?<br>
&lt;crickets&gt;<br>
Saul: i have a nasty cmake + python issue wrt ceph: it doesn=E2=80=99t fin=
d the<br>
=C2=A0 =C2=A0 core gcc libraries, sysroot being set to /not/exist. i think=
 there=E2=80=99s an<br>
=C2=A0 =C2=A0 environment passing issue between cmake and the python<br>
RP: that /not/exist is something *we* hardcode into the compiler to make s=
ure<br>
=C2=A0 =C2=A0 sysroot gets set<br>
Bruce: have a look at what we did in libvirt recently. we had a similar is=
sue<br>
=C2=A0 =C2=A0 with meson whereby it couldn=E2=80=99t find getent from libc=
. we had to create a<br>
=C2=A0 =C2=A0 patch. meson+cmake couldn=E2=80=99t find getent from libc<br=
>
RossB: i=E2=80=99ll take a look at your patch Bruce, meson acts strange in=
 some<br>
=C2=A0 =C2=A0 ways, but sometimes there=E2=80=99s a way to straighten it o=
ut<br>
<br>
<br>
ScottM: Steve: 3.1.7 this week?<br>
SteveS: up to TSC to approve it<br>
RP: it=E2=80=99s through QA, QA didn=E2=80=99t flag any issues (there was =
one failure but<br>
=C2=A0 =C2=A0 it succeeded on a subsequent build). the TSC meeting is late=
r today, so if<br>
=C2=A0 =C2=A0 they approve it=E2=80=99ll be out by tomorrow<br>
<br>
<br>
Randy: latency monitoring. turned down from 10 to 6 seconds, tuned timeout=
<br>
=C2=A0 =C2=A0 from 5 to 15 seconds. new column in AB console to link to th=
is new data.<br>
=C2=A0 =C2=A0 generates graphs of =E2=80=9Ctime to dd 100 kb periodically=
=E2=80=9D to hopefully help<br>
=C2=A0 =C2=A0 correlate failures with load. we usually see 3-5 seconds but=
 sometimes 50s<br>
=C2=A0 =C2=A0 for unexplained reasons<br>
RP: that=E2=80=99s very interesting. but we still don=E2=80=99t know what =
the system is<br>
=C2=A0 =C2=A0 doing at those times when we see the 20. it=E2=80=99s one th=
ing to know it=E2=80=99s<br>
=C2=A0 =C2=A0 happening, it=E2=80=99s another to know why. i=E2=80=99ve no=
ticed that webkit builds<br>
=C2=A0 =C2=A0 add a lot of load, also compression adds a lot of load (xz)<=
br>
Randy: behind on the rust things since i=E2=80=99ve been working on this<b=
r>
<br>
<br>
RP: speaking of languages, Go also worries me. Go has 2 issues: the fetche=
r<br>
=C2=A0 =C2=A0 is messy and builds are not reproducible. are there any Go e=
xperts in our<br>
=C2=A0 =C2=A0 community who can help?<br>
TimO: Bruce and I have been struggling over a bunch of things, but it=E2=
=80=99s not<br>
=C2=A0 =C2=A0 fun<br>
Bruce: working on something; i=E2=80=99m currently up to 37 fetches, but i=
t=E2=80=99s not<br>
=C2=A0 =C2=A0 just fetching but also a layout issue. if you fetch somethin=
g to =E2=80=9Cc/a=E2=80=9D<br>
=C2=A0 =C2=A0 but Go expects to find it at =E2=80=9Ca=E2=80=9D then it won=
=
=E2=80=99t use it<br>
Randy: someone wrote a cargo module for Rust to do something similar (i.e.=
 a<br>
=C2=A0 =C2=A0 translation between Rust and bitbake), would that pattern be=
 useful here?<br>
Bruce: probably, hard to know at what point we need to make deep changes v=
s<br>
=C2=A0 =C2=A0 patches on the surface. the =E2=80=9Cmake=E2=80=9D infrastru=
cture doesn=E2=80=99t help, too<br>
=C2=A0 =C2=A0 many hard-coded paths and options in the Go=C2=A0 =E2=80=9Cm=
ake=E2=80=9D files<br>
RP: and that=E2=80=99s only =C2=BD the problem (still have build reproduci=
bility issues)<br>
Bruce: Khem can bump the Go version, but then we need to chase after all t=
hese<br>
=C2=A0 =C2=A0 fixes<br>
<br>
<br>
Randy: suricata?<br>
Armin: yes, those are in meta-security now, donated by ARM<br>
Randy: did you use a cargo build<br>
Armin: it was a couple things, had to start with one but then switch over<=
br>
=C2=A0 =C2=A0 partway<br>
<br>
<br>
TrevorW: is there any update on the =E2=80=9Clayout of where patches go=E2=
=
=80=9D work?<br>
RP: you mean =E2=80=9Cwork directory=E2=80=9D vs =E2=80=9Csource directory=
=
=E2=80=9D?<br>
RP: pretty invasive things, put it aside for now. a change like this will =
end<br>
=C2=A0 =C2=A0 up causing lots of follow-on issues for weeks to come. the c=
leanup would<br>
=C2=A0 =C2=A0 be nice, don=E2=80=99t know if the cost is worth it and woul=
d eat up my time for<br>
=C2=A0 =C2=A0 a while. although i agree the time would be best now to do i=
t (start of<br>
=C2=A0 =C2=A0 new release). i think this is the second time i=E2=80=99ve t=
ried<br>
<br>
<br>
RP: parallel make job server (another such example of something I=E2=80=99=
ve looked<br>
=C2=A0 =C2=A0 at and think would be nice, but have had to put aside for th=
e time-being)<br>
RP: the todo list isn=E2=80=99t too bad, but it=E2=80=99s something that f=
ell off to the<br>
=C2=A0 =C2=A0 side.<br>
RP: i get the feeling that some of the things Randy is trying to track dow=
n<br>
=C2=A0 =C2=A0 (load on AB servers) might end up being helped by having a p=
arallel job<br>
=C2=A0 =C2=A0 server, but we just don=E2=80=99t know<br>
ScottM: is that branch still around. i=E2=80=99m interested in tinkering w=
ith it<br>
RP: ignore the branch, just take the commit.<br>
RP: i had hard-coded the fifo to one place (/tmp) on the machine, which me=
ans<br>
=C2=A0 =C2=A0 every build on that machine is tied together. is that good o=
r bad?<br>
ScottM: is that something you could see being global for all bitbake on th=
e<br>
=C2=A0 =C2=A0 machine<br>
RP: as long as all the builds are being run by the same user. probably nee=
d to<br>
=C2=A0 =C2=A0 create a separate fifo, give it a relevant name, and place i=
t somewhere<br>
=C2=A0 =C2=A0 where each user can access it themselves. maybe i should try=
 it on the AB<br>
=C2=A0 =C2=A0 and see what blows up<br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000005e07db05c08ae32d--
