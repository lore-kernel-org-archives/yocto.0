Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 408DBC7618A
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 15:12:52 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.18948.1679238768469255069
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Mar 2023 08:12:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iStG9rJx;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id h17so8218017wrt.8
        for <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 08:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679238767;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AVJphYQk7t8Q1pw34w5wuSVCMC3r4FfMDeDMF5YcPik=;
        b=iStG9rJxNVDvU9M/m3IOWdlCoK6z78niQUl2Y3vr1Keh9xdG80SJtp3surOJCjKPjK
         gIyZJb8WrPBO+d7UcvDE5nVeFQg1sR4aMnkqZPY3SNqB+e4MYfy98E6m4mykdC6Na6g+
         NkZtRWeAPBWChmi9g6jUmC5poOHvfRPixaIhuazXxtDnmmqNBOb8iw2lxa1RQvCeC2Um
         t6UBDNzzBh0sOfORKNM0ItlHoOyOUhYiTz5BLvKKIgB6a2GzBpln1u1hrpZKCsZZpujZ
         VPyQm5mfIpTjm85AlldqEygw45e9kJESB1TFspF/iwCzDQki0WHjWvhorYaLb0Ia5MlE
         RkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679238767;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AVJphYQk7t8Q1pw34w5wuSVCMC3r4FfMDeDMF5YcPik=;
        b=gwJwDSspPTbCRc9OQqxZzYfcI9oPsH0OSFHMoQJkc0yMX/uQ9nwzoHww+2Zxsu4bPk
         eH9qYPclDf3ZnbB2lzIDVVXPLcTcw5g229zWJEXNTQZHJJx+CuynqwTY3mymqO6UTfMn
         mkR+BTnXVoVpQlBrsZU5StMeMrAJiW8m+PAA1uXogiV9fEmnNK05Xrdr5qXPjW7Ufd9t
         ubG4B52K/OlTQLJaEX5BP8BE4864yTcEk3Wyv2zqJrsH3cLjYB4jMdrNQPkryeDz0tvl
         AFBEJYhaMd8BuP2k6vMyf3AKu+/ukfPQWPnLUu4rYg7bA7z0eUkqfWd+wyWS5ULBXtSO
         68RQ==
X-Gm-Message-State: AO0yUKXSH7/p97B0K0uaf8iUFtW2Wj+xp1CBZytpR5DfN+NhFIeVwVxy
	UGH+T1xnHS+RCiATtmKszgDiSbKH4Pbb/Sn1ioc=
X-Google-Smtp-Source: AK7set/JVFH81/wxT7aizbiLadghbJ35CG0UARMVD+KZLFjD+xyIbJWRPos2mYWkEqwV+3+bDPmeJfAeD5EYSWVMP6U=
X-Received: by 2002:a5d:534e:0:b0:2ce:a0c2:d9ee with SMTP id
 t14-20020a5d534e000000b002cea0c2d9eemr2606917wrv.1.1679238766829; Sun, 19 Mar
 2023 08:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAKq8=3LHPJgXuUvXuStP9J2Esyg6b9ODkj9dt5SBYVNJf2XunA@mail.gmail.com>
 <CANNYZj_AAgMq85wwv_fwrryZESPPep=+KnRB5RJ6SJCMtTw7UA@mail.gmail.com> <20230319145045.4ygasd2jggop2ljo@debian>
In-Reply-To: <20230319145045.4ygasd2jggop2ljo@debian>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 19 Mar 2023 16:12:28 +0100
Message-ID: <CA+chaQc3RMtaeCQegbGvP_4gNiJgLuVM8H_Hqx3ULYZCzFcZcQ@mail.gmail.com>
Subject: Re: [yocto] How to use mirror to download linux-yocto?
To: Bo YU <tsu.yubo@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000030a21105f7423ef7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 15:12:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59469

--00000000000030a21105f7423ef7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 19, 2023 at 3:50=E2=80=AFPM Bo YU <tsu.yubo@gmail.com> wrote:

> Hi,
> On Sat, Mar 18, 2023 at 09:29:34AM +0000, Alexander Kanavin wrote:
> >   When the slow download is happening, can you please check (e.g. from =
a
> >   process listing), which server specifically is being accessed and wit=
h
> >   which command? Just to be sure where the problem is.
>
> Thanks for tips. I downloaded linux-yocto about 3 days but failed and
> one night to download it after just sent the mail.
>
> I suspected the accessing to git://git.yoctoproject.org/linux-yocto.git
> is very slow under my network. So I think there is one way to replace
>
> ```
> SRC_URI =3D
> "git://git.yoctoproject.org/linux-yocto.git;name=3Dmachine;branch=3D${KBR=
ANCH}
> <http://git.yoctoproject.org/linux-yocto.git;name=3Dmachine;branch=3D$%7B=
KBRANCH%7D>
> ;
> \
> git://
> git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;branch=
=3Dyocto-6.1;destsuffix=3D${KMETA}
> <http://git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;=
branch=3Dyocto-6.1;destsuffix=3D$%7BKMETA%7D>
> "
> ```
>
> Or use another bb file to download linux-yocto kernel with mirror I
> mentioned. But I am fail to try this.
>

You can and should use PREMIRROR like with any other source fetched by
bitbake fetcher.

Use BB_GENERATE_MIRROR_TARBALLS, then rsync your downloads directory
(exclude .done, bad-checksum files and git2, svn, ... dirs) to some shared
location on your network and you have a good starting PREMIRROR to use in
all the builds, so you don't ever need to re-download everything again.
Update your PREMIRROR with rsync after succesful build (every time or from
time to time).

You can also share whole DL_DIR directly, but that has small risk, that if
fetcher fails to update e.g. linux-yocto due to temporary network glitch,
it will remove whole git clone from the DL_DIR and start again, while with
PREMIRROR it will start from the tarball stored there. So it's useful to
combine both (PREMIRROR updated after successful builds and shared DL_DIR
if you have many builders with fast access to the same NFS/CIFS share).

Cheers,

--00000000000030a21105f7423ef7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Mar 19, 2023 at 3:50=E2=80=AFPM B=
o YU &lt;<a href=3D"mailto:tsu.yubo@gmail.com">tsu.yubo@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi,<br>
On Sat, Mar 18, 2023 at 09:29:34AM +0000, Alexander Kanavin wrote:<br>
&gt;=C2=A0 =C2=A0When the slow download is happening, can you please check =
(e.g. from a<br>
&gt;=C2=A0 =C2=A0process listing), which server specifically is being acces=
sed and with<br>
&gt;=C2=A0 =C2=A0which command? Just to be sure where the problem is.<br>
<br>
Thanks for tips. I downloaded linux-yocto about 3 days but failed and<br>
one night to download it after just sent the mail.<br>
<br>
I suspected the accessing to git://<a href=3D"http://git.yoctoproject.org/l=
inux-yocto.git" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/l=
inux-yocto.git</a> <br>
is very slow under my network. So I think there is one way to replace <br>
<br>
```<br>
SRC_URI =3D<br>
&quot;git://<a href=3D"http://git.yoctoproject.org/linux-yocto.git;name=3Dm=
achine;branch=3D$%7BKBRANCH%7D" rel=3D"noreferrer" target=3D"_blank">git.yo=
ctoproject.org/linux-yocto.git;name=3Dmachine;branch=3D${KBRANCH}</a>;<br>
\<br>
git://<a href=3D"http://git.yoctoproject.org/yocto-kernel-cache;type=3Dkmet=
a;name=3Dmeta;branch=3Dyocto-6.1;destsuffix=3D$%7BKMETA%7D" rel=3D"noreferr=
er" target=3D"_blank">git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;=
name=3Dmeta;branch=3Dyocto-6.1;destsuffix=3D${KMETA}</a>&quot;<br>
```<br>
<br>
Or use another bb file to download linux-yocto kernel with mirror I<br>
mentioned. But I am fail to try this.<br></blockquote><div><br></div><div>Y=
ou can and should use PREMIRROR like with any other source fetched by bitba=
ke fetcher.</div><div><br></div><div>Use=C2=A0BB_GENERATE_MIRROR_TARBALLS, =
then rsync your downloads directory (exclude .done, bad-checksum files and =
git2, svn, ... dirs) to some shared location on your network and you have a=
 good starting PREMIRROR to use in all the builds, so you don&#39;t ever ne=
ed to re-download everything again. Update your PREMIRROR with rsync after =
succesful build (every time or from time to time).</div><div><br></div><div=
>You can also share whole DL_DIR directly, but that has small risk, that if=
 fetcher fails to update e.g. linux-yocto due to temporary network glitch, =
it will remove whole git clone from the DL_DIR and start again, while with =
PREMIRROR it will start from the tarball stored there. So it&#39;s useful t=
o combine both (PREMIRROR updated after successful builds and shared DL_DIR=
 if you have many builders with fast access to the same NFS/CIFS share).</d=
iv><div><br></div><div>Cheers,</div></div></div>

--00000000000030a21105f7423ef7--

