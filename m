Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CA68C433FE
	for <webhook@archiver.kernel.org>; Mon, 17 Oct 2022 02:28:40 +0000 (UTC)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web08.36596.1665973710619137801
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 19:28:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CbTik7Lx;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id h203so8078933iof.1
        for <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 19:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e6iCK9rasTBMNIczfMOcZZ5EpqhKBf+29GrlA/8Od40=;
        b=CbTik7Lxyo04RO2+atoj/5ued2++tzG4t+KAoeoeT1drWinZiBykcxmMqX9bRBT6FR
         3eeEXdFTuguLXuvQ+IvKiruRImay1AJwKQgj2Aguolr19JxqP2uRUpbAOwBa+OICyV0W
         Qo0G+Mn6ux2yVsTMGubeuH7KuMGri+ByffxgPRb+7BIxmKp87WXXzEuMyU4YfUA/RvVa
         jcPerKvnT5bfsv6bmWTOQVhtT06OK98QByESrJMBCa/8d/yh4WczVxSw8hyea7PdMphE
         cZ+tcSi59APUtmuwbECv2AULKlVT+6etUSt5h13Mjur6mxU1bhSN6qw3FadvBgc+4mM4
         9pKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e6iCK9rasTBMNIczfMOcZZ5EpqhKBf+29GrlA/8Od40=;
        b=GfK6y4C6z4ol85uWn5XzZZXtPrTf5TP9d7AQKuaLN9VqR8aLnn1CgO+fAPUobl8hnJ
         CSFBM3HAnsKrcrANaJnTDRCCUqYobIYw+iuq7GrqchDbRg0RmMej03Q76srYfh1c3X12
         01gR5TVjyEUEUYLIFN1IvMqNnOK0BP/J7bHKyFAKDmqCpXDNoZdnLCYsh0V3IlldhxLx
         Fp5Mn63pbR0U0zJ95uCGKN9GBXLKROXjWHFRy/ennfYIPJNHP63O5hgppxaZyyYk81vZ
         tZjGtfP/M0o3Gr60kurvn6JWZH1V9o3L+CHl8chfEG6tPVsdjmV7Ae8qDa6puDJh4ayY
         dF7Q==
X-Gm-Message-State: ACrzQf3E7GtDeGjQjqcBe+jynFiOCbxGEJcVFFnt8Sz5k4wXVy/LQ7zL
	dz8ZuLuVSS4C6BkPy7wfu4J1BESUXCaHsJ2odHRx/H8tFpc=
X-Google-Smtp-Source: AMsMyM4lDouS+iQyXQF1eXMiKP7dgajfUGykqr6+DKx0mFE96Qc3YyGLdFpNu5x+dXQf22CSiJjf+RdfJ4aJqi3zQQg=
X-Received: by 2002:a05:6638:3f0f:b0:363:9c60:dd5f with SMTP id
 ck15-20020a0566383f0f00b003639c60dd5fmr4382274jab.129.1665973709772; Sun, 16
 Oct 2022 19:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local> <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
 <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de>
In-Reply-To: <Y0gbF+3+kU0Z3UW8@aglaia.inside-m2m.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 16 Oct 2022 22:28:18 -0400
Message-ID: <CADkTA4MmC_PCX8+XiXD_dX+aSnfBRtkoP0LzwyGi=PMNpArssQ@mail.gmail.com>
Subject: Re: [yocto] Dealing with go dependencies in recipes - native docker-compose
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002d1ae605eb31bb45"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Oct 2022 02:28:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58347

--0000000000002d1ae605eb31bb45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 13, 2022 at 10:05 AM Konstantin Kletschke <
konstantin.kletschke@inside-m2m.de> wrote:

> On Tue, Oct 11, 2022 at 11:23:31PM -0300, Bruce Ashfield wrote:
>
> > Adding the missing setuptools does get things working.
>
> Oh my, I was still looking for python3-distutils (deprecated, not
> available) and did not realize I now need setuptools. Thanks for
> clarifying, however, I investigated the gao approach then...
>
>
> > I actually have a prototype recipe for this that I was working on befor=
e
> > ELCe, but I didn't get it into meta-virtualization yet, as it had a few
> > rough edges.
>
> I suppose, those go recipes look extremly difficult to do.
>
> > If you give me a few days, I can post it to the meta-virtualization lis=
t,
> > but I'm on the road right now and don't have access to all my build
> > machines.
>
> Of course I have patience and I am very curious to test this out!
> Currently I have no urge but in future it will be extremely handy to
> have the native docker compose approach available. It is a bit smaller
> then the python approach (if python is only used by this docker-compose,
> a third disk space is used by native approach).
>
> > I also did a presentation at the yocto summit about "modern languages".
>
> Opps, interesting. No need to summarize here, I agree. I will dig this
> up in the internet. Interesting...
>
> > You can see the approach that I take for this in the k3s and nerdctl
> recipes
> > in meta-virtualization. My new docker-compose recipe is of similar
> format.
>
> As I vaguely mentioned above, those recipes look far more complex than I
> would have imagined when starting to dig into the go world...
> astonishing!
>

FYI: Here's the very lightly tested RFC version of the recipe:

https://git.yoctoproject.org/meta-virtualization/commit/?h=3Dmaster-next&id=
=3Dfa24cfc08b129de5c7ba36099985359cc0228630

Cheers,

Bruce


> > If we just bypass the fetcher, offline builds, some of licensing and SB=
OM
> > and reproducible builds .. you can have a simple recipe like that as
> well :)
>
> Yea, and I already learned to lovae this reproducibility approach.
>
> --
> INSIDE M2M GmbH
> Konstantin Kletschke
> Berenbosteler Stra=C3=9Fe 76 B
> 30823 Garbsen
>
> Telefon: +49 (0) 5137 90950136
> Mobil: +49 (0) 151 15256238
> Fax: +49 (0) 5137 9095010
>
> konstantin.kletschke@inside-m2m.de
> http://www.inside-m2m.de
>
> Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Ingo Haase, Dr. Fred K=C3=B6n=
emann, Derek
> Uhlig
> HRB: 111204, AG Hannover
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58332):
> https://lists.yoctoproject.org/g/yocto/message/58332
> Mute This Topic: https://lists.yoctoproject.org/mt/94264665/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000002d1ae605eb31bb45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Oct 13, 2022 at 10:05 AM Konstantin Kletsch=
ke &lt;<a href=3D"mailto:konstantin.kletschke@inside-m2m.de">konstantin.kle=
tschke@inside-m2m.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Tue, Oct 11, 2022 at 11:23:31PM -0300, Bruce Ashfiel=
d wrote:<br>
<br>
&gt; Adding the missing setuptools does get things working.<br>
<br>
Oh my, I was still looking for python3-distutils (deprecated, not<br>
available) and did not realize I now need setuptools. Thanks for<br>
clarifying, however, I investigated the gao approach then...<br>
<br>
<br>
&gt; I actually have a prototype recipe for this that I was working on befo=
re<br>
&gt; ELCe, but I didn&#39;t get it into meta-virtualization yet, as it had =
a few<br>
&gt; rough edges.<br>
<br>
I suppose, those go recipes look extremly difficult to do.<br>
<br>
&gt; If you give me a few days, I can post it to the meta-virtualization li=
st,<br>
&gt; but I&#39;m on the road right now and don&#39;t have access to all my =
build<br>
&gt; machines.<br>
<br>
Of course I have patience and I am very curious to test this out!<br>
Currently I have no urge but in future it will be extremely handy to<br>
have the native docker compose approach available. It is a bit smaller<br>
then the python approach (if python is only used by this docker-compose,<br=
>
a third disk space is used by native approach).<br>
<br>
&gt; I also did a presentation at the yocto summit about &quot;modern langu=
ages&quot;.<br>
<br>
Opps, interesting. No need to summarize here, I agree. I will dig this<br>
up in the internet. Interesting...<br>
<br>
&gt; You can see the approach that I take for this in the k3s and nerdctl r=
ecipes<br>
&gt; in meta-virtualization. My new docker-compose recipe is of similar for=
mat.<br>
<br>
As I vaguely mentioned above, those recipes look far more complex than I<br=
>
would have imagined when starting to dig into the go world...<br>
astonishing!<br></blockquote><div><br></div><div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">FYI: Here&#39;s the very lightly tested RFC ve=
rsion of the recipe:</div><br></div><div><a href=3D"https://git.yoctoprojec=
t.org/meta-virtualization/commit/?h=3Dmaster-next&amp;id=3Dfa24cfc08b129de5=
c7ba36099985359cc0228630">https://git.yoctoproject.org/meta-virtualization/=
commit/?h=3Dmaster-next&amp;id=3Dfa24cfc08b129de5c7ba36099985359cc0228630</=
a><br></div><div>=C2=A0</div><div><div class=3D"gmail_default" style=3D"fon=
t-size:small">Cheers,</div><div class=3D"gmail_default" style=3D"font-size:=
small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Bru=
ce</div></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<br>
&gt; If we just bypass the fetcher, offline builds, some of licensing and S=
BOM<br>
&gt; and reproducible builds .. you can have a simple recipe like that as w=
ell :)<br>
<br>
Yea, and I already learned to lovae this reproducibility approach.<br>
<br>
-- <br>
INSIDE M2M GmbH<br>
Konstantin Kletschke<br>
Berenbosteler Stra=C3=9Fe 76 B<br>
30823 Garbsen<br>
<br>
Telefon: +49 (0) 5137 90950136<br>
Mobil: +49 (0) 151 15256238<br>
Fax: +49 (0) 5137 9095010<br>
<br>
<a href=3D"mailto:konstantin.kletschke@inside-m2m.de" target=3D"_blank">kon=
stantin.kletschke@inside-m2m.de</a><br>
<a href=3D"http://www.inside-m2m.de" rel=3D"noreferrer" target=3D"_blank">h=
ttp://www.inside-m2m.de</a> <br>
<br>
Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Ingo Haase, Dr. Fred K=C3=B6nem=
ann, Derek Uhlig<br>
HRB: 111204, AG Hannover<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58332): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58332" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58332</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94264665/1050=
810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94264665/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000002d1ae605eb31bb45--

