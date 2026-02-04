Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C534AE83F1D
	for <webhook@archiver.kernel.org>; Wed,  4 Feb 2026 13:57:37 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20831.1770213451304736806
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Feb 2026 05:57:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XCBLe2F1;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c24f4dfb7so3786260a91.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 05:57:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770213450; cv=none;
        d=google.com; s=arc-20240605;
        b=fmpcnLzDfNYFGkxbmhXVbw3ztmIBB5JaUtMjjc9flg7Gn/jHcETJqt6cKDPs9ciW6H
         dc1HcYFe0NNHHzftdQLxFxFMWrUxzxttEapJpLYrSY3NyVGvmcUPN8mLpW+6wsc8yzhF
         +WGAJaHtJqHYjDiXzBBV9ikVfqtOjP1KrCp1W7Hb/jVBhsKpe7OJW5HAzjcddslKFnU8
         a84KeMbjISooHTBLNFzVmmevOvjzIZNx4Jh1yHuwQEkNbYggORouEtmWcmNhd4ny0Di3
         Rbnp+jlCkLVsNdLb12cMhz1feQddZrL+M39phl8yvxnKv0k3OyJOwUmwx+od+yOw1hP3
         XUHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jKOIWDriiaZvBXYLYwYh9ojho9Ms0ktjAReaxYhWJIw=;
        fh=kunl+TRj+p5VrAHXycMNkQtc5yQGPCiX+PAkyaJeKss=;
        b=CzIQo7Ia5vR3n6eH3+cdW852dIlZ/xJ35mZp4E8gd0kbQuvMFcCvSRWuM7coCozOFP
         U9hSuC7JC66IJhJUpbM6EKJ0Mv6titGtfCD+ghWmnowd9A9sv/YjqQhnZLfisajEw2jK
         qEnVVMS9dNowPb1/rAGoSJDMOg33m4/JZ4WPzQUhHlxKHbmwWyc6IA9pm5Ut+P9mPzbn
         +bReVRGObO+NwhMAeRu64WpWM8qDw6btr+GueACdV/2QhuQKw6emjFFzUixT6YAB/7ZN
         RPHuasELOggr+oIfVsPHWm95x6tzMftcWJHjzfGd2xUCvvpmwG+r598YBOpo3Gtf3gM1
         lLzA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770213450; x=1770818250; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jKOIWDriiaZvBXYLYwYh9ojho9Ms0ktjAReaxYhWJIw=;
        b=XCBLe2F1IbzTJoZB/G9Tqucwna0t2PALuOY88+mKFtDiBEyjw1kiotVYfKjxHKYk5X
         7S6d+E/yqaNKH5sF530PgtSLiuNEOCsiDMeRwNo3d/eevlBEHIoq8BbiTrnpAQHNRxFT
         JTBrk36f4J9orqMotorZYK7qmljk+H7yBMybukp0srh9ACQgf004WtJfL4WI6MBTdChI
         +9tuBH8xbJbZ3yq7FuPDj4vdSR5j5tlQoSY3t4XlfZreS6j1BYrelD84t4YDUi5TTGS3
         /PI8gPOSNxaFPwtKfDQjj0PTJuo6bvVQA33efl4Q3MdxwzPq/PyxlzsrpMTGEO6HAT3V
         53QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770213450; x=1770818250;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jKOIWDriiaZvBXYLYwYh9ojho9Ms0ktjAReaxYhWJIw=;
        b=OKltuJM2Ob0FnRBq6MoV46XMgmkb+QfMRR4eQjM1PUc+A0oWyU0IB7c8KhhiVgMGLM
         oq+QbGtyWxzQ0+D0tbwj3EFGPwvWvpXQq/50SjM2p2983ZiXoAvLsciUg4o7dxIjBYzv
         FbEI1rN3FRs4j8gHXtRUR/lwbDHEo0NX2q+OrrFkdtxGcDWMkHGnlN+SHLVqSKRpX29m
         rupgMcUMvQWVXDaVItrFNz2kcyp73Q3XUc4zvQlI5qXO1M3Xi3ofeWEdPEXFZVaExYS6
         GnqajwECzgYWDaDe3xL/RHokZPq9kgsCyk6uHHziGwseHmuHS0dLys8LwwlslzKFvC5j
         ckTw==
X-Gm-Message-State: AOJu0YxNuKnZcC7VXwvmALDVYlon+I1tP/foHsRSUT7U3FZ26bsgjZna
	MlyyGkdRM+tCkmLCx5fEVz1X9iXvyLT3+apBIBYgnQG0X6NlLTcG+qh7pByJzc2E3ROeKwkkAB4
	iuTsjSU1qnOrUyOKnRE5ouSkC5i2O1lXq+07s
X-Gm-Gg: AZuq6aI7KNYlktjP+YY4CH/f99sRklF2ZTaVr6sEGEO80Kv2vQEktrjV34WfEzUMkXX
	K2ASiZxiXGsXcnvYkWC2c7DIO6zDOxF9DARLkwHmQwKLoEhz7eB6atLqXec9FZLvMQzi3w4O6SE
	L6mTlbpAfPeWuAKsP5EjKiwc+p89Thpg1w+VAU28Mij20UBjd6CT8xR1RI/v4OhWxDd7W24tTIT
	Ef7QlAwOTezZXmLjxYNZAzEcf+Me0IPQtzC8UMnvCPpJjqTEPlJ6q3k3EEf/2wUcE6mILMSPwz1
	St80NeLtpohLuRY2xgyJW+A+zIGJ
X-Received: by 2002:a17:90a:e7c5:b0:34e:5516:6655 with SMTP id
 98e67ed59e1d1-35487115908mr2316522a91.9.1770213450270; Wed, 04 Feb 2026
 05:57:30 -0800 (PST)
MIME-Version: 1.0
References: <nBqk.1770208426472571743.QePX@lists.yoctoproject.org> <CAMSfU+7rTEt-8GQ-QsSZ3j-MC+UoaL9QT8Gv1J2OGQpRMPr7pQ@mail.gmail.com>
In-Reply-To: <CAMSfU+7rTEt-8GQ-QsSZ3j-MC+UoaL9QT8Gv1J2OGQpRMPr7pQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 4 Feb 2026 08:57:18 -0500
X-Gm-Features: AZwV_QjZGH52-eCLAm93rKjkQgVzy1vTRLdh4abQ1htimaBLrkmeNwVuS2MOB04
Message-ID: <CADkTA4NwGLAthwCQmsg8L4UFG1BvDiBA4-+vuMtto62CSJcEHw@mail.gmail.com>
Subject: Re: [yocto] State of crops/poky-container
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: mns@gomspace.com
Content-Type: multipart/alternative; boundary="000000000000e14a9a0649ffefe8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 13:57:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66219

--000000000000e14a9a0649ffefe8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 4, 2026 at 8:06=E2=80=AFAM Yoann Congal via lists.yoctoproject.=
org
<yoann.congal=3Dsmile.fr@lists.yoctoproject.org> wrote:

> Le mer. 4 f=C3=A9vr. 2026 =C3=A0 13:33, Martin Siegumfeldt via
> lists.yoctoproject.org <mns=3Dgomspace.com@lists.yoctoproject.org> a =C3=
=A9crit :
>
>> Hi all,
>>
>> We have happily been using crops/poky-container the last years for CI
>> work. Maintenance of it appears decreasing though, last commit is two ye=
ars
>> old and the most recent supported Ubuntu LTS version is 22.04. PRs have =
not
>> been responded to for the last ~1 year. I thus wonder if there is no
>> intention of maintaining it in the future? AFAICT, there is no associate=
d
>> mailing list and GH PRs (at least used to be) seems the means for
>> contributing.
>>
>
> Hello,
>
> CROPS is in dire need of a maintainer and has been for a long time (look
> for "CROPS" in
> https://wiki.yoctoproject.org/wiki/2025_Yocto_Project_Weekly_Status_Archi=
ve
> ).
> Would you be willing to take that role? (Basically, there can be no
> maintenance without a maintainer)
>

There's also a developing plan to generate a similar CROPS container from
meta-virtualization using our very own yocto components.

Stay tuned, it shouldn't be too long before we can either confirm or deny
that
the new approach is happening or not.

Bruce



>
> Thanks
>> Martin
>>
>>
>>
>>
>
> --
> Yoann Congal
> Smile ECS
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66218):
> https://lists.yoctoproject.org/g/yocto/message/66218
> Mute This Topic: https://lists.yoctoproject.org/mt/117633064/1050810
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

--000000000000e14a9a0649ffefe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 4, 2026 at 8:06=
=E2=80=AFAM Yoann Congal via <a href=3D"http://lists.yoctoproject.org">list=
s.yoctoproject.org</a> &lt;yoann.congal=3D<a href=3D"mailto:smile.fr@lists.=
yoctoproject.org">smile.fr@lists.yoctoproject.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Le=C2=A0mer. 4 f=C3=A9vr. 2026 =C3=A0=C2=A013:33, Martin Siegumfel=
dt via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yo=
ctoproject.org</a> &lt;mns=3D<a href=3D"mailto:gomspace.com@lists.yoctoproj=
ect.org" target=3D"_blank">gomspace.com@lists.yoctoproject.org</a>&gt; a =
=C3=A9crit=C2=A0:</div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>Hi all,</div>
<div>=C2=A0</div>
<div>We have happily been using crops/poky-container the last years for CI =
work. Maintenance of it appears decreasing though, last commit is two years=
 old and the most recent supported Ubuntu LTS version is 22.04. PRs have no=
t been responded to for the last ~1 year. I thus wonder if there is no inte=
ntion of maintaining it in the future? AFAICT, there is no associated maili=
ng list and GH PRs (at least used to be) seems the means for contributing.<=
/div></blockquote><div><br></div><div>Hello,</div><div><br></div><div>CROPS=
 is in dire need of a maintainer and has been for a long time (look for &qu=
ot;CROPS&quot; in=C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/2025_Y=
octo_Project_Weekly_Status_Archive" target=3D"_blank">https://wiki.yoctopro=
ject.org/wiki/2025_Yocto_Project_Weekly_Status_Archive</a>).</div><div>Woul=
d you be willing to take that role? (Basically, there can be no maintenance=
 without=C2=A0a maintainer)</div></div></div></blockquote><div><br></div><d=
iv><div class=3D"gmail_default" style=3D"font-size:small">There&#39;s also =
a developing plan to generate a similar CROPS container from</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">meta-virtualization using our=
 very own yocto components.</div><div class=3D"gmail_default" style=3D"font=
-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:smal=
l">Stay tuned, it shouldn&#39;t be too long before we can either confirm or=
 deny that</div><div class=3D"gmail_default" style=3D"font-size:small">the =
new approach is happening or not.</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Thanks</div>
<div>Martin</div>
<br>
<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66218): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66218" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66218</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117633064/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117633064/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--000000000000e14a9a0649ffefe8--

