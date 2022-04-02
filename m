Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A597C4167D
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:46 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.10544.1648894410320385927
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 03:13:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196,
 mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 3BC9DE0004;
	Sat,  2 Apr 2022 10:13:27 +0000 (UTC)
Date: Sat, 02 Apr 2022 12:13:26 +0200
From: Quentin Schulz <foss@0leil.net>
To: yocto@lists.yoctoproject.org,
 Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Subject: Re: [yocto] installed and not shipped files. [installed-vs-shipped]
In-Reply-To: <Ykb1BRU174mnFl0a@Hephaistos>
References: <Ykb1BRU174mnFl0a@Hephaistos>
Message-ID: <9EFA4EA1-8709-4BB3-A9CB-99BA85DAD75D@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56642

Hi Konstantin,

On April 1, 2022 2:50:13 PM GMT+02:00, Konstantin Kletschke <konstantin=2E=
kletschke@inside-m2m=2Ede> wrote:
>I am currently trying to extend the meta-java framework with an
>openjdk-18 recipe=2E
>I encounter a problem with the [installed-vs-shipped] QA check which I
>can't cope with, I admit=2E
>
>The autotolls and crosscompile seems to work fine, the install is
>overridden with this:
>
>do_install() {
>    rm -rf ${D}/${JAVA_HOME}
>    mkdir -p ${D}/${JAVA_HOME}
>    echo "THIS IS D: "${D} > ${D}/${JAVA_HOME}/THE_D
>    if [[ "${PN}" =3D openjre* ]]; then
>        # cp -rp ${B}/images/jre/* ${D}/${JAVA_HOME}
>        cp -rp ${B}/jdk/* ${D}${JAVA_HOME}
>    else
>        # cp -rp ${B}/images/jdk/* ${D}/${JAVA_HOME}
>        cp -rp ${B}/jdk/* ${D}${JAVA_HOME}
>    fi
>    chown -R root:root ${D}${JAVA_HOME}
>    #install -m644 ${WORKDIR}/jvm=2Ecfg  ${D}${JAVA_HOME}/jre/lib/${JDK_A=
RCH}/
>    find ${D}/${JAVA_HOME} -name "*=2Edebuginfo" -exec rm {} \;
>}
>
>To verify ${D} there is this "echo [=2E=2E=2E] THE_D" part in the install=
 step
>to look, what's happening=2E
>
>After this stage I have the following file
>
>/home/konsti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/open=
jdk-18/18+37+gitAUTOINC+0f2113cee7-r0/image/usr/lib/jvm/openjdk-18/THE_D
>
>with contents
>
>THIS IS D: /home/konsti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-g=
nueabi/openjdk-18/18+37+gitAUTOINC+0f2113cee7-r0/image
>
>What I suppose is ${D} looks like this:
>
>~/yocto/build =EF=87=93 =EF=84=A6 honister ?1 =E2=9D=AF ls -la /home/kons=
ti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+37=
+gitAUTOINC+0f2113cee7-r0/image                            =20
>total 12
>drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 =2E
>drwxr-xr-x 17 konsti konsti 4096 Apr  1 14:24 =2E=2E
>drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 usr
>
>${JAVA_HOME} expands to /usr/lib/jvm/openjdk-18:
>
>~/yocto/build =EF=87=93 =EF=84=A6 honister ?1 =E2=9D=AF ls -la /home/kons=
ti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+37=
+gitAUTOINC+0f2113cee7-r0/image/usr/lib/jvm/openjdk-18/
>total 36
>drwxr-xr-x  7 konsti konsti 4096 Apr  1 14:24 =2E
>drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 =2E=2E
>-rw-r--r--  3 konsti konsti  128 Apr  1 14:24 THE_D
>drwxr-xr-x  2 konsti konsti 4096 Apr  1 14:24 bin
>drwxr-xr-x  5 konsti konsti 4096 Apr  1 14:22 conf
>drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:22 include
>drwxr-xr-x  5 konsti konsti 4096 Apr  1 14:24 lib
>drwxr-xr-x 69 konsti konsti 4096 Apr  1 14:23 modules
>-rw-r--r--  3 konsti konsti  129 Apr  1 14:22 release
>
>So accordingly the recipe continues with extending the FILES to do
>packaging this way:
>
>FILES_${PN} +=3D "\
>    ${JAVA_HOME}/bin/[a-z]* \
>    ${JAVA_HOME}/lib/[a-z]* \

FILES variables is compatible with glob from Python so that should work bu=
t that's really the first time I see this, usually it's just the directory =
or dir/*=2E Learned something new today :)

>    ${JAVA_HOME}/modules \
>    ${JAVA_HOME}/release \
>    ${JAVA_HOME}/conf \
>    ${JAVA_HOME}/include \
>    ${JAVA_HOME}/THE_D \
>"
>
>When I do "bitbake -e openjdk-18 |grep FILES_openjdk-18=3D" I get this:
>

Are you on honister (or master/soon kirkstone) release? If so, it's FILES:=
${PN} and not FILES_${PN}=2E

Try to avoid using hardcoded names instead of ${PN} because it breaks mult=
ilib (probably not a problem for many, I can concede :) )=2E

Make sure that openjdk-18 is actually a valid package name too by running =
bitbake -e <recipe-name> | grep "^PACKAGES=3D"=2E

>FILES_openjdk-18=3D"     /usr/lib/jvm/openjdk-18/bin/[a-z]*     /usr/lib/=
jvm/openjdk-18/lib/[a-z]*     /usr/lib/jvm/openjdk-18/modules     /usr/lib/=
jvm/openjdk-18/release     /usr/lib/jvm/openjdk-18/conf     /usr/lib/jvm/op=
enjdk-18/include     /usr/lib/jvm/openjdk-18/THE_D "
>
>When bitbake tries to package, I get this error:
>
>ERROR: openjdk-18-18+37+gitAUTOINC+0f2113cee7-r0 do_package: QA Issue: op=
enjdk-18: Files/directories were installed but not shipped in any package:
>  /usr/lib/jvm/openjdk-18/release
>  /usr/lib/jvm/openjdk-18/THE_D
>  /usr/lib/jvm/openjdk-18/conf
>  /usr/lib/jvm/openjdk-18/include
>  /usr/lib/jvm/openjdk-18/lib/libj2gss=2Eso
>[=2E=2E=2E]
>  /usr/lib/jvm/openjdk-18/modules/jdk=2Einternal=2Ele/jdk/internal/org/jl=
ine/keymap/BindingReader=2Eclass
>  /usr/lib/jvm/openjdk-18/modules/jdk=2Einternal=2Ele/jdk/internal/org/jl=
ine/keymap/KeyMap=2Eclass
>Please set FILES such that these items are packaged=2E Alternatively if t=
hey are unneeded, avoid installing them or delete them within do_install=2E
>openjdk-18: 28751 installed and not shipped files=2E [installed-vs-shippe=
d]
>ERROR: openjdk-18-18+37+gitAUTOINC+0f2113cee7-r0 do_package: Fatal QA err=
ors found, failing task=2E
>ERROR: Logfile of failure stored in: /home/konsti/yocto/build/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+37+gitAUTOINC+0f2113cee7-r0/=
temp/log=2Edo_package=2E3424506
>ERROR: Task (/home/konsti/yocto/meta-insidem2m/recipes-core/openjdk/openj=
dk-18_18+37=2Ebb:do_package) failed with exit code '1'
>
>Well, I am pretty shure the FILES_${PN} refers relative to ${D}, where
>is my stupid misunderstanding?
>
>Side-Quest: In do install the destination is referred as
>${D}${JAVA_HOME}=2E Why does this not need to be ${D}/${JAVA_HOME}?
>

To quote yourself:
>${JAVA_HOME} expands to /usr/lib/jvm/openjdk-18

Cheers,
Quentin

