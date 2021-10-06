Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB79FC433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 03:47:40 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.7236.1633492059782674288
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 20:47:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IkdnPJ4o;
 spf=pass (domain: gmail.com, ip: 209.85.219.170,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id g6so2288676ybb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 20:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DsLKWdGuklMG8d1AhQeP+mbrZsieTIH8JEopERps0Wk=;
        b=IkdnPJ4o73iPWkLFHXdIFZ7kJHT5yKwKuz2pfwjqTaI/pVJtj9/LW8btyotgSXzG8W
         dn9JZGWka06HomTkfXG52h6HutNw8zayzK5NcPaiTnLotB9nK3knIWFA9P80cL7FWBN3
         f909XB6HeQJNBU2D631kl4ZrNjg5NLMOvMKgPaTucJgOkzTxziuGBDZ5IbxFJ+Z9MThr
         jhOoOqanjPVPfxQoTbMVdv7rB8w4qYW6zm1XbzTUU+TU1aKNt/LNtODNWQKUaLhN8eYz
         J0F+1UBxU3LZwdBzLEp0paBs3bQrvvNa3hdGc1oyBVn0SGNmlKiOKGo30Yn7LBp9PKo5
         xEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DsLKWdGuklMG8d1AhQeP+mbrZsieTIH8JEopERps0Wk=;
        b=gFi+Ud7Is21wQAdkLrjZXK6cBAUVPnPBRZ3G/qluO/G3Vla2p4ClrclCrwrWmXQOIX
         JpU3eUFoxMeZNIs/QhnFW263iaOyC30aOmGEYayicyXg6UzoEfQB6r0dGSVnDawQdxzM
         3R6d0dfOzr99n5/P8n+AYyn0s0IvuXcGkv7VoGM7ZA5ie6Nxi+nYcLtxanGFoGUiNl4+
         qazaVVUuytAumpo0BnssaW5aCWzBObC3PGGvplwzdK/Ldzee5hLnZBym0EKCgeztKj9g
         l0EYMVzr6oQ1l1RyjX9/OzGROILPZnZE9tjibv7O3oBgD8q7qy+VfT1vy7KmnvvcMMSH
         1TOw==
X-Gm-Message-State: AOAM532gtgJXP6XC8xDTlkJPM0x8RhXQwOCi2VzVWlcn1rtznW0oXGIe
	yNun6C+7PPtGf9z9TQ+46Z6eSSHid7fANHK9OxE=
X-Google-Smtp-Source: 
 ABdhPJyONXDAqfJGsTN1AUQlK/VozZ2s1nJBxHadRt+QKfmyP34FnwrG9oUakGYY35iVxXMk7d2rz2SXZuFwc8FAHmQ=
X-Received: by 2002:a25:be0c:: with SMTP id h12mr25069172ybk.22.1633492058844;
 Tue, 05 Oct 2021 20:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <NG6b.1633467561448539724.rwQW@lists.yoctoproject.org>
In-Reply-To: <NG6b.1633467561448539724.rwQW@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 5 Oct 2021 20:47:27 -0700
Message-ID: 
 <CAB=6tBT_DwDPNjPRmmY9bz8JGqM66BhHQEusA1bwDdmaLgUZ7w@mail.gmail.com>
Subject: Re: [yocto] Getting absolute paths in yocto generated native binary
 #bitbake #native #toolchain #sdk
To: Jean-Pierre Doyon <jpdoyon@newtrax.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9302005cda70178"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 03:47:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54975

--000000000000e9302005cda70178
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Native recipes are meant for the build machine itself to aid your build. If
you are packaging something to run on a destination machine, you should be
producing non-native recipe images.

..Ch:W..

On Tue, Oct 5, 2021 at 1:59 PM Jean-Pierre Doyon <jpdoyon@newtrax.com>
wrote:

> I'm attempting to create a USB first boot tarball for our custom iMX6
> board that would contain the imx-usb-loader executable, config files and
> u-boot/SPL files. The goal being to deploy that to the production machine
> to program the empty boards right after being assembled.
>
> While I had plenty of hurdles figuring out how to do this (I'm still
> pretty newbie with Yocyo), I managed to get everything just the way I
> wanted it. But when I get the tarball to the production machine, which ru=
ns
> the exact same Ubuntu 18.04 LTS Linux as the build machine, the imx_usb
> tool won't run. The reason being that it's missing some library. Running
> LDD on the executable turns up this:
>
> =E2=94=94=E2=94=80$> ldd usr/bin/imx_usb
>     linux-vdso.so.1 =3D>  (0x00007ffd7031d000)
>     libusb-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f9=
86a47e000)
>     libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f986a0b4000)
>     libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f986a86c=
000)
>     libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f9=
869e97000)
>     /home/jpdoyon/newtrax-layersetup-dunfell/build/tmp/sysroots-uninative=
/x86_64-linux/lib/ld-linux-x86-64.so.2 =3D> /lib64/ld-linux-x86-64.so.2 (0x=
00007f986a696000)
>     librt.so.1 =3D> /lib/x86_64-linux-gnu/librt.so.1 (0x00007f9869c8f000)
>
> Why is the ld-linux-x86-64.so.2 using an absolute path while all the othe=
r
> libraries aren't?
>
> If I install the library in the location above, then the executable start=
s
> working... So how do I make sure Yocto doesn't do this?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54970):
> https://lists.yoctoproject.org/g/yocto/message/54970
> Mute This Topic: https://lists.yoctoproject.org/mt/86104726/894569
> Mute #toolchain:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #native:https://lists.yoctoproject.org/g/yocto/mutehashtag/native
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chuckwolber@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000e9302005cda70178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Native recipes are meant for the build machine itself=
 to aid your build. If you are packaging something to run on a destination =
machine, you should be producing non-native recipe images.</div><div><br></=
div><div>..Ch:W..<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Oct 5, 2021 at 1:59 PM Jean-Pierre Doyon=
 &lt;<a href=3D"mailto:jpdoyon@newtrax.com">jpdoyon@newtrax.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D"=
padding:0px;border:0px none;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple-s=
ystem,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,s=
ans-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:b=
oth;color:rgb(35,38,41)">I&#39;m attempting to create a USB first boot tarb=
all for our custom iMX6 board that would contain the imx-usb-loader executa=
ble, config files and u-boot/SPL files. The goal being to deploy that to th=
e production machine to program the empty boards right after being assemble=
d.</p>
<p style=3D"padding:0px;border:0px none;font-variant-numeric:inherit;font-v=
ariant-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Liberation =
Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inh=
erit;clear:both;color:rgb(35,38,41)">While I had plenty of hurdles figuring=
 out how to do this (I&#39;m still pretty newbie with Yocyo), I managed to =
get everything just the way I wanted it. But when I get the tarball to the =
production machine, which runs the exact same Ubuntu 18.04 LTS Linux as the=
 build machine, the imx_usb tool won&#39;t run. The reason being that it&#3=
9;s missing some library. Running LDD on the executable turns up this:</p>
<pre style=3D"padding:12px;font-variant-numeric:inherit;font-variant-east-a=
sian:inherit;font-stretch:inherit;line-height:1.30769;vertical-align:baseli=
ne;box-sizing:inherit;width:auto;max-height:600px;border-radius:5px"><code =
style=3D"margin:0px;border:0px none;font-style:inherit;font-variant:inherit=
;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-size:13p=
x;vertical-align:baseline;box-sizing:inherit;white-space:inherit">=E2=94=94=
=E2=94=80$&gt; ldd usr/bin/imx_usb
    linux-vdso.so.1 =3D&gt;  (0x00007ffd7031d000)
    libusb-1.0.so.0 =3D&gt; /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f=
986a47e000)
    libc.so.6 =3D&gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007f986a0b4000)
    libudev.so.1 =3D&gt; /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f986a86=
c000)
    libpthread.so.0 =3D&gt; /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f=
9869e97000)
    /home/jpdoyon/newtrax-layersetup-dunfell/build/tmp/sysroots-uninative/x=
86_64-linux/lib/ld-linux-x86-64.so.2 =3D&gt; /lib64/ld-linux-x86-64.so.2 (0=
x00007f986a696000)
    librt.so.1 =3D&gt; /lib/x86_64-linux-gnu/librt.so.1 (0x00007f9869c8f000=
)
</code></pre>
<p style=3D"padding:0px;border:0px none;font-variant-numeric:inherit;font-v=
ariant-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Liberation =
Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:inh=
erit;clear:both;color:rgb(35,38,41)">Why is the ld-linux-x86-64.so.2 using =
an absolute path while all the other libraries aren&#39;t?</p>
<p style=3D"margin-bottom:0px;padding:0px;border:0px none;font-variant-nume=
ric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-heigh=
t:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;=
,&quot;Liberation Sans&quot;,sans-serif;font-size:15px;vertical-align:basel=
ine;box-sizing:inherit;clear:both;color:rgb(35,38,41)">If I install the lib=
rary in the location above, then the executable starts working... So how do=
 I make sure Yocto doesn&#39;t do this?</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54970): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54970" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54970</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86104726/8945=
69" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
86104726/894569</a><br>
Mute #toolchain:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/toolchain" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/toolchain</a><br>
Mute #sdk:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/sdk</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #native:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
native" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/native</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blank">chuckwo=
lber@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospa=
ce">&quot;Perfection must be reached by degrees; she requires the slow hand=
 of time.&quot; - Voltaire</span></b></div></div></div>

--000000000000e9302005cda70178--

