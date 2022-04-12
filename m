Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3852CC43219
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:44 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.11145.1649772635795567905
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 07:10:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TfwoKcAh;
 spf=pass (domain: gmail.com, ip: 209.85.219.176,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f176.google.com with SMTP id v77so15185989ybi.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 07:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oizeM6xqVmx7xFeVOctpM1QezeazWCb/6gTvJY5+ZtE=;
        b=TfwoKcAhHEINTuvh2qggzTItvnteoN5wwVMjDamlr8X9zKShzwKc5hje/B7Ec5inxO
         l97EXWhH4zyUIqc8XuX916c0y9VdkqFFSyN97XsflU8llTG3iCZVi8Jyvv+3fpVHE8oW
         yiSxWrDVp5ei66DSFKGcIgoqyGgFrsg5013PqyphCtta6nH/fz446SY4SQTseZnVXdRE
         VxMJI+Mi6RhwcAxXjeZYzNUpRnZDQ3hQ3gMAQsfbc+ceL3+g+DmAWkmWm3DGcr7aaqAl
         yOTTUBzmn7yMxAXrfg1RVkyfhLE/bHO2wyHKSYAjfIIvqFsrL6L8F26Cd+IRhZP5e7+1
         u5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oizeM6xqVmx7xFeVOctpM1QezeazWCb/6gTvJY5+ZtE=;
        b=PH85ft6M0F5M6SGNvW5P/SpgQQsZhd46fEZSlWxA2hwbJCCzT2La26Zw7LkNCRVRN1
         OMhfKd/elswEqS2aYoHFFEoUJI5YQzf5a3kaUFtXdgB6SC7okt6N7R7vYS5X2x0w6mt6
         vgA4/ODowIfSOxYY1HjRh48csSM/xdFYdltzTHWxSQNOEHyS9DmT0iNzppj6pP7el8lg
         zvyaqoPsRotBSI2Y86jJGSArcjbqOKaU/dQcB1sHzRTTjUVbhDQa6TAe6iNbJxMdF9QN
         3wKqR5Y/CuKWT9SHG976CxXh+8CTZz1LeDCq5jObOl66qBkukYXhGelSy3gmPGPKlWqj
         zOYQ==
X-Gm-Message-State: AOAM531KZoGM1WUmeVh5rj/u/J1cZzD5hLGzh5xRXeNt+revg20SXWvD
	2CGxgmrhEDEXt7getc6yY265YjwsZ2oULW4Vucs=
X-Google-Smtp-Source: 
 ABdhPJwJ4ZPjF8bh6MjEdKbO32SgmDECFceJp+P8qHDFpZorbVSc+lIcAaUqh/pJFDV35Wcg5VonWy+Usn7E4WsSiVs=
X-Received: by 2002:a25:3744:0:b0:641:28ec:c7a8 with SMTP id
 e65-20020a253744000000b0064128ecc7a8mr10321842yba.560.1649772634673; Tue, 12
 Apr 2022 07:10:34 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
 <CAKKtPp_OLSWBhEZmS0hmuM-p9va_OcpMoLDs8VZq5p8frPJ0TA@mail.gmail.com>
 <CAKKtPp90UdmN3ZghM9TwZXvS2v3pBOX8_GQaYydOp8hd8-5atg@mail.gmail.com>
 <CAEt6NwotUehxD_ZAH-kriTpd+8thAUrUO5sRxSKE5YXYOmEf3A@mail.gmail.com>
In-Reply-To: 
 <CAEt6NwotUehxD_ZAH-kriTpd+8thAUrUO5sRxSKE5YXYOmEf3A@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Tue, 12 Apr 2022 07:10:24 -0700
Message-ID: 
 <CAKKtPp9W4QBtSrVcNuHvNd8e7=15nt0Hy_bxx0nd_brJj0ZJJA@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d9955b05dc759f6c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56750

--000000000000d9955b05dc759f6c
Content-Type: text/plain; charset="UTF-8"

I've ended up removing the wrong arch binaries and ignoring the stripped
ones.
Unfortunately I have no idea on where to start to rebuild the binaries
using the cross toolchain, everything seems to be handled by the npm
bbclass and node-gyp.

On Tue, Apr 12, 2022 at 12:16 AM Josef Holzmayr <jester@theyoctojester.info>
wrote:

> As already pointed out on IRC, the only real solution is:
> a) removing the shipped binaries from the install (as Khem also mentioned)
> and b) making the module re-build the binaries using the cross
> toolchain that the rest of the build also uses.
>
> Greetz
>
> Am Di., 12. Apr. 2022 um 00:26 Uhr schrieb Alessandro Tagliapietra
> <tagliapietra.alessandro@gmail.com>:
> >
> > Tested with updated honister branch, same error
> >
> > --
> > Alessandro Tagliapietra
> >
> >
> > On Mon, Apr 11, 2022 at 2:41 PM Alessandro Tagliapietra <
> tagliapietra.alessandro@gmail.com> wrote:
> >>
> >> I'm using honister (it's from a few months ago, I'm currently
> rebuilding using the latest commit)
> >>
> >> On Mon, Apr 11, 2022 at 2:29 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> which release branch are you using?
> >>>
> >>> On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra
> >>> <tagliapietra.alessandro@gmail.com> wrote:
> >>> >
> >>> > Removing works, the build succeeded, however I can't test if it's
> actually needed by the package, I'll try that tomorrow.
> >>> > Regarding file paths for example file linux-arm/node.napi.armv7.node
> is in these paths:
> >>> >
> >>> >
> image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >>> >
> packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >>> >
> npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >>> >
> package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >>> >
> npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >>> >
> >>> > so it seems to be in node-red-node-serialport which is our package
> so INSANE_SKIP_${PN} += "already-stripped arch" should work.
> >>> >
> >>> >
> >>> > On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>> >>
> >>> >>
> >>> >>
> >>> >> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <
> tagliapietra.alessandro@gmail.com> wrote:
> >>> >>>
> >>> >>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com>
> wrote:
> >>> >>>>
> >>> >>>>
> >>> >>>> what package folders do you see under packages-split/ folder in
> your
> >>> >>>> build area for this recipe ?
> >>> >>>
> >>> >>>
> >>> >>> The ones I've added in the INSANE_SKIP
> >>> >>>
> >>> >>> ls -lah
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
> >>> >>> total 32K
> >>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
> >>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23
> node-red-node-serialport-dbg
> >>> >>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23
> node-red-node-serialport-dev
> >>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
> node-red-node-serialport-doc
> >>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
> node-red-node-serialport-locale
> >>> >>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04
> node-red-node-serialport.shlibdeps
> >>> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23
> node-red-node-serialport-src
> >>> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
> node-red-node-serialport-staticdev
> >>> >>
> >>> >>
> >>> >> Ok then next thing you want to check is where the reported stripped
> file is located and even if it does not work then perhaps look into
> removing these files if they are not needed
> >>> >>>
> >>> >>>
> >>> >>>
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#56729):
> https://lists.yoctoproject.org/g/yocto/message/56729
> > Mute This Topic: https://lists.yoctoproject.org/mt/90398675/4689568
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000d9955b05dc759f6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve ended up removing the wrong arch binaries and ign=
oring the stripped ones.<div>Unfortunately I have no idea on where to start=
 to rebuild the binaries using the cross toolchain, everything seems to be =
handled by the npm bbclass and node-gyp.</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 12, 2022 at 12:16=
 AM Josef Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jester=
@theyoctojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">As already pointed out on IRC, the only real solution i=
s:<br>
a) removing the shipped binaries from the install (as Khem also mentioned)<=
br>
and b) making the module re-build the binaries using the cross<br>
toolchain that the rest of the build also uses.<br>
<br>
Greetz<br>
<br>
Am Di., 12. Apr. 2022 um 00:26 Uhr schrieb Alessandro Tagliapietra<br>
&lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">=
tagliapietra.alessandro@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; Tested with updated honister branch, same error<br>
&gt;<br>
&gt; --<br>
&gt; Alessandro Tagliapietra<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Apr 11, 2022 at 2:41 PM Alessandro Tagliapietra &lt;<a href=3D=
"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">tagliapietra.a=
lessandro@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using honister (it&#39;s from a few months ago, I&#39;m cu=
rrently rebuilding using the latest commit)<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Apr 11, 2022 at 2:29 PM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; which release branch are you using?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" targe=
t=3D"_blank">tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Removing works, the build succeeded, however I can&#39;t =
test if it&#39;s actually needed by the package, I&#39;ll try that tomorrow=
.<br>
&gt;&gt;&gt; &gt; Regarding file paths for example file linux-arm/node.napi=
.armv7.node is in these paths:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; image/usr/lib/node_modules/node-red-node-serialport/node_=
modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<b=
r>
&gt;&gt;&gt; &gt; packages-split/node-red-node-serialport/usr/lib/node_modu=
les/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuild=
s/linux-arm/node.napi.armv7.node<br>
&gt;&gt;&gt; &gt; npm-build/lib/node_modules/node-red-node-serialport/node_=
modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<b=
r>
&gt;&gt;&gt; &gt; package/usr/lib/node_modules/node-red-node-serialport/nod=
e_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node=
<br>
&gt;&gt;&gt; &gt; npm/node_modules/@serialport/bindings-cpp/prebuilds/linux=
-arm/node.napi.armv7.node<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; so it seems to be in node-red-node-serialport which is ou=
r package so INSANE_SKIP_${PN} +=3D &quot;already-stripped arch&quot; shoul=
d work.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Mon, Apr 11, 2022 at 2:14 PM Khem Raj &lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrot=
e:<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapiet=
ra &lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blan=
k">tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; On Mon, Apr 11, 2022 at 1:36 PM Khem Raj &lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt; wrote:<br>
&gt;&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;&gt; what package folders do you see under package=
s-split/ folder in your<br>
&gt;&gt;&gt; &gt;&gt;&gt;&gt; build area for this recipe ?<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; The ones I&#39;ve added in the INSANE_SKIP<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt; ls -lah /home/alex/Projects/yocto/build/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r=
0/packages-split<br>
&gt;&gt;&gt; &gt;&gt;&gt; total 32K<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red=
-node-serialport<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red=
-node-serialport-dbg<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red=
-node-serialport-dev<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 nod=
e-red-node-serialport-doc<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 nod=
e-red-node-serialport-locale<br>
&gt;&gt;&gt; &gt;&gt;&gt; -rw-r--r-- 1 alex alex=C2=A0 =C2=A057 Apr=C2=A0 6=
 16:04 node-red-node-serialport.shlibdeps<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red=
-node-serialport-src<br>
&gt;&gt;&gt; &gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 nod=
e-red-node-serialport-staticdev<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; Ok then next thing you want to check is where the rep=
orted stripped file is located and even if it does not work then perhaps lo=
ok into removing these files if they are not needed<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#56729): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56729" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/56729</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90398675=
/4689568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/90398675/4689568</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank"=
>jester@theyoctojester.info</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000d9955b05dc759f6c--

