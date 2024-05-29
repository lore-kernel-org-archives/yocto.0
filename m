Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36F54C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 13:57:50 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.14812.1716991068965629835
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 06:57:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OMLDF9Ac;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2e724bc466fso22417441fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 06:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716991067; x=1717595867; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sseqfH6nDxOz0KUwQ5ImYKsHxt325bYb4zPEo7wF9Po=;
        b=OMLDF9AclT8axGDln5FDy4Iuzimuho36PF3lpVftlOuOsWuVZ4iB+QJqGIDkkHPUCB
         OT5n8HhQUYDJUY9nhHoy/tEwmHyvXEzndJSbvqlq0hhRieUIzn0tWQY0/xh+1C75+0zB
         1rULb9VmFuHDpHw3TIgfxeB7XBgIyK3XyTVd4vR4oM3Ko8JrTwKWul4aDAMdK/XBLCWX
         EFaVBalRff13m5mOalQ3O3Gwx4tlbMWm6EqysfNxoKukrbb0sO2X/VKQ51H68w0ZV+QL
         8M1vF9czy8t0ie4IML252uJriL3qlUQyXtgf1t+OuU90NgtIRdEZA52cf6uSvolQcFBa
         ly2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716991067; x=1717595867;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sseqfH6nDxOz0KUwQ5ImYKsHxt325bYb4zPEo7wF9Po=;
        b=MYwt/PYSN9gUj1XbIDi7OIL4Qj2E91tc1iehtVCbmIZArwsRKfzwghkavYTkdiGGuX
         UXj2wXbDRUT1WJWhkHgYB1r48FNzNi/eJ8DX+cJBqqumpgEuFcymNmtMS3brPrM/DHne
         502egGSfDg2sL4FCn9JH378XVq4+9IIBMtnmmnwek8u/YMHDewI4F6c0kypK8+AluZDm
         OHgMg3TVuVKiz4+rjDwm06a5kz/GZ8c9uGWRhMNB314xHVoYhCyA2MbVPdd/7mtEalq/
         T2ZYEju6oN5p2Hq+rCXlDVWXvKJkVhApJZrqqVcZo51O7rRJDBBMy+lhKlVBZaiWTQ5z
         VhdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL1RDnZeAPGTFR/3gQ1h2dijvI0dUebJO0gWicNgyZFckQ54Y/bY8rw7I/aKBF6cJFdKVVcbLucjHjgBdLlQ4bjoULnMjfJCGv3gpD
X-Gm-Message-State: AOJu0YwOj8fp8G4q/XRrnYjmHJrkYZPOSg/MNRDULuPFbEaIiV9VS+Ti
	94o4DwLR3H4nUdtfvkmlqDPaQrskRlLDrJol0TrqkMC/0lX3pQ8DKiDIwNWXTBlPtzTOrs+F3bw
	AiYa9MxM0Bfs6bmHn3QmL+sEnE4o=
X-Google-Smtp-Source: AGHT+IEC4C6h1QwtWdDL5t1hgzqpWzwfbT1KVbK0adFDIrwr+Vt5Z30Cb8B+bJTugecCmAuoc0DnXT7uu2/wkIOtY1U=
X-Received: by 2002:a05:651c:4cd:b0:2e9:768a:12b0 with SMTP id
 38308e7fff4ca-2e9768a144fmr97923771fa.50.1716991066729; Wed, 29 May 2024
 06:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <I2xT.1716989247423336592.A9So@lists.yoctoproject.org>
In-Reply-To: <I2xT.1716989247423336592.A9So@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 29 May 2024 15:57:34 +0200
Message-ID: <CANNYZj9nYyaTk164KYdCxXbcf6snvgCKseS-_sUzxcktSiAb9Q@mail.gmail.com>
Subject: Re: [yocto] Bad lib symlink in Host SDK
To: lukas.weiss@janitza.de, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009d721d06199822e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 13:57:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63228

--0000000000009d721d06199822e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is the link correct when nativesdk-udev is built and packaged or is it
already broken at that point?

Generally you should take the trouble to spin up qemu and run the tests in
that.

Alex

On Wed 29. May 2024 at 15.27, Lukas Wei=C3=9F via lists.yoctoproject.org
<lukas.weiss=3Djanitza.de@lists.yoctoproject.org> wrote:

> Hi together,
>
> i have a question about Yocto SDK generation. We use the Yocto-SDK not
> only for generation of target binaries outside the Yocto Build process, b=
ut
> also for generation of the same binaries *for the host* (nativesdk). This
> way we are able to run our applications as Simulations or Unit-Tests in o=
ur
> CI process without the need to install dev- and runtime libs on the host
> system (also the libs have the same build configuration as on target).
>
> Unfortunately, the SDK doesn't really seem to be designed for this. The B=
B
> classes for the native/nativesdk are also missing for most libraries. And
> last but not least, I still have the feeling that I haven't really found
> the "right" way to define the SDK. Whatever.
>
> I'm currently trying to add the libudev (yes, i know that its probably no=
t
> the best idea to add a system lib to host sdk ;-). I added an
> eudev_%.bbappend file containing
>
> BBCLASSEXTEND =3D "native nativesdk"
>
> and appended "nativesdk-eudev" and "nativesdk-eudev-dev" to the RDEPENDS
> of my *nativesdk-packagegroup-sdk-host* recipe.
>
> This works, but unfortunately the resulting installed SDK has a wrong
> symlink for the hosts libudev.so:
>
> /home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.so
> ->
> ../../../../../../home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/l=
ib/libudev.so.1.6.3
>
> The correct link would be
>
> /home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.so
> -> ../../lib/libudev.so.1.6.3
>
> This must happen on SDK installation, as the install path is not known
> before. All other links in SDK (*including the link for target libudev.so=
*)
> are correct.
> Do you have any hints for me how i can dig into this? All debug methods i
> know belong to built process itself, not the install.
>
> My Yocto version is "yocto-5.0" Tag in Repo.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63227):
> https://lists.yoctoproject.org/g/yocto/message/63227
> Mute This Topic: https://lists.yoctoproject.org/mt/106368600/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009d721d06199822e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Is the link correct when nativesdk-udev is built and pack=
aged or is it already broken at that point?</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Generally you should take the trouble to spin up qemu a=
nd run the tests in that.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed 29. May 2024 at 15.27, Lukas Wei=C3=9F via <a hre=
f=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;lukas.we=
iss=3D<a href=3D"mailto:janitza.de@lists.yoctoproject.org">janitza.de@lists=
.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Hi together,=C2=
=A0<br><br>i have a question about Yocto SDK generation. We use the Yocto-S=
DK not only for generation of target binaries outside the Yocto Build proce=
ss, but also for generation of the same binaries <strong>for the host</stro=
ng> (nativesdk). This way we are able to run our applications as Simulation=
s or Unit-Tests in our CI process without the need to install dev- and runt=
ime libs on the host system (also the libs have the same build configuratio=
n as on target).=C2=A0<br><br>Unfortunately, the SDK doesn&#39;t really see=
m to be designed for this. The BB classes for the native/nativesdk are also=
 missing for most libraries. And last but not least, I still have the feeli=
ng that I haven&#39;t really found the &quot;right&quot; way to define the =
SDK. Whatever.<br><br>I&#39;m currently trying to add the libudev (yes, i k=
now that its probably not the best idea to add a system lib to host sdk ;-)=
. I added an eudev_%.bbappend file containing=C2=A0
<blockquote>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</blockquote>
<p>and appended &quot;nativesdk-eudev&quot; and &quot;nativesdk-eudev-dev&q=
uot; to the RDEPENDS of my <em>nativesdk-packagegroup-sdk-host</em> recipe.=
<br><br>This works, but unfortunately the resulting installed SDK has a wro=
ng symlink for the hosts libudev.so:</p>
<blockquote>
<p>/home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/libudev.s=
o -&gt; ../../../../../../home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-l=
inux/lib/libudev.so.1.6.3</p>
</blockquote>
The correct link would be
<blockquote>/home/admin/sdk/plat/5.0/sysroots/x86_64-platsdk-linux/usr/lib/=
libudev.so -&gt; ../../lib/libudev.so.1.6.3</blockquote>
This must happen on SDK installation, as the install path is not known befo=
re. All other links in SDK (<strong>including the link for target libudev.s=
o</strong>) are correct. <br>Do you have any hints for me how i can dig int=
o this? All debug methods i know belong to built process itself, not the in=
stall.<br><br>My Yocto version is &quot;yocto-5.0&quot; Tag in Repo.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63227): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63227" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63227</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106368600/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106368600/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009d721d06199822e1--

