Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1672EC352A1
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web10.2466.1649708867143537517
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:27:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gaUhVxjg;
 spf=pass (domain: gmail.com, ip: 209.85.219.178,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id p65so11313690ybp.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gQ7IEGWIyiTFj4XyWjDKX4EBizeKrVloNOD6xLI9YCs=;
        b=gaUhVxjg+7xK8tQRwqXrafvEGYBaQpr0xhugZwxA1JBc1r8ct0TQHC4P5BbFHyIcXS
         umy1x1czDm4w1RSEaVBFg5wboXyqqniUFwQuesF/9yKZOaxcIGThqawxdrAH0cy1NaOQ
         UZUuN5PYqCHs5HXDW54QDsUbD8fUppYNg3w/Ctck8LzdTDl3MDR0eRDvPqcrpcsgQO9v
         0kRp+NGNvYb/M6gWRCgsagYuf84J9b32ODK4+tqYhyyUPDVHl45xZysP3GH9eVqTHmQr
         gHq6lj0mBXrygWWNr075xDB2Ou+0Y8BlRhspcSQ7dtXOR24szbLAjd5cZRJLRfGnvfL/
         1aSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gQ7IEGWIyiTFj4XyWjDKX4EBizeKrVloNOD6xLI9YCs=;
        b=t/N+NQfRNBYrg2xB60d4NU8X8pxzfZdJPIGG0PEHAx3jHDVpp7RzgihfstGbz3B2rk
         Y6qTPFcLqCXqI3dn3Rm9GMi1twrHfXuzCIEG8jy+uo2SYLboCpvvFPS2JnxcdU5FApgH
         c6vDDjOaFqrXd85hhwc4yExX8Ts5ZsZ+ViGCmEwMx88P5Bw5WwhxdugP23ywLEg1hIlZ
         2+B4UNPkwtDq3yWsJMqc8hn09YEEqUHHL9ZqwbpJ8Om5byMB3eLBfmBokQ5Y07+/I5Fi
         EP6RZn2TwjKDp3f+AgjbwtjbXqyCeKDeS8CiDGfQSE+sF2mU7a09HWp58NE40gH3Etby
         raBw==
X-Gm-Message-State: AOAM530ewNi0LPCQMNsccbiYLT4XMSecM6tTWpbFvaSrJz+n2+lZpVX+
	lfdUvpBYvNwbL1bWS4u40moggbm8E0SOFTs89q8=
X-Google-Smtp-Source: 
 ABdhPJyVOOaR+x17/PhbWsVTaoVuiT9K76R9muyTG/xjrPP9PvRl/n2zofc7TTKPlLiLDekxuOljdRJpfRklWyULqhE=
X-Received: by 2002:a25:c708:0:b0:641:6421:a183 with SMTP id
 w8-20020a25c708000000b006416421a183mr4816394ybe.164.1649708866140; Mon, 11
 Apr 2022 13:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Mon, 11 Apr 2022 13:27:35 -0700
Message-ID: 
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f2ffaa05dc66c680"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56722

--000000000000f2ffaa05dc66c680
Content-Type: text/plain; charset="UTF-8"

Thank you for helping!

The package is node-red-node-serialport, it doesn't seem to create child
packages for the dependencies, the nodejs deps only reside in the package
node-modules folder.
The packages-split only contained node-red-node-serialport-* packages.

So I've tried to add the skips for these child packages too:

INSANE_SKIP_${PN} += "already-stripped arch"
INSANE_SKIP_${PN}-dbg += "already-stripped arch"
INSANE_SKIP_${PN}-dev += "already-stripped arch"
INSANE_SKIP_${PN}-doc += "already-stripped arch"
INSANE_SKIP_${PN}-locale += "already-stripped arch"
INSANE_SKIP_${PN}-src += "already-stripped arch"
INSANE_SKIP_${PN}-staticdev += "already-stripped arch"

and I still get the error.

I've then tried to remove them:

do_install:prepend() {
    rm -Rf
${NPM_BUILD}/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds
}

and it seems to work, however I would like to keep them as the armv7 is the
one that's probably used for the raspberry.
Any other things I can try to ignore the QA check?

Thank you


On Mon, Apr 11, 2022 at 11:27 AM Khem Raj <raj.khem@gmail.com> wrote:

> The prebuilds are for other architectures. so perhaps you can rm them
> in a do_install_append() or if they are really needed
> you perhaps would also need INSANE_SKIP_<name of package> = "arch"
> eventually
>
> is your recipe called node-red-node-serialport ?
> INSANE_SKIP_${PN} is only accounting for one output package. You
> perhaps will need to specify it for all the packages generated by this
> recipe.
> so check where these files are landing in packages-split/ folder in
> the build area of this recipe
>
> On Mon, Apr 11, 2022 at 9:13 AM Alessandro Tagliapietra
> <tagliapietra.alessandro@gmail.com> wrote:
> >
> > I've created an npm package recipe for node-red-node-serialport using
> >
> > devtool add "npm://registry.npmjs.org
> ;package=node-red-node-serialport;version=1.0.1"
> >
> > which generated this recipe.
> >
> > The problem is when building I get
> >
> > WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> > WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/android-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/android-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv6.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-x64/node.napi.glibc.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bindings-cpp/prebuilds/linux-x64/node.napi.musl.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors
> found, failing task.
> > ERROR: Logfile of failure stored in:
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport/1.0.1-r0/temp/log.do_package.75444
> > ERROR: Task
> (/home/alex/Projects/yocto/meta-things5/recipes-devtools/node-red-node-serialport/node-red-node-serialport_1.0.1.bb:do_package)
> failed with exit code '1'
> >
> > I've tried to add
> >
> > INSANE_SKIP_${PN} += "already-stripped"
> >
> > in the recipe and in a bbappend but I still get the error.
> >
> > Why? I need to get this out asap so any help is appreciated.
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#56718):
> https://lists.yoctoproject.org/g/yocto/message/56718
> > Mute This Topic: https://lists.yoctoproject.org/mt/90398675/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000f2ffaa05dc66c680
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for helping!</div><div><br></div><div>The p=
ackage is=C2=A0node-red-node-serialport, it doesn&#39;t seem to create chil=
d packages for the dependencies, the=C2=A0nodejs deps only reside in the pa=
ckage node-modules folder.</div><div>The packages-split only contained node=
-red-node-serialport-* packages.</div><div><br></div>So I&#39;ve tried to a=
dd the skips for these child packages too:<div><br></div><div>INSANE_SKIP_$=
{PN} +=3D &quot;already-stripped arch&quot;<br>INSANE_SKIP_${PN}-dbg +=3D &=
quot;already-stripped arch&quot;<br>INSANE_SKIP_${PN}-dev +=3D &quot;alread=
y-stripped arch&quot;<br>INSANE_SKIP_${PN}-doc +=3D &quot;already-stripped =
arch&quot;<br>INSANE_SKIP_${PN}-locale +=3D &quot;already-stripped arch&quo=
t;<br>INSANE_SKIP_${PN}-src +=3D &quot;already-stripped arch&quot;<br>INSAN=
E_SKIP_${PN}-staticdev +=3D &quot;already-stripped arch&quot;<br></div><div=
><br></div><div>and I still get the error.</div><div><br></div><div>I&#39;v=
e then tried to remove them:</div><div><br></div><div>do_install:prepend() =
{<br>=C2=A0 =C2=A0 rm -Rf ${NPM_BUILD}/lib/node_modules/node-red-node-seria=
lport/node_modules/@serialport/bindings-cpp/prebuilds<br>}<br></div><div><b=
r></div><div>and it seems to work, however I would like to keep them as the=
 armv7 is the one that&#39;s probably used for the raspberry.</div><div>Any=
 other things I can try to ignore the=C2=A0QA check?</div><div><br></div><d=
iv>Thank you</div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 11, 2022 at 11:27 AM Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The prebuilds a=
re for other architectures. so perhaps you can rm them<br>
in a do_install_append() or if they are really needed<br>
you perhaps would also need INSANE_SKIP_&lt;name of package&gt; =3D &quot;a=
rch&quot; eventually<br>
<br>
is your recipe called node-red-node-serialport ?<br>
INSANE_SKIP_${PN} is only accounting for one output package. You<br>
perhaps will need to specify it for all the packages generated by this<br>
recipe.<br>
so check where these files are landing in packages-split/ folder in<br>
the build area of this recipe<br>
<br>
On Mon, Apr 11, 2022 at 9:13 AM Alessandro Tagliapietra<br>
&lt;<a href=3D"mailto:tagliapietra.alessandro@gmail.com" target=3D"_blank">=
tagliapietra.alessandro@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;ve created an npm package recipe for node-red-node-serialport us=
ing<br>
&gt;<br>
&gt; devtool add &quot;npm://<a href=3D"http://registry.npmjs.org" rel=3D"n=
oreferrer" target=3D"_blank">registry.npmjs.org</a>;package=3Dnode-red-node=
-serialport;version=3D1.0.1&quot;<br>
&gt;<br>
&gt; which generated this recipe.<br>
&gt;<br>
&gt; The problem is when building I get<br>
&gt;<br>
&gt; WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.<br>
&gt; WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm/node.napi.armv7.node&#39; from node-red-=
node-serialport was already stripped, this will prevent future debugging! [=
already-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm64/node.napi.armv8.node&#39; from node-re=
d-node-serialport was already stripped, this will prevent future debugging!=
 [already-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv6.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm64/node.napi.armv8.node&#39; from node-red-=
node-serialport was already stripped, this will prevent future debugging! [=
already-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.glibc.node&#39; from node-red-no=
de-serialport was already stripped, this will prevent future debugging! [al=
ready-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File &#=
39;/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.musl.node&#39; from node-red-nod=
e-serialport was already stripped, this will prevent future debugging! [alr=
eady-stripped]<br>
&gt; ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors f=
ound, failing task.<br>
&gt; ERROR: Logfile of failure stored in: /home/alex/Projects/yocto/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport=
/1.0.1-r0/temp/log.do_package.75444<br>
&gt; ERROR: Task (/home/alex/Projects/yocto/meta-things5/recipes-devtools/n=
ode-red-node-serialport/node-red-node-serialport_1.0.1.bb:do_package) faile=
d with exit code &#39;1&#39;<br>
&gt;<br>
&gt; I&#39;ve tried to add<br>
&gt;<br>
&gt; INSANE_SKIP_${PN} +=3D &quot;already-stripped&quot;<br>
&gt;<br>
&gt; in the recipe and in a bbappend but I still get the error.<br>
&gt;<br>
&gt; Why? I need to get this out asap so any help is appreciated.<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#56718): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56718" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/56718</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90398675=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/90398675/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000f2ffaa05dc66c680--

