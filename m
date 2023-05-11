Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44F5C77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 15:15:06 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.62183.1683818097615531285
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 08:14:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=dQrVmtn6;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.43, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-50bc070c557so16519390a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 08:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1683818096; x=1686410096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T0UYXR+0pIMPm+YKG8jR29xoA9WlhN5BGr4bTQrwi/Q=;
        b=dQrVmtn6Qr0BeJmTCan6xQ0FIbb1PdNYaw1m+epmlvnMCCkWL1yzekoS/U44PzPGiZ
         x8fbKJtZrZ3h8S+WrEiXLNJEzrECevaCLOFEhJjWq9ZE3UWEUyhNeiZaYJFu3VH9j+XN
         P02z0rGwrCmN6wlhH9nhRFOybyqI8CEM3YZULaXSgykusW9vBXfTzKykXub2/84q9n7H
         dXarkX9S6J02EmFeEm5E94Jdu+gVHgnJVd38gD2iWtpR1PJeQitwr+7n2dxhPiu219Cp
         KxfzIrI3TQA6yS1/CM32QRw5VCupZG7EIwAa03PlfaB0Q2du59+5KASa551Bs2LD0/M7
         8HwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683818096; x=1686410096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T0UYXR+0pIMPm+YKG8jR29xoA9WlhN5BGr4bTQrwi/Q=;
        b=fbrU3Zhw1iullh8c/GEDNnMRCef95OgOhtT485QV7llvSKO77J/o0Ev/UY4Z/WTWkX
         RYkAJE71PVH0HCFLF+64fz7OuxpKUq5Pg8PEOPb/QUPPnkKHWb88BYQIG21eeZ4e+mrp
         u2Jfxwlp9A4dNDrAaFkXM9gyU0RAUbhGEXU3qon0Pek4HbSr9KiufigTKFBbQOBWvEIG
         +OmRiWRt3kelOLWbH5QWd8T14N4eSRMCQJR/zp6htyR+oFR2AWZzat54u8sgwfTsfhAj
         deMcXT2Pgk/9Sp0SLYx6hemgN1ld0Rlqje4S4/bUHd3HzLVL4aYvVxeZi4rsFODXgWuX
         DVNw==
X-Gm-Message-State: AC+VfDw/1aMgYZwkpMstifTEFa4/manZnD4utLIGmuf/UlQ3/oLFgfHc
	prXYk5npWDHYXru/1+nSJW5L2eQBbOJ07oIAp+YEcA==
X-Google-Smtp-Source: ACHHUZ4Pfijb/CE3gpUaPhtaojKIi7y2vgBiC5Im6metiootzIpvvNQIRe/PCGCkg/6I1aBkfvOBnJNUOe6m8mYhJBo=
X-Received: by 2002:a17:907:940e:b0:950:e44:47ae with SMTP id
 dk14-20020a170907940e00b009500e4447aemr20914963ejc.40.1683818095754; Thu, 11
 May 2023 08:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
In-Reply-To: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 11 May 2023 17:14:29 +0200
Message-ID: <CAEt6NwrLZVMH3J=v=dedxymNLDUD=t80y8wGSN1jHhjXDO_weg@mail.gmail.com>
Subject: Re: [yocto] OTA Updates
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000076d11905fb6c737c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 15:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59991

--00000000000076d11905fb6c737c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For Mender there is a pretty detailed guide on how to build and run a demo
image at
https://docs.mender.io/operating-system-updates-yocto-project/build-for-dem=
o
Various board integrations are maintained on
https://github.com/mendersoftware/meta-mender-community, and/or documented
on hub.mender.io.

As the integrations and procedures vary quite a bit, there is no
one-size-fits all tutorial.

Greetz,
Josef

Full disclosure: I work for Mender.

On Thu, May 11, 2023 at 4:33=E2=80=AFPM MOHAMMED HASSAN <hassanchattarki@gm=
ail.com>
wrote:

> Hi all,
> So I am referring this page for OTA updates
> https://wiki.yoctoproject.org/wiki/System_Update
>
> However are these all paid or free services. Any more info about these
> services is welcomed.
> Also are there any tutorials, YouTube videos on ota updates for yocto? I
> couldn=E2=80=99t find any though.
>
>
> Regards,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59989):
> https://lists.yoctoproject.org/g/yocto/message/59989
> Mute This Topic: https://lists.yoctoproject.org/mt/98828664/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000076d11905fb6c737c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For Mender there is a pretty detailed guide on how to buil=
d and run a demo image at=C2=A0<a href=3D"https://docs.mender.io/operating-=
system-updates-yocto-project/build-for-demo">https://docs.mender.io/operati=
ng-system-updates-yocto-project/build-for-demo</a><div>Various board integr=
ations are maintained on <a href=3D"https://github.com/mendersoftware/meta-=
mender-community">https://github.com/mendersoftware/meta-mender-community</=
a>, and/or documented on <a href=3D"http://hub.mender.io">hub.mender.io</a>=
.</div><div><br></div><div>As the integrations and procedures vary quite a =
bit, there is no one-size-fits all tutorial.</div><div><br></div><div>Greet=
z,</div><div>Josef</div><div><br></div><div>Full disclosure: I work for Men=
der.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, May 11, 2023 at 4:33=E2=80=AFPM MOHAMMED HASSAN &lt;<a hr=
ef=3D"mailto:hassanchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<di=
v dir=3D"auto">So I am referring this page for OTA updates=C2=A0<div><a hre=
f=3D"https://wiki.yoctoproject.org/wiki/System_Update" target=3D"_blank">ht=
tps://wiki.yoctoproject.org/wiki/System_Update</a></div><div dir=3D"auto"><=
br></div><div dir=3D"auto">However are these all paid or free services. Any=
 more info about these services is welcomed.=C2=A0</div><div dir=3D"auto">A=
lso are there any tutorials, YouTube videos on ota updates for yocto? I cou=
ldn=E2=80=99t find any though.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Hassan</=
div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59989): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59989" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59989</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98828664/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98828664/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000076d11905fb6c737c--

