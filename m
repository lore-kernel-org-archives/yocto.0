Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A526C47082
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.2580.1649709416295016458
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:36:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UxfYAJRN;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id hu11so14540239qvb.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 13:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BPv7vq6E8nziJXwHK/Wlr7J6+QmyuOHoCmNq5ifZChE=;
        b=UxfYAJRNScYcM1MJd7L6jSZeNjrHRRaw679X3wprF4pEKx3CuzwN3+XF1jWvXs6zzM
         W/lEmQPahjov5EeWhA3DQBPxkhrAM78ogFMCaa6vi2Sn6im+cefKdGQx4TjaDic9iLV5
         sMsyTUmLVhm35vRXt6wXNbbnq3bmzKhyOPUykLL8ePDshwnUauLL+az50nMqdkUy2JAB
         05s4p/Wk6LCCTHal2QKCj6r6FwY2HrfGXCM+3QKiANY57u3hHEOka3ZBQe5Bsi/1WF1w
         BG495vgDIXJi4MV4GzjkgdoT8WTz/ORhYWzZWN5jk74JLgFJgqQ2DyoIq7TTVbeUVwda
         095w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BPv7vq6E8nziJXwHK/Wlr7J6+QmyuOHoCmNq5ifZChE=;
        b=f+XZCsnQY7pev/NcQke61rNTvchrDz8uUAOSa72gJXzlHudwQ6bQV1P8Da4kIDqw3J
         uSTphsOGbANubaYH+xhKD53aS1m1MG+ximU7XwX1z08t5YeX0iiWVxjeSJiRtnF1TEk8
         c0CR1PaPyRsUtsarMpmLDs2ZF6VMSBDzPRVMnig61FfwXngBT631y28o4u72hcn2gjJ/
         ApcKzsWFAARI3h1iiAI0OoqBZRbzfUc7fghNMP8B7KKkdktBEFUxwCfUbLoSVZJajnDI
         lrbhF1Jjy8wSnd0uUBCnQMlGjD97P94VvIhobqhfkLMlfqNj56dwWDRSKnv/HJ6Q9hFv
         VBvg==
X-Gm-Message-State: AOAM530Toa0E3g6CKhss/yoBQ9/iTjDQhT73HHwTW++S9GIDPL4kCIiW
	9xrpogdDogwy4/M3ypGTkte/cbdn5pfD78+sZpg=
X-Google-Smtp-Source: 
 ABdhPJzjly6sAuXS8XOfuBwBtNTDp+a54I6pbvaIdtKGxgnkhPeICldjC8AJEvo/ACXy49Qk3PICnMfmtYiDT1wQXSQ=
X-Received: by 2002:ad4:5aa3:0:b0:443:9ba7:3f27 with SMTP id
 u3-20020ad45aa3000000b004439ba73f27mr29231735qvg.63.1649709415272; Mon, 11
 Apr 2022 13:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
In-Reply-To: 
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Apr 2022 13:36:29 -0700
Message-ID: 
 <CAMKF1sp7D_PhbpH0qxJm8kz8NKsy7qUzk5dWBc9rfJqUkSpnww@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56723

On Mon, Apr 11, 2022 at 1:27 PM Alessandro Tagliapietra
<tagliapietra.alessandro@gmail.com> wrote:
>
> Thank you for helping!
>
> The package is node-red-node-serialport, it doesn't seem to create child =
packages for the dependencies, the nodejs deps only reside in the package n=
ode-modules folder.
> The packages-split only contained node-red-node-serialport-* packages.
>

what package folders do you see under packages-split/ folder in your
build area for this recipe ?

> So I've tried to add the skips for these child packages too:
>
> INSANE_SKIP_${PN} +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-dbg +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-dev +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-doc +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-locale +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-src +=3D "already-stripped arch"
> INSANE_SKIP_${PN}-staticdev +=3D "already-stripped arch"
>
> and I still get the error.
>
> I've then tried to remove them:
>
> do_install:prepend() {
>     rm -Rf ${NPM_BUILD}/lib/node_modules/node-red-node-serialport/node_mo=
dules/@serialport/bindings-cpp/prebuilds
> }
>
> and it seems to work, however I would like to keep them as the armv7 is t=
he one that's probably used for the raspberry.
> Any other things I can try to ignore the QA check?
>
> Thank you
>
>
> On Mon, Apr 11, 2022 at 11:27 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> The prebuilds are for other architectures. so perhaps you can rm them
>> in a do_install_append() or if they are really needed
>> you perhaps would also need INSANE_SKIP_<name of package> =3D "arch" eve=
ntually
>>
>> is your recipe called node-red-node-serialport ?
>> INSANE_SKIP_${PN} is only accounting for one output package. You
>> perhaps will need to specify it for all the packages generated by this
>> recipe.
>> so check where these files are landing in packages-split/ folder in
>> the build area of this recipe
>>
>> On Mon, Apr 11, 2022 at 9:13 AM Alessandro Tagliapietra
>> <tagliapietra.alessandro@gmail.com> wrote:
>> >
>> > I've created an npm package recipe for node-red-node-serialport using
>> >
>> > devtool add "npm://registry.npmjs.org;package=3Dnode-red-node-serialpo=
rt;version=3D1.0.1"
>> >
>> > which generated this recipe.
>> >
>> > The problem is when building I get
>> >
>> > WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.
>> > WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/android-arm/node.napi.armv7.node' from node-red-node-ser=
ialport was already stripped, this will prevent future debugging! [already-=
stripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/android-arm64/node.napi.armv8.node' from node-red-node-s=
erialport was already stripped, this will prevent future debugging! [alread=
y-stripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm/node.napi.armv6.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm/node.napi.armv7.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm64/node.napi.armv8.node' from node-red-node-ser=
ialport was already stripped, this will prevent future debugging! [already-=
stripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-x64/node.napi.glibc.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-x64/node.napi.musl.node' from node-red-node-serial=
port was already stripped, this will prevent future debugging! [already-str=
ipped]
>> > ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors f=
ound, failing task.
>> > ERROR: Logfile of failure stored in: /home/alex/Projects/yocto/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport=
/1.0.1-r0/temp/log.do_package.75444
>> > ERROR: Task (/home/alex/Projects/yocto/meta-things5/recipes-devtools/n=
ode-red-node-serialport/node-red-node-serialport_1.0.1.bb:do_package) faile=
d with exit code '1'
>> >
>> > I've tried to add
>> >
>> > INSANE_SKIP_${PN} +=3D "already-stripped"
>> >
>> > in the recipe and in a bbappend but I still get the error.
>> >
>> > Why? I need to get this out asap so any help is appreciated.
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > You automatically follow any topics you start or reply to.
>> > View/Reply Online (#56718): https://lists.yoctoproject.org/g/yocto/mes=
sage/56718
>> > Mute This Topic: https://lists.yoctoproject.org/mt/90398675/1997914
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

