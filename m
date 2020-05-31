Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.20589.1590949640039205388
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 May 2020 11:27:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iIa79Oqy;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id r11so65049vsj.5
        for <yocto@lists.yoctoproject.org>; Sun, 31 May 2020 11:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FEIzu5R2xj3JdZPd5XfnsKTllmCuOeKTaLIHbceATjc=;
        b=iIa79OqyB4f8F2FZhvhCIc3oHW6BuiDJywj74FcQG/BjeeP72ZLdio5hjDiSg4qErU
         Qpf8FOu1CauOy+5oLNfe870smElA2Ztp2SJBxdVXniOXixf93xHrnNQHxW364kKAu1sR
         1esGCOdMkoOmpt+qaI2cOC2u9HAv2WJsRzxGgO0Ge+TJweRL7Xnkbi3hlomK3+lftXy9
         /Pgb85a4H/ogN/l3CWNiy0UJopAumAEnFCF7GfdaFMDArRdkLTimLUZVTdivgK36o+c4
         eDbe0RKf3hxUeqUOMmc/+DxVdIMUKUDnqUO5tBVfiyYwGY9f+yhhmtQhrRtYRe419Dse
         Rq1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FEIzu5R2xj3JdZPd5XfnsKTllmCuOeKTaLIHbceATjc=;
        b=Q7/84WfBTB8u/+X7pmXyNDzVlEO6dxJLIS1hLz93iHxhDfoX+M3pykOmuykoTVkmEQ
         QUDRZudDCr+gBWEOIPT14D8+hcSRp1FbCDJ2eX+jNJHPhBrsNQzOpGfChYHjSaP9DQkO
         jB9XLYetCHFT/KLKpm62S2Cac9uwBVyBz/QVdvMJ6Vjkr56Ew+m5ZUxAHaSU45jo0A6C
         WshHLcMfRo0guiWUbddviXHSv+NNuU7VLFd0TAuF5TkqizjfWVY74zTVrU/oINDDIh1u
         yUWtbokQJ35bnuf06j+Z2QiguTr+WSZfR/u8JTAuMh5Rce38YOZuD/tp9DUCwcNAaeA4
         9jxA==
X-Gm-Message-State: AOAM532p0WwcbL/qji0qoh01EdKjx9jLWVRHKJJ4nE5M01/lz2qpdZfH
	ORwmzRj/06vNcvodV/Hztzr/e/CjMNNTdAV+69U=
X-Google-Smtp-Source: ABdhPJwSsn81xG/X4rbBDPbcvUtIvx46ZOFwWOru0xXR8z3ip6ngLVdPnEQTz4Yg72rZchLb79+rd3b7pWTFmNNo5Ew=
X-Received: by 2002:a67:d098:: with SMTP id s24mr11901113vsi.25.1590949639140;
 Sun, 31 May 2020 11:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAE7Ac0C-=dh6dWpcaCa2AQy_-=fxwOwWUfPpz9xENei7=ey7pQ@mail.gmail.com>
 <10107.1590947528309336878@lists.yoctoproject.org>
In-Reply-To: <10107.1590947528309336878@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 31 May 2020 20:27:07 +0200
Message-ID: <CANNYZj9bhfuv8Uuq+jf0++rBGbAenFx7zKfNqadLrZeZxCz16A@mail.gmail.com>
Subject: Re: [yocto] Can I build Yocto Arm Image without QEMU?
To: reffum@bk.ru
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000018bbd105a6f5d4a3"

--00000000000018bbd105a6f5d4a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Qemu is also used to run target binaries during build (when there is a need
to generate some data files that can only be produced by running those
binaries). If you see a build of qemu-native, it will not end up in the
target image.

What is your use case specifically?

Alex

On Sun, 31 May 2020 at 19:52, =D0=9E=D0=BB=D0=B5=D0=B3 =D0=93=D0=B0=D0=B2=
=D1=80=D0=B8=D0=BB=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=D0=BE via lists.yoctoproj=
ect.org
<reffum=3Dbk.ru@lists.yoctoproject.org> wrote:

> May I ask you to clarify, how can I do that?
> I build Yocto image for XILINX ZYNQ7 board and set MACHINE =3D zybo-zynq=
7.
> And then run "bitbake core-image-minimal". QEMU is downloaded, compiled =
and
> installed.=20
>

--00000000000018bbd105a6f5d4a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Qemu is also used to run target binaries during build=
 (when there is a need to generate some data files that can only be produce=
d by running those binaries). If you see a build of qemu-native, it will no=
t end up in the target image.<br></div><div><br></div><div>What is your use=
 case specifically?</div><div><br></div><div>Alex<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 31 May 2=
020 at 19:52, =D0=9E=D0=BB=D0=B5=D0=B3 =D0=93=D0=B0=D0=B2=D1=80=D0=B8=D0=BB=
=
=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=D0=BE via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;reffum=3D<a href=3D"mailto:bk.ru@li=
sts.yoctoproject.org">bk.ru@lists.yoctoproject.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">May I ask you to clarify,=
 how can I do that?=C2=A0<br>I build Yocto image for XILINX ZYNQ7 board and=
 set MACHINE =3D zybo-zynq7. And then run &quot;bitbake core-image-minimal&=
quot;. QEMU is downloaded, compiled and installed.
<br>
</blockquote></div>

--00000000000018bbd105a6f5d4a3--
