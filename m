Return-Path: <allan.elkaim@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B050AC27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 17:17:17 +0000 (UTC)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web11.62490.1718644633527232451
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 10:17:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JpWPihP8;
 spf=pass (domain: gmail.com, ip: 209.85.166.169, mailfrom: allan.elkaim@gmail.com)
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-375ae697210so18412345ab.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718644632; x=1719249432; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ms/Y/rAs0zxNA6Tf/r7ih4rxCGU70isDmCyBCvml1PE=;
        b=JpWPihP8PYay2AsvF62C8RytO/VhRQxcbDvSrvFBagI77p0E49LCYiOt09ESgosmsj
         +AW3fvbDnDrPJBa2pqqZnsMwTnIoSVLUqpQhfAip/g4Cd/BPbPg73K7iYtTDYTDpBHlR
         q0jO9h00VtFV9FaYX49oMTSbvnJqU1bgYNlg0MuS9vfAbJAfohmoK+4h47gmR7YmfADm
         5MliNopjABnz1aVLC56EmevJyn1+NMs3RJRFAEGsPQDcYL0gNTXkjW80NwFDKekU1VCv
         UBWzfjgjNtJxamJ5DQVWI2Uy1zaGFV9hDX5r1uHD4YRwxwCPAIjDNXsbByKZmog3QPbN
         IDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718644632; x=1719249432;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ms/Y/rAs0zxNA6Tf/r7ih4rxCGU70isDmCyBCvml1PE=;
        b=SwnSpSCJiG4Y385nJWJNzcdS6/jcyBINXXQ/WyzwuLUqtxyhXPqrE2SGfz/aIMM1w8
         Ul0x45Kr+G6GktRry384mlFPqxT4aERLG/DOfDI9gZ4m7YKSmh/l8McNM9IJCryG38jC
         R8T/bq7tWwifgeu0mTgfkZ3YUL6LoDdjMU8y84VEwcpzbEvTy4sZFpjMZqk9XyqFJRLR
         hsS3GDJ3r0BWGLDuZuAWLjhLZS9v3c9AcFo3JxCfUv8FxIqajvPivaRl9w6hCCeTSi8k
         5+mfR9bLwzAQqFxJ8OT5QnkqSL2DnbUD8HMV8k6vrZkmzE31933I1RboGTScyzSZU9DA
         FjCw==
X-Gm-Message-State: AOJu0YzkjXm7LJHL6rkVm91psfQrAzfXEkYhS8OSp37jVB/9A00p5wMf
	NwsEs8A5NPECm99HcKYSMNedgE9JRNfkPaqczY3RfqKSVaY6FhfMvt+cS6fWGoTE6z4DTvphHjN
	q9Bz44IDHYT74MHrEEE9CC3u1ObQFVw==
X-Google-Smtp-Source: AGHT+IHJzt5Ca+S7ySUT7zGvl2Wi0TQtERbFk3GpoMGSwcWhegh4vUet3sBRLX0Lq8RVziaKuYOMvog52BANOE+AVKo=
X-Received: by 2002:a05:6e02:1d05:b0:375:9cb9:9cf9 with SMTP id
 e9e14a558f8ab-375e0df8c39mr109885035ab.4.1718644631683; Mon, 17 Jun 2024
 10:17:11 -0700 (PDT)
MIME-Version: 1.0
From: Allan Elkaim <allan.elkaim@gmail.com>
Date: Mon, 17 Jun 2024 19:16:56 +0200
Message-ID: <CACgNL-F86ipDKQRynK8+Sjkx48Ww4zkX9R=ns393eJ88EAJaHA@mail.gmail.com>
Subject: Help needed on SBOM generation using Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c44950061b19229e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:17:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63352

--000000000000c44950061b19229e
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to generate an SBOM using Yocto, but I am having issues
exploiting the result and could really use a hand.

I have done the following steps on a "blank" poky repository on
the scarthgap branch:

   -

   git clone git://git.yoctoproject.org/poky

   -

   cd poky

   -

   git checkout origin/scarthgap -b my-branch

   -

   source oe-init-build-env


I have then edited my local.conf to include those changes:

INHERIT += "create-spdx"
SPDX_PRETTY = "1"


And finally, I compiled the core-image-minimal image for the
default qemux86-64 image.

   - bitbake core-image-minimal

Once everything is built, I have the following file:

poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs.spdx.tar.zst

From here, I'm confused about how to exploit this archive, there are many
files in it and I do not understand why some of them seems to be named
after the name of the software "component" and other start with "recipe".

I mainly am interested in establishing the list of software "packages"
(binary / libraries...) , along with their "owner" and their license.

For instance, if I had dropbear embedded in my image, I would like to
extract the following information:





*PACKAGE : dropbearVERSION: 2022.83LICENSE: MITSOURCE
SITE: https://matt.ucc.asn.au/dropbear/releases
<https://matt.ucc.asn.au/dropbear/releases>OWNER: Matt Johnston
<matt@ucc.asn.au <matt@ucc.asn.au>>*

Also, if possible, having the ability to produce some sort of dependency
tree would be really helpful.

Do you have any tips / or leads on how to achieve those goals from the
produced core-image-minimal-qemux86-64.rootfs.spdx.tar.zst file ?

I thank you very much in advance for your help and wish you a nice day !

Regards,

Allan ELKAIM.

--000000000000c44950061b19229e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br>I am trying to generate an SBOM using Yocto=
, but I am having issues exploiting the result and could really use a hand.=
<br></div><div><br></div><div>I have done the following steps on a &quot;bl=
ank&quot; poky repository on the=C2=A0scarthgap=C2=A0branch:</div><div><ul>=
<li style=3D"margin-left:15px"><pre style=3D"overflow:auto;color:rgb(51,51,=
51)">git clone git://<a href=3D"http://git.yoctoproject.org/poky" target=3D=
"_blank">git.yoctoproject.org/poky</a></pre></li><li style=3D"margin-left:1=
5px"><pre style=3D"overflow:auto;color:rgb(51,51,51)">cd poky</pre></li><li=
 style=3D"margin-left:15px"><pre style=3D"overflow:auto;color:rgb(51,51,51)=
">git checkout origin/scarthgap=C2=A0-b my-branch</pre></li><li style=3D"ma=
rgin-left:15px"><pre style=3D"overflow:auto;color:rgb(51,51,51)">source oe-=
init-build-env</pre></li></ul><div><div>I have then edited my local.conf to=
 include those changes:</div></div></div><div><br></div><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>INHERIT +=3D &quo=
t;create-spdx&quot;</div><div>SPDX_PRETTY =3D &quot;1&quot;</div></blockquo=
te><br><div>And finally, I compiled the=C2=A0core-image-minimal image for t=
he default=C2=A0qemux86-64 image.</div><div><ul><li style=3D"margin-left:15=
px">bitbake core-image-minimal</li></ul><div>Once everything is built, I ha=
ve the following file:</div></div><div><br></div><blockquote style=3D"margi=
n:0px 0px 0px 40px;border:none;padding:0px"><div>poky/build/tmp/deploy/imag=
es/qemux86-64/core-image-minimal-qemux86-64.rootfs.spdx.tar.zst</div><div><=
br></div></blockquote>From here, I&#39;m confused about how to exploit this=
 archive, there are many files in it and I do not understand why some of th=
em seems to be named after the name of the software &quot;component&quot; a=
nd other start with &quot;recipe&quot;.<div><br></div><div>I mainly am inte=
rested in establishing the list of software &quot;packages&quot; (binary / =
libraries...) , along with their &quot;owner&quot; and their license.<br><b=
r>For instance, if I had dropbear embedded in my image, I would like to ext=
ract the following information:</div><div><br><i>PACKAGE : dropbear<br>VERS=
ION: 2022.83<br>LICENSE: MIT<br>SOURCE SITE:=C2=A0<a href=3D"https://matt.u=
cc.asn.au/dropbear/releases" target=3D"_blank">https://matt.ucc.asn.au/drop=
bear/releases</a><br>OWNER: Matt Johnston &lt;<a href=3D"mailto:matt@ucc.as=
n.au" target=3D"_blank">matt@ucc.asn.au</a>&gt;</i><br></div><div><br></div=
><div>Also, if possible, having the ability to produce some sort of depende=
ncy tree would be really helpful.</div><div><br></div><div>Do you have=C2=
=A0any tips / or leads on how to achieve those goals from the produced core=
-image-minimal-qemux86-64.rootfs.spdx.tar.zst file ?</div><div><br></div><d=
iv>I thank you very much in advance for your help and wish you a nice day !=
</div><div><br></div><div>Regards,</div><div><br></div><div>Allan ELKAIM.</=
div></div>

--000000000000c44950061b19229e--

