Return-Path: <jbarnesweb@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A59DEB64D0
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 17:55:36 +0000 (UTC)
Subject: #fakeroot #pseudo-native #xattr #attr-native #yocto 
To: yocto@lists.yoctoproject.org
From: jbarnesweb@yahoo.com
X-Originating-Location: Orlando, Florida, US (72.189.75.43)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Jun 2023 10:55:34 -0700
Message-ID: <VGuf.1686678934669499865.B7Pb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qSiYm09o9ofsgqlijXn7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 17:55:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60273

--qSiYm09o9ofsgqlijXn7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to understand why I get an Operation not permitted error (errno =
EPERM) with a fakeroot function that calls setfattr.
Using yocto packages pseudo-native/attr-native

In my recipe, this function is called

fakeroot label_sign_verity() {
...
ls -l=C2=A0 ${FITIMAGE_PATH} >>${WORKDIR}/socosupdate_sign_and_package.txt
#prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images/fitI=
mage-initramfs-nested-rootfs-overlake-overlake
#1000 is the $USER uid

${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image ${FITIMAGE_PATH}

...

echo $(ls -l ${SOCOS_IMAGEDIR}/Image) >>${WORKDIR}/socosupdate_sign_and_pac=
kage.txt
#prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images/Imag=
e

echo PSEUDO_PREFIX=3D${PSEUDO_PREFIX} PSEUDO_LOCALSTATEDIR=3D${PSEUDO_LOCAL=
STATEDIR} ${FAKEROOTCMD} ${SETFATTR} -n security.ima -v ${IMA_HEADER}${HASH=
_ALGO}${KEY_ID}${SIG_LENGTH}${IMAGE_SIG} ${SOCOS_IMAGEDIR}/Image >>${WORKDI=
R}/socosupdate_sign_and_package.txt

#prints
PSEUDO_PREFIX=3D/datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-components/=
x86_64/pseudo-native/usr PSEUDO_LOCALSTATEDIR=3D/datadisk/LSG/main/LSG-linu=
x-yocto/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/pseudo/ /datadisk/LS=
G/main/LSG-linux-yocto/tmp/sysroots-components/x86_64/pseudo-native/usr/bin=
/pseudo /datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-components/x86_64/a=
ttr-native/usr/bin/setfattr -n security.ima -v 03020462ff80020100077DC6A2B3=
2D1313FE072B1A44C10CC94C5FDE507A1B8A16ED5836E49A95EB4C1AC53D7A2E2D5E74F2C97=
2B033F83FD405A5AD68DF6B8954EBB8803AF7A774D4573283A1AA0694B38379E8BF94E0B437=
8EF865E6606BB3E9534A0B916813F6C64DE53AB2B1B7CE579B54ADBA702BA7CF3F60B177693=
18642804950EADB2E6417F24FFA88F8684B5F319D9731AC07B9B3BD82A52BFDFAD4D6212C5E=
5D9BA3F4249385F3DC67E21DEA99B00FDECE224B99142FCB81840D93A6AE007F799484B70B1=
399A674378C4001D03F7529A69F851E642374118E53AC24F1E8849ECD1BC69E75A120E5408E=
3B73C26D47C658DEA3A3BC1EF7B7738AB75B94B3B6DC06155EEF /datadisk/LSG/main/LSG=
-linux-y
octo/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/deploy-socosupdate/soco=
supdate1908//squashfs-root/opt/msft/ap/app/SocOsUpdate/images/Image
#If I run the above in the same shell that I ran bitbake, it succeeds.

${SETFATTR} -n security.ima -v ${IMA_HEADER}${HASH_ALGO}${KEY_ID}${SIG_LENG=
TH}${INITRD_SIG} ${SOCOS_IMAGEDIR}/Image
# above fails with Operation not permitted, with or without fakeroot decora=
tion in function signature.

I've also tried running the command with the pseudo preamble directly insid=
e the recipe with and without the fakeroot decoration in the function signa=
ture. Fails the same way. When I echo $(whoami), it says root when fakeroot=
 is used and $USER when not.

--qSiYm09o9ofsgqlijXn7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm trying to understand why I get an Operation not permitted error (e=
rrno EPERM) with a fakeroot function that calls setfattr.</div>
<div>Using yocto packages pseudo-native/attr-native</div>
<div>&nbsp;</div>
<div>In my recipe, this function is called</div>
<div>&nbsp;</div>
<div>fakeroot label_sign_verity() {</div>
<div>...</div>
<div>&nbsp; &nbsp; ls -l&nbsp; ${FITIMAGE_PATH} &gt;&gt;${WORKDIR}/socosupd=
ate_sign_and_package.txt</div>
<div>#prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images=
/fitImage-initramfs-nested-rootfs-overlake-overlake</div>
<div>#1000 is the $USER uid</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; ${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image =
${FITIMAGE_PATH}</div>
<div>&nbsp;</div>
<div>...</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; echo $(ls -l ${SOCOS_IMAGEDIR}/Image) &gt;&gt;${WORKDIR}=
/socosupdate_sign_and_package.txt</div>
<div>#prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images=
/Image</div>
<div>&nbsp;</div>
<div>echo PSEUDO_PREFIX=3D${PSEUDO_PREFIX} PSEUDO_LOCALSTATEDIR=3D${PSEUDO_=
LOCALSTATEDIR} ${FAKEROOTCMD} ${SETFATTR} -n security.ima -v ${IMA_HEADER}$=
{HASH_ALGO}${KEY_ID}${SIG_LENGTH}${IMAGE_SIG} ${SOCOS_IMAGEDIR}/Image &gt;&=
gt;${WORKDIR}/socosupdate_sign_and_package.txt</div>
<div>&nbsp;</div>
<div>#prints&nbsp;</div>
<div>PSEUDO_PREFIX=3D/datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-compon=
ents/x86_64/pseudo-native/usr PSEUDO_LOCALSTATEDIR=3D/datadisk/LSG/main/LSG=
-linux-yocto/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/pseudo/ /datadi=
sk/LSG/main/LSG-linux-yocto/tmp/sysroots-components/x86_64/pseudo-native/us=
r/bin/pseudo /datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-components/x86=
_64/attr-native/usr/bin/setfattr -n security.ima -v 03020462ff80020100077DC=
6A2B32D1313FE072B1A44C10CC94C5FDE507A1B8A16ED5836E49A95EB4C1AC53D7A2E2D5E74=
F2C972B033F83FD405A5AD68DF6B8954EBB8803AF7A774D4573283A1AA0694B38379E8BF94E=
0B4378EF865E6606BB3E9534A0B916813F6C64DE53AB2B1B7CE579B54ADBA702BA7CF3F60B1=
7769318642804950EADB2E6417F24FFA88F8684B5F319D9731AC07B9B3BD82A52BFDFAD4D62=
12C5E5D9BA3F4249385F3DC67E21DEA99B00FDECE224B99142FCB81840D93A6AE007F799484=
B70B1399A674378C4001D03F7529A69F851E642374118E53AC24F1E8849ECD1BC69E75A120E=
5408E3B73C26D47C658DEA3A3BC1EF7B7738AB75B94B3B6DC06155EEF /datadisk/LSG/mai=
n/LSG-linux-y</div>
<div>octo/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/deploy-socosupdate=
/socosupdate1908//squashfs-root/opt/msft/ap/app/SocOsUpdate/images/Image</d=
iv>
<div>#If I run the above in the same shell that I ran bitbake, it succeeds.=
</div>
<div>&nbsp;</div>
<div>${SETFATTR} -n security.ima -v ${IMA_HEADER}${HASH_ALGO}${KEY_ID}${SIG=
_LENGTH}${INITRD_SIG} ${SOCOS_IMAGEDIR}/Image <br /># above fails with Oper=
ation not permitted, with or without fakeroot decoration in function signat=
ure.</div>
<div>&nbsp;</div>
<div>I've also tried running the command with the pseudo preamble directly =
inside the recipe with and without the fakeroot decoration in the function =
signature. Fails the same way. When I echo $(whoami), it says root when fak=
eroot is used and $USER when not.</div>
<div>&nbsp;</div>

--qSiYm09o9ofsgqlijXn7--

