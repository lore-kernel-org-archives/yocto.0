Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17E95CD68F4
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 06:49:46 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.85191.1696920576985222116
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 23:49:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=WBjZmHXV;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.43, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5346b64f17aso9341970a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 23:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1696920575; x=1697525375; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YKMgMm7lZfjvftoRr//kBS5kTOJjuAE1okXMxznruy4=;
        b=WBjZmHXV0QpZqwLGN/0AILo5tZRtkN6iyO+13wydMz3n+vIboXDjcU8CkS9M224TDB
         lF+z2G+vtjszCz8BKJOn/rTq1rWyI/nBhO0MpSwjXgQq9X2uaS8AkYGggOluTuebS5P8
         RftBrKHBBpKZ32v3D8z0UBvIRyJZNCmjSWBXTlpTq1+n/DHhF9OaBuhogphkSA6C59GI
         vNMIkpqw4EsB4iOltTeBtlbcObjz9+R27d4w4HDHWjTjGv2KRIuHuMg3kKsfAlqWVkkl
         Z8AuNO3eFCHJOQSVBynz9DXS6diOgqxoJww/fZu84HSYRjeoYtqzRvLfwIL+8VDgZqz6
         2cIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696920575; x=1697525375;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YKMgMm7lZfjvftoRr//kBS5kTOJjuAE1okXMxznruy4=;
        b=vGs8yluKph3Eh5h5boRfreKZunNqoWaHLkaXXPhy4ezTUYN67USZmF6a0tndnpLPPp
         JuCYrgTdXU7ZKy5T7ZYtAeH99FgqWu1UM4alcKHKXU3614gW3ojc4WhV4TkgYS3z8pED
         0rz9b/Q4RTj27R91TYjF+mQ37vobkQ006p5WH9XWNed0RpwokqmnPpc+ag5K4j0ozSHj
         M2MiuV+xiw1AgSLBRko8WSo2bk6Aa/Gpx45urHLmpUeQAVYJQqclmTfzJfzZhxJYC2X7
         tvzEv7SzVB/dHGsO1lyxZx2qcPG/hicVf34b0LXvUl4pw/4xYqUIxvU3Q2CncizbUMeQ
         RACw==
X-Gm-Message-State: AOJu0YzDZ9/WN2MFSbBWgMEemTrF9zZzLa+FRn4EJJpJGpSd79H9BIdq
	LmHQyigUYmnHF4YXIa2y1NzIZmR/98XMAqZdVPOe4g==
X-Google-Smtp-Source: AGHT+IGBQlUQTdnVpHXE0dr5B8HwpHzXMkxmokwGnuRAgIEPfbAKjCwLILjoai0d6gYT3sEqzAX3Nm3xgTdikOMVwFs=
X-Received: by 2002:aa7:d588:0:b0:523:33d7:e324 with SMTP id
 r8-20020aa7d588000000b0052333d7e324mr14818575edq.38.1696920574906; Mon, 09
 Oct 2023 23:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
In-Reply-To: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Tue, 10 Oct 2023 08:49:09 +0200
Message-ID: <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
Subject: Re: [yocto] are there any plans for a RISC-V reference board?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001464780607571c67"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 06:49:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61298

--0000000000001464780607571c67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

It has been discussed at numerous occasions. The main blocker is: we need a
commitment for the maintenance. So if a high-ranking member decides to push
forwards with this and allocate resources, or a new member from the RISC-V
ecosystem steps up to make it happen, then the project is all ears.

Greetz,
Josef

On Tue, Oct 10, 2023 at 8:32=E2=80=AFAM Robert P. J. Day <rpjday@crashcours=
e.ca>
wrote:

>
>   at some point, will there be a poky (meta-yocto-bsp) RISC-V
> reference board? i'm thinking the Nezha Allwinner D1 (which is
> already supported in meta-riscv) would be a safe choice. or maybe the
> more powerful VisionFive 2?
>
>   thoughts?
>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61297):
> https://lists.yoctoproject.org/g/yocto/message/61297
> Mute This Topic: https://lists.yoctoproject.org/mt/101869785/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000001464780607571c67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>It has been discussed at num=
erous occasions. The main blocker is: we need a commitment for the maintena=
nce. So if a high-ranking member decides to push forwards with this and all=
ocate resources, or a new member from the RISC-V ecosystem steps up to make=
 it happen, then the project is all ears.</div><div><br></div><div>Greetz,<=
br>Josef</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Oct 10, 2023 at 8:32=E2=80=AFAM Robert P. J. Day &l=
t;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 at some point, will there be a poky (meta-yocto-bsp) RISC-V<br>
reference board? i&#39;m thinking the Nezha Allwinner D1 (which is<br>
already supported in meta-riscv) would be a safe choice. or maybe the<br>
more powerful VisionFive 2?<br>
<br>
=C2=A0 thoughts?<br>
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61297): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61297" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61297</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101869785/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101869785/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001464780607571c67--

