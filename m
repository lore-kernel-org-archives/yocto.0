Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A193C3ABCD
	for <webhook@archiver.kernel.org>; Thu,  8 May 2025 04:17:00 +0000 (UTC)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web11.7950.1746677813903628418
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 21:16:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hGvQ8C9L;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3d812103686so2124885ab.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 21:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746677813; x=1747282613; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lyT/J4RlrHC2cmGGkYUhiZNa8reQO+z6wczwtfjUUVw=;
        b=hGvQ8C9LbAadWOn9Aa4uLXD3cTFrNwyQLgKceLIUW4pL+3MjIibVtMfhzWncqiwKtx
         e6stxULcv//vfHkHRja40QY/TM29VsnH6xorxRUKc6cFz1nEuNjqpvpsZhf+PwYbh0ty
         V7xO7UviMJUEOjFX2Kb+dtNJoDrEP8CSgs7cTaDxpud9FkvSTK+NHi9wknk9WS4vWlFf
         7vD9b8OLuU78QLiiphD4kakgDJz7vxa3C6i7FxTL67peOkaXE6hLAEqpu3AaT/XXyUjF
         T1uhBFxHXc1vMcXyWwqmoFBaC0Lag4AdwIKYWexbRKTQj66dRDHvUb6Z/GitnE8ziZuV
         lvXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746677813; x=1747282613;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyT/J4RlrHC2cmGGkYUhiZNa8reQO+z6wczwtfjUUVw=;
        b=iFp4S+AIaffSrZc5sKSMpPgvuwXq/ZUuZUGV0kxpn1vCuM34Xw+FKue3QuzlkKiQed
         BpvrFSwn6OE1hJbNFD44Sv2yxT0hpjLsIU+kHsaJq32A6r0JFxyW1h5lq5kQTfGeK3qQ
         fNpMDoPjohyyyISC8oXNxwMVU7wXv+SfTJChRGqz1M9b2nZx8MNHm5W7IiQa3p2IXCpH
         1n9w552pX78hq4woQt0jog4n4wNtvlE0TVYPgg9MWyvj1nAZRXT/Gl1XnctZvVCbohoP
         330YcVKT6l+eBiPmkbVzpoDehm07YDnxQWwaPgenb3j+FpLKn7jgmTM5sEkNwpHDxEtu
         uaCQ==
X-Gm-Message-State: AOJu0YxkXZw+IDjsOMo61pMXYD4VS3A52ngzLSYLueOVkDdfZVsM0YTn
	bjczj2HuaAcgbLUjgyaV5R5wWmcRCyCtaZlHCHWemXaGswJMQfkovG7twykVXuyswkds3Fg8V0z
	/X8oSciIv6wN9oS9/Iwp0PXwla5nH9s3k
X-Gm-Gg: ASbGnct/zqtZtYo+FGvsIvxcTmgH0co28jjgsx58QWlWpbJRudv8MAKKZaYLdE62qXP
	eOyl+ZFUpifIaDXpICHQJ6LI6i+MGcr5AWZ9gEBYTdvn+z1VQNQ3rdjVCwjL7+ek30XbQo9fVFR
	3//3jyJDZOzplUG9yw7FZjWmgqj9xB/W0sRGUoUSbVzyeqdqe000FXWA8=
X-Google-Smtp-Source: AGHT+IHEOB+PLffLzbvbVBnQsuktR2JOmZn2Z57MpPWDDOJNOMyRTZQPaUnoXUzFgm4XvZQSv+QUYg5HZOnkHujnSis=
X-Received: by 2002:a05:6e02:1a4b:b0:3d9:6d60:709e with SMTP id
 e9e14a558f8ab-3da78542b00mr24265555ab.4.1746677812872; Wed, 07 May 2025
 21:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <MW5PR13MB5632A56007A8DF3CFD6C3CF6FD88A@MW5PR13MB5632.namprd13.prod.outlook.com>
In-Reply-To: <MW5PR13MB5632A56007A8DF3CFD6C3CF6FD88A@MW5PR13MB5632.namprd13.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Wed, 7 May 2025 21:16:35 -0700
X-Gm-Features: ATxdqUGywA1vHl6byVrJexvAEIOqqDRUlzFwkuDc8cDU7CwM1ufKRLJK9N3vwAo
Message-ID: <CAB=6tBRuzeVMcB3MB9ZAop3gHsFaX9KqYPYDULukY2C4OKMxeA@mail.gmail.com>
Subject: Re: [yocto] Status of bitbake-setup and kas?
To: yocto@lists.yoctoproject.org, tim.bird@sony.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Jan Kiszka <jan.kiszka@siemens.com>
Content-Type: multipart/alternative; boundary="00000000000092cff60634981ea5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 May 2025 04:17:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65296

--00000000000092cff60634981ea5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 7, 2025 at 10:08=E2=80=AFAM Tim Bird via lists.yoctoproject.org
<tim.bird=3Dsony.com@lists.yoctoproject.org> wrote:

> Hello yocto developers,
>
> What is the current status of bitbake-setup?
>
> I'm basing this question on this email from January:
> https://lists.yoctoproject.org/g/yocto/topic/bitbake_setup_where_we_re/11=
0666239
>
> Has this been integrated into the upstream yocto project yet?  Is it on
> track to be?
>

It came up in the tech call fairly recently.

I was _really_ hoping to give it a thorough review before it got merged,
but I do not
have the time to dedicate to it until after OSSNA.

There are some things in the current patch set that I do not love. But I
cannot speak
with an informed opinion until I review it in detail and test the workflow
against our
existing workflows.

I believe Alex is maintaining the authoritative branch for bitbake-setup
here:
https://github.com/kanavin/bitbake


..Ch:W..


--=20



*  Opinions expressed are my own. | --------------------------------|------
"Perfection must be reached by degrees              she requires the slow
hand of time."                                 |       -Voltaire*

--00000000000092cff60634981ea5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, May 7, 2025 at 10:08=E2=80=AFAM Tim Bird vi=
a <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctopr=
oject.org</a> &lt;tim.bird=3D<a href=3D"mailto:sony.com@lists.yoctoproject.=
org" target=3D"_blank">sony.com@lists.yoctoproject.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hello yocto developer=
s,<br>
<br>
What is the current status of bitbake-setup?<br>
<br>
I&#39;m basing this question on this email from January: <a href=3D"https:/=
/lists.yoctoproject.org/g/yocto/topic/bitbake_setup_where_we_re/110666239" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/topic/bitbake_setup_where_we_re/110666239</a><br>
<br>
Has this been integrated into the upstream yocto project yet?=C2=A0 Is it o=
n track to be?<br></blockquote><div><br></div><div><div style=3D"font-famil=
y:monospace" class=3D"gmail_default">It came up in the tech call fairly rec=
ently.</div><div style=3D"font-family:monospace" class=3D"gmail_default"><b=
r></div><div style=3D"font-family:monospace" class=3D"gmail_default">I was =
_really_ hoping to give it a thorough review before it got merged, but I do=
 not</div><div style=3D"font-family:monospace" class=3D"gmail_default">have=
 the time to dedicate to it until after OSSNA.</div><div style=3D"font-fami=
ly:monospace" class=3D"gmail_default"><br></div><div style=3D"font-family:m=
onospace" class=3D"gmail_default">There are some things in the current patc=
h set that I do not love. But I cannot speak</div><div style=3D"font-family=
:monospace" class=3D"gmail_default">with an informed opinion until I review=
 it in detail and test the workflow against our</div><div style=3D"font-fam=
ily:monospace" class=3D"gmail_default">existing workflows.</div><div style=
=3D"font-family:monospace" class=3D"gmail_default"><br></div><div style=3D"=
font-family:monospace" class=3D"gmail_default">I believe Alex is maintainin=
g the authoritative branch for bitbake-setup here:</div><div style=3D"font-=
family:monospace" class=3D"gmail_default"><a href=3D"https://github.com/kan=
avin/bitbake">https://github.com/kanavin/bitbake</a></div><div style=3D"fon=
t-family:monospace" class=3D"gmail_default"><br></div></div><div><br></div>=
<div><div style=3D"font-family:monospace" class=3D"gmail_default">..Ch:W..<=
/div><br></div><div>=C2=A0</div></div><span class=3D"gmail_signature_prefix=
">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"=
><div><b><span style=3D"font-family:monospace">=C2=A0 Opinions expressed ar=
e my own. |<br>=C2=A0--------------------------------|------ &quot;Perfecti=
on must be reached by degrees<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 she requires the slow hand of time.&qu=
ot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -Voltaire</span></b></div></div></div></div>
</div>

--00000000000092cff60634981ea5--

