Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6590C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 09:00:53 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web10.6670.1633683652391712887
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 02:00:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pu6500ZH;
 spf=pass (domain: gmail.com, ip: 209.85.217.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id 66so9705176vsd.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 02:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RKY+BKlRC++V3BODa8c5jVZODYxJgrocWjOJmcBNRNs=;
        b=pu6500ZHDsTs9/p7+oJubuqYtV/QRRT2lwffVjlIDq2CbxF3ab3HPBRQJG1SZ3yfcZ
         BGCes+u/FJcZtwS5hgP35hJ8ThL7hY7KZWhZMvdGPlLS+qDbPEfOO4qWelJV38UudGCH
         qyXIxAfwplubkefAhCWwoHa9UB9xg21T5fwTlnm79EKz0FnUkm2PetELsiyaNLMJP7Ry
         FpYNrBcyk0xz+0doGbFZctakp46dalzo+JaOHYUr+XV6rFqyT8FsNOymbuKt6Ip3/TtN
         QH2JAqKJf2vLqlK9K2DkbBS4QiBEhpfl7FXQjZI2JNeEXwwA/JJ6qjpGRpbaFHQmuixi
         roiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RKY+BKlRC++V3BODa8c5jVZODYxJgrocWjOJmcBNRNs=;
        b=NfwUFGJuwy7wOItCBRfrAUx2EDQDrXZgjVe1d6KLzkxqUX8wjk35XyHZ7+3H44EsTA
         34GmlDQrN9lK3ua5jeyXolO8ZGN4smWg/BJwiBXHq1KWl22kqEyBo1tNC9YVauzgwrda
         yy3RCHABUhGo37cA8J7oDWTcGfx7sZc5DJyepp9Z/aoTu6r9b095xiLpVNjPBkFe4IXA
         grrb/L8Z1WBJPOmPJG+ALaTmF4zpRwuIOZWbWp2MmID6GPKNZXa84xBipvpgP+uHdRHW
         8urvvK+kLxm+qsn/TYfO6PgDSdd4nteZSCsTbY3ez5lqg2T4tg7Cp3ag+UNlbP6Ckptb
         U8Nw==
X-Gm-Message-State: AOAM531WmhDlhKhrMYuJBRO5NM7KlZebddQ/MzG/5vBavDED31ByM0rk
	40cQiv8dWU6G0UtthRuBTu7Tf9ma/esNURUfgp4=
X-Google-Smtp-Source: 
 ABdhPJymfz+SAJK5HsaTwjeLWDkXIWwNgX5pqZkeHKSKPMpRTytWgD/Ry/8X8RwXX6JoDvr4RiTX3vqTgmoi8akA0jY=
X-Received: by 2002:a67:5cc1:: with SMTP id q184mr8874212vsb.13.1633683651467;
 Fri, 08 Oct 2021 02:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
In-Reply-To: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Oct 2021 11:00:39 +0200
Message-ID: 
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b89d2e05cdd39da6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 09:00:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54993

--000000000000b89d2e05cdd39da6
Content-Type: text/plain; charset="UTF-8"

Something in your custom setup disables opengl in qemu-system-native.

Can you try core-image-weston with plain poky only?

This is the test we use to ensure it does work, it lists all the settings
that have to be in place
(but in poky they are enabled by default, except the gtk frontend):
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n165
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n206

Alex


On Fri, 8 Oct 2021 at 10:26, Manuel Wagesreither <ManWag@fastmail.fm> wrote:

> Hello all,
>
> How can I enable graphics acceleration on qemux86-64? My image is using
> wayland with weston and the GUI is not exactly fast.
>
> * When I do `runqemu slirp kvm gtk`, it throws the following error:
> `runqemu - ERROR - Failed to run qemu: qemu-system-x86_64: Display 'gtk' is
> not available.`
> * `runqemu slirp kvm sdl` works, but the weston GUI does not seem to be
> accelerated.
> * `runqemu slirp kvm sdl gl` emits the following: `runqemu - ERROR -
> Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled`
>
> Below I'm posting a snippet of `poky/scripts/runqemu` to have at hand the
> qemu options enabled by the runqemu options mentioned above:
> ```
>             elif arg == 'sdl':
>                 if 'gl' in sys.argv[1:]:
>                     self.qemu_opt_script += ' -vga virtio -display
> sdl,gl=on'
>                 elif 'gl-es' in sys.argv[1:]:
>                     self.qemu_opt_script += ' -vga virtio -display
> sdl,gl=es'
>                 else:
>                     self.qemu_opt_script += ' -display sdl'
>             elif arg == 'gtk':
>                 if 'gl' in sys.argv[1:]:
>                     self.qemu_opt_script += ' -vga virtio -display
> gtk,gl=on'
>                 elif 'gl-es' in sys.argv[1:]:
>                     self.qemu_opt_script += ' -vga virtio -display
> gtk,gl=es'
>                 else:
>                     self.qemu_opt_script += ' -display gtk'
> ```
>
> Kind regards,
> Manuel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54992):
> https://lists.yoctoproject.org/g/yocto/message/54992
> Mute This Topic: https://lists.yoctoproject.org/mt/86165780/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000b89d2e05cdd39da6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Something in your custom setup disables opengl in qem=
u-system-native. <br></div><div><br></div><div>Can you try core-image-westo=
n with plain poky only?</div><div><br></div><div>This is the test we use to=
 ensure it does work, it lists all the settings that have to be in place</d=
iv><div>(but in poky they are enabled by default, except the gtk frontend):=
</div><div><a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/l=
ib/oeqa/selftest/cases/runtime_test.py?h=3Dmaster-next#n165">http://git.yoc=
toproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.=
py?h=3Dmaster-next#n165</a></div><div><a href=3D"http://git.yoctoproject.or=
g/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=3Dmaste=
r-next#n206">http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/s=
elftest/cases/runtime_test.py?h=3Dmaster-next#n206</a></div><div><br></div>=
<div>Alex</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 8 Oct 2021 at 10:26, Manuel Wagesreit=
her &lt;<a href=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello all,<=
br>
<br>
How can I enable graphics acceleration on qemux86-64? My image is using way=
land with weston and the GUI is not exactly fast.<br>
<br>
* When I do `runqemu slirp kvm gtk`, it throws the following error: `runqem=
u - ERROR - Failed to run qemu: qemu-system-x86_64: Display &#39;gtk&#39; i=
s not available.`<br>
* `runqemu slirp kvm sdl` works, but the weston GUI does not seem to be acc=
elerated.<br>
* `runqemu slirp kvm sdl gl` emits the following: `runqemu - ERROR - Failed=
 to run qemu: qemu-system-x86_64: OpenGL support is disabled`<br>
<br>
Below I&#39;m posting a snippet of `poky/scripts/runqemu` to have at hand t=
he qemu options enabled by the runqemu options mentioned above:<br>
```<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif arg =3D=3D &#39;sdl&#39;:<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;gl&#39; in =
sys.argv[1:]:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -vga virtio -display sdl,gl=3Don&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif &#39;gl-es&#39=
; in sys.argv[1:]:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -vga virtio -display sdl,gl=3Des&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -display sdl&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif arg =3D=3D &#39;gtk&#39;:<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;gl&#39; in =
sys.argv[1:]:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -vga virtio -display gtk,gl=3Don&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif &#39;gl-es&#39=
; in sys.argv[1:]:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -vga virtio -display gtk,gl=3Des&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.=
qemu_opt_script +=3D &#39; -display gtk&#39;<br>
```<br>
<br>
Kind regards,<br>
Manuel<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54992): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54992" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54992</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86165780/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86165780/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b89d2e05cdd39da6--

