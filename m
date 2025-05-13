Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B1AAC3ABCC
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 12:42:52 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.75468.1747140162707100826
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 May 2025 05:42:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ASS++Q5s;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: rybczynska@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b2325c56ebdso4398125a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 05:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747140161; x=1747744961; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lAbuzz+T8NTYoA4SLNlMzK1I8Xpdw8JdXg8Vmb1+s5Q=;
        b=ASS++Q5sBxjc4OLLHJ9Dh2k3xueAzm5fZDgkblTeGv9BVpgri0qpbHcLtZ7nYQjqR2
         bcoKtFTYQCODAUN7Q6A0bFM3QVRtRmbKcEJWCPip/guVBWakhqIlYAea9NgFgfIqNMjf
         aeRvjVbCMInrwZSQVoMGCUGrOAZKUKKTH25luHbEoYVDBk5wPSF3BKTGFDQZxeglQF6U
         fVF4wghEAsefHzSW6YE/HvAaYeHIX80cx9mGqPWBPFAr4NAlPomFfvZ3cEWravmmYbDB
         ylP2UZ6ASA8rR2ZoJ8l18oZvmol2hJun1rFv8cp9F7rU2+d3R1KQyS+JlAbTcBz8jj12
         1FwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747140161; x=1747744961;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lAbuzz+T8NTYoA4SLNlMzK1I8Xpdw8JdXg8Vmb1+s5Q=;
        b=UzSbXv6V8FygRkO232VVzkhAmh7jIgSw4SYnLuE7ZPhm00lRRFhiE4QbOXF/4BJkBT
         Duby7DntytSvTuvbchfP/OrBUS8YRmzIfu9VeTUjxc94F5Nm11a8pifeJS3lTlDUzay7
         +UaLslblAhyMZMl4IvDokZhZXS1iJZA2CzYAFRcMvdG5gRaFAJRPqlpJO2+Zyetepkb/
         8aHuu8ts4xgPv+3W7ozYtVObOjqhZXgRIC1GNviXhcQyJRpXNJeb7DgUzUJxWAZqpkMR
         fblJhnt4LoDkmVgl8OCFuIaEfwAXm9KFUzsGWysIGmMXQukp7d3CdmNj1Hw53QSAqrb8
         3pyA==
X-Gm-Message-State: AOJu0YwPUEZ//oHRvJRV83dnW0VIN5bF1gPWvYYBqKCC1e2apap6lkUA
	fb+Mi3B2S83i/FtW8K1GwujAfBsVimGqaYYTZd52PNZi9OTiDRWkCSwZWq+5GAJwXMWYbcfr+2b
	PI+qjHSU8tJDUG/MnF107aQSussWnmQ==
X-Gm-Gg: ASbGncvyTotzt/SlmYMaILznzdejnhgBKCKsL1cimpf7187ug6vY31HodOomNWLyJIC
	fpkj5AqABwyzULYmiIAJ1sNCr81BpcLjtFyLiYQbwqMS1ABeQ/iB8MOeb23XIwI5LDVli+ptaks
	d2SFp3oE5EWrGcvmz8hUhE/8JdD3Jvx6K7B+rBOihTV/+/
X-Google-Smtp-Source: AGHT+IERFYG7ZzXS2ns150gpdP6hQxwJxfPNRxS03gwxKtupgJtrJk3t/lVd/673InINeTsBsKC5joF7CeuG2pCL/54=
X-Received: by 2002:a17:903:3bc6:b0:223:65a9:ab86 with SMTP id
 d9443c01a7336-22fc8b33287mr268184425ad.12.1747140161437; Tue, 13 May 2025
 05:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <6C44564C-884B-4618-A2E4-0FDE612FC330.ref@yahoo.com> <6C44564C-884B-4618-A2E4-0FDE612FC330@yahoo.com>
In-Reply-To: <6C44564C-884B-4618-A2E4-0FDE612FC330@yahoo.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 13 May 2025 14:42:29 +0200
X-Gm-Features: AX0GCFtW-SMQ0BesHHwAcSEB57g8bGHar29_G-oaX3GteOrxrEiQIjwb6Z76Ijo
Message-ID: <CAApg2=QjATMdZtja-Ta=KKrRUuqomyhn2PD=UhsDe-jwd-6KJQ@mail.gmail.com>
Subject: Re: [yocto] How to include author/maintainer in SBOM
To: yocto@lists.yoctoproject.org, edahlseng@yahoo.com
Content-Type: multipart/alternative; boundary="000000000000b2049d063503c44a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 12:42:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65325

--000000000000b2049d063503c44a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
This is a really interesting question. In the regulation you deal with, who
is considered to be the manufacturer/author? I'm asking, because under the
CRA it will be the one shipping the product (so your company) for all (open
source - to simplify) components.

Kind regards,
Marta

On Sun, May 11, 2025 at 6:37=E2=80=AFAM Eric Dahlseng via lists.yoctoprojec=
t.org
<edahlseng=3Dyahoo.com@lists.yoctoproject.org> wrote:

> Hi everyone,
>
> I=E2=80=99m working on a Yocto project in a regulated space and need to d=
ocument
> an SBOM containing name, version, and =E2=80=9Cmanufacturer=E2=80=9D for =
all components. I
> generated an SBOM for our project with the create-spdx class, but I do no=
t
> see any =E2=80=9Cmanufacturer=E2=80=9D/author/maintainer information incl=
uded in the
> output. Is there a way to add anything like that to the SBOM output? This
> particular project is still on Kirkstone in case that makes a difference.
>
> Thanks in advance for your help!
> Eric
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65303):
> https://lists.yoctoproject.org/g/yocto/message/65303
> Mute This Topic: https://lists.yoctoproject.org/mt/113050682/5827677
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> rybczynska@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b2049d063503c44a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>This is a really interesting questio=
n. In the regulation you deal with, who is considered to be the manufacture=
r/author? I&#39;m asking, because under the CRA it will be the one shipping=
 the product (so your company) for all (open source - to simplify) componen=
ts.</div><div><br></div><div>Kind regards,</div><div>Marta<br></div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, May 11, 2025 at 6:37=E2=80=AFAM Eric Dahlseng via <=
a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;eda=
hlseng=3D<a href=3D"mailto:yahoo.com@lists.yoctoproject.org">yahoo.com@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi everyone,<br>
<br>
I=E2=80=99m working on a Yocto project in a regulated space and need to doc=
ument an SBOM containing name, version, and =E2=80=9Cmanufacturer=E2=80=9D =
for all components. I generated an SBOM for our project with the create-spd=
x class, but I do not see any =E2=80=9Cmanufacturer=E2=80=9D/author/maintai=
ner information included in the output. Is there a way to add anything like=
 that to the SBOM output? This particular project is still on Kirkstone in =
case that makes a difference.<br>
<br>
Thanks in advance for your help!<br>
Eric<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65303): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65303" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65303</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113050682/582=
7677" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113050682/5827677</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:rybczynska@gmail.com" target=3D"_blank">rybczyns=
ka@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b2049d063503c44a--

