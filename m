Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 864ABC433F5
	for <webhook@archiver.kernel.org>; Fri,  1 Apr 2022 12:50:21 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.10143.1648817418877888002
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Apr 2022 05:50:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@inside-m2m.de
 header.s=default header.b=NiE5VrsQ;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244,
 mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.inside-m2m.de (Postfix) with ESMTP id EEF3E40250
	for <yocto@lists.yoctoproject.org>; Fri,  1 Apr 2022 14:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1648817415;
	bh=UbYNcODf/8FJqNjnNsmrq4QgTcoIYGWSy2+1Pm8HBUA=;
	h=Date:From:To:Subject:From;
	b=NiE5VrsQzTNnpYVWaJvlzn5XiuBjJ5Ode5pCdT/T2pYUX2ljLAxqHNtrNBJgVvUFP
	 989G9A4MZ4aX6EWs1S66dfuFtULLTDADbpVULZlRp+A69s097Q09LacBSyeb2K3qBf
	 OVE3EJA+SlWL+7EkSySwJhO8VgM8p6GYIk8nl2emHC66IwzTgemsiLD/hZKLwYBCZF
	 eMssdGgdrx01Ut78vqGCGUw/KZ/v0U2Lnmri0Ow1zcQZMxj5sTGKe5JN9W8TTe5a1Q
	 uloN/ZcQJLt36ucYWsZ6A4/wQvz2+yAJA/DuEqd3bOeJp1ZizptI3smK/pL3ulyGR9
	 LMN3wLmhDupWg==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
	by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1edNNJPt4fVH for <yocto@lists.yoctoproject.org>;
	Fri,  1 Apr 2022 14:50:15 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 43C46400E8
	for <yocto@lists.yoctoproject.org>; Fri,  1 Apr 2022 14:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1648817415;
	bh=UbYNcODf/8FJqNjnNsmrq4QgTcoIYGWSy2+1Pm8HBUA=;
	h=Date:From:To:Subject:From;
	b=NiE5VrsQzTNnpYVWaJvlzn5XiuBjJ5Ode5pCdT/T2pYUX2ljLAxqHNtrNBJgVvUFP
	 989G9A4MZ4aX6EWs1S66dfuFtULLTDADbpVULZlRp+A69s097Q09LacBSyeb2K3qBf
	 OVE3EJA+SlWL+7EkSySwJhO8VgM8p6GYIk8nl2emHC66IwzTgemsiLD/hZKLwYBCZF
	 eMssdGgdrx01Ut78vqGCGUw/KZ/v0U2Lnmri0Ow1zcQZMxj5sTGKe5JN9W8TTe5a1Q
	 uloN/ZcQJLt36ucYWsZ6A4/wQvz2+yAJA/DuEqd3bOeJp1ZizptI3smK/pL3ulyGR9
	 LMN3wLmhDupWg==
Date: Fri, 1 Apr 2022 14:50:13 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: installed and not shipped files. [installed-vs-shipped]
Message-ID: <Ykb1BRU174mnFl0a@Hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Apr 2022 12:50:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56612

I am currently trying to extend the meta-java framework with an
openjdk-18 recipe.
I encounter a problem with the [installed-vs-shipped] QA check which I
can't cope with, I admit.

The autotolls and crosscompile seems to work fine, the install is
overridden with this:

do_install() {
    rm -rf ${D}/${JAVA_HOME}
    mkdir -p ${D}/${JAVA_HOME}
    echo "THIS IS D: "${D} > ${D}/${JAVA_HOME}/THE_D
    if [[ "${PN}" =3D openjre* ]]; then
        # cp -rp ${B}/images/jre/* ${D}/${JAVA_HOME}
        cp -rp ${B}/jdk/* ${D}${JAVA_HOME}
    else
        # cp -rp ${B}/images/jdk/* ${D}/${JAVA_HOME}
        cp -rp ${B}/jdk/* ${D}${JAVA_HOME}
    fi
    chown -R root:root ${D}${JAVA_HOME}
    #install -m644 ${WORKDIR}/jvm.cfg  ${D}${JAVA_HOME}/jre/lib/${JDK_ARC=
H}/
    find ${D}/${JAVA_HOME} -name "*.debuginfo" -exec rm {} \;
}

To verify ${D} there is this "echo [...] THE_D" part in the install step
to look, what's happening.

After this stage I have the following file

/home/konsti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/open=
jdk-18/18+37+gitAUTOINC+0f2113cee7-r0/image/usr/lib/jvm/openjdk-18/THE_D

with contents

THIS IS D: /home/konsti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-g=
nueabi/openjdk-18/18+37+gitAUTOINC+0f2113cee7-r0/image

What I suppose is ${D} looks like this:

~/yocto/build =EF=87=93 =EF=84=A6 honister ?1 =E2=9D=AF ls -la /home/kons=
ti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+=
37+gitAUTOINC+0f2113cee7-r0/image                            =20
total 12
drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 .
drwxr-xr-x 17 konsti konsti 4096 Apr  1 14:24 ..
drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 usr

${JAVA_HOME} expands to /usr/lib/jvm/openjdk-18:

~/yocto/build =EF=87=93 =EF=84=A6 honister ?1 =E2=9D=AF ls -la /home/kons=
ti/yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+=
37+gitAUTOINC+0f2113cee7-r0/image/usr/lib/jvm/openjdk-18/
total 36
drwxr-xr-x  7 konsti konsti 4096 Apr  1 14:24 .
drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:24 ..
-rw-r--r--  3 konsti konsti  128 Apr  1 14:24 THE_D
drwxr-xr-x  2 konsti konsti 4096 Apr  1 14:24 bin
drwxr-xr-x  5 konsti konsti 4096 Apr  1 14:22 conf
drwxr-xr-x  3 konsti konsti 4096 Apr  1 14:22 include
drwxr-xr-x  5 konsti konsti 4096 Apr  1 14:24 lib
drwxr-xr-x 69 konsti konsti 4096 Apr  1 14:23 modules
-rw-r--r--  3 konsti konsti  129 Apr  1 14:22 release

So accordingly the recipe continues with extending the FILES to do
packaging this way:

FILES_${PN} +=3D "\
    ${JAVA_HOME}/bin/[a-z]* \
    ${JAVA_HOME}/lib/[a-z]* \
    ${JAVA_HOME}/modules \
    ${JAVA_HOME}/release \
    ${JAVA_HOME}/conf \
    ${JAVA_HOME}/include \
    ${JAVA_HOME}/THE_D \
"

When I do "bitbake -e openjdk-18 |grep FILES_openjdk-18=3D" I get this:

FILES_openjdk-18=3D"     /usr/lib/jvm/openjdk-18/bin/[a-z]*     /usr/lib/=
jvm/openjdk-18/lib/[a-z]*     /usr/lib/jvm/openjdk-18/modules     /usr/li=
b/jvm/openjdk-18/release     /usr/lib/jvm/openjdk-18/conf     /usr/lib/jv=
m/openjdk-18/include     /usr/lib/jvm/openjdk-18/THE_D "

When bitbake tries to package, I get this error:

ERROR: openjdk-18-18+37+gitAUTOINC+0f2113cee7-r0 do_package: QA Issue: op=
enjdk-18: Files/directories were installed but not shipped in any package=
:
  /usr/lib/jvm/openjdk-18/release
  /usr/lib/jvm/openjdk-18/THE_D
  /usr/lib/jvm/openjdk-18/conf
  /usr/lib/jvm/openjdk-18/include
  /usr/lib/jvm/openjdk-18/lib/libj2gss.so
[...]
  /usr/lib/jvm/openjdk-18/modules/jdk.internal.le/jdk/internal/org/jline/=
keymap/BindingReader.class
  /usr/lib/jvm/openjdk-18/modules/jdk.internal.le/jdk/internal/org/jline/=
keymap/KeyMap.class
Please set FILES such that these items are packaged. Alternatively if the=
y are unneeded, avoid installing them or delete them within do_install.
openjdk-18: 28751 installed and not shipped files. [installed-vs-shipped]
ERROR: openjdk-18-18+37+gitAUTOINC+0f2113cee7-r0 do_package: Fatal QA err=
ors found, failing task.
ERROR: Logfile of failure stored in: /home/konsti/yocto/build/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/openjdk-18/18+37+gitAUTOINC+0f2113cee7-r=
0/temp/log.do_package.3424506
ERROR: Task (/home/konsti/yocto/meta-insidem2m/recipes-core/openjdk/openj=
dk-18_18+37.bb:do_package) failed with exit code '1'

Well, I am pretty shure the FILES_${PN} refers relative to ${D}, where
is my stupid misunderstanding?

Side-Quest: In do install the destination is referred as
${D}${JAVA_HOME}. Why does this not need to be ${D}/${JAVA_HOME}?

Kind Regards
Konstantin Kletschke

--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=C3=9Fe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=C3=A4ftsf=C3=BChrung: Michael Emmert, Ingo Haase, Dr. Fred K=C3=B6n=
emann, Derek Uhlig
HRB: 111204, AG Hannover


