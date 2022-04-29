Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A29CC433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 06:27:25 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web12.7002.1651213640686628342
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 23:27:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JP790G+v;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id z19so7894666edx.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 23:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J4FGkxpOJFuaXRDs6AC7cnbu2WlDmO8cS/Zjwi6TEGA=;
        b=JP790G+vz192//D8/Vv4bYptKv6pq5xMXdUaZHm3fL60VfsaBQ9C7y+r3p3YwJYpmn
         6oMrJm8fJsB4amjWdjtUOeXz8edmBEAxGORBvmCK6Y7VqhdlnzzZ5AVKbVVrxKvI4p16
         jB0RCr49JTS6fGW5AEIdPgKMplB3j/+jjEQPYiwx/mTHivzrT8JK/vgWS89besAoQip/
         CJdYGaCtPgGczhSrCrLdlLJxqWoFtsAjKPe+MCdBugFF1Ah23V3QDzwvjDI2bvBro8vm
         9V8M/H3IfO22ip0z4RfIDcBTHqqc16HoiD3YoZ2s6qtORvfN+Zb9njB/RVIjhM1nsvkH
         z3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J4FGkxpOJFuaXRDs6AC7cnbu2WlDmO8cS/Zjwi6TEGA=;
        b=H9m5DH9sbtqbqBGJ3cKmvuJ7CJ7zqBsVRUS1kE+F59TtKnWkXoLI2qBvaxp/kw5aRe
         RagQ1laz4cO7j+eITkbYDzQcy0OLEhGdrfxCa/pWxlCpxMtdgZxnB0B+V46cZ86Xrl0h
         DQYiMe8UouMAdzPiHRaQVNv97rbSSeeeciba/OQN4c+MOxIV3w03Y9QkSTUKI2+0Wjc3
         dTohuebVVtASLsAQn/ra5jDYMYsakySv1Vf8oXj4EXLRdQqqh3ABX65ODK3wCanB5l1f
         KTu+ylP3kFrYevOFi5+XoMDB0N9os91fG4sSEMgiVvpArxqtJ3uwU4g+6ntiSkCcZCZ0
         K07w==
X-Gm-Message-State: AOAM530wiV/pZznW362hybQjYHE/jrJUrWuCIXgowOwsQQs4kxAPQ8o5
	T4EbuKECyxMY3fWJJ4/huy0glYM0l5nPhLiAo04=
X-Google-Smtp-Source: 
 ABdhPJyb2ZLt89HCNR4br3W+nP5qXHxq0ccaB44c9SdwqJCQcif0DuPHWc9JNTcG43pRtAHy9SNrZgDF+qllU7K2LXQ=
X-Received: by 2002:aa7:d5c5:0:b0:425:b144:ab84 with SMTP id
 d5-20020aa7d5c5000000b00425b144ab84mr39756790eds.200.1651213639100; Thu, 28
 Apr 2022 23:27:19 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 28 Apr 2022 23:27:06 -0700
Message-ID: 
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
Subject: Re: [yocto] Adding systemd to yocto
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000682ccc05ddc5228e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 06:27:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56950

--000000000000682ccc05ddc5228e
Content-Type: text/plain; charset="UTF-8"

Line 30-36 include changes to convert a sysvinit image to systemd.
https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L30



On Thu, Apr 28, 2022, 10:19 AM Edgar Mobile <heideggm@hotmail.com> wrote:

> Greetings,
>
> I tried to add systemd to weston-image-core by adding the following lines
> in local.conf:
>
> DISTRO_FEATURES:append = " systemd" VIRTUAL-RUNTIME_init_manager =
> "systemd"
>
> And indeed, bitbake seems to use them in somve way:
>
> DISTRO_FEATURES="acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6
> largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11
> vfat seccomp largefile opengl ptest multiarch wayland vulkan systemd\"
> VIRTUAL-RUNTIME_init_manager = \"systemd pulseaudio sysvinit
> gobject-introspection-data ldconfig"
> POKY_DEFAULT_DISTRO_FEATURES="largefile opengl ptest multiarch wayland
> vulkan"
>
> However, if I start the system in qemu none of  the expected systemd
> binaries like systemd, systemd-journal etc. is present. Did I miss
> something?
>
> Regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56947):
> https://lists.yoctoproject.org/g/yocto/message/56947
> Mute This Topic: https://lists.yoctoproject.org/mt/90758452/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000682ccc05ddc5228e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Line 30-36 include changes to convert a sysvinit ima=
ge to systemd.</div><div dir=3D"auto"><a href=3D"https://github.com/jwinars=
ke/manifests/blob/honister/conf/rpi64_config#L30">https://github.com/jwinar=
ske/manifests/blob/honister/conf/rpi64_config#L30</a><br><div dir=3D"auto">=
<br></div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Apr 28, 2022, 10:19 AM Edgar Mobile &lt;<a hre=
f=3D"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Greetings,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I tried to add systemd to weston-image-core by adding the following lines i=
n local.conf:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span style=3D"font-weight:normal;display:inline!important">DISTRO_FEATURES=
:append =3D &quot; systemd&quot; VIRTUAL-RUNTIME_init_manager =3D &quot;sys=
temd&quot;<span>=C2=A0</span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
And indeed, bitbake seems to use them in somve way:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span style=3D"font-weight:normal;display:inline!important">DISTRO_FEATURES=
=3D&quot;acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6 largefile pcmcia=
 usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat seccomp larg=
efile opengl ptest
 multiarch wayland vulkan systemd\&quot; VIRTUAL-RUNTIME_init_manager =3D \=
&quot;systemd pulseaudio sysvinit gobject-introspection-data ldconfig&quot;=
</span><br style=3D"font-weight:normal">
<span style=3D"font-weight:normal;display:inline!important">POKY_DEFAULT_DI=
STRO_FEATURES=3D&quot;largefile opengl ptest multiarch wayland vulkan&quot;=
</span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
However, if I start the system in qemu none of=C2=A0 the expected systemd b=
inaries like systemd, systemd-journal etc. is present. Did I miss something=
?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards<br>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56947): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56947" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/56947</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90758452/2167=
248" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/90758452/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">joel.winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000682ccc05ddc5228e--

