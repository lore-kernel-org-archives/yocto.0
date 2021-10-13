Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3663EC433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 19:32:12 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web12.1764.1634153531327116758
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 12:32:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B9aeRYVp;
 spf=pass (domain: gmail.com, ip: 209.85.222.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id r17so6738734uaf.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 12:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+KB2inpIvEb5QSmZHNoC7+JcRzswMqnwcem0vTd1kdk=;
        b=B9aeRYVpcNeZgMtB/Inw967VDfvd9xNscBRi/0EV+BaS6UhKeDyIuH6sz6dBIQZZT8
         FduocHPDFgyH7Bl/c9OW98FnpE2Ky/VI+Bo0nR+Jf2YoUFL9+vy4R+DNbmzthuv5D1nS
         pJXlu3brQ+3TkLWp0HVqdYW+a71eHJZPo9sN70nIzERSQ0Iu2RG4YKAc5AkC3gREsVvT
         a9Wf95Yc/kOn2TE1rqUeTEGH2/gIksOLgBx8nfr6z3+iO/19BVZbnPyEuZMD0E5ur894
         rOPu26hBhi8fD7jgKz8Nop1ZNV4llP5mvJnnTtj9d6YAId8uyW/1eNjL6+ds63GgYUEX
         P/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+KB2inpIvEb5QSmZHNoC7+JcRzswMqnwcem0vTd1kdk=;
        b=dJzoOE0CST1aowEjx2DI1TTKX9NINWRLh6yLVlFSkSsw7N+lTAEA9dsBuR5i+4A237
         J+VnkYPKTJxA3kfAcc3qQg60TzqEkVjc8Jxd2ZtW6fZStelaiDRjzwaJcopfoFMMxpLO
         jQc+8uUnYVB5GD8AK5u3sH6Va2ad6jOhjQcN6T14JeZXoO0yNU9pJyq4XxC3/Xy/btRk
         wZhsxlGgqSVLEwIlbHJWQMPELX0SVsPisI3aQSeMEXR9OrWGphJ9IVSw2aMjTw7e/XEQ
         MQf3nyYmOaCSdYyR8v9a33YKRuOvSQGwJseN+H7gsLGyCtLwn+xPR32D5FY/ou8J7Lap
         hLNQ==
X-Gm-Message-State: AOAM530DTp59rMu4iHB1GpQ8y8gxDg24VbyUxd5ps7FFqmWNGOxUMz3q
	oHS2BZn90wK0xnNpyblG4coI8y4rQb9Bqbd0yQQsdrwx
X-Google-Smtp-Source: 
 ABdhPJxhWoN7K5Lbo/C0PCpdcBSbxgXtdVZZ0v7Jl7BNfFAYwXbEeQ9rCsPgIsscsTXdppJfeYwlIf4xO9uBgM8Be/M=
X-Received: by 2002:a67:d09a:: with SMTP id s26mr1356129vsi.13.1634153530308;
 Wed, 13 Oct 2021 12:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
In-Reply-To: <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Oct 2021 21:31:58 +0200
Message-ID: 
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aebc8c05ce4104f4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 19:32:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55057

--000000000000aebc8c05ce4104f4
Content-Type: text/plain; charset="UTF-8"

Can you check with current master (instead of dunfell) please?

You also need to run runqemu inside an X session (e.g. DISPLAY environment
variable should be set to a valid X server).

If sdl does not work, enabling gtk is not going to work either.

Alex

On Wed, 13 Oct 2021 at 21:21, Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Hi Alex,
>
> Am Fr, 8. Okt 2021, um 11:00, schrieb Alexander Kanavin:
>
> Something in your custom setup disables opengl in qemu-system-native.
>
> Can you try core-image-weston with plain poky only?
>
> This is the test we use to ensure it does work, it lists all the settings
> that have to be in place
> (but in poky they are enabled by default, except the gtk frontend):
>
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n165
>
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=master-next#n206
>
>
> Interesting. Things don't work on both my Debian Buster machines.
>
> How does opengl get set in qemu-system-native? Am Yocto novice and don't
> speak Python.
>
> Am using poky repo on tag dunfell-23.0.10 = 2a848e9507.
>
> Here's my complete test results:
>
> * `runqemu kvm slirp core-image-weston` fails with `Failed to run qemu:
> Could not initialize SDL(x11 not available) - exiting`
> * `runqemu kvm slirp sdl core-image-minimal` fails with `Failed to run
> qemu: Could not initialize SDL(x11 not available) - exiting`
> * `runqemu kvm slirp sdl gl core-image-minimal` fails with `Failed to run
> qemu: qemu-system-x86_64: OpenGL support is disabled`
> * `runqemu kvm slirp gtk core-image-minimal` fails with `Failed to run
> qemu: qemu-system-x86_64: Display 'gtk' is not available.`
>
> How would I enable gtk frontend in poky?
>
> Thanks, Manuel
>
>

--000000000000aebc8c05ce4104f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you check with current master (instead of dunfell=
) please?</div><div><br></div><div>You also need to run runqemu inside an X=
 session (e.g. DISPLAY environment variable should be set to a valid X serv=
er).</div><div><br></div><div>If sdl does not work, enabling gtk is not goi=
ng to work either.<br></div><div><br></div><div>Alex<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 13 Oc=
t 2021 at 21:21, Manuel Wagesreither &lt;<a href=3D"mailto:ManWag@fastmail.=
fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><u></u><div><div>Hi Alex,<br></div><div><br></div><di=
v>Am Fr, 8. Okt 2021, um 11:00, schrieb Alexander Kanavin:<br></div><blockq=
uote type=3D"cite" id=3D"gmail-m_5597468431362482356qt"><div dir=3D"ltr"><d=
iv>Something in your custom setup disables opengl in qemu-system-native. <b=
r></div><div><br></div><div>Can you try core-image-weston with plain poky o=
nly?<br></div><div><br></div><div>This is the test we use to ensure it does=
 work, it lists all the settings that have to be in place<br></div><div>(bu=
t in poky they are enabled by default, except the gtk frontend):<br></div><=
div><a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa=
/selftest/cases/runtime_test.py?h=3Dmaster-next#n165" target=3D"_blank">htt=
p://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/ru=
ntime_test.py?h=3Dmaster-next#n165</a><br></div><div><a href=3D"http://git.=
yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_te=
st.py?h=3Dmaster-next#n206" target=3D"_blank">http://git.yoctoproject.org/c=
git.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=3Dmaster-n=
ext#n206</a><br></div></div></blockquote><div><div><br></div><div>Interesti=
ng. Things don&#39;t work on both my Debian Buster machines.<br></div><div>=
<br></div><div>How does opengl get set in qemu-system-native? Am Yocto novi=
ce and don&#39;t speak Python.<br></div><div><br></div><div>Am using poky r=
epo on tag=C2=A0dunfell-23.0.10 =3D=C2=A02a848e9507.<br></div><div><br></di=
v><div>Here&#39;s my complete test results:<br></div><div><br></div><div>* =
`runqemu kvm slirp core-image-weston` fails with `Failed to run qemu: Could=
 not initialize SDL(x11 not available) - exiting`<br></div></div><div>* `ru=
nqemu kvm slirp sdl core-image-minimal` fails with `Failed to run qemu: Cou=
ld not initialize SDL(x11 not available) - exiting`<br></div><div>* `runqem=
u kvm slirp sdl gl core-image-minimal` fails with `Failed to run qemu: qemu=
-system-x86_64: OpenGL support is disabled`<br></div><div>* `runqemu kvm sl=
irp gtk core-image-minimal` fails with `Failed to run qemu: qemu-system-x86=
_64: Display &#39;gtk&#39; is not available.`<br></div><div><br></div><div>=
How would I enable gtk frontend in poky?<br></div><div><br></div><div>Thank=
s, Manuel</div><div><br></div></div></blockquote></div>

--000000000000aebc8c05ce4104f4--

