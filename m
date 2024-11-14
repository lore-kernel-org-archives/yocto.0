Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 082E5D68B35
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 16:27:20 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.41055.1731601639483184215
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Nov 2024 08:27:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fWeHW9eA;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6ea7c9226bbso9244647b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 08:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731601638; x=1732206438; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XoLj2Ewy/GilSQTbPRCP/mew8XR3vcH/MzroO9ORG0A=;
        b=fWeHW9eAfynpzrfKKKKJVz7a6mCS508MqqYxB2FfPdE4tdy6jC+8prcsiZzonzzxBm
         csG5wVN2BmVyqfqdEgb7oItDqaq+/pxI6FGYcYn+kI/fEfs1vtE7o0ECd1WdQlelSfI6
         yXnZiF/yumzc2tUNRN8Q+JGRr2eQlnxWLZfIzdXIIaa2733XpYXw7qpNBG/Qx5Rp7Fog
         AXi+C7voDEP8mwiOC997aXVP+DFzgky3fgh7BIVaDYnH2r0FOuI7KU4fJDYJ9FikLQYf
         I/PTcPgA9ZB5/HVhMaefExzCPEAXZECeq7FgRnD4SIuBRI1iYdEWz0Uok/C/PxOzvW6K
         XZBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731601638; x=1732206438;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XoLj2Ewy/GilSQTbPRCP/mew8XR3vcH/MzroO9ORG0A=;
        b=X8PsdhCBY8ThDzhjqUy4YNgopM7huyXqy5ZAIIFdCxDw//uh0qlqqvQDBLbdj7PXNY
         fwBJi9IVxnyX+cKNbFBZDcrKXUgit0dvnf1P1jkE5BDKuLLX9ZqLF+0hMOlEFV0g9UW/
         zKV6IfwrEAURgAQOzf1h+Fz5+w1t7i7NML8cibG293WltMrqNtM7SfZ7aJKwbF8EmKZs
         Hh6qJCGm/mY3xjmjjtulRT8Nj5oI4ZjMzJVdJ388o7A2/0dvwQSKw9m7YwhIIxbNuBGE
         4TgvRTs0am3bTYC5T8IvEnSw5aD4PWM5Rkbm9fvjHYpHcvmhRQRdDC+pAtRQD627nEjW
         wZIQ==
X-Gm-Message-State: AOJu0Yxq+Kw5eyDw6DOtipIepm/bhagW5ZL8bowrQhkEw0h40uqjt6HN
	Wp14ht8vKLtsoZYVsJNyzorKk+91jiNfpFqOQAbsVTld0ZL9LUEFshPPFjWQiu2bBmozikmxXrV
	yZCqYF9JzVCa8gm3Z8to5P88dhaCeMg==
X-Google-Smtp-Source: AGHT+IHWhVnpsBatt+e3pDTpXQS7LGRsmVQ3mOei+Zx15RErweGU7lfDLCAPAndmLfKwSXJ2BbzfWMlcfYZlQnXz9ZY=
X-Received: by 2002:a05:690c:6011:b0:6db:db51:c02d with SMTP id
 00721157ae682-6eca468f55amr128308177b3.25.1731601638418; Thu, 14 Nov 2024
 08:27:18 -0800 (PST)
MIME-Version: 1.0
References: <Qrgl.1731561512622402340.0SLS@lists.yoctoproject.org>
In-Reply-To: <Qrgl.1731561512622402340.0SLS@lists.yoctoproject.org>
From: sateesh m <sateesh0457@gmail.com>
Date: Thu, 14 Nov 2024 21:57:06 +0530
Message-ID: <CACsETStjvEgnOppMi=ko1XrqEEAdq3WPsDKWwdQo5ykSVzE60A@mail.gmail.com>
Subject: Re: [yocto] Issue with pulseaudio.15.0 version audio issue HFP/HSP profile
To: yocto@lists.yoctoproject.org, sateesh m <sateesh0457@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000008cf05e0626e1ec34"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Nov 2024 16:27:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64277

--0000000000008cf05e0626e1ec34
Content-Type: text/plain; charset="UTF-8"

Hi Team,


Can anybody respond on this mail.


Thanks & Regards,
Sateesh

On Thu, 14 Nov, 2024, 10:48 am sateesh m via lists.yoctoproject.org,
<sateesh0457=gmail.com@lists.yoctoproject.org> wrote:

> Hi Team,
>
> We are using yocto version krikstone.
>
> Trying HFP/HSP and A2DP Profile.
>
> *1) We are able to connect  my mobile with bluetooth connectivty. Able to
> play audio but unable to listen sound. *
> *2) Through GSM we are trying to play audio but unable to listen sound. *
>
> Integrated required packages using image install.
>
> Ofono
> Pulseaudio-15v
> bluez5
>
> IMAGE_INSTALL:append = " pulseaudio pulseaudio-server pulseaudio-misc "
>
> IMAGE_INSTALL:append = " pulseaudio-server libpulsecore sbc
> pulseaudio-module-bluetooth-discover pulseaudio-module-bluez5-device
> pulseaudio-module-bluez5-discover pulseaudio-module-loopback
> pulseaudio-module-rtp-send pulseaudio-module-rtp-recv
> pulseaudio-module-bluetooth-policy pulseaudio-misc dbus gconf glib-2.0
> pulseaudio-module-alsa-card pulseaudio-module-alsa-source
> pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libcap  libltdl
> libpulse libsndfile1 libtdb libudev alsa-utils alsa-utils-speakertest
> pulseaudio-module-dbus-protocol"
>
> PACKAGECONFIG:append:pn-pulseaudio = " autospawn-for-root"
>
> *Issue  1:*
>
> pulseaudio[1045]: W: [pulseaudio] module-bluez5-discover.c: Failed to load
> module for device
>
> *Issue 2: *
>
> root# pactl list sources short
> Connection failure: Connection refused
> pa_context_connect() failed: Connection refused
>
> *Need support I am hoping some configurations & service is missing with
> latest pulseaudio. Can anybody support me to fix this issue?*
>
>
> Regards,
> Sateesh
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64274):
> https://lists.yoctoproject.org/g/yocto/message/64274
> Mute This Topic: https://lists.yoctoproject.org/mt/109568882/4526955
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> sateesh0457@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000008cf05e0626e1ec34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Team,<div dir=3D"auto"><br></div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Can anybody respond on this mail.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=C2=A0=
&amp; Regards,</div><div dir=3D"auto">Sateesh</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 14 Nov, 2024, 10=
:48 am sateesh m via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a>, &lt;sateesh0457=3D<a href=3D"mailto:gmail.com@lists.yoctopr=
oject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div>Hi Team,</div>
<div>=C2=A0</div>
<div>We are using yocto version krikstone.</div>
<div>=C2=A0</div>
<div>Trying HFP/HSP and A2DP Profile.=C2=A0</div>
<div>=C2=A0</div>
<div><strong>1) We are able to connect=C2=A0 my mobile with bluetooth conne=
ctivty. Able to play audio but unable to listen sound.=C2=A0</strong></div>
<div><strong>2) Through GSM we are trying to play audio but unable to liste=
n sound.=C2=A0</strong></div>
<div>=C2=A0</div>
<div>Integrated required packages using image install.=C2=A0</div>
<div>=C2=A0</div>
<div>Ofono</div>
<div>Pulseaudio-15v</div>
<div>bluez5</div>
<div>=C2=A0</div>
<div>IMAGE_INSTALL:append =3D &quot; pulseaudio pulseaudio-server pulseaudi=
o-misc &quot;</div>
<div>=C2=A0</div>
<div>IMAGE_INSTALL:append =3D &quot; pulseaudio-server libpulsecore sbc pul=
seaudio-module-bluetooth-discover pulseaudio-module-bluez5-device pulseaudi=
o-module-bluez5-discover pulseaudio-module-loopback pulseaudio-module-rtp-s=
end pulseaudio-module-rtp-recv pulseaudio-module-bluetooth-policy pulseaudi=
o-misc dbus gconf glib-2.0 pulseaudio-module-alsa-card pulseaudio-module-al=
sa-source pulseaudio-module-alsa-sink pulseaudio-module-cli libasound libca=
p=C2=A0 libltdl libpulse libsndfile1 libtdb libudev alsa-utils alsa-utils-s=
peakertest pulseaudio-module-dbus-protocol&quot;<br>=C2=A0<br>PACKAGECONFIG=
:append:pn-pulseaudio =3D &quot; autospawn-for-root&quot;</div>
<div>=C2=A0</div>
<div><strong>Issue=C2=A0 1:</strong></div>
<div>=C2=A0</div>
<div><span><span dir=3D"ltr">pulseaudio[1045]: W: [pulseaudio] module-bluez=
5-discover.c: Failed to load module for device</span></span>=C2=A0</div>
<div>=C2=A0</div>
<div><strong>Issue 2:=C2=A0</strong></div>
<div>=C2=A0</div>
<div>root# pactl list sources short<br>Connection failure: Connection refus=
ed<br>pa_context_connect() failed: Connection refused</div>
<div>=C2=A0</div>
<div><strong>Need support I am hoping some configurations &amp; service is =
missing with latest pulseaudio. Can anybody support me to fix this issue?</=
strong></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Regards,</div>
<div>Sateesh</div>
<div>=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64274): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64274" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64274</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109568882/452=
6955" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/109568882/4526955</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:sateesh0457@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">sateesh0457@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000008cf05e0626e1ec34--

