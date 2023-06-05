Return-Path: <jpuderer@littlebox.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDD8C7EE23
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 20:57:21 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.1641.1685998634641633364
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jun 2023 13:57:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@littlebox-ca.20221208.gappssmtp.com header.s=20221208 header.b=KW9xwxnS;
 spf=none, err=permanent DNS error (domain: littlebox.ca, ip: 209.85.208.174, mailfrom: jpuderer@littlebox.ca)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2b1ba018d94so33949121fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 13:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=littlebox-ca.20221208.gappssmtp.com; s=20221208; t=1685998633; x=1688590633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=70jbG2pxcDTQ822xOzM6T3epPuoLPGXXv7IZh8pJnyY=;
        b=KW9xwxnSRKiMqzkFSgUz5zAOGWZRJctjwuIV7ADag98hSeJ66sBb3PPa6/nNn9GcXj
         S/DA7Y+pRhL3VGdJ401lS2j1WO7gAs8LKvbvcDulues5OU3oGqXRMob4MWrJjNnODTC6
         eCbBXYaAt30YY0pa68kH1sbzunJDkh6hBzuLADfQFFwsDJWWSeGZCVf8KpJ/bE/p0x4B
         wsb/ymBNdcqhlXMpR/XDCsKNgzP4a6rjO0b6PkakKRjguZyr+3T0CvURA0G07p6COPkW
         Qdv2ckcq82uFgCOk3I+TeVNBDMzTHphRpN7+XbanYJdSyOJ2fRyc1hPYRYLVInGp7yTS
         XyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685998633; x=1688590633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=70jbG2pxcDTQ822xOzM6T3epPuoLPGXXv7IZh8pJnyY=;
        b=Qz/e+gyaAMzV7tDdaNL6RXBebYCwIFMT8b8aqpS4GWmgwCrgRDION35vTdbcdcFaj4
         jO+erhLTg8u2oXsAP8Wm6ceUUGDagA897JGpfLJmKq49tt40dbLuLApGLmyaXAFSiagu
         V0nXABWe3kN3MtxejMPEds4jxAeHxXLPXP7WevUs+XENL3j/A9fSX0MkqNAO7sP/JHbW
         4DBmdNNUFWWCdfxwtIjP5rMVTy2pi0CEk1O+4OOS3lPEaiXc7m8ScuWBrh124N7jPsEW
         2y/nsdtJnJjZKQtPQ9X5sNe0ir3o1zjPEQgkmtrB/Cbr/VG366buNphLFO4ToJNqa7h1
         4bog==
X-Gm-Message-State: AC+VfDxDMLEwkgUm/1B7SCuEFOk+GxtXtB+YhSi+5uAXtb7D3LdhH77B
	YDBZH5xXEp3xR5j5AaxqEuL5BEXuitLql++blOu7qw==
X-Google-Smtp-Source: ACHHUZ7Wyi9MiF8gVdsmB++YsOU1LLRY6hjSBAV9if5+sIGfzivJd6CigwCKYR/Jfq1yTNCROVxEizwBGdaw/43ND64=
X-Received: by 2002:a2e:97d8:0:b0:2ad:87b3:7d62 with SMTP id
 m24-20020a2e97d8000000b002ad87b37d62mr191422ljj.46.1685998632512; Mon, 05 Jun
 2023 13:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAP=9gbuZrFrrNATXQMQ4FPtCC8bA2bcZY8c9J-75xtoi35eM+Q@mail.gmail.com>
 <0B3874BC-6BD7-49BC-AD35-98E85A868CAB@arm.com>
In-Reply-To: <0B3874BC-6BD7-49BC-AD35-98E85A868CAB@arm.com>
From: James Puderer <jpuderer@littlebox.ca>
Date: Mon, 5 Jun 2023 14:57:01 -0600
Message-ID: <CAP=9gbsQqB_LopuVV2Rh0A8ePQ741kv4AqMjfSPFdZOwoVGSPg@mail.gmail.com>
Subject: Re: [yocto] Setting the nodatacow flag on a BTRFS directory
To: Ross Burton <Ross.Burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000953ef205fd6825af"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 20:57:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60183

--000000000000953ef205fd6825af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 5, 2023 at 4:30=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> wr=
ote:

> On 26 May 2023, at 16:23, James Puderer via lists.yoctoproject.org
> <jpuderer=3Dlittlebox.ca@lists.yoctoproject.org> wrote:
> >
> > Hello all,
> >
> > I'm trying to figure out how to set the `nodatacow` flag on a directory
> in a BTRFS image at build time.  Normally this is done by running 'chattr
> +c <dir>'.  Unfortunately, this doesn't seem to be something supported by
> fakeroot/pseudo.  I would really like to avoid doing it at runtime, or
> mounting the filesystem in loopback mode (requires root).
> >
> > This seems like something that Yocto *should* be able to do.  Am I
> missing something?  If not, what would be the correct place to implement
> something like this?
>
> When and how are you trying to do this?  If it=E2=80=99s at rootfs time t=
hen the
> rootfs isn=E2=80=99t yet in the target btrfs format but simply a director=
y on in
> your build tree, and you=E2=80=99ll need to test that the attrs survive t=
he
> transition from a directory to a btrfs image.
>

Right, I'm *trying* doing this at image build time.  I've tried doing it by
adding file named base-files_%.bbappend to one of my layers:

DEPENDS:append =3D " e2fsprogs-native"

do_install:append() {
    # Disable COW on journal
    mkdir -p ${D}${localstatedir}/log/journal
    chattr.e2fsprogs +C ${D}/var/log/journal
}


Now, as I said, this doesn't work, since this chattr flag isn't captured by
pseudo, and my underlying ext4 file system doesn't support this flag either
(so it results in an error).

chattr.e2fsprogs: Operation not supported while setting flags on
/home/jpuderer/target/build/tmp-glibc/work/nxp_s32g-wrs-linux/base-files/3.=
0.14-r89/image/var/log/journal


I would *like* it if there was a way to make pseudo capture the chattr flag
in the way similar to how pseudo currently captures extended file
attributes (which is used by things like SELinux and IMA).  Failing that,
I'm hoping for some guidance on what the best way to accomplish something
like this at build time would be.

Doing it at first boot is not a great solution IMHO, since you're really
just pushing part of your build process into the first boot.

-- James

--000000000000953ef205fd6825af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5, 2023 at 4:30=E2=80=AFAM Ro=
ss Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On =
26 May 2023, at 16:23, James Puderer via <a href=3D"http://lists.yoctoproje=
ct.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt=
;jpuderer=3D<a href=3D"mailto:littlebox.ca@lists.yoctoproject.org" target=
=3D"_blank">littlebox.ca@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Hello all,<br>
&gt; <br>
&gt; I&#39;m trying to figure out how to set the `nodatacow` flag on a dire=
ctory in a BTRFS image at build time.=C2=A0 Normally this is done by runnin=
g &#39;chattr +c &lt;dir&gt;&#39;.=C2=A0 Unfortunately, this doesn&#39;t se=
em to be something supported by fakeroot/pseudo.=C2=A0 I would really like =
to avoid doing it at runtime, or mounting the filesystem in loopback mode (=
requires root).<br>
&gt; <br>
&gt; This seems like something that Yocto *should* be able to do.=C2=A0 Am =
I missing something?=C2=A0 If not, what would be the correct place to imple=
ment something like this?<br>
<br>
When and how are you trying to do this?=C2=A0 If it=E2=80=99s at rootfs tim=
e then the rootfs isn=E2=80=99t yet in the target btrfs format but simply a=
 directory on in your build tree, and you=E2=80=99ll need to test that the =
attrs survive the transition from a directory to a btrfs image.<br></blockq=
uote><div><br></div><div>Right, I&#39;m *trying* doing this at image build =
time.=C2=A0 I&#39;ve tried doing it by adding file named base-files_%.bbapp=
end to one of my layers:</div><div><br></div></div><blockquote style=3D"mar=
gin:0 0 0 40px;border:none;padding:0px"><div class=3D"gmail_quote"><div>DEP=
ENDS:append =3D &quot; e2fsprogs-native&quot;</div></div></blockquote><bloc=
kquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div class=3D"gm=
ail_quote"><div>do_install:append() {</div></div><div class=3D"gmail_quote"=
><div>=C2=A0 =C2=A0 # Disable COW on journal</div></div><div class=3D"gmail=
_quote"><div>=C2=A0 =C2=A0 mkdir -p ${D}${localstatedir}/log/journal</div><=
/div><div class=3D"gmail_quote"><div>=C2=A0 =C2=A0 chattr.e2fsprogs +C ${D}=
/var/log/journal</div></div><div class=3D"gmail_quote"><div>}</div></div></=
blockquote><div class=3D"gmail_quote"><div><br></div><div>Now, as I said, t=
his doesn&#39;t work, since this chattr flag isn&#39;t captured by pseudo, =
and my underlying ext4 file system doesn&#39;t support this flag either (so=
 it results in an error).</div><div><br></div></div><blockquote style=3D"ma=
rgin:0 0 0 40px;border:none;padding:0px"><div class=3D"gmail_quote"><div>ch=
attr.e2fsprogs: Operation not supported while setting flags on /home/jpuder=
er/target/build/tmp-glibc/work/nxp_s32g-wrs-linux/base-files/3.0.14-r89/ima=
ge/var/log/journal</div></div></blockquote><div class=3D"gmail_quote"><div>=
<br></div><div>I would *like* it if there was a way to make pseudo capture =
the chattr flag in the way similar to how pseudo currently captures extende=
d file attributes (which is used by things like SELinux and IMA).=C2=A0 Fai=
ling that, I&#39;m hoping for some guidance on what the best way to accompl=
ish something like this at build time would be.</div><div><br></div><div>Do=
ing it at first boot is not a great solution IMHO, since you&#39;re really =
just pushing part of your build process into the first boot.</div><div><br>=
</div><div>-- James</div><div><br></div></div></div>

--000000000000953ef205fd6825af--

