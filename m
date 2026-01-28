Return-Path: <rg@braneaudio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3627D46BE7
	for <webhook@archiver.kernel.org>; Wed, 28 Jan 2026 17:56:33 +0000 (UTC)
Subject: Image UNPACKDIR is being cleared
To: yocto@lists.yoctoproject.org
From: "Richard Greer" <rg@braneaudio.com>
X-Originating-Location: Austin, Texas, US (136.62.46.126)
X-Originating-Platform: Linux Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jan 2026 09:56:32 -0800
Message-ID: <2hjc.1769622992022831072.Xhaw@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 17:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66200

I am trying to build an image that built correctly for years up through our=
 last supported Yocto release which was nanbield.

We are now trying to move to Walnascar (it is the latest release of other l=
ayers we pull in).

I changed things to account for the migration, including the move to UNPACK=
DIR, and now it does not build any more.  The reason it fails is that UNPAC=
KDIR (or S since they are the same) is getting cleared before our tasks can=
 run after do_rootfs.

My image recipe has some proprietary git repos in SRC_URI to be put into th=
e UNPACKDIR:
SRC_URI =3D " ${BRANE_GIT_IMAGE_BASE};branch=3D${BRANE_GIT_IMAGE_BRANCH};su=
bpath=3D${BRANE_MIC_GIT_PATH};protocol=3D${BRANE_GIT_PROTOCOL};destsuffix=
=3D${BRANE_MIC_FOLDER};name=3Dmic \
            ${BRANE_GIT_IMAGE_BASE};branch=3D${BRANE_GIT_IMAGE_BRANCH};subp=
ath=3D${BRANE_IMAGE_VER_GIT_PATH};protocol=3D${BRANE_GIT_PROTOCOL};destsuff=
ix=3D${BRANE_IMG_VER_FOLDER};name=3Dimgver \
            ${BRANE_GIT_SOUND_BASE};branch=3D${BRANE_GIT_SOUND_BRANCH};prot=
ocol=3D${BRANE_GIT_PROTOCOL};lfs=3D0;destsuffix=3D${BRANE_SOUND_FOLDER};nam=
e=3Dsound \
           "
BRANE_MIC_FOLDER =3D "mic-images"
BRANE_IMG_VER_FOLDER =3D "image-ver-git"
BRANE_SOUND_FOLDER =3D "sound"

S =3D "${WORKDIR}/brane_sources"
UNPACKDIR =3D "${S}"

If I run "bitbake -c unpack brane-image", the UNPACKDIR has everything in i=
t as I would expect.

If I run "bitbake brane-image", I get an error in my do_brane_rootfs_change=
s task because it cannot find a file in the UNPACKDIR.  When I go and look =
at the UNPACKDIR, it is now empty.

Here is my addtask line for that task:
addtask brane_rootfs_changes after do_rootfs do_unpack before do_image_tar

Here is the error:
| /home/gu/development/event/Image/yocto/speaker4-login-ssh-dev-cred-build/=
tmp/work/speaker4_ssh_dev_cred-poky-linux-gnueabi/brane-fsl-image/1.0/temp/=
run.do_brane_rootfs_changes.3187189: 1: cannot open /home/gu/development/ev=
ent/Image/yocto/speaker4-login-ssh-dev-cred-build/tmp/work/speaker4_ssh_dev=
_cred-poky-linux-gnueabi/brane-fsl-image/1.0/brane_sources/image-ver-git/co=
mpat-version: No such file

That is ${UNPACKDIR}/${BRANE_IMG_VER_FOLDER}/compat-version, which as I sai=
d before exists if I just run up through do_unpack, but is gone when I try =
to run the complete recipe.

What is causing either S or UNPACKDIR to be cleared out after do_unpack but=
 before my task can run after do_rootfs?  Is it something to do with it bei=
ng the image recipe which is treated differently?

Any help would be appreciated since we would like to move to a later versio=
n of Yocto.

Thanks,

Richard Greer

