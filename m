Return-Path: <jason.m.bills@linux.intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565B8C4332F
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 22:02:54 +0000 (UTC)
Subject: Re: EXTRA_IMAGECMD:squashfs-xz support
To: yocto@lists.yoctoproject.org
From: "Bills, Jason M" <jason.m.bills@linux.intel.com>
X-Originating-Location: California, US (192.55.54.51)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Nov 2022 15:02:54 -0700
References: <496c829a-07b3-9105-a04c-f985b31a6e32@theobroma-systems.com>
In-Reply-To: <496c829a-07b3-9105-a04c-f985b31a6e32@theobroma-systems.com>
Message-ID: <2257.1667340174016649062@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a6UsTcSVNb4Eo0tXji0x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 22:02:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58463

--a6UsTcSVNb4Eo0tXji0x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,

Thanks for the reply!=C2=A0 Sorry for my delay back. :)=C2=A0 I haven't bee=
n able to fully reproduce this on poky, but I got a little more info.

First, we are still seeing the issue with EXTRA_IMAGECMD:squashfs-xz:append=
 failing to apply. We are using Langdale and Kirkstone worked fine for us. =
I think I narrowed it down to this change: https://github.com/yoctoproject/=
poky/commit/924854accc46f254b6399fc3cf2613a6597410e3.

Using just poky, I add ` EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors=
 ${BB_NUMBER_THREADS} -b 262144 -Xdict-size 100%"` to my local.conf and run=
 `bitbake -e core-image-minimal` to check the environment.

At the ` kirkstone-4.0.1` tag, I see
# $EXTRA_IMAGECMD [8 operations] # set /home/jmbills/temp/poky/meta/classes=
/image_types.bbclass:224 # "" # override[squashfs-xz]::append /home/jmbills=
/temp/poky/build/conf/local.conf:41 # "-processors ${BB_NUMBER_THREADS} -b =
262144 -Xdict-size 100%"
So, the override is correctly set.

And I see
# $IMAGE_CMD:squashfs-xz # set /home/jmbills/temp/poky/meta/classes/image_t=
ypes.bbclass:107 # "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME=
}${IMAGE_NAME_SUFFIX}.squashfs-xz ${EXTRA_IMAGECMD} -noappend -comp xz" IMA=
GE_CMD:squashfs-xz=3D"mksquashfs /home/jmbills/temp/poky/build/tmp/work/qem=
ux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs /home/jmbills/temp/poky=
/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64-20221101211323.=
rootfs.squashfs-xz -noappend -comp xz"

In this case ` ${EXTRA_IMAGECMD}` appears to be empty.

If I then change my local.conf to `EXTRA_IMAGECMD:append =3D "-processors $=
{BB_NUMBER_THREADS} -b 262144 -Xdict-size 100%"` and run `bitbake -e core-i=
mage-minimal`, I see nothing for the override and
# $IMAGE_CMD:squashfs-xz # set /home/jmbills/temp/poky/meta/classes/image_t=
ypes.bbclass:107 # "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME=
}${IMAGE_NAME_SUFFIX}.squashfs-xz ${EXTRA_IMAGECMD} -noappend -comp xz" IMA=
GE_CMD:squashfs-xz=3D"mksquashfs /home/jmbills/temp/poky/build/tmp/work/qem=
ux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs /home/jmbills/temp/poky=
/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64-20221101211620.=
rootfs.squashfs-xz -processors 64 -b 262144 -Xdict-size 100% -noappend -com=
p xz"

In this case ` ${EXTRA_IMAGECMD}` contained my parameters.

If I check out `master`, change my local.conf to `EXTRA_IMAGECMD:squashfs-x=
z:append =3D "-processors ${BB_NUMBER_THREADS} -b 262144 -Xdict-size 100%"`=
 to my local.conf and run `bitbake -e core-image-minimal`, I see the overri=
de again
# $EXTRA_IMAGECMD [8 operations] # set /home/jmbills/temp/poky/meta/classes=
-recipe/image_types.bbclass:245 # "" # override[squashfs-xz]::append /home/=
jmbills/temp/poky/build/conf/local.conf:41 # "-processors ${BB_NUMBER_THREA=
DS} -b 262144 -Xdict-size 100%"

And for IMAGE_CMD, I see
# $IMAGE_CMD:squashfs-xz # set /home/jmbills/temp/poky/meta/classes-recipe/=
image_types.bbclass:121 # "oe_mksquashfs xz" IMAGE_CMD:squashfs-xz=3D"oe_mk=
squashfs xz"

I don't know how to confirm this with poky, but from this it appears that t=
he override for squashfs-xz (which is correct in both versions) gets applie=
d later during bitbake execution. I don't know how that override gets appli=
ed, but if it gets appended to IMAGE_CMD:squashfs-xz, then with Kirkstone, =
the parameters would be applied to the end of the mksquashfs command and wo=
uld work correctly.

But in master, if those parameters get appended, would they be passed to "o=
e_mksquashfs"? Or could they be dropped during the override step since they=
 are applied onto "oe_mksquashfs" rather than mksquashfs directly?

Thanks again for your help!
-Jason

--a6UsTcSVNb4Eo0tXji0x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,<br /><br />Thanks for the reply!&nbsp; Sorry for my delay back.=
 :)&nbsp; I haven't been able to fully reproduce this on poky, but I got a =
little more info.<br /><br />First, we are still seeing the issue with&nbsp=
;<span style=3D"white-space: pre-wrap;">EXTRA_IMAGECMD:squashfs-xz:append f=
ailing to apply. We are using Langdale and Kirkstone worked fine for us. I =
think I narrowed it down to this change: </span><a style=3D"white-space: pr=
e-wrap;" href=3D"https://github.com/yoctoproject/poky/commit/924854accc46f2=
54b6399fc3cf2613a6597410e3" target=3D"_blank" rel=3D"noopener">https://gith=
ub.com/yoctoproject/poky/commit/924854accc46f254b6399fc3cf2613a6597410e3</a=
><span style=3D"white-space: pre-wrap;">.</span><br /><br /><span style=3D"=
white-space: pre-wrap;">Using just poky, I add `</span><span style=3D"white=
-space: pre-wrap;">EXTRA_IMAGECMD:squashfs-xz:append =3D "-processors ${BB_=
NUMBER_THREADS} -b 262144 -Xdict-size 100%"` to my local.conf and run `bitb=
ake -e core-image-minimal` to check the environment.</span><br /><br /><spa=
n style=3D"white-space: pre-wrap;">At the `</span><span style=3D"white-spac=
e: pre-wrap;">kirkstone-4.0.1` tag, I see</span><br /><span style=3D"white-=
space: pre-wrap;"># $EXTRA_IMAGECMD [8 operations] # set /home/jmbills/temp=
/poky/meta/classes/image_types.bbclass:224 # "" # override[squashfs-xz]::ap=
pend /home/jmbills/temp/poky/build/conf/local.conf:41 # "-processors ${BB_N=
UMBER_THREADS} -b 262144 -Xdict-size 100%" </span>
<div><span style=3D"white-space: pre-wrap;">So, the override is correctly s=
et.</span><br /><br /><span style=3D"white-space: pre-wrap;">And I see</spa=
n><br /><span style=3D"white-space: pre-wrap;"># $IMAGE_CMD:squashfs-xz # s=
et /home/jmbills/temp/poky/meta/classes/image_types.bbclass:107 # "mksquash=
fs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squash=
fs-xz ${EXTRA_IMAGECMD} -noappend -comp xz" IMAGE_CMD:squashfs-xz=3D"mksqua=
shfs /home/jmbills/temp/poky/build/tmp/work/qemux86_64-poky-linux/core-imag=
e-minimal/1.0-r0/rootfs /home/jmbills/temp/poky/build/tmp/work/qemux86_64-p=
oky-linux/core-image-minimal/1.0-r0/deploy-core-image-minimal-image-complet=
e/core-image-minimal-qemux86-64-20221101211323.rootfs.squashfs-xz -noappend=
 -comp xz" </span></div>
<div><span style=3D"white-space: pre-wrap;"><br />In this case `</span><spa=
n style=3D"white-space: pre-wrap;">${EXTRA_IMAGECMD}` appears to be empty.<=
br /><br />If I then change my local.conf to `EXTRA_IMAGECMD:append =3D "-p=
rocessors ${BB_NUMBER_THREADS} -b 262144 -Xdict-size 100%"` </span><span st=
yle=3D"white-space: pre-wrap;">and run `bitbake -e core-image-minimal`, I s=
ee nothing for the override and</span><br /><span style=3D"white-space: pre=
-wrap;"># $IMAGE_CMD:squashfs-xz # set /home/jmbills/temp/poky/meta/classes=
/image_types.bbclass:107 # "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IM=
AGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz ${EXTRA_IMAGECMD} -noappend -comp=
 xz" IMAGE_CMD:squashfs-xz=3D"mksquashfs /home/jmbills/temp/poky/build/tmp/=
work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs /home/jmbills/t=
emp/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/dep=
loy-core-image-minimal-image-complete/core-image-minimal-qemux86-64-2022110=
1211620.rootfs.squashfs-xz -processors 64 -b 262144 -Xdict-size 100% -noapp=
end -comp xz"</span><br /><br /><span style=3D"white-space: pre-wrap;">In t=
his case `</span><span style=3D"white-space: pre-wrap;">${EXTRA_IMAGECMD}` =
contained my parameters.<br /><br /><br /></span>If I check out `master`, c=
hange my local.conf to&nbsp;<span style=3D"white-space: pre-wrap;">`EXTRA_I=
MAGECMD:squashfs-xz:append =3D "-processors ${BB_NUMBER_THREADS} -b 262144 =
-Xdict-size 100%"` to my local.conf and run `bitbake -e core-image-minimal`=
, I see the override again</span><br /><span style=3D"white-space: pre-wrap=
;"># $EXTRA_IMAGECMD [8 operations] # set /home/jmbills/temp/poky/meta/clas=
ses-recipe/image_types.bbclass:245 # "" # override[squashfs-xz]::append /ho=
me/jmbills/temp/poky/build/conf/local.conf:41 # "-processors ${BB_NUMBER_TH=
READS} -b 262144 -Xdict-size 100%" </span></div>
<div><br /><span style=3D"white-space: pre-wrap;">And for IMAGE_CMD, I see<=
/span><br /><span style=3D"white-space: pre-wrap;"># $IMAGE_CMD:squashfs-xz=
 # set /home/jmbills/temp/poky/meta/classes-recipe/image_types.bbclass:121 =
# "oe_mksquashfs xz" IMAGE_CMD:squashfs-xz=3D"oe_mksquashfs xz" </span></di=
v>
<div><span style=3D"white-space: pre-wrap;"><br />I don't know how to confi=
rm this with poky, but from this it appears that the override for squashfs-=
xz (which is correct in both versions) gets applied later during bitbake ex=
ecution. I don't know how that override gets applied, but if it gets append=
ed to IMAGE_CMD:squashfs-xz, then with Kirkstone, the parameters would be a=
pplied to the end of the </span><span style=3D"white-space: pre-wrap;">mksq=
uashfs command and would work correctly.<br /><br />But in master, if those=
 parameters get appended, would they be passed to </span><span style=3D"whi=
te-space: pre-wrap;">"oe_mksquashfs"? Or could they be dropped during the o=
verride step since they are applied onto </span><span style=3D"white-space:=
 pre-wrap;">"oe_mksquashfs" rather than mksquashfs directly?<br /><br />Tha=
nks again for your help!<br />-Jason</span></div>

--a6UsTcSVNb4Eo0tXji0x--

