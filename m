Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C706DFF8860
	for <webhook@archiver.kernel.org>; Sat, 25 Apr 2026 17:33:41 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1813.1777138413556566898
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2026 10:33:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=in6SprPh;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2b461310af5so34911675ad.1
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 10:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777138412; cv=none;
        d=google.com; s=arc-20240605;
        b=QuVJf2TfV9wpUXFhbf/tQ/JSCLgmp2xM0uAchwernV+hHrQ2TY7UHjxs2+LF010QYx
         pbqZFiARUqO17OI+Bi5A+DxTmNuZ2VYCi+d3Fvy+0WBDfTlF+7cAAJWkVCMfmACxhZhe
         YCcHCBJR/4+ZXZZ4qTk1oEoaswUNGcYECWVnVDXnWL8DwjTtgaXAsoBy2lfRvU1IJdNf
         OR9o4Y2DNHVTg0ui+EyYSgtxERS2bXzS9lJ9KVfxr9hu6MsJ4MciePkaR4umwVnVEToV
         NiNfR56vCFFdT+VaSPxKjm7h60HKnrWqG+88De3TN8cXISvtP0qFSqhjzSv6JPQLNT2l
         00dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g0OqeHvAzivuKY2/g6yx5LDXR3jhFRBnZM2G697+sKI=;
        fh=xM/5us8i+koff2A9oZAGdDu5NYDlDMkuELiiBPq5FLs=;
        b=Z0yL6XKTUZRzhrv39QDdivyaRKPctVgu+ITeDvEWhXW6rxKHg9Po2NYS3AypOVBR+5
         nH2a5oH6lFL/R6ur9w9R1s7hM9xi0Lf3aAy7D2rhf1j/Feh0DYcpaix41fNEBv9UFeNj
         /JRJVJR+4U095H1nDDNc7cB6XyV0lHW0IFv+5lPtLEF9pGlH3MXfNoYKMa+9U02nnz5Z
         xESYTVNyMC9w/CMakYhF0k4DrFatutlsNUiY5lF5/QPVOOuQtlrmDtJW2aW3y//KA77F
         FTixSLwq/JNQ1aRxGA9Q2ThN7paMMkEqCznYnWGRvG4olOfcdj7CWyA+GJvoSIfLpCV1
         lmiA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777138412; x=1777743212; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g0OqeHvAzivuKY2/g6yx5LDXR3jhFRBnZM2G697+sKI=;
        b=in6SprPhHNCRrBAzAHYrJiAt9x3kV2vt/Hgq1t2hOd0E9YuhnOKSqQiUY/r1YMZ1Qt
         ERp6wBGTh/ng1SXT0nNzc0KcTBpAp5RuW6yR/8mIYXF+LxBUH1yEPlOkIpEoLAGsuOEg
         iVa4Zq3gNkyl9EvuEh42xVjNZXafbeTa1VFal9VAMf5QyYzRJ9v/67h2ePryWBoiMcH2
         2NWcr1QTIcuEYmeIX1Td4z+McxspES7t2zRMmSVPm5mu3tbeA4mI5n/xHDbmE+HnPv9O
         REsa5jy6bMA3AFXyHAJ2+WjM//AIa4iB2anU4ZA+HrEn75XrOOlR8FsmXwtEpqouaTmn
         pPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777138412; x=1777743212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g0OqeHvAzivuKY2/g6yx5LDXR3jhFRBnZM2G697+sKI=;
        b=X9ZyhKRLXh/Z3rB713mP6ZYSTjpWnAEv16alZG+o84Uul9se7E8cBGG0wcPh3RQIhr
         RKp8XWNZv2cbI16xWDYamSvX/abCIdGjKQXthkBoI+kr83bh97V7EE7alFdnXv8t8GXx
         B31iIdDhgIymWB6xDk5Iq95up8i01PjjAyDGJQjqaCQCHcMRwjgdP45lL8bhEjGECZag
         5At3XKsTAZemeQxdIsj8D/nrQzQ6+LeJfAqAbwUzWU1WkrHka+rDr8CFLZmTqybgJSvB
         ynHlNBo562h1oVCptE2JL44z4PgGh1NMlUKLgMgv315o+EBxtPf0z/ojFNOQgAARBinq
         /TIQ==
X-Gm-Message-State: AOJu0YwRaTkvzElnrohIkk5xJl2D4t8Lj7f8F2evNadTg84UpuPGnfBK
	0SYOnOGHQIOxKs0dSHk3+iPvfIjuXtowx8zoG7w4Qv3HM2q429CM/k2Chrp+qatu0cKmXcnf96A
	s3qp1CbuWFpFpor4kAchdb4bOwHFrZst2BA==
X-Gm-Gg: AeBDiesXEXvhiL6Nm0D0oIUUx2yPYY8PhHr3yh8jfecztLp/BOceyXq5lpCHHN+mRdo
	UmjcGHPTW/S9l/ER6GN2L8VP+GIBJnnETBTF8UsD3hoN8lRPmvdKiRz2ElnLrRAcQH9axmursSH
	Lyp6p+ZY/dAMsc7cMwDiwThZX+tste8/EB4ew3eHNW4A9xfeG1R8p8sH7xEeUt19Vm7oOIEwH0O
	ZFytqn+1FvisoBHfQ7sdTy/QHO7IxIWQuzWL+WCv1Wis9GE0fENCNehUzRMnhu9f8IBk92/5yyh
	UpDOdCRE6TXvtjyC
X-Received: by 2002:a17:902:d591:b0:2b0:badc:c9cf with SMTP id
 d9443c01a7336-2b5f9e18812mr271774805ad.13.1777138412314; Sat, 25 Apr 2026
 10:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
 <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
In-Reply-To: <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Sat, 25 Apr 2026 19:33:21 +0200
X-Gm-Features: AQROBzCYNAFzh1idIA6VA4zfT7_J0wqAcMjw68EUKF95Gq0rD8HH7462Plfb2xY
Message-ID: <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.rc1)
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: qa-build-notification@lists.yoctoproject.org, 
	"yann.cardaillac@balena.io" <yann.cardaillac@balena.io>
Content-Type: multipart/alternative; boundary="000000000000c8656606504c4780"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 17:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66441

--000000000000c8656606504c4780
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Richard,

We had the same kind of error, we suspect some issue on crates.io side, did
you have any news from them?

I couldn't find anything about this issue.

Shall we change the way we download the crates?

Regards,

Yann CARDAILLAC,
---------------------------------------------------------------------------=
-----------------------------------------



On Fri, Apr 24, 2026 at 2:11=E2=80=AFPM Richard Purdie via lists.yoctoproje=
ct.org
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:

> On Fri, 2026-04-24 at 08:28 +0000, Pokybuild User via
> lists.yoctoproject.org wrote:
> >
> >     A build flagged for QA (yocto-6.0.rc1) was completed on the
> autobuilder and is available at:
> >
> >
> >         https://valkyrie.yocto.io/pub/releases/yocto-6.0.rc1
> >
> >
> >     Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3727
> >
> >     Build hash information:
> >
> >     bitbake: 33581c84f3a85008239acbd940501a35de48dc91
> > meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
> > meta-arm: 8eb10af8092dc3fff86891339fd024d8583f457f
> > meta-aws: fefdcc67dc3a86752a98d19c96d64bcb31928002
> > meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> > meta-intel: 511ddb7ea90499b2088248f59bab3e9d6f3c900c
> > meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> > meta-openembedded: 76700b6eaf327bb30e2c47b78713e2e409cfab7c
> > meta-qcom: a9f20e62e569c232dc1aaf8a90a6343e504003ef
> > meta-virtualization: 2e0704ee9282e4e86c13180334cb7ce118e55dd9
> > meta-yocto: 904846ae078ee20de073040ebb77c86e19250f56
> > oecore: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c
> > yocto-docs: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63
>
> This build did show three issues:
>
> a) A bitbake-selftest fetcher failure with 403 errors from crates.io.
> This is an intermittent network error, probably rate limiting
> connection requests.
>
> b) Some oe-selftest failures from importlib on ubuntu 22.04, where
> importlib fails with a KeyError, this exits whilst holding a lock
> causing other failures though deadlock. I manually killed a process to
> let the rest of the build finish. This is a known issue in older python
> versions.
>
> c) A failure in meta-virtualization from recent changes. There is a
> patch on the mailing list and this will be fixed before release.
>
> I do not believe any of these are release blockers and propose we
> should proceed with QA.
>
> Thanks,
>
> Richard
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66439):
> https://lists.yoctoproject.org/g/yocto/message/66439
> Mute This Topic: https://lists.yoctoproject.org/mt/118986370/3617030
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ycnakajsph@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c8656606504c4780
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Richard,</div><div><br></div><div>We had the sa=
me kind of error, we suspect some issue on <a href=3D"http://crates.io">cra=
tes.io</a> side, did you have any news from them?</div><div><br></div><div>=
I couldn&#39;t find anything about this issue.</div><div><br></div><div>Sha=
ll we change the way we download the crates?</div><div><br></div><div>Regar=
ds,</div><div></div><div><br clear=3D"all"></div><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div>Yann CARDAILLAC,<br></div>---------------------------------------------=
-----------------------------------------------------------------------<br>=
<br></div></div></div><br></div><br><div class=3D"gmail_quote gmail_quote_c=
ontainer"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2026 at 2:1=
1=E2=80=AFPM Richard Purdie via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;richard.purdie=3D<a href=3D"mailto:linuxfound=
ation.org@lists.yoctoproject.org">linuxfoundation.org@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>On Fri, 2026-04-24 at 08:28 +0000, Pokybuild User via <a href=3D"http://li=
sts.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproje=
ct.org</a> wrote:<br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0.rc1) was complete=
d on the autobuilder and is available at:<br>
&gt; <br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"https://valkyrie=
.yocto.io/pub/releases/yocto-6.0.rc1" rel=3D"noreferrer" target=3D"_blank">=
https://valkyrie.yocto.io/pub/releases/yocto-6.0.rc1</a><br>
&gt; <br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 Build URL: <a href=3D"https://autobuilder.yoctoproj=
ect.org/valkyrie/#/builders/29/builds/3727" rel=3D"noreferrer" target=3D"_b=
lank">https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/37=
27</a><br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 Build hash information: <br>
&gt; <br>
&gt; =C2=A0=C2=A0=C2=A0 bitbake: 33581c84f3a85008239acbd940501a35de48dc91<b=
r>
&gt; meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce<br>
&gt; meta-arm: 8eb10af8092dc3fff86891339fd024d8583f457f<br>
&gt; meta-aws: fefdcc67dc3a86752a98d19c96d64bcb31928002<br>
&gt; meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d<br>
&gt; meta-intel: 511ddb7ea90499b2088248f59bab3e9d6f3c900c<br>
&gt; meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315<br>
&gt; meta-openembedded: 76700b6eaf327bb30e2c47b78713e2e409cfab7c<br>
&gt; meta-qcom: a9f20e62e569c232dc1aaf8a90a6343e504003ef<br>
&gt; meta-virtualization: 2e0704ee9282e4e86c13180334cb7ce118e55dd9<br>
&gt; meta-yocto: 904846ae078ee20de073040ebb77c86e19250f56<br>
&gt; oecore: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c<br>
&gt; yocto-docs: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63<br>
<br>
This build did show three issues:<br>
<br>
a) A bitbake-selftest fetcher failure with 403 errors from <a href=3D"http:=
//crates.io" rel=3D"noreferrer" target=3D"_blank">crates.io</a>.<br>
This is an intermittent network error, probably rate limiting<br>
connection requests.<br>
<br>
b) Some oe-selftest failures from importlib on ubuntu 22.04, where<br>
importlib fails with a KeyError, this exits whilst holding a lock<br>
causing other failures though deadlock. I manually killed a process to<br>
let the rest of the build finish. This is a known issue in older python<br>
versions.<br>
<br>
c) A failure in meta-virtualization from recent changes. There is a<br>
patch on the mailing list and this will be fixed before release.<br>
<br>
I do not believe any of these are release blockers and propose we<br>
should proceed with QA.<br>
<br>
Thanks,<br>
<br>
Richard<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66439): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66439" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66439</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118986370/361=
7030" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118986370/3617030</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ycnakajsph@gmail.com" target=3D"_blank">ycnakajs=
ph@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c8656606504c4780--

