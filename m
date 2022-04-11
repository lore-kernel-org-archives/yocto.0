Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FADC352AA
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
 [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web09.3361.1649713288150616350
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:41:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iXFcXIxf;
 spf=pass (domain: gmail.com, ip: 209.85.128.179,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-2eafabbc80aso180854677b3.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 14:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=28IvmbZ3AaCnHyN1sktt2sJDjiYQT3boLlSvKuTflBY=;
        b=iXFcXIxf5oEuEaKFTo7WgWD4bq2Wk4OqY9g8UunODnCFETSbV9NNBcXA77We/+ME7r
         m4awnzD0XrPNg1JsCy/bCGFO1NQ3Ru2QbHnSOEgorVqE098F83iLni6taT7iI8BRIOUD
         E6jYq7yaSabngWZS2QPYmuTwaCNLyhvkYBTbNzo0b6NJyQZKYgzCrXHaDNhuKeQtIvji
         UtnP1sIQbf1PtNcIqNO5VZq0ba6iGisKW0tBRvEB70mYtC2GjvRV6eb0mGlB3NKdq363
         61uQfo+ZtvgiB8Bl5FSCmatksLM7enm7BQslnsv7sU01Va/kH7gVZvVgbzNedMc0MZiV
         3Jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=28IvmbZ3AaCnHyN1sktt2sJDjiYQT3boLlSvKuTflBY=;
        b=Oc1AZOwMu0w3TRfGmQ9lidk2Y5pFp5BC3mQK297aWXbU5E2KK4EPZTG4ufiOnCTYEO
         F7FLKVs9u8eIzWD9NlesFTQqc/9rwRrvHarAjd+GDppDxx4HHb4J1RfrvJWquKzyJPTe
         x10DaD5jVtWv0g7mDPA3CyoeQm6G9rwPiNd6AQb9gm4aX3G8ucmdb2GIy5jC0m2sruh6
         hGtpnGHnBgT0aW2UC/LgIHFzwkKNtymFbXtSAB+rvhvYCqh2taZ+0LdmKgMQX+5We0kz
         KSVHRolzwO3wfAIuQpTkauvj0XBbNsdPhlZDKLMGo/NFsbLmhcaTTmXg3MKCnURGVoW7
         R/Fw==
X-Gm-Message-State: AOAM532F3eqolOtci9T8uvvTuX4ZDNH45MAFGX8lrnqrb82SsyTUhnLK
	wcznIZm+7ZYG1/pk7HZAUabP7R2xVmJvdAMascY=
X-Google-Smtp-Source: 
 ABdhPJxFPcREJqnEVO7HWdVCZBtE1JgC1I6MYMyiAaQEI2P+qdz4A3I9yLWZusSXKj63gBR7F62owGsiG547i9XlXIM=
X-Received: by 2002:a81:58c1:0:b0:2eb:faf0:1e25 with SMTP id
 m184-20020a8158c1000000b002ebfaf01e25mr9385771ywb.311.1649713287276; Mon, 11
 Apr 2022 14:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
 <CAKKtPp9kqfPSRhPvmh52GmTVe1pMxVV4r4C6V3KSs4XXOgWUgA@mail.gmail.com>
 <CAMKF1sqoFu0UmVx0vKOLk-k4aWbxQAKZXCUthKNQ49Eh=CU5Pg@mail.gmail.com>
 <CAKKtPp-3_JHiAEMup48WPZUj4uPe9fkYs5JiN4YBORWdiojfqQ@mail.gmail.com>
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srTY+vNX=oWD576gYr31g2Y06zX9AcZ3YtKnoLneSN8ZQ@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Mon, 11 Apr 2022 14:41:16 -0700
Message-ID: 
 <CAKKtPp_OLSWBhEZmS0hmuM-p9va_OcpMoLDs8VZq5p8frPJ0TA@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000782c1a05dc67ceb7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56728

--000000000000782c1a05dc67ceb7
Content-Type: text/plain; charset="UTF-8"

I'm using honister (it's from a few months ago, I'm currently
rebuilding using the latest commit)

On Mon, Apr 11, 2022 at 2:29 PM Khem Raj <raj.khem@gmail.com> wrote:

> which release branch are you using?
>
> On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra
> <tagliapietra.alessandro@gmail.com> wrote:
> >
> > Removing works, the build succeeded, however I can't test if it's
> actually needed by the package, I'll try that tomorrow.
> > Regarding file paths for example file linux-arm/node.napi.armv7.node is
> in these paths:
> >
> >
> image/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >
> packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >
> npm-build/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >
> package/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >
> npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node
> >
> > so it seems to be in node-red-node-serialport which is our package so
> INSANE_SKIP_${PN} += "already-stripped arch" should work.
> >
> >
> > On Mon, Apr 11, 2022 at 2:14 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >>
> >> On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra <
> tagliapietra.alessandro@gmail.com> wrote:
> >>>
> >>> On Mon, Apr 11, 2022 at 1:36 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>>>
> >>>>
> >>>> what package folders do you see under packages-split/ folder in your
> >>>> build area for this recipe ?
> >>>
> >>>
> >>> The ones I've added in the INSANE_SKIP
> >>>
> >>> ls -lah
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-split
> >>> total 32K
> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport
> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dbg
> >>> drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-dev
> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04 node-red-node-serialport-doc
> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
> node-red-node-serialport-locale
> >>> -rw-r--r-- 1 alex alex   57 Apr  6 16:04
> node-red-node-serialport.shlibdeps
> >>> drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialport-src
> >>> drwxr-xr-x 2 alex alex 4.0K Apr  6 16:04
> node-red-node-serialport-staticdev
> >>
> >>
> >> Ok then next thing you want to check is where the reported stripped
> file is located and even if it does not work then perhaps look into
> removing these files if they are not needed
> >>>
> >>>
> >>>
>

--000000000000782c1a05dc67ceb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m using honister (it&#39;s from a few months ago, I&=
#39;m currently rebuilding=C2=A0using the latest=C2=A0commit)<br></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Ap=
r 11, 2022 at 2:29 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">ra=
j.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">which release branch are you using?<br>
<br>
On Mon, Apr 11, 2022 at 2:27 PM Alessandro Tagliapietra<br>
&lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">=
tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Removing works, the build succeeded, however I can&#39;t test if it&#3=
9;s actually needed by the package, I&#39;ll try that tomorrow.<br>
&gt; Regarding file paths for example file linux-arm/node.napi.armv7.node i=
s in these paths:<br>
&gt;<br>
&gt; image/usr/lib/node_modules/node-red-node-serialport/node_modules/@seri=
alport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; packages-split/node-red-node-serialport/usr/lib/node_modules/node-red-=
node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/n=
ode.napi.armv7.node<br>
&gt; npm-build/lib/node_modules/node-red-node-serialport/node_modules/@seri=
alport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; package/usr/lib/node_modules/node-red-node-serialport/node_modules/@se=
rialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node<br>
&gt; npm/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.nap=
i.armv7.node<br>
&gt;<br>
&gt; so it seems to be in node-red-node-serialport which is our package so =
INSANE_SKIP_${PN} +=3D &quot;already-stripped arch&quot; should work.<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Apr 11, 2022 at 2:14 PM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Apr 11, 2022 at 1:43 PM Alessandro Tagliapietra &lt;<a hre=
f=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">tagliapiet=
ra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Apr 11, 2022 at 1:36 PM Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; what package folders do you see under packages-split/ fold=
er in your<br>
&gt;&gt;&gt;&gt; build area for this recipe ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The ones I&#39;ve added in the INSANE_SKIP<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ls -lah /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-=
neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/packages-sp=
lit<br>
&gt;&gt;&gt; total 32K<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-dbg<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-dev<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-doc<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-locale<br>
&gt;&gt;&gt; -rw-r--r-- 1 alex alex=C2=A0 =C2=A057 Apr=C2=A0 6 16:04 node-r=
ed-node-serialport.shlibdeps<br>
&gt;&gt;&gt; drwxr-xr-x 3 alex alex 4.0K Apr 11 13:23 node-red-node-serialp=
ort-src<br>
&gt;&gt;&gt; drwxr-xr-x 2 alex alex 4.0K Apr=C2=A0 6 16:04 node-red-node-se=
rialport-staticdev<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Ok then next thing you want to check is where the reported strippe=
d file is located and even if it does not work then perhaps look into remov=
ing these files if they are not needed<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
</blockquote></div>

--000000000000782c1a05dc67ceb7--

