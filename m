Return-Path: <jussi.vanska@valmet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20471C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 13:36:12 +0000 (UTC)
Subject: #bitbake TOPDIR not evaluating on custom distro
To: yocto@lists.yoctoproject.org
From: jussi.vanska@valmet.com
X-Originating-Location: Pori, Satakunta, FI (194.111.136.1)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Oct 2021 06:36:10 -0700
Message-ID: <EhdF.1633527370991311042.iwW8@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 13:36:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54979

I have a curious problem with TOPDIR environment variable.

Running standard Poky build with 25.0.3 works as expected but when using a =
custom distro layer the build fails as the host tools are not visible in pa=
th. Environment is identical, not counting the different path names, after =
sourcing the environment and before running bitbake but when running using =
a custom setup the PATH contains only relative references:

/home/jive/stage/yocto-25.0.3/bitbake/bin:tmp-glibc/hosttools"; export HOME=
=3D"/home/jive"; /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-cert=
ificate -P ../localmirror 'http://sources.openembedded.org/quilt-0.66.tar.g=
z' --progress=3Ddot -v failed with exit code 127, output:
/usr/bin/env: =E2=80=98wget=E2=80=99: No such file or directory

whereas the Poky standard seems to expand the TOPDIR and TMPDIR ok

/home/jive/stage/yocto-25.0.3/bitbake/bin:/home/jive/stage/build/tmp/hostto=
ols"; export HOME=3D"/home/jive"; /usr/bin/env wget -t 2 -T 30 --passive-ft=
p --no-check-certificate -P /home/jive/stage/build/downloads 'https://downl=
oad.savannah.gnu.org/releases/quilt/quilt-0.66.tar.gz' --progress=3Ddot -v

I can not find a place where the TOPDIR is set in configuration or what rec=
ipe/class overrides it. I'm aware the build directory should be under the O=
EROOT not beside it but this used to work with 18.x versions of YPCore.=20

cache.py@303 sets the variable and it looks very dangerous as it is relativ=
e to recipe currently parsing. Is this really how it should work? Another t=
hing which is confusing is copy_buildsystem.py@46 still uses COREBASE even =
though the release documentation says the environment variable is deprecate=
d and should not be used anymore. What makes this curious is that the OEROO=
T related paths work ok so I guess problem is somehow related to OEROOT vs.=
 COREBASE handling.

There is another problem related to this as the inline python in my custom =
distro configuration distro/layer.conf=20
COREBASE =3D '${@os.path.normpath("${OEROOT}")}' does not work but complain=
s

File "/home/jive/stage/yocto-25.0.3/meta/classes/metadata_scm.bbclass", lin=
e 27, in base_get_metadata_git_branch(path=3D'${@os.path.normpath("${OEROOT=
}")}/meta', d=3D<bb.data_smart.DataSmart object at 0x7fc9ba2e6390>):

Any advice would be welcome before digging deeper into the internals of bit=
bake.



