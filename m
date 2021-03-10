Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.6917.1615372298614072729
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 02:31:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whon1rgd;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7266238C083D
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 10:31:37 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so1412742wmq.1
        for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 02:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L5MA2LZtL13tFdoQhMnZ7qyJ4JNOuCbcHNRlQbzVV6Q=;
        b=Whon1rgd3bbFjd0oO59u4lJHa8t9C0Wp3O0e1a5+dQ3IGeRhXGvp4SruY07etJ/eEQ
         0ApkpuzgwbKnwA93dwQqfCPlX/eO+JGNaEmDn7+nwl33yKK01pr9lOEtq52/PzIGQW3t
         N9pd0SREIWDe6ufFHHqV0XdVn9Eux0oSuhAaA3NOG0oVuSJUGuqULdWE1uPC5xc+ugTD
         WVovjf4T1LY5F3FiO4oEtFfapT5eRhNExIFd4DMNdkTqS6WZDoTJqKVNI8HqQJyEG0dO
         GIBZDf3YWNuRm+YqthGfvlEJUX1DSvcKJW1+JvyNyHsUtBedSWQn2ktKu7fMCMiYQ4D9
         CWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L5MA2LZtL13tFdoQhMnZ7qyJ4JNOuCbcHNRlQbzVV6Q=;
        b=ppfqbBRAo7R2sqjtgIPummnKjCn+Rme1CiBZf70Z2kTi5/rIlY91OYaccbWPg8/UPO
         38n13+HGZmrzmfJkhXniYIFnMlr/tO/PkC5kQMLpBYe/ZVIU2sx6dL+f2/5yD938iMh3
         najVaQVbvebJhHddFd3TN1xIF/qNEE4+kQ7XXHIiWxaPxZEndQYPm7i+5sK0POAaXvwx
         utKZ4IWTRObTFmIlrZ8AXKuATNCGCZaLPcpdN5UqaQkELT7O1d/fyZpxyQKNyg2hdZtx
         ylMMrHMbU+bOb8bb2T2c+mslYdeD06fLhOguOhiYvJDNbhZGi6DCsqWMtUOC81HB70t+
         VubQ==
X-Gm-Message-State: AOAM530odv8zUwNvJ3CM9XjpWBZt1kPseH8kr4eJ353NHbvK8WW4HhLO
	TLYSM4inQFNlo/i1ZpyQUtQbuCKgAB2FO0ms7b8=
X-Google-Smtp-Source: ABdhPJzFapq1GVL9U72cDcftdnqte1+oImf44LSTWB5BW2LmsvnIZq7edZGQlc4ALOXx8A256j3MadYs2I9+XS7zNv0=
X-Received: by 2002:a05:600c:c4:: with SMTP id u4mr2690321wmm.27.1615372295854;
 Wed, 10 Mar 2021 02:31:35 -0800 (PST)
MIME-Version: 1.0
References: <20210302145745.1891826-1-liu.ming50@gmail.com> <18d24d31-6910-1da2-77f6-3b352302652c@gmail.com>
In-Reply-To: <18d24d31-6910-1da2-77f6-3b352302652c@gmail.com>
From: "Ming Liu" <liu.ming50@gmail.com>
Date: Wed, 10 Mar 2021 11:31:25 +0100
Message-ID: <CALatG=6wGCkUKr_0EeLo01SC_XSKyjUb8B7a+Dpf8bkNNEzwFg@mail.gmail.com>
Subject: Re: [meta-security][dunfell][PATCH 0/9] Some IMA/EVM fixes to dunfell branch
To: akuster808 <akuster808@gmail.com>
Cc: yocto@yoctoproject.org, Sergio Prado <sergio.prado@toradex.com>, 
	Ming Liu <ming.liu@toradex.com>
Content-Type: multipart/alternative; boundary="000000000000dfdcb605bd2c2b49"

--000000000000dfdcb605bd2c2b49
Content-Type: text/plain; charset="UTF-8"

Hi, akuster808:

I saw this patch set has been merged to gatesgarth, may I ask, any plan for
dunfell? I am asking because dunfell is a LTS branch and many users are
building their products based on it. Thanks!

the best,
thank you

series in build testing
>
> -armin
>
> On 3/2/21 6:57 AM, liu.ming50@gmail.com wrote:
> > From: Ming Liu <ming.liu@toradex.com>
> >
> > Cherry pick some IMA/EVM fixes to LTS dunfell branch, with these
> > patches applied, I could run a ima enabled image with sysvinit/systemd
> > on qemuarm/qemuarm64 and some NXP machines.
> >
> > Ming Liu (9):
> >   ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
> >   initramfs-framework-ima: fix a wrong path
> >   ima-evm-keys: add recipe
> >   initramfs-framework-ima: RDEPENDS on ima-evm-keys
> >   meta: refactor IMA/EVM sign rootfs
> >   README.md: update according to the refactoring in
> >     ima-evm-rootfs.bbclass
> >   initramfs-framework-ima: let ima_enabled return 0
> >   ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
> >   ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
> >
> >  meta-integrity/README.md                      |  4 ++-
> >  meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
> >  .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
> >  .../initrdscripts/initramfs-framework-ima/ima |  3 +-
> >  .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
> >  .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
> >  .../ima_policy_hashed/files/ima_policy_hashed |  3 ++
> >  7 files changed, 41 insertions(+), 21 deletions(-)
> >  create mode 100644 meta-integrity/recipes-security/ima-evm-keys/
> ima-evm-keys_1.0.bb
> >
>
>

--000000000000dfdcb605bd2c2b49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,=C2=A0akuster808:<br></div><div dir=3D=
"ltr"><div><br></div><div>I saw this patch set has been merged to gatesgart=
h, may I ask, any plan for dunfell? I am asking because dunfell is a LTS br=
anch and many users are building their products based on it. Thanks!</div><=
/div><div><br></div><div>the best,</div><div>thank you</div><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">series in build testing<br>
<br>
-armin<br>
<br>
On 3/2/21 6:57 AM, <a href=3D"mailto:liu.ming50@gmail.com" target=3D"_blank=
">liu.ming50@gmail.com</a> wrote:<br>
&gt; From: Ming Liu &lt;<a href=3D"mailto:ming.liu@toradex.com" target=3D"_=
blank">ming.liu@toradex.com</a>&gt;<br>
&gt;<br>
&gt; Cherry pick some IMA/EVM fixes to LTS dunfell branch, with these <br>
&gt; patches applied, I could run a ima enabled image with sysvinit/systemd=
<br>
&gt; on qemuarm/qemuarm64 and some NXP machines.<br>
&gt;<br>
&gt; Ming Liu (9):<br>
&gt;=C2=A0 =C2=A0ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empt=
y<br>
&gt;=C2=A0 =C2=A0initramfs-framework-ima: fix a wrong path<br>
&gt;=C2=A0 =C2=A0ima-evm-keys: add recipe<br>
&gt;=C2=A0 =C2=A0initramfs-framework-ima: RDEPENDS on ima-evm-keys<br>
&gt;=C2=A0 =C2=A0meta: refactor IMA/EVM sign rootfs<br>
&gt;=C2=A0 =C2=A0README.md: update according to the refactoring in<br>
&gt;=C2=A0 =C2=A0 =C2=A0ima-evm-rootfs.bbclass<br>
&gt;=C2=A0 =C2=A0initramfs-framework-ima: let ima_enabled return 0<br>
&gt;=C2=A0 =C2=A0ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wi=
c<br>
&gt;=C2=A0 =C2=A0ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic<br>
&gt;<br>
&gt;=C2=A0 meta-integrity/README.md=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++-<br>
&gt;=C2=A0 meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----=
------<br>
&gt;=C2=A0 .../initrdscripts/<a href=3D"http://initramfs-framework-ima.bb" =
rel=3D"noreferrer" target=3D"_blank">initramfs-framework-ima.bb</a>=C2=A0 |=
=C2=A0 2 +-<br>
&gt;=C2=A0 .../initrdscripts/initramfs-framework-ima/ima |=C2=A0 3 +-<br>
&gt;=C2=A0 .../ima-evm-keys/<a href=3D"http://ima-evm-keys_1.0.bb" rel=3D"n=
oreferrer" target=3D"_blank">ima-evm-keys_1.0.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 16 +++++++++<br>
&gt;=C2=A0 .../ima-evm-utils/<a href=3D"http://ima-evm-utils_git.bb" rel=3D=
"noreferrer" target=3D"_blank">ima-evm-utils_git.bb</a>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |=C2=A0 1 +<br>
&gt;=C2=A0 .../ima_policy_hashed/files/ima_policy_hashed |=C2=A0 3 ++<br>
&gt;=C2=A0 7 files changed, 41 insertions(+), 21 deletions(-)<br>
&gt;=C2=A0 create mode 100644 meta-integrity/recipes-security/ima-evm-keys/=
<a href=3D"http://ima-evm-keys_1.0.bb" rel=3D"noreferrer" target=3D"_blank"=
>ima-evm-keys_1.0.bb</a><br>
&gt;<br>
<br>
</blockquote></div></div>

--000000000000dfdcb605bd2c2b49--
