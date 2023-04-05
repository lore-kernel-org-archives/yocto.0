Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A93AC77B60
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 11:32:18 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.127352.1680694335189932056
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 04:32:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=lsNsyaUb;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.51, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-500349a5139so1723037a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 04:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112; t=1680694333; x=1683286333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=svQOafBDhxY4el/v3Ibg4Pp8/ze4/3da2V1rd6JbB2o=;
        b=lsNsyaUbrTt2IZfoPU+Egunjw8/9jiP8XsvOuR5zVsQ0NkJnjB0ZCe3oGrwIK5l9FW
         uWlgccBJT5BFgrxIzDsLUQoItK5IA/xo0Zhxw2vZ1aQpreNAvwZAvU+Q8bh+P30wZ/I2
         MSVwxVwOQXQlpJWp8pN5j0LJjl8CShkeX2ZKXNUhgYlIij7cy/KyFcyiwQXhrjCC6J6l
         QpJwhc5R848PrjISI6moDRIYiihfMjQTwpPu9zsS12TGPYm5RCSI6ljgtdNoz4XkDIL6
         RRJC7xhNPRSNf4d+rOofp9d65uBOqlLCJHMYuWxwnzVfl3pEr/g3F/xVISnqJEeC102p
         mHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680694333; x=1683286333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=svQOafBDhxY4el/v3Ibg4Pp8/ze4/3da2V1rd6JbB2o=;
        b=z8/nN2ZtdxmOA8Am3kucY94RJcKB2k6PjLPo6jz0S6GqgxGsuEPby4K4ZZrzp/BsUF
         BZTE/jVOK3wlsYpatlNsf+d8CuAm9WFRktJxYstbJK8VdvV9xxWXboREngktmfrMLbGn
         TfbubvnppToadZkjIiKChfIyanX6plmonRX0FYoThKLKlPn2sEbfNtGJltpLL2VQWy6p
         r/RCfSoIB/IZkiseNue6hrg9aRCNG3w1rKIOZ1vip1IF3PpIG5TW1OEAum51nsowAT8T
         KF8xdrOuqdB2G5+7xiTG05f70Wlm6ApVTOf+7Xs8xYoLHP+H33brMkDzUHYLUv5ffLFU
         qX/A==
X-Gm-Message-State: AAQBX9eIC+KargLUd9BE9DjXTU5J3uDftOBHTry5X1G2+lw5ji5O1YYR
	/fkZmDi4usN9uzZNjETVh6vwViXwh5Gn0YM00CRxOg==
X-Google-Smtp-Source: AKy350bO7amraSPH8OWGk4xnCFRpF2bDg0kRd7fctVJSwIAj/ZVOPWdXIpCWbomQzNHjIcCKVkiwgueaIO7vc6Yqe6U=
X-Received: by 2002:a05:6402:28ca:b0:502:3e65:44f7 with SMTP id
 ef10-20020a05640228ca00b005023e6544f7mr1034549edb.3.1680694333319; Wed, 05
 Apr 2023 04:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <GBPi.1680691583503538113.G0b9@lists.yoctoproject.org>
In-Reply-To: <GBPi.1680691583503538113.G0b9@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 5 Apr 2023 13:31:47 +0200
Message-ID: <CAEt6Nwrrz=RSWih8tLMkHzaoHC7vfvhFVaeLZq0AP_jt7Xy+2w@mail.gmail.com>
Subject: Re: [yocto] How to remove Rust (and other packages) from yocto build #bitbake
To: Jesus.JimenezSanchez@verifone.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b6c76305f895241c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 11:32:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59615

--000000000000b6c76305f895241c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Randomly removing things just does not work (TM).

Bitbake builds only what you tell it to anyways, so whatever you see in
your build is directly (because it goes into the resulting image) or
indirectly (because it is needed to build the resulting image) defined by
your target. So the things you can do is:
- looking at your image recipe, and remove things
- looking at your machine and distro, if they add things, and remove there.
Rust native is almost impossible to remove nowadays, because it is a build
dependency of python3-cryptography.

Greetz,
Josef

On Wed, Apr 5, 2023 at 12:46=E2=80=AFPM Jesus.JimenezSanchez via
lists.yoctoproject.org <Jesus.JimenezSanchez=3D
verifone.com@lists.yoctoproject.org> wrote:

> I'm trying to remove a series of packages from my yocto build but what
> I've tried hasn't worked so far. This is what I have:
>
> ```
> PACKAGE_EXCLUDE +=3D "\
> avahi \
> apt \
> apt-native \
> cmake \
> cmake-native \
> cracklib \
> crda \
> cryptodev-linux \
> dpkg \
> dpkg-native \
> elfutils \
> elfutils-native \
> fftw \
> gawk \
> gcc-runtime \
> gnupg \
> hdparm \
> icu \
> kbd \
> libassuan \
> libatomic-ops \
> libavahi-client \
> libavahi-common \
> libavahi-core \
> libcap-ng \
> libdaemon \
> libgcc \
> libgcc-initial \
> libgcrypt \
> libgpg-error \
> libical \
> libidn2 \
> libksba \
> libmnl \
> libogg \
> libtirpc \
> libtool \
> libtool-cross \
> libubootenv \
> libunistring \
> libxcrypt \
> linux-libc-headers \
> lz4 \
> lzo \
> npth \
> pinentry \
> pulseaudio \
> qemuwrapper-cross \
> resize-helper \
> rust \
> rust-llvm \
> rust-llvm-native \
> rust-native \
> systemd \
> systemd-compat-units \
> systemd-conf \
> systemd-mount-partitions \
> tar \
> vala \
> xxhash \
> zstd \
> "
> ```
>
> The main one I want to remove is Rust, but I still see it building in the
> log.
>
> I have also tried using `IMAGE_INSTALL:remove` (in fact, I have both at
> the same time at the moment in my `local.conf` file), but it doesn't seem
> to work either. I have also tried both options in my `bbappend` file with
> no success either.
>
> What am I doing wrong here? Is removing Rust even possible?
>
> Some other packages I'm trying to remove are also appearing in the build
> log, like `dpkg-native` or `cmake`.
>
> Thank you.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59614):
> https://lists.yoctoproject.org/g/yocto/message/59614
> Mute This Topic: https://lists.yoctoproject.org/mt/98079587/4689568
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b6c76305f895241c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Randomly removing things just does not work (TM).<div><br>=
</div><div>Bitbake builds only what you tell it to anyways, so whatever you=
 see in your build is directly (because it goes into the resulting image) o=
r indirectly (because it is needed to build the resulting image) defined by=
 your target. So the things you can do is:</div><div>- looking at your imag=
e recipe, and remove things</div><div>- looking at your machine and distro,=
 if they add things, and remove there.</div><div>Rust native is almost impo=
ssible to remove nowadays, because it is a build dependency of python3-cryp=
tography.</div><div><br></div><div>Greetz,</div><div>Josef</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr=
 5, 2023 at 12:46=E2=80=AFPM Jesus.JimenezSanchez via <a href=3D"http://lis=
ts.yoctoproject.org">lists.yoctoproject.org</a> &lt;Jesus.JimenezSanchez=3D=
<a href=3D"mailto:verifone.com@lists.yoctoproject.org">verifone.com@lists.y=
octoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>I&#39;m trying to remove a series of packages from my y=
octo build but what I&#39;ve tried hasn&#39;t worked so far. This is what I=
 have:</div>
<div>=C2=A0</div>
<div>```</div>
<div>PACKAGE_EXCLUDE +=3D &quot;\</div>
<div><span style=3D"white-space:pre-wrap"> </span>avahi \</div>
<div><span style=3D"white-space:pre-wrap"> </span>apt \</div>
<div><span style=3D"white-space:pre-wrap"> </span>apt-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>cmake \</div>
<div><span style=3D"white-space:pre-wrap"> </span>cmake-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>cracklib \</div>
<div><span style=3D"white-space:pre-wrap"> </span>crda \</div>
<div><span style=3D"white-space:pre-wrap"> </span>cryptodev-linux \</div>
<div><span style=3D"white-space:pre-wrap"> </span>dpkg \</div>
<div><span style=3D"white-space:pre-wrap"> </span>dpkg-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>elfutils \</div>
<div><span style=3D"white-space:pre-wrap"> </span>elfutils-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>fftw \</div>
<div><span style=3D"white-space:pre-wrap"> </span>gawk \</div>
<div><span style=3D"white-space:pre-wrap"> </span>gcc-runtime \</div>
<div><span style=3D"white-space:pre-wrap"> </span>gnupg \</div>
<div><span style=3D"white-space:pre-wrap"> </span>hdparm \</div>
<div><span style=3D"white-space:pre-wrap"> </span>icu \</div>
<div><span style=3D"white-space:pre-wrap"> </span>kbd \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libassuan \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libatomic-ops \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libavahi-client \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libavahi-common \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libavahi-core \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libcap-ng \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libdaemon \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libgcc \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libgcc-initial \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libgcrypt \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libgpg-error \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libical \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libidn2 \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libksba \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libmnl \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libogg \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libtirpc \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libtool \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libtool-cross \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libubootenv \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libunistring \</div>
<div><span style=3D"white-space:pre-wrap"> </span>libxcrypt \</div>
<div><span style=3D"white-space:pre-wrap"> </span>linux-libc-headers \</div=
>
<div><span style=3D"white-space:pre-wrap"> </span>lz4 \</div>
<div><span style=3D"white-space:pre-wrap"> </span>lzo \</div>
<div><span style=3D"white-space:pre-wrap"> </span>npth \</div>
<div><span style=3D"white-space:pre-wrap"> </span>pinentry \</div>
<div><span style=3D"white-space:pre-wrap"> </span>pulseaudio \</div>
<div><span style=3D"white-space:pre-wrap"> </span>qemuwrapper-cross \</div>
<div><span style=3D"white-space:pre-wrap"> </span>resize-helper \</div>
<div><span style=3D"white-space:pre-wrap"> </span>rust \</div>
<div><span style=3D"white-space:pre-wrap"> </span>rust-llvm \</div>
<div><span style=3D"white-space:pre-wrap"> </span>rust-llvm-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>rust-native \</div>
<div><span style=3D"white-space:pre-wrap"> </span>systemd \</div>
<div><span style=3D"white-space:pre-wrap"> </span>systemd-compat-units \</d=
iv>
<div><span style=3D"white-space:pre-wrap"> </span>systemd-conf \</div>
<div><span style=3D"white-space:pre-wrap"> </span>systemd-mount-partitions =
\</div>
<div><span style=3D"white-space:pre-wrap"> </span>tar \</div>
<div><span style=3D"white-space:pre-wrap"> </span>vala \</div>
<div><span style=3D"white-space:pre-wrap"> </span>xxhash \</div>
<div><span style=3D"white-space:pre-wrap"> </span>zstd \</div>
<div>&quot;</div>
<div>```</div>
<div>=C2=A0</div>
<div>The main one I want to remove is Rust, but I still see it building in =
the log.</div>
<div>=C2=A0</div>
<div>I have also tried using `IMAGE_INSTALL:remove` (in fact, I have both a=
t the same time at the moment in my `local.conf` file), but it doesn&#39;t =
seem to work either. I have also tried both options in my `bbappend` file w=
ith no success either.</div>
<div>=C2=A0</div>
<div>What am I doing wrong here? Is removing Rust even possible?<br><br>Som=
e other packages I&#39;m trying to remove are also appearing in the build l=
og, like `dpkg-native` or `cmake`.</div>
<div>=C2=A0</div>
<div>Thank you.</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59614): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59614" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59614</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98079587/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98079587/4689568</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b6c76305f895241c--

