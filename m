Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33B54C47258
	for <webhook@archiver.kernel.org>; Mon, 29 Jan 2024 01:23:23 +0000 (UTC)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web10.4594.1706491400382587054
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 17:23:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F1D1URRB;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-36376bf7f6dso2648345ab.3
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 17:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706491399; x=1707096199; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tFImBe0uMhoZ+D27Iy0hvgyljwGGzShD9NerZzy80vY=;
        b=F1D1URRBBb3tzSngJaD741IhVP9o5l9EzTVnwoELGcgp62/nBnZTTI87+4Tk7s23Qt
         FT5Q9ZXyjYQ1zqTWKnRHvNLsy7dYP8gJxg35eMs5vamI0sciEFL15vnxGixHxVHW2E5E
         KlmFJWL9lxDaRfKSoPYzRlFUQw/xTFQJ9iz8ons/S35//JiCbGYTV7CfyrdW+HEoTMeL
         RsMYUjSCx8y/c1vSlof8u9D1dXJzXXc1VLodvwx+w06W5w5JXlVFKnehrxeWtKUJp0pe
         6ULgbix/sS474yE8mloy013j9tb/9zuD9io8qFw0nIhBk7qCNLcL6khHvXZnPirjeZb3
         1b9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706491399; x=1707096199;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tFImBe0uMhoZ+D27Iy0hvgyljwGGzShD9NerZzy80vY=;
        b=CVBq9oephT56vuUNeJySOqJDhJarbBwkB2Qw9LMqz5LN1cerwivl/nenJI3cfxzIRp
         OQepxipALU+/txWzWk79D5N5l5EINkkjn/INtgGBG2HmUXmdHt65WhH1wyze8iQ3dWVB
         1/3GvTPRXNTOt4yPokahLzYqW2LhnPJa9QeEFGbxW6hTGHi3OrR1feyI6SkpDuZcDRl2
         OCeLzzr1DY02IANunWZpkURMdashz4CVLQdMe+1/NT/LqrRVAh0k/kp1eEoAmvXNhub/
         QR8/VARpJI+qASP2yX51DEEH/JMnjXdZTwTKHb2xsubtNi2ldK1ZZdhU20H4DCL24bBr
         SybQ==
X-Gm-Message-State: AOJu0YxF8hMU5yWjTBo3SqHPu8BNIf21sOOaCZa9i70vLlK/CH1NqUZO
	eRQidrYM8W2qGth9DTl7NDFcs8pPV6YjTm+jFn+7/ywCe5TfqWxD+GRqKCysDgDdTXXln+fJ7hg
	TB99Jr3BLdKI9OIxvyDb7XUC3T7OERS6+
X-Google-Smtp-Source: AGHT+IHUHtJY3Y36nWwou/5NnHOfapc5AQOsHeMM7VSqh+XFH0XVpShVYrMygvT2Tm+oMuLotSb4Xvz5gfjFGIhGbyk=
X-Received: by 2002:a92:b00f:0:b0:362:b459:11cd with SMTP id
 x15-20020a92b00f000000b00362b45911cdmr5384527ilh.6.1706491399359; Sun, 28 Jan
 2024 17:23:19 -0800 (PST)
MIME-Version: 1.0
References: <pv0l.1706298924602475849.kMdt@lists.yoctoproject.org>
In-Reply-To: <pv0l.1706298924602475849.kMdt@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Sun, 28 Jan 2024 17:23:07 -0800
Message-ID: <CAB=6tBS4tjF7_CSHr+9596Je5QGE54P_Sby3W+n=5M6huKwUWw@mail.gmail.com>
Subject: Re: [yocto] Workflow question #bitbake #dunfell #kirkstone #poky #yocto
To: yocto@lists.yoctoproject.org, mlynch@hi-techniques.com
Content-Type: multipart/alternative; boundary="000000000000abd42a06100b7d22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 01:23:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62318

--000000000000abd42a06100b7d22
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 11:55=E2=80=AFAM <mlynch@hi-techniques.com> wrote:

> Hello all.  I've been using Yocto for a couple of years now and I
> primarily use the dunfell and kirkstone branches.  I have a question abou=
t
> the work flow people generally use.  When I started with Yocto I started
> with the dunfell branch because I was working with the TI am57xx platform=
.
> I worked in that development tree for several months and never updated an=
y
> of the layers to get changes pushed to the branches of layers I was using=
.
> My question is, as a normal part of your work flow do most people regular=
ly
> pull from the HEADs of the branches of their layers to keep up to date wi=
th
> changes or do most just keep using the layers without ever updating (like=
 I
> did)?
>

It really depends on your priorities and use cases, in particular how
repeatable
your build processes need to be.

Are you doing one-off work by yourself that can more or less disappear when
you
move on to something else? Or do you need to make sure everyone on your tea=
m
is reliably pointing at an approved hash/tag/HEAD/etc. commit in each of
your
layers?

I am in the latter category so I check in a setup-layers.json file to my
distro
repository and bake in a call to setup-layers in a wrapper script. The
team, and the
nightly build process, is instructed to build with the wrapper script.
There is also a
team level process in place for reviewing upstream layer changes and
checking in
periodic updates to the distro level setup-layers.json file.

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000abd42a06100b7d22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jan 26, 2024 at 11:55=E2=80=AFAM =
&lt;<a href=3D"mailto:mlynch@hi-techniques.com">mlynch@hi-techniques.com</a=
>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hello all.=C2=A0 I&#39;ve been using Yocto for a couple=
 of years now and I primarily use the dunfell and kirkstone branches.=C2=A0=
 I have a question about the work flow people generally use.=C2=A0 When I s=
tarted with Yocto I started with the dunfell branch because I was working w=
ith the TI am57xx platform.=C2=A0 I worked in that development tree for sev=
eral months and never updated any of the layers to get changes pushed to th=
e branches of layers I was using.=C2=A0 My question is, as a normal part of=
 your work flow do most people regularly pull from the HEADs of the branche=
s of their layers to keep up to date with changes or do most just keep usin=
g the layers without ever updating (like I did)?
<br>
</blockquote></div><div><br></div><div>It really depends on your priorities=
 and use cases, in particular how repeatable</div><div>your build processes=
 need to be.</div><div><br></div><div>Are you doing one-off work by yoursel=
f that can more or less disappear when you</div><div>move on to something e=
lse? Or do you need to make sure everyone on your team</div><div>is reliabl=
y pointing at an approved hash/tag/HEAD/etc. commit in each of your</div><d=
iv>layers?</div><div><br></div><div>I am in the latter category so I check =
in a setup-layers.json file to my distro</div><div>repository and bake in a=
 call to setup-layers in a wrapper script. The team, and the</div><div>nigh=
tly build process, is instructed to build with the wrapper script. There is=
 also a</div><div>team level process in place for reviewing upstream layer =
changes and checking in</div><div>periodic updates to the distro level setu=
p-layers.json file.</div><div><br></div><div>..Ch:W..<br></div><div><br></d=
iv><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family=
:monospace">&quot;Perfection must be reached by degrees; she requires the s=
low hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000abd42a06100b7d22--

