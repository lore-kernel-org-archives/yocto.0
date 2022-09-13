Return-Path: <paulo@eero.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CD4ECAAD8
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 18:50:26 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web09.1468.1663095021064704417
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 11:50:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eero.com header.s=google header.b=LvvV+42M;
 spf=pass (domain: eero.com, ip: 209.85.222.54, mailfrom: paulo@eero.com)
Received: by mail-ua1-f54.google.com with SMTP id b7so4694227uas.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 11:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eero.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=WXs0xMsldJsyI9HiHNNdC0/cXwA4O4Cyd1m5rzCmsEA=;
        b=LvvV+42MsH94OXYTZhDcJG7BT8jgWQ9bMOyYUufkZW/qGKWXozswlr/MJSaO+it57b
         H3amSj3T0LWqAIE1IvFeaJxN9S8PXVylrrfcRQlha7frYArTpiBC5z8yu591dp5Yz3+R
         ogZKcXTbUYeUSCAyDIBmv+ak8GY45zWfkZyY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=WXs0xMsldJsyI9HiHNNdC0/cXwA4O4Cyd1m5rzCmsEA=;
        b=PhfsfW6wKYSf0jdIBT7e/Ob5v9Am7QD3MWshJBeHyS3UhLXHzOE40XYbG5IHhFdwLO
         UKrpJACqa+sUvq3Zog/nyz5TTl9LLk6ClrsQQq0FyK/XRlGHR+30U7Lt+cNUh2yyS7xy
         G6DBi29V1faQ+ZvJutnPvqqTJfy0J2aoLGIJlsgi+a2MpGDZhD3IlovsSVu5v/xcsdrQ
         hueBWXOlHp81xxWvpo9JmyKkVP1BJnGAQmVzxaJVfWoBr4vNOIfCjBaFusGVmfNYXBuC
         EQi424eeNIzo0tdPuIKpH0ML0DuQw0qKCJPuBRuB8bhJGDDvwAydcBty6I7LZePJHU/+
         4CUg==
X-Gm-Message-State: ACgBeo0p4STLzEucZev+jPcY9r6K/ArTivnEtMhej2QzqAEJOZZLJbrR
	bHgrIo8LntQW+5EReRZ9nUy9pEO5CcZvloVG4VdOsA==
X-Google-Smtp-Source: 
 AA6agR7FIEe8Oe/pRd8pqqxpod2n1D/m7hcitKQuA1xKpqf1cMjnGQIonzCQ/1ZUtbsNv8z221lOKxdXye91tR7pySk=
X-Received: by 2002:ab0:1322:0:b0:390:e7af:a87c with SMTP id
 g31-20020ab01322000000b00390e7afa87cmr10401570uae.113.1663095020053; Tue, 13
 Sep 2022 11:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <isVB.1662474023926890292.lmGR@lists.yoctoproject.org>
 <f41bcedc-15e0-0516-530a-636b6c5a9927@theobroma-systems.com>
In-Reply-To: <f41bcedc-15e0-0516-530a-636b6c5a9927@theobroma-systems.com>
From: Paulo Vitor Becker Ayrosa Monteiro de Andrade <paulo@eero.com>
Date: Tue, 13 Sep 2022 14:50:08 -0400
Message-ID: 
 <CADgnPrRwcTCX5614wfgHjknbbnOXeY_X2cWzG1hsbUwxJSH0bA@mail.gmail.com>
Subject: Re: [yocto] Update upstream kirkstone branches
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Content-Type: multipart/alternative; boundary="000000000000e6004b05e8937b31"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 18:50:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58027

--000000000000e6004b05e8937b31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey there Quentin!

Thanks for the update, sorry for the delay in responding; got caught up in
some other things here.
Alright man, I'm gonna study the processes and ping some other people in
this regard!

Regards,
Paulo Vitor Becker Ayrosa Monteiro de Andrade.


On Tue, Sep 6, 2022 at 11:13 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Paulo,
>
> On 9/6/22 16:20, paulo@eero.com wrote:
> > Hello all!
> >
> > I've been just recently working with Yocto at my new position and just
> ran into an issue that was already solved on Yocto's main branches for bo=
th
> openembedded and poky layers.
> > There's a problem with npm on upstream kirkstone, where the fetching of
> dependencies fails due to stale or wrong metadata being read. This seems =
to
> have affected quite a few people (from what I browsed online), and found =
a
> solution which is already merged to the main branches for both poky and
> openembedded layers, done by Enrico Sholtz.
> > The patches are
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__patchwork.yoctopro=
ject.org_project_oe-2Dcore_list_-3Fseries-3D4303&d=3DDwIFaQ&c=3D_sEr5x9kUWh=
uk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172=
IIy1t&m=3D7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&=
s=3DxKaCrxEjeUTs2WwwWY226DJ9lZmm7QsiOPK4eCRZM_0&e=3D
>  for poky and the patch file attached to this message.
> >
> > I've applied these changes to kirkstone and it solved the issues as
> promised and explained by Enrico on
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.openembedded=
.org_g_openembedded-2Dcore_topic_91903472&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFw=
jJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=
=3D7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&s=3Dx2r=
wsw6fLSrNf-kgh01BmbsrcSsW8vKxcbRuhBFDpxY&e=3D
> >
> > I'd like to know how would one proceed to add these changes to upstream
> Yocto, since it would benefit a lot of people using this new LTS version =
of
> the project.
> >
>
> For OpenEmbedded-core patches:
>
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded#B=
ackporting_fixes_to_stable_releases
>
> For meta-openembedded, I do not know how Khem deals with backport
> requests. You could do the same and then send your patch to
> openembedded-devel@lists.openembedded.org as explained here:
> https://github.com/openembedded/meta-openembedded/tree/master/meta-oe ?
> You can also open a PR against the proper branch I guess. Cc'ing Khem
> just in case.
>
> Cheers,
> Quentin
>

--000000000000e6004b05e8937b31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey there Quentin!</div><div><br></div><div>Thanks fo=
r the update, sorry for the delay in responding; got caught up in some othe=
r things here.</div><div>Alright man, I&#39;m gonna study the processes and=
 ping some other people in this regard!</div><div><br></div><div>Regards,</=
div><div>Paulo Vitor Becker Ayrosa Monteiro de Andrade.<br></div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Sep 6, 2022 at 11:13 AM Quentin Schulz &lt;<a href=3D"mailto:q=
uentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-systems.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
 Paulo,<br>
<br>
On 9/6/22 16:20, <a href=3D"mailto:paulo@eero.com" target=3D"_blank">paulo@=
eero.com</a> wrote:<br>
&gt; Hello all!<br>
&gt; <br>
&gt; I&#39;ve been just recently working with Yocto at my new position and =
just ran into an issue that was already solved on Yocto&#39;s main branches=
 for both openembedded and poky layers.<br>
&gt; There&#39;s a problem with npm on upstream kirkstone, where the fetchi=
ng of dependencies fails due to stale or wrong metadata being read. This se=
ems to have affected quite a few people (from what I browsed online), and f=
ound a solution which is already merged to the main branches for both poky =
and openembedded layers, done by Enrico Sholtz.<br>
&gt; The patches are <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__patchwork.yoctoproject.org_project_oe-2Dcore_list_-3Fseries-3D=
4303&amp;d=3DDwIFaQ&amp;c=3D_sEr5x9kUWhuk4_nFwjJtA&amp;r=3DLYjLexDn7rXIzVmk=
NPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=3D7HzKBeVbSvWreLPwsD=
AKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&amp;s=3DxKaCrxEjeUTs2WwwWY22=
6DJ9lZmm7QsiOPK4eCRZM_0&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">http=
s://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__patchwork.yoctoproject.o=
rg_project_oe-2Dcore_list_-3Fseries-3D4303&amp;d=3DDwIFaQ&amp;c=3D_sEr5x9kU=
Whuk4_nFwjJtA&amp;r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhk=
I_-172IIy1t&amp;m=3D7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt=
-vvV7Z2Ga&amp;s=3DxKaCrxEjeUTs2WwwWY226DJ9lZmm7QsiOPK4eCRZM_0&amp;e=3D</a>=
=C2=A0 =C2=A0for poky and the patch file attached to this message.<br>
&gt; <br>
&gt; I&#39;ve applied these changes to kirkstone and it solved the issues a=
s promised and explained by Enrico on <a href=3D"https://urldefense.proofpo=
int.com/v2/url?u=3Dhttps-3A__lists.openembedded.org_g_openembedded-2Dcore_t=
opic_91903472&amp;d=3DDwIFaQ&amp;c=3D_sEr5x9kUWhuk4_nFwjJtA&amp;r=3DLYjLexD=
n7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=3D7HzKBeVbS=
vWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpevt-vvV7Z2Ga&amp;s=3Dx2rwsw6fLSr=
Nf-kgh01BmbsrcSsW8vKxcbRuhBFDpxY&amp;e=3D" rel=3D"noreferrer" target=3D"_bl=
ank">https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.openembed=
ded.org_g_openembedded-2Dcore_topic_91903472&amp;d=3DDwIFaQ&amp;c=3D_sEr5x9=
kUWhuk4_nFwjJtA&amp;r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZ=
hkI_-172IIy1t&amp;m=3D7HzKBeVbSvWreLPwsDAKWZVdW0sTf8vqJp82dKy01KWfJ9e8kzZpe=
vt-vvV7Z2Ga&amp;s=3Dx2rwsw6fLSrNf-kgh01BmbsrcSsW8vKxcbRuhBFDpxY&amp;e=3D</a=
><br>
&gt; <br>
&gt; I&#39;d like to know how would one proceed to add these changes to ups=
tream Yocto, since it would benefit a lot of people using this new LTS vers=
ion of the project.<br>
&gt; <br>
<br>
For OpenEmbedded-core patches: <br>
<a href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenE=
mbedded#Backporting_fixes_to_stable_releases" rel=3D"noreferrer" target=3D"=
_blank">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbe=
dded#Backporting_fixes_to_stable_releases</a><br>
<br>
For meta-openembedded, I do not know how Khem deals with backport <br>
requests. You could do the same and then send your patch to <br>
<a href=3D"mailto:openembedded-devel@lists.openembedded.org" target=3D"_bla=
nk">openembedded-devel@lists.openembedded.org</a> as explained here: <br>
<a href=3D"https://github.com/openembedded/meta-openembedded/tree/master/me=
ta-oe" rel=3D"noreferrer" target=3D"_blank">https://github.com/openembedded=
/meta-openembedded/tree/master/meta-oe</a> ? <br>
You can also open a PR against the proper branch I guess. Cc&#39;ing Khem <=
br>
just in case.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000e6004b05e8937b31--

