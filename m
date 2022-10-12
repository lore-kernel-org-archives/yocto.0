Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6622C4332F
	for <webhook@archiver.kernel.org>; Wed, 12 Oct 2022 02:23:45 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.15813.1665541424363330483
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 19:23:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jeT7nv38;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1322fa1cf6fso18078746fac.6
        for <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 19:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1q2RUh27HmzTJlyc9xJOnuziUxDZ3EpjL4TmpqrGn9E=;
        b=jeT7nv38TYvmRchgpt+j7/cP5H5+Sr4fdkoXlEVIMe1f7xO17/taWJj3vPjKEMcYCf
         M7xETnFVOsNCwmNPz3b1LK1gdfhrxZKTz1GUyOkFdB0GOTIq+kAP4d4Zq8kkcay6VcXy
         nzNUUgliVy2OYazbuZhUPjDOgwCXtProcBrIAEtLbMieCponuHQl/CfDc0Q9xTGe6mJs
         mCNN890nOWGS5T1/oWsBzvQU8VyTUmd6aY6UpVluCa05wIgaUujDTR7OP20zh6DZG22o
         ICrdCOrELMtv/A0FbG8+KihRS8HMFXNNEsk5RtQQZDn7kwfcmXaVbH6austGmDXNRb5h
         8dxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1q2RUh27HmzTJlyc9xJOnuziUxDZ3EpjL4TmpqrGn9E=;
        b=t9WtMfNMCekrw8y2Ju0HrPuJnC/4oA/blmH56/gI/pSnFIWruleg3XZgV908LJ31SB
         Ot/ahDgPHAoQheSX7MUZmoo4D8Be+lWcGZBr3zx7J08KOJz7JANIr1JPBwuTnZ81NZdK
         NxxH64ij27Us8u2IK+9liKxtr8TN0ORsA2Pi2fu9DHEDNejTgzkkLIPKT28v6x0hN/LB
         xDEWVFHtpPoKzzpf21cO2jsx1UvjHutVaChO3ooAXlckgFc8O5chmknYwozvHxo8wnKW
         T0fs4XZCHVI+la3ElehTyf9d42qcmyZS5kqbHG9jYaytIdbPgMfaGR3bOSFSk0rC17Eh
         AZuQ==
X-Gm-Message-State: ACrzQf1ohq6VLQWRLsNo3djZQFUcXUnlWYQivecREa7eDjGm5hhGIfpH
	bxy+EutNBg1O+uNqWJPBEHLuDLE2St4qMk2Fh8ZZxrUe
X-Google-Smtp-Source: AMsMyM4eLOdJtrOKr1LwkoRmHpzt2g7UD5zIdeYUXvVE1+0dP0CkNj8cq4tcOAUKOOUPkED9ZzAfk2wH9CO2tCQM22I=
X-Received: by 2002:a05:6870:a7a4:b0:136:7c39:979e with SMTP id
 x36-20020a056870a7a400b001367c39979emr1268009oao.96.1665541422998; Tue, 11
 Oct 2022 19:23:42 -0700 (PDT)
MIME-Version: 1.0
References: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
In-Reply-To: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 11 Oct 2022 23:23:31 -0300
Message-ID: <CADkTA4PEob-LJpM_oEkxO-hbyLq5DnENFOaYzvkhnKvu8hziqQ@mail.gmail.com>
Subject: Re: [yocto] Dealing with go dependencies in recipes - native docker-compose
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e0697c05eacd149d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Oct 2022 02:23:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58325

--000000000000e0697c05eacd149d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 11, 2022 at 2:51 PM Konstantin Kletschke <
konstantin.kletschke@inside-m2m.de> wrote:

> Today I realized, that the docker-compose in the meta-virtualization
> layer is the old python3 based one and a native solution is available. I
> tried to make a recipe for it to get rid of python3 (no other packages
> uses it in our setup) and the current python3-docker-compose is broken:
>
>
> https://lore.kernel.org/yocto-meta-virtualization/49660EA1-CD22-40DB-98C7=
-C43F38A72CCA@ieee.org/


Adding the missing setuptools does get things working.



>
>
> I tried to build the native solution proposed in
> https://github.com/docker/compose/tree/v2.11.2.
>

I actually have a prototype recipe for this that I was working on before
ELCe, but I didn't get it into meta-virtualization yet, as it had a few
rough edges.

If you give me a few days, I can post it to the meta-virtualization list,
but I'm on the road right now and don't have access to all my build
machines.

>
> So my current recipe docker-compose_2.11.2.bb looks like this:
>
> LICENSE =3D "Apache-2.0"
>
> inherit go
> inherit go-mod
>
> GO_IMPORT =3D "github.com/docker/compose"
>
> SRC_URI =3D "git://${GO_IMPORT};protocol=3Dhttps;branch=3Dv2"
> # v2.11.2
> SRCREV =3D "616777eb4ad4d1101622d6727d9b7adaeb7943bb"
>
> # S =3D "${WORKDIR}/git"
>
> DEPENDS =3D "docker-ce"
> RDEPENDS:${PN} =3D "docker-ce-cli"
>
> With this I run into the issue, that go want's to download stuff while
> compiling. Which is forbidden and breaks the reliable build proposal.
> Totally understandable. Looks similair to this:
>
> dial tcp: lookup proxy.golang.org: Temporary failure in name resolution
>
> I read about a proposal allowing this by adding do_compile[network] =3D
> "1" to meta/classes/go.bb:
>
> https://lore.kernel.org/all/20220228235433.3948994-1-andrei@gherzan.com/
>
> Of course, if this works, the reliable build thingy is gone, but while
>

Right, it works, but would never make it into core due to it bypassing many
of the fetcher properties.



> trying I discovered go loads external stuff, compiles it too.
> In my case (I have kirkstone with go-1.17) I run into modules demanding
> a go more recent:
>
> ASH[build k8s.io/client-go/applyconfigurations/autoscaling/v2beta2]:
> "file containerresourcemetricsource.go Mas4-HIX5lGBEQNTIo58\n"
> # github.com/docker/compose/v2/pkg/utils
> pkg/utils/slices.go:23:6: missing function body
> pkg/utils/slices.go:23:14: syntax error: unexpected [, expecting (
> note: module requires Go 1.19
> HASH[build k8s.io/client-go/applyconfigurations/certificates/v1beta1]
> HASH[build k8s.io/client-go/applyconfigurations/certificates/v1beta1]:
> "go1.17.13"
>
> which could be worked around by moving to landsdale release. Which
> bothers me, because I too want to keep my build reliable. And I do not
> want to mess around outside our meta layer in the distribution!
> How do I do this properly?
> I see people pulling in each dependency by individual golang.org-x.bb
> recipes, how could such a recipe look like?
>

There are many different discussions about how to generate go recipes, as
well
as similar discussions for ruby/rust, etc, you can find them on the
openembedded-core
and openembedded-architectures lists.

I also did a presentation at the yocto summit about "modern languages".

So I won't try and summarize all those discussions here, since they are
archived
and do a much better job than I could here.

But to answer the specific question .. you can't really handle the
individual
go dependencies as recipes. They are far too sensitive to versions and
individual git hashes.  Plus you'll end up with thousands of recipes of
varying
versions.

There have been several proposals about how to generate go recipes to deal
with
the dependencies. Some prototypes have been posted, but there hasn't
been a lot of traffic on that topic for several months now.

You can see the approach that I take for this in the k3s and nerdctl recipe=
s
in meta-virtualization. My new docker-compose recipe is of similar format.


>
> I read
>
> https://lore.kernel.org/all/8132db85-5881-636e-c091-d84c47efe4fe@gmail.co=
m/T/
> where Mike is not happy with this appraoch either and comes up with a
> working recipe I don't get why this could work at all.
>
> What am I missing here where is the missing link I did not get yet?
>
> Also, I am jealous about the buildroot guys sometimes, how do they do
> this in a 22 lines makefile including comments:
>
>
> https://git.busybox.net/buildroot/tree/package/docker-compose/docker-comp=
ose.mk
>
>
If we just bypass the fetcher, offline builds, some of licensing and SBOM
and reproducible builds .. you can have a simple recipe like that as well :=
)

Bruce



>
> Regards
> Konstantin
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
> View/Reply Online (#58323):
> https://lists.yoctoproject.org/g/yocto/message/58323
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

--000000000000e0697c05eacd149d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 11, 2022 at 2:51 PM Konstantin Kletschk=
e &lt;<a href=3D"mailto:konstantin.kletschke@inside-m2m.de">konstantin.klet=
schke@inside-m2m.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Today I realized, that the docker-compose in the meta-vi=
rtualization<br>
layer is the old python3 based one and a native solution is available. I<br=
>
tried to make a recipe for it to get rid of python3 (no other packages<br>
uses it in our setup) and the current python3-docker-compose is broken:<br>
<br>
<a href=3D"https://lore.kernel.org/yocto-meta-virtualization/49660EA1-CD22-=
40DB-98C7-C43F38A72CCA@ieee.org/" rel=3D"noreferrer" target=3D"_blank">http=
s://lore.kernel.org/yocto-meta-virtualization/49660EA1-CD22-40DB-98C7-C43F3=
8A72CCA@ieee.org/</a></blockquote><div><br></div><div><div class=3D"gmail_d=
efault" style=3D"font-size:small">Adding the missing setuptools does get th=
ings working.</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><br>
<br>
I tried to build the native solution proposed in<br>
<a href=3D"https://github.com/docker/compose/tree/v2.11.2" rel=3D"noreferre=
r" target=3D"_blank">https://github.com/docker/compose/tree/v2.11.2</a>.<br=
></blockquote><div><br></div><div class=3D"gmail_default" style=3D"font-siz=
e:small">I actually have a prototype recipe for this that I was working on =
before ELCe, but I didn&#39;t get it into meta-virtualization yet, as it ha=
d a few rough edges.</div><div class=3D"gmail_default" style=3D"font-size:s=
mall"><br></div><div class=3D"gmail_default" style=3D"font-size:small">If y=
ou give me a few days, I can post it to the meta-virtualization list, but I=
&#39;m on the road right now and don&#39;t have access to all my build mach=
ines.</div><div class=3D"gmail_default" style=3D"font-size:small"></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<br>
So my current recipe <a href=3D"http://docker-compose_2.11.2.bb" rel=3D"nor=
eferrer" target=3D"_blank">docker-compose_2.11.2.bb</a> looks like this:<br=
>
<br>
LICENSE =3D &quot;Apache-2.0&quot;<br>
<br>
inherit go<br>
inherit go-mod<br>
<br>
GO_IMPORT =3D &quot;<a href=3D"http://github.com/docker/compose" rel=3D"nor=
eferrer" target=3D"_blank">github.com/docker/compose</a>&quot;<br>
<br>
SRC_URI =3D &quot;git://${GO_IMPORT};protocol=3Dhttps;branch=3Dv2&quot;<br>
# v2.11.2<br>
SRCREV =3D &quot;616777eb4ad4d1101622d6727d9b7adaeb7943bb&quot;<br>
<br>
# S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
DEPENDS =3D &quot;docker-ce&quot;<br>
RDEPENDS:${PN} =3D &quot;docker-ce-cli&quot;<br>
<br>
With this I run into the issue, that go want&#39;s to download stuff while<=
br>
compiling. Which is forbidden and breaks the reliable build proposal.<br>
Totally understandable. Looks similair to this:<br>
<br>
dial tcp: lookup <a href=3D"http://proxy.golang.org" rel=3D"noreferrer" tar=
get=3D"_blank">proxy.golang.org</a>: Temporary failure in name resolution<b=
r>
<br>
I read about a proposal allowing this by adding do_compile[network] =3D<br>
&quot;1&quot; to meta/classes/<a href=3D"http://go.bb" rel=3D"noreferrer" t=
arget=3D"_blank">go.bb</a>:<br>
<br>
<a href=3D"https://lore.kernel.org/all/20220228235433.3948994-1-andrei@gher=
zan.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/all/=
20220228235433.3948994-1-andrei@gherzan.com/</a><br>
<br>
Of course, if this works, the reliable build thingy is gone, but while<br><=
/blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"font-=
size:small">Right, it works, but would never make it into core due to it by=
passing many</div><div class=3D"gmail_default" style=3D"font-size:small">of=
 the fetcher properties.</div><br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
trying I discovered go loads external stuff, compiles it too.<br>
In my case (I have kirkstone with go-1.17) I run into modules demanding<br>
a go more recent:<br>
<br>
ASH[build <a href=3D"http://k8s.io/client-go/applyconfigurations/autoscalin=
g/v2beta2" rel=3D"noreferrer" target=3D"_blank">k8s.io/client-go/applyconfi=
gurations/autoscaling/v2beta2</a>]: &quot;file containerresourcemetricsourc=
e.go Mas4-HIX5lGBEQNTIo58\n&quot;<br>
# <a href=3D"http://github.com/docker/compose/v2/pkg/utils" rel=3D"noreferr=
er" target=3D"_blank">github.com/docker/compose/v2/pkg/utils</a><br>
pkg/utils/slices.go:23:6: missing function body<br>
pkg/utils/slices.go:23:14: syntax error: unexpected [, expecting (<br>
note: module requires Go 1.19<br>
HASH[build <a href=3D"http://k8s.io/client-go/applyconfigurations/certifica=
tes/v1beta1" rel=3D"noreferrer" target=3D"_blank">k8s.io/client-go/applycon=
figurations/certificates/v1beta1</a>]<br>
HASH[build <a href=3D"http://k8s.io/client-go/applyconfigurations/certifica=
tes/v1beta1" rel=3D"noreferrer" target=3D"_blank">k8s.io/client-go/applycon=
figurations/certificates/v1beta1</a>]: &quot;go1.17.13&quot;<br>
<br>
which could be worked around by moving to landsdale release. Which<br>
bothers me, because I too want to keep my build reliable. And I do not<br>
want to mess around outside our meta layer in the distribution!<br>
How do I do this properly?<br>
I see people pulling in each dependency by individual <a href=3D"http://gol=
ang.org-x.bb" rel=3D"noreferrer" target=3D"_blank">golang.org-x.bb</a><br>
recipes, how could such a recipe look like?<br></blockquote><div><br></div>=
<div><div class=3D"gmail_default" style=3D"font-size:small">There are many =
different discussions about how to generate go recipes, as well</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">as similar discussions for=
 ruby/rust, etc, you can find them on the openembedded-core</div><div class=
=3D"gmail_default" style=3D"font-size:small">and openembedded-architectures=
 lists.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">I also did a pres=
entation at the yocto summit about &quot;modern languages&quot;.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">So I won&#39;t try and summarize al=
l those discussions here, since they are archived</div><div class=3D"gmail_=
default" style=3D"font-size:small">and do a much better job than I could he=
re.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">But to answer the spe=
cific question .. you can&#39;t really handle the individual</div></div><di=
v class=3D"gmail_default" style=3D"font-size:small">go dependencies as reci=
pes. They are far too sensitive to versions and</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">individual git hashes.=C2=A0 Plus you&#39;=
ll end up with thousands of recipes of varying</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">versions.</div><div class=3D"gmail_default"=
 style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-size:small">There have been several proposals about how to generate go=
 recipes to deal with</div><div class=3D"gmail_default" style=3D"font-size:=
small">the dependencies. Some prototypes have been posted, but there hasn&#=
39;t</div><div class=3D"gmail_default" style=3D"font-size:small">been a lot=
 of traffic on that topic for several months now.</div><div class=3D"gmail_=
default" style=3D"font-size:small"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">You can see the approach that I take for this in t=
he k3s and nerdctl=C2=A0recipes</div><div class=3D"gmail_default" style=3D"=
font-size:small">in meta-virtualization. My new docker-compose recipe is of=
 similar format.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>
I read<br>
<a href=3D"https://lore.kernel.org/all/8132db85-5881-636e-c091-d84c47efe4fe=
@gmail.com/T/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org=
/all/8132db85-5881-636e-c091-d84c47efe4fe@gmail.com/T/</a><br>
where Mike is not happy with this appraoch either and comes up with a<br>
working recipe I don&#39;t get why this could work at all.<br>
<br>
What am I missing here where is the missing link I did not get yet?<br>
<br>
Also, I am jealous about the buildroot guys sometimes, how do they do<br>
this in a 22 lines makefile including comments:<br>
<br>
<a href=3D"https://git.busybox.net/buildroot/tree/package/docker-compose/do=
cker-compose.mk" rel=3D"noreferrer" target=3D"_blank">https://git.busybox.n=
et/buildroot/tree/package/docker-compose/docker-compose.mk</a><br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">If we just bypass the fetcher, offline builds, some of lic=
ensing and SBOM</div><div class=3D"gmail_default" style=3D"font-size:small"=
>and reproducible builds .. you can have a simple recipe like that as well =
:)</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards<br>
Konstantin<br>
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
View/Reply Online (#58323): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58323" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58323</a><br>
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

--000000000000e0697c05eacd149d--

