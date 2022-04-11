Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3237C35295
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:38 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.756.1649700891666704589
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 11:14:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oGFvVI33;
 spf=pass (domain: gmail.com, ip: 209.85.208.175,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id m8so3715082ljc.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 11:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N3F3QrhD+7bYHQW1SzYDGkHW84aZvOM5lqAqHIAkC1M=;
        b=oGFvVI336OAfo0R0c0rk7V15tNHpO08jN38BVjFZZ9bO83idLPqZ3GqQuNJyweH4uM
         GTzj77Egec7IMg0j/S6/+kBoV2xrNKZh9ubgAJPta358Xf4puEGSgWL5mn0lL0LNhTLL
         L4ojIsJokH2Xsxhww4WOcFwoWZGpzJB9O0RHNVLoYeOgCqKf9iptNAXda/+DAnzJ/qVc
         k0URlu1DFGPgq46tn7bOSIpiY7LJ6XCAZvj6+botl6mJnz8aD5+gtgL0zucWNB6+rTzS
         Y0LzKr3jh35RNIBeycMCxoNR2afxV+N78JJEmQyyJEkxLKwuGcbBDmaV/IGw044kkrkm
         Uuvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N3F3QrhD+7bYHQW1SzYDGkHW84aZvOM5lqAqHIAkC1M=;
        b=ydGdK0kSF16qOBZJKPRKF55VAnq81AXMM1SfiP7uEN/KnILo1GzfT/YnKW/kyxIBIK
         YiWBEUrIhgoag5ifFOmRnTUvVnsKY1KJhsdb+M6AQlg8HX7tx5jEoo4pFIj+3ufnKKhY
         Iyu0W640p126sHgoJaZUBBpQ6s1eHyYbJte/QOcz7YFGzwAtKFEUwXsTv+wkumrW8Hck
         SLubvx3+Z9YWYdq/hdShefbiDHl9EScbkzmTnHHYoIPyotmf8QYrkzFHyP4WtWw+9su+
         4teeiDIf2WwLL6Xu5Gx/sEuaMTNzLfNSrnGgFW+2hmjfB24o99Td4AbXt5TgdzV7mTqI
         f3iA==
X-Gm-Message-State: AOAM533GTvxG9ocRy28HrlQIb4J7ll1Pj6AzIKv6eo0B9+sUlVLy8AKC
	dJu1gigtB/XX4OwnVEjgLsRqaYayDHpIX5JJKoM=
X-Google-Smtp-Source: 
 ABdhPJxqB7yIKsOO6AJOB1yzHFJkWDkuLXxdVmvRMZfb829Gh9ApMZTX3LFhmZ4Mka/5uPV3ek+Nuh68fDv5Wu+bGSI=
X-Received: by 2002:a2e:b008:0:b0:24b:4ff2:5e09 with SMTP id
 y8-20020a2eb008000000b0024b4ff25e09mr11317151ljk.28.1649700889689; Mon, 11
 Apr 2022 11:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
In-Reply-To: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 11 Apr 2022 19:14:38 +0100
Message-ID: 
 <CANPvuRkSMe6-jA7UH_4-dvxLpnRoJLL4wg7Rxsv26r4kRWkrpw@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000084001805dc64ebbf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56720

--00000000000084001805dc64ebbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com> escreveu no dia
segunda, 11/04/2022 =C3=A0(s) 17:13:

> I've created an npm package recipe for node-red-node-serialport
> <https://www.npmjs.com/package/node-red-node-serialport> using
>
> devtool add "npm://registry.npmjs.org
> ;package=3Dnode-red-node-serialport;version=3D1.0.1"
>
> which generated this
> <https://gist.github.com/alex88/e0e1bca5ac07137229839120f8bfe273> recipe.
>
> The problem is when building I get
>
> WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv6.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.glibc.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.musl.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors
> found, failing task.
> ERROR: Logfile of failure stored in:
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/node-red-node-serialport/1.0.1-r0/temp/log.do_package.75444
> ERROR: Task
> (/home/alex/Projects/yocto/meta-things5/recipes-devtools/node-red-node-se=
rialport/node-red-node-serialport_1.0.1.bb:do_package)
> failed with exit code '1'
>
> I've tried to add
>
> INSANE_SKIP_${PN} +=3D "already-stripped"
>
> in the recipe and in a bbappend but I still get the error.
>
> Why? I need to get this out asap so any help is appreciated.
>

Hi Alessandro,

This is because the package that you are building is already compiled and
there seems to be too many archs.
Your target archs is arm (cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi) and
it is pre builded for a bunch of arch (prebuilds/linux-XX, where XX is the
arch).
Yocto can cross compile the code for you and probably you don't need the
pre-built binaries.

Jose


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56718):
> https://lists.yoctoproject.org/g/yocto/message/56718
> Mute This Topic: https://lists.yoctoproject.org/mt/90398675/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000084001805dc64ebbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Alessandro Tagliapietra &lt;<a href=
=3D"mailto:tagliapietra.alessandro@gmail.com">tagliapietra.alessandro@gmail=
.com</a>&gt; escreveu no dia segunda, 11/04/2022 =C3=A0(s) 17:13:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">I&#39;ve created an npm p=
ackage recipe for <a href=3D"https://www.npmjs.com/package/node-red-node-se=
rialport" rel=3D"noopener" target=3D"_blank">node-red-node-serialport</a> u=
sing<br><br>
<div>devtool add &quot;npm://<a href=3D"http://registry.npmjs.org" target=
=3D"_blank">registry.npmjs.org</a>;package=3Dnode-red-node-serialport;versi=
on=3D1.0.1&quot;<br><br>which generated <a href=3D"https://gist.github.com/=
alex88/e0e1bca5ac07137229839120f8bfe273" rel=3D"noopener" target=3D"_blank"=
>this</a> recipe.<br><br>The problem is when building I get=C2=A0<br><br>
<blockquote>
<div>WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.</div>
<div>WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm/node.napi.armv7.node&#39; from node-red-=
node-serialport was already stripped, this will prevent future debugging! [=
already-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm64/node.napi.armv8.node&#39; from node-re=
d-node-serialport was already stripped, this will prevent future debugging!=
 [already-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv6.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm64/node.napi.armv8.node&#39; from node-red-=
node-serialport was already stripped, this will prevent future debugging! [=
already-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.glibc.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.musl.node&#39; from node-red-nod=
e-serialport was already stripped, this will prevent future debugging! [alr=
eady-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors f=
ound, failing task.</div>
<div>ERROR: Logfile of failure stored in: /home/alex/Projects/yocto/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport=
/1.0.1-r0/temp/log.do_package.75444</div>
<div>ERROR: Task (/home/alex/Projects/yocto/meta-things5/recipes-devtools/n=
ode-red-node-serialport/node-red-node-serialport_1.0.1.bb:do_package) faile=
d with exit code &#39;1&#39;</div>
</blockquote>
<div>I&#39;ve tried to add<br><br>INSANE_SKIP_${PN} +=3D &quot;already-stri=
pped&quot;<br><br>in the recipe and in a bbappend but I still get the error=
.<br><br>Why? I need to get this out asap so any help is appreciated.</div>=
</div></blockquote><div><br></div><div>Hi Alessandro,</div><div><br></div><=
div>This is because the package that you are building is already compiled a=
nd there seems to be too many archs.</div><div>Your target archs is arm (co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi) and it is pre builded=C2=A0for a =
bunch of arch (prebuilds/linux-XX, where XX is the arch).</div><div>Yocto c=
an cross compile the code for you and probably you don&#39;t need the pre-b=
uilt binaries.</div><div><br></div><div>Jose</div><div><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56718): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56718" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56718</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90398675/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90398675/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--00000000000084001805dc64ebbf--

