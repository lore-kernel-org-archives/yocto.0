Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02A4CE8D43
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 09:55:08 +0000 (UTC)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.14575.1726826103013366607
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Sep 2024 02:55:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IgN6c7BG;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-49bd3bf3b4cso913516137.3
        for <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 02:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726826102; x=1727430902; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7B9ixlWI6KRDc6w8GbR5Z6orSinAkh16vBgNCto7BUU=;
        b=IgN6c7BGkm17TFec/YrSmbJJ0/TJjJv5ZKnAl5cbpv+KrGA0VCrnmlC/jO2rD4M27J
         Z9lqIcxmR2o+ugcFlJQE8vr1Kqx76l0XbMrOolYQVHObLMT8fX7Wo6mFg+ZHfGvr26jV
         ZjTKHi6eJFvMNGZs+kezHQZxPZU8uLQKzqynA174N7yID123ctEd0EMFtxuh6io1+DT3
         zkFuDwXGNyUekheByET/j/9n9Pp0L4x33cj+R7UV3/SidipApFICrP/XmeVyDbtPBk8y
         ar1k1B/a12pQgOhoSVyFeKO8ZfY2Dse2gZjBBp3ovozLh/fNhaocSxtc8I1bmfoWEBvM
         3N3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726826102; x=1727430902;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7B9ixlWI6KRDc6w8GbR5Z6orSinAkh16vBgNCto7BUU=;
        b=gp/ln33ZCYCOHcjEuwbeP7MUIBChHlDTO857C4uq/gVrhEvET8VQ5aYQS6HIgknn7d
         4dIGCJ8QCikwz8XB6gpR5T73ra6YuG3qZprYyqVAXx0g1RfahhlL9lb/YI9rYSu0iLx4
         oD6+ec0h4tlhWpKFI0CakTMsDXCKlwX5dp1QWWcycxjnC85Ud91gEmirEQWFga7QfYk6
         +cacaf2JtHdJ9BYHar8ly9Xawh/Kt7Uiufuy6jXSrS15y+WvZqzoeeOjDKUMNGKq2uAh
         rqWnHhwQRTbXqupSydFl64ETtA/0oM+fU8Ca5fbbvt/XcGf/UsurPNBUYUEpaJtkX/wo
         dazw==
X-Gm-Message-State: AOJu0YxrR9ssnSEDQEKKvs1cojH0falgAr4u5gqbJ4Iz5KoZ6Dhw42Rd
	iAQHHFwWsNt3/4ANWiwNjg9uzsy9Pz1mn2UXW6auVT/Mx4SpwaOUFdyhtojU9iBW6L5lzi0ivfK
	r0IAaLmRdI7lWTbtqTrBET41BEe5lNB1O
X-Google-Smtp-Source: AGHT+IFCP/NBjlz1s3pYXLaJSr+f/Tnt3ig8mosBSoENlYjgf9DHZf/2RKItfgL1tMe3THwyvUrW1XEUROvi37BaWok=
X-Received: by 2002:a05:6102:511f:b0:492:a6fb:23cd with SMTP id
 ada2fe7eead31-49fc7537435mr3262468137.6.1726826101785; Fri, 20 Sep 2024
 02:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <Isrj.1726816317462557237.ZoCh@lists.yoctoproject.org>
In-Reply-To: <Isrj.1726816317462557237.ZoCh@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 20 Sep 2024 10:54:50 +0100
Message-ID: <CANPvuRk5F7sSq1bJHRs_WvRa_CkKyVJMTHR_yaR7ncDK7vLAhg@mail.gmail.com>
Subject: Re: [yocto] How do changes get merged from master to release branches
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: multipart/alternative; boundary="00000000000062cb9e06228a085f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 09:55:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63873

--00000000000062cb9e06228a085f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Aleksandar,

Aleksandar Nikolic via lists.yoctoproject.org <aleksandar.nikolic010=3D
gmail.com@lists.yoctoproject.org> escreveu (sexta, 20/09/2024 =C3=A0(s) 08:=
11):

> Hi,
>
> As the title says, I would like to understand how changes get merged from
> master to release branches?  Is it done automatically or manually? Can I
> read somewhere about this process?
>
> An example: a few of my commits are at the moment only on the master
> branch. Some are fixes, which need to go to other branches as-is, while i=
n
> some other commits the changes contain the version (e.g. 5.0.2), meaning
> those commits are not valid for branches other than scarthgap (e.g.
> kirkstone). For the former - am I supposed to cherry-pick these "fix"
> commits myself and provide a patch? For the latter - am I supposed to
> provide fresh patches, which reflect the branch in question (e.g. instead
> of having 5.0.2, the patch for kirkstone should have something like 4.0.2=
1)?
>

OE-core have dedicated maintainers for specific branches/versions [1].
The maintainer of the older and LTS branches constantly backport bug fixes
from the master branch.
But any user can help with this enfort sending patches as well:

git cherry-pick -s -x ...
git send-email --to=3Dopenembedded-core@lists.openembedded.org
--subject-prefix=3D"[OE-core][BRANCH_NAME][PATCH]" -1

Where BRANCH_NAME should be replaced by the target branch:
Styhead/Scarthgap/Kirkstone

There is still a good contribution guide [2] on the Yocto
documentation that can also help.

[1] https://wiki.yoctoproject.org/wiki/Releases
[2] https://docs.yoctoproject.org/contributor-guide/index.html

Jose


>
> Aleksandar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63871):
> https://lists.yoctoproject.org/g/yocto/message/63871
> Mute This Topic: https://lists.yoctoproject.org/mt/108554660/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000062cb9e06228a085f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Aleksandar,<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Aleksandar Nikolic via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;al=
eksandar.nikolic010=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">g=
mail.com@lists.yoctoproject.org</a>&gt; escreveu (sexta, 20/09/2024 =C3=A0(=
s) 08:11):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=
Hi,</div>
<div>=C2=A0</div>
<div>As the title says, I would like to understand how changes get merged f=
rom master to release branches?=C2=A0 Is it done automatically or manually?=
 Can I read somewhere about this process?</div>
<div>=C2=A0</div>
<div>An example: a few of my commits are at the moment only on the master b=
ranch. Some are fixes, which need to go to other branches as-is, while in s=
ome other commits the changes contain the version (e.g. 5.0.2), meaning tho=
se commits are not valid for branches other than scarthgap (e.g. kirkstone)=
. For the former - am I supposed to cherry-pick these &quot;fix&quot; commi=
ts myself and provide a patch? For the latter - am I supposed to provide fr=
esh patches, which reflect the branch in question (e.g. instead of having 5=
.0.2, the patch for kirkstone should have something like 4.0.21)?</div></bl=
ockquote><div><br></div><div>OE-core have=C2=A0dedicated maintainers for sp=
ecific branches/versions [1].</div><div>The maintainer=C2=A0of the older an=
d LTS branches constantly backport bug fixes from the master branch.<br>But=
 any user can help with this enfort sending patches as well:</div><div><br>=
git cherry-pick -s -x ...<br></div><div>git send-email --to=3D<a href=3D"ma=
ilto:openembedded-core@lists.openembedded.org">openembedded-core@lists.open=
embedded.org</a> --subject-prefix=3D&quot;[OE-core][BRANCH_NAME][PATCH]&quo=
t; -1</div><div><br>Where BRANCH_NAME should be replaced by the target bran=
ch: Styhead/Scarthgap/Kirkstone<br><br>There is still a good contribution g=
uide [2] on the Yocto documentation=C2=A0that can also help.<br><br>[1] <a =
href=3D"https://wiki.yoctoproject.org/wiki/Releases">https://wiki.yoctoproj=
ect.org/wiki/Releases</a></div><div>[2] <a href=3D"https://docs.yoctoprojec=
t.org/contributor-guide/index.html">https://docs.yoctoproject.org/contribut=
or-guide/index.html</a></div><div><br></div><div>Jose<br>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
<div>=C2=A0</div>
<div>Aleksandar=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63871): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63871" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63871</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108554660/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108554660/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000062cb9e06228a085f--

