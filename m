Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15855.1590335986558044590
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 May 2020 08:59:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M7BmKrH+;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B422E01C08; Sun, 24 May 2020 08:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C809E01C06
	for <yocto@yoctoproject.org>; Sun, 24 May 2020 08:59:44 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id d22so727504vkf.12
        for <yocto@yoctoproject.org>; Sun, 24 May 2020 08:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CNXbk/oVhQvJpQ4KqJcX5/+PTC0GG71vmZ/rsCHIr94=;
        b=M7BmKrH+jHIdA1mHhB53vk276aHgQVGBEhN6P7zb7pDKa5uiXCrXtsQuO3jQr72yLE
         jh0Sf8n+wbNVV2VTQR32rOy0CdAS5ZQ1PdcrDW+fTVAm3sCmbBkPi/vuZCMxPZn85jfI
         Hmu2sT5n5T9tWPbJ7jJCOAlVIaJzPrm/2dCpl/Q6nl2xOLm9TRPA96akoc4TMxnq+ZIl
         ArCI/lkPNPwSfkcIanQro9TLk/rszYxk5s9Jo8ak4zR71+otLUwtOUcirjQqrUBV77Na
         LRXFgovFIpuItZ9lbvdYgHhcnbqYkAPNhWz1GR7b6vXDTWfIJZwIu1LQWHYjkI55MYBz
         PY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CNXbk/oVhQvJpQ4KqJcX5/+PTC0GG71vmZ/rsCHIr94=;
        b=LmHoRb6vu9LjDHUbQfP4lp7KOc7DRixz6l08vHXa3dQp2Qhs2pwZNR+OZEv7Q+MyN9
         kKQgXnNW6r1UIVNh1e1mKa+lrAPd1bWVQY8nwBuFR121Ud9WKT74GOvqtiS0agR2scd0
         ZC8GY5W/3pm+tNdQFv0tt2ByTTR8qBkxc04pazTnCy+dvNIDTY2fuCCabof7SPS9frmq
         MfS1noGfdZchg1OfXVIwW4Atzmz08GcTEoKBGRkRm8rUgZnHcodaKFuHkpidz5L9que/
         B55mtAQybwa/aD0jFaF4FGwbQjywXEkZ8eS2drPaVb4s7DBKCJMaOo+WqqlUBJJIFbXs
         EXTg==
X-Gm-Message-State: AOAM530eTzg33V8kN0DF+e9pnQyoPC+af+l1ZDeDZeheiuGLJ9WOSvcz
	8/Fv3W1nddG9oQEapMA1V9wjUeMLlHZO0n990YX/A1Dl
X-Google-Smtp-Source: ABdhPJzTdqXTeg4OPEQPe11Nhx/VpbvbOak1H4KrtT/kNHKOCt7sWoI0vV2XfNleNPFA7P9dJvAAw72Qbc0zfP5Smes=
X-Received: by 2002:a1f:a3d8:: with SMTP id m207mr17510529vke.0.1590335984009;
 Sun, 24 May 2020 08:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2005241138230.24040@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2005241138230.24040@localhost.localdomain>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 24 May 2020 17:59:32 +0200
Message-ID: <CANNYZj9viqzAdLR8ocTbB=BnrG8tSriYxNMTqcx9qc3WY2LNwg@mail.gmail.com>
Subject: Re: [yocto] can i run an arbitrary x86_64-based image under QEMU?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006685d205a666f3b8"

--0000000000006685d205a666f3b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

To me this seems like Wind River's special sauce.

The CHANGELOG in meta-intel says this:

Added QEMU support.
-------------------
We now build several virtio drivers into the kernel by default, and
have qemuboot.conf files for intel-corei7-64 and intel-core2-32
targets. This allows one to do basic testing on meta-intel images
without having to use hardware. The virtio drivers are added via
KERNEL_FEATURES_INTEL_COMMON. This prevents them from being added to
custom kernels by default. They can be removed by adding the
following to a conf or kernel bbappend file:
  KERNEL_FEATURES_INTEL_COMMON_remove =3D =E2=80=9Ccfg/virtio.scc=E2=80=9D
OVMF firmware is also built and can be used in order to emulate a UEFI
environment. A full runqemu command line for intel-corei7-64 could look
like this:
  runqemu core-image-minimal intel-corei7-64 wic ovmf
=3D=3D=3D=3D=3D=3D

It's probably not too difficult to make this work in YP upstream (given
that qemu is able to run desktop Linux distribution images aimed at real
HW), but currently this isn't documented or (most importantly) tested on
the AB.


Alex

On Sun, 24 May 2020 at 17:41, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   currently poring over wind river docs and in release notes for WR
> LTS 19 (equivalent to YP 3.0), one of the notes for RCPL 7 for this
> release of WR states:
>
> "New support to deploy a platform project image based on the
> intel-x86-64 BSP with the runqemu command. You no longer require a
> QEMU-based BSP to deploy and test your x86-based image."
>
>   first, am i interpreting that correctly that i can build an x86_64
> image for actual hardware, and run it under QEMU?
>
>   and if so, is that a WR thing, or if available under YP, a pointer
> to the appropriate doc would be sufficient.  thank you kindly.
>
> rday
>=20
>

--0000000000006685d205a666f3b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To me this seems like Wind River&#39;s special sauce.=
 </div><div><br></div><div>The CHANGELOG in meta-intel says this:</div><div=
><br></div><div>Added QEMU support.<br>-------------------<br>We now build =
several virtio drivers into the kernel by default, and<br>have qemuboot.con=
f files for intel-corei7-64 and intel-core2-32<br>targets. This allows one =
to do basic testing on meta-intel images<br>without having to use hardware.=
 The virtio drivers are added via<br>KERNEL_FEATURES_INTEL_COMMON. This pre=
vents them from being added to<br>custom kernels by default. They can be re=
moved by adding the<br>following to a conf or kernel bbappend file:<br>=C2=
=A0 KERNEL_FEATURES_INTEL_COMMON_remove =3D =E2=80=9Ccfg/virtio.scc=E2=80=
=9D<br>OVMF firmware is also built and can be used in order to emulate a U=
EFI<br>environment. A full runqemu command line for intel-corei7-64 could l=
ook<br>like this:<br>=C2=A0 runqemu core-image-minimal intel-corei7-64 wic =
ovmf</div><div>=3D=3D=3D=3D=3D=3D</div><div><br></div><div>It&#39;s probabl=
y not too difficult to make this work in YP upstream (given that qemu is ab=
le to run desktop Linux distribution images aimed at real HW), but currentl=
y this isn&#39;t documented or (most importantly) tested on the AB.</div><d=
iv><br></div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 24 May 2020 at 17:41=
, Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@cras=
hcourse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>
=C2=A0 currently poring over wind river docs and in release notes for WR<b=
r>
LTS 19 (equivalent to YP 3.0), one of the notes for RCPL 7 for this<br>
release of WR states:<br>
<br>
&quot;New support to deploy a platform project image based on the<br>
intel-x86-64 BSP with the runqemu command. You no longer require a<br>
QEMU-based BSP to deploy and test your x86-based image.&quot;<br>
<br>
=C2=A0 first, am i interpreting that correctly that i can build an x86_64<=
br>
image for actual hardware, and run it under QEMU?<br>
<br>
=C2=A0 and if so, is that a WR thing, or if available under YP, a pointer<=
br>
to the appropriate doc would be sufficient.=C2=A0 thank you kindly.<br>
<br>
rday<br>
<br>
</blockquote></div>

--0000000000006685d205a666f3b8--
