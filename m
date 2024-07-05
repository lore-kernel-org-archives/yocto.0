Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87E9C3271E
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 15:18:18 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.19203.1720192689384720202
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jul 2024 08:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=dlJIn+Ww;
 spf=pass (domain: snapchat.com, ip: 209.85.218.50, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a724958f118so215756866b.0
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jul 2024 08:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1720192687; x=1720797487; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FAW2pX7DuSed3g2P+Lz/jwxZkhQ8m8/dyVDDYqmukBw=;
        b=dlJIn+Ww64bIzNTNkeom2rFiQxu0+3QmOSXpmeCV0/bp3CI41zYTw0W7ZcFD+91QWZ
         h3gUi6xFCpHrd8bYjVVqPGVALYyLMz4wJjFhtu3Z4VMAQlaxhnZnNZ2ZwvB6xWeQBdQs
         Uqd4/mDnzctz2JgIpFo9kPHCJMC3Sh9ykBbnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720192687; x=1720797487;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FAW2pX7DuSed3g2P+Lz/jwxZkhQ8m8/dyVDDYqmukBw=;
        b=BZy0k0J6rMWnR1BF8XXNJINFIGJYHTq5v7Vv8+jTnPKhBPbFN+xJrC3e7iQnGlJhfL
         gdIESTT3NiLkGfLIFJmC/mPR+x0edUh+WekRwpZjfhlitm7/y3k3Lwdl2NkB8lWIo+Ro
         UgokImgEXsPmsIHLGF4Zhvnxk1TpLhqbWssyAiiQbLJEa85Cm4qqTyZHB+ucxaa+UFdY
         FiaaaUffdEe8B5Oris+TWgTPN/mO2rgJVjJHYuzUH9TSGxdbQMJgprz60rRNuk/4ClWN
         9NDYAFSAjdBbrmfNneuQfQG96qXpZMAEf4Iy/AUmWIRlK7fbuGn/ZWj70QAZMEKzf7c2
         /IMg==
X-Gm-Message-State: AOJu0Yzx0WwST0CMTn4Dmoqu9b2c8RptnM03ELB3aU8a5F3ykUN1Tb5/
	6hAZyzpYvU3SsfstQGhzOmjLfS26Z9NtTZ3AmrYtHIHFu0UxROnO/xD85Gqik6TuhRcopwVKfSr
	qbeSsGvykQ4MxWLvbEOpLOgx2rp3HdVjl+SXruMA9J5KsCAiBf6M+OZ/1
X-Google-Smtp-Source: AGHT+IEbbNsZopaa0CyyckO072LLwmPUGNhpnGpfuM84LXNbnJfbTlrNZAQWJvDjOsMOVsofKAU8FcfysMdX9xrey6U=
X-Received: by 2002:a17:906:5acd:b0:a77:a529:4457 with SMTP id
 a640c23a62f3a-a77ba46c938mr361932666b.25.1720192687268; Fri, 05 Jul 2024
 08:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <ukdP.1720191045419684124.rRuE@lists.yoctoproject.org>
In-Reply-To: <ukdP.1720191045419684124.rRuE@lists.yoctoproject.org>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Fri, 5 Jul 2024 17:17:54 +0200
Message-ID: <CAHUKmYZhiEdg03nREmSuJ+UkJF34nph1rbEZN5ieb8FGih6G-w@mail.gmail.com>
Subject: Re: [yocto] Configuring gitlab runner for Yocto
To: yocto@lists.yoctoproject.org, kfa@deif.com
Content-Type: multipart/alternative; boundary="000000000000121773061c819248"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jul 2024 15:18:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63440

--000000000000121773061c819248
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kjeld,
I don't know what the issue is, but have you checked this link? ->
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Understanding_what_changed=
_(diffsigs_etc)

I think it would help you debug the issue.

=C3=89tienne


On Fri, Jul 5, 2024 at 4:50=E2=80=AFPM Kjeld Flarup via lists.yoctoproject.=
org <kfa=3D
deif.com@lists.yoctoproject.org> wrote:

> I run  Yocto builds in a gitlab runner, but it always does rebuilds of
> some packages. Not all packages fortunately, but it always does a rootfs
> build.
>
> When I do a fresh start with a git clone of my yocto manifest, and a
> bitbake on my own PC. Everything is fetched from my sstate mirror.
> By fresh, I mean that no tmp folder exists and has to be rebuild.
>
> Thus I have some environment difference in the gitlab which causes Yocto
> to do some rebuilds.
>
>
>    - I use the same docker container
>    - I tried to do the clone and build on the build server, but outside
>    the gitlab-runner. No rebuilds.
>    - I mapped a local disk into the containers /builds
>    - I removed git commands from recipes
>
> Does anyone have some recommendations for configuring a gitlab runner for
> Yocto?
>
>
> --
> --
> Regards
> Kjeld Flarup
> DEIF A/S
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63439):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_63439&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv4T0_TNpuPEs=
ZLHUtFf_QkwbBG_ooUbRNeK_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&s=3DObrlwM_oU3JU4QU-5G=
oae113of82ZZ6QjrqwTYLAKYw&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_107054918_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv4T0_TNpuPEsZ=
LHUtFf_QkwbBG_ooUbRNeK_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&s=3DK_a3rvbl354t_dtGmDt=
Nre7IIvu1Ev6pqJLwYmpc9ic&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv4T0_TNpuPEsZLHUtFf_=
QkwbBG_ooUbRNeK_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&s=3DCAEhVfGR8AtqDETjIHkN27SmLL=
is8soUa08ZNhcyih4&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000121773061c819248
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kjeld,<br>I don&#39;t know what the issue is, but have =
you checked this link? -&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/=
TipsAndTricks/Understanding_what_changed_(diffsigs_etc)">https://wiki.yocto=
project.org/wiki/TipsAndTricks/Understanding_what_changed_(diffsigs_etc)</a=
>=C2=A0<br>I think it would help you debug the issue.<br><br>=C3=89tienne<b=
r><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Jul 5, 2024 at 4:50=E2=80=AFPM Kjeld Flarup via <a href=3D"ht=
tp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;kfa=3D<a href=
=3D"mailto:deif.com@lists.yoctoproject.org">deif.com@lists.yoctoproject.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
I run =C2=A0Yocto builds in a gitlab runner, but it always does rebuilds of=
 some packages. Not all packages fortunately, but it always does a rootfs b=
uild.<br><br>When I do a fresh start with a git clone of my yocto manifest,=
 and a bitbake on my own PC. Everything is fetched from my sstate mirror.<b=
r>By fresh, I mean that no tmp folder exists and has to be rebuild.<br><br>=
Thus I have some environment difference in the gitlab which causes Yocto to=
 do some rebuilds.<br><br>
<ul>
<li>I use the same docker container</li>
<li>I tried to do the clone and build on the build server, but outside the =
gitlab-runner. No rebuilds.</li>
<li>I mapped a local disk into the containers /builds</li>
<li>I removed git commands from recipes</li>
</ul>
Does anyone have some recommendations for configuring a gitlab runner for Y=
octo?<br><br><br>-- <br>--<br>Regards=C2=A0<br>Kjeld Flarup<br>DEIF A/S
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63439): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_63439&amp;d=3DDwI=
FaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMI=
GRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtFf_QkwbBG_ooUbRNe=
K_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&amp;s=3DObrlwM_oU3JU4QU-5Goae113of82ZZ6Qjrqw=
TYLAKYw&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_6=
3439&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp=
;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtF=
f_QkwbBG_ooUbRNeK_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&amp;s=3DObrlwM_oU3JU4QU-5Goa=
e113of82ZZ6QjrqwTYLAKYw&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_107054918_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtFf_QkwbBG_ooUbRNeK_rVP01-kVBw=
DhdRhEcCYHHr8J0ZXg&amp;s=3DK_a3rvbl354t_dtGmDtNre7IIvu1Ev6pqJLwYmpc9ic&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_107054918_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtFf_QkwbBG_ooUb=
RNeK_rVP01-kVBwDhdRhEcCYHHr8J0ZXg&amp;s=3DK_a3rvbl354t_dtGmDtNre7IIvu1Ev6pq=
JLwYmpc9ic&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTv=
jIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUk=
SGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtFf_QkwbBG_ooUbRNeK_rVP01-kVBwDhdRhEcCYHH=
r8J0ZXg&amp;s=3DCAEhVfGR8AtqDETjIHkN27SmLLis8soUa08ZNhcyih4&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3Dn=
cDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRi=
h1DULJTKUkSGa66m67E&amp;m=3Dv4T0_TNpuPEsZLHUtFf_QkwbBG_ooUbRNeK_rVP01-kVBwD=
hdRhEcCYHHr8J0ZXg&amp;s=3DCAEhVfGR8AtqDETjIHkN27SmLLis8soUa08ZNhcyih4&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000121773061c819248--

