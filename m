Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A746E7849A
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 08:50:28 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.77401.1696236622259873207
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 01:50:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=yyraCwUo;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.47, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-52bd9ddb741so21784935a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 01:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1696236621; x=1696841421; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S2cJc5D+m8wCoYyF5PUh/xRlks7SaPTrs5nnI4tMRTQ=;
        b=yyraCwUo9mlxwaMWQ5vtaTksymhuZBKhLJ0wj9+4PX4/srXrSmUC5gf2e3LCAEaGHt
         5ZRQ6C+5w36Ab6TtrT4Obc4BprUqnBxuVA2+poAqgJO6HdtOjBtWUMVIq5V5P4ybjx5f
         FiCivKgWRvvhMENlvlEFT2nxaXwrBmrQsgi/Sn8fWFS0VbZfXf26yQL4b3L+y+qJIoTY
         YJpNjhFgCQ/aOvdXKvUKcK6W1wzaOYnuyEoZkaoa4u82b3OYJYlG/KAFsq08IKl8O1sf
         H/L6MVmwESiEikPPaI5KnLmJgg4RNxp/gbw/ecXEcjwdx+g/ZsKRx+aQf8qC8wpWodcH
         V0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696236621; x=1696841421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S2cJc5D+m8wCoYyF5PUh/xRlks7SaPTrs5nnI4tMRTQ=;
        b=PQD1/VKtJFl9jiBV6wbAXF3Imjd/XyoC2ImFsgk35bXt8ZqA6Z/fLFuZaQ0ZFPi/VK
         O/xQswHWhbo/Nz17drO7uhghU5ixDlDnVf7k5eaxsuxy7w29NdftnE3OS6DixaIRDGJW
         GVdwlsRDtPiHQhowgWgiwFab6r7xijrNBWNvcHPNi66zwzyiAxuejMRzMJXhGij6l09U
         N1CuYsQVeEgsfkINKq4JX8Ewd4onpnhTO8JwBZBRWdgTOlG9ouuJN+ZJ3Pa5ILAC1h41
         rhLXx0DVPy2oCnosSX51gTjLV31XGgRtP7z2P2R9NZ2QqGtSofTmpeUIaa7JLc/Dfylu
         e5/Q==
X-Gm-Message-State: AOJu0YyMXPNOF77YTq6Xw5f3AzXLvyvwBnvYmwG2tWE37VxxO5AufClY
	eMcwxSEefSSWZKt5UbJlnDfFy+Ul3UfD5GhmweKiXA==
X-Google-Smtp-Source: AGHT+IEs3Fk0Ro0BxPO+5za4QH7ET4wPedAx0v5Ig0CrLHJTOOLMobbMHN27lWeMCm+f0pv/1kuMMueoGhK3Hdi7cCw=
X-Received: by 2002:a05:6402:785:b0:522:1d30:efce with SMTP id
 d5-20020a056402078500b005221d30efcemr8510191edy.22.1696236620473; Mon, 02 Oct
 2023 01:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <EKjA.1696192557130441748.ckEK@lists.yoctoproject.org>
In-Reply-To: <EKjA.1696192557130441748.ckEK@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 2 Oct 2023 10:49:54 +0200
Message-ID: <CAEt6NwqUdJ_Da8UCi922aUM9iJLZswFgMD-LvvNGUvVve=mETQ@mail.gmail.com>
Subject: Re: [yocto] Adding device tree overlay #kirkstone
To: daniel_herrmann22@web.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003802ed0606b7ddb9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 08:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61185

--0000000000003802ed0606b7ddb9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

adding it to IMAGE_BOOT_FILES should do the trick.

Greetz,
Josef

On Sun, Oct 1, 2023 at 10:35=E2=80=AFPM <daniel_herrmann22@web.de> wrote:

> Hi,
>
> I am struggling to add a device tree overlay to the linux kernel.
>
> I am on the kirkstone branch and my recipe (linux-raspberrypi_%.bbappend)
> looks like this:
>
>
>
> SRC_URI +=3D "file://my_gpio.dts;subdir=3Dgit/arch/${ARCH}/boot/dts/overl=
ays"
>
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/deviceTree:"
>
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>
> KERNEL_DEVICETREE:append =3D " overlays/my_gpio.dtbo"
>
> In the build/deploy/images folder I can see the generated dtbo file but i=
t
> not copied into /boot/overlays
>
> Does anyone know what I am doing wrong ? Thanks..
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61182):
> https://lists.yoctoproject.org/g/yocto/message/61182
> Mute This Topic: https://lists.yoctoproject.org/mt/101699891/4689568
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003802ed0606b7ddb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Daniel,<div><br></div><div>adding it to IMAGE_BOOT_FILE=
S should do the trick.</div><div><br></div><div>Greetz,<br>Josef</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, Oct 1, 2023 at 10:35=E2=80=AFPM &lt;<a href=3D"mailto:daniel_herrmann22@=
web.de">daniel_herrmann22@web.de</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hi,</p>
<p>I am struggling to add a device tree overlay to the linux kernel.</p>
<p>I am on the kirkstone branch and my recipe (linux-raspberrypi_%.bbappend=
) looks like this:</p>
<p>=C2=A0</p>
<p>SRC_URI +=3D &quot;file://my_gpio.dts;subdir=3Dgit/arch/${ARCH}/boot/dts=
/overlays&quot;<br><br>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/device=
Tree:&quot;<br><br>PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;<br><br>KERN=
EL_DEVICETREE:append =3D &quot; overlays/my_gpio.dtbo&quot;</p>
<p>In the build/deploy/images folder I can see the generated dtbo file but =
it not copied into /boot/overlays</p>
<p>Does anyone know what I am doing wrong ? Thanks..</p>
<p>=C2=A0</p>
<p>=C2=A0</p>
<p>=C2=A0</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61182): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61182" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61182</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101699891/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101699891/4689568</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000003802ed0606b7ddb9--

