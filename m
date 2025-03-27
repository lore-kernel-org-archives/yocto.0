Return-Path: <cs.raryu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD69C3600B
	for <webhook@archiver.kernel.org>; Thu, 27 Mar 2025 09:43:18 +0000 (UTC)
Subject: [Yocto]: Unable to install packages: Packages have unmet dependencies. #bitbake #distro #dunfell #kernel #kernelmodule #linux #yocto
To: yocto@lists.yoctoproject.org
From: "cs.raryu" <cs.raryu@gmail.com>
X-Originating-Location: US (136.226.252.98)
X-Originating-Platform: Windows Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Mar 2025 02:43:15 -0700
Message-ID: <U6fh.1743068595453313003.j8Xv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2yjG6172xUoGPG8OvlWO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Mar 2025 09:43:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65024

--2yjG6172xUoGPG8OvlWO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

During the migration of the Yocto version from Dunfell to Scarthgap, I am f=
acing an issue,

ERROR: iotb-indus-image-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/sesa739295/Yocto_migration/PAS400_indus/iotb-indus-distro/build-c=
pas-mp/tmp/work/cpas_mp-galaxy-linux-gnueabi/iotb-indus-image/1.0/recipe-sy=
sroot-native/usr/bin/apt-get =C2=A0install --allow-downgrades --allow-remov=
e-essential --allow-change-held-packages --allow-unauthenticated --no-remov=
e =C2=A0apt dpkg openssl-bin packagegroup-base-extended packagegroup-core-b=
oot packagegroup-iotb-indus-base packagegroup-iotb-indus-sec packagegroup-p=
artition-tools-base run-postinsts' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:
The following packages have unmet dependencies:
packagegroup-murata-fw-drivers : Depends: backporttool-linux but it is not =
installable
E: Unable to correct problems, you have held broken packages.

Does anyone have any input on this?

Best regards,
Rohith

--2yjG6172xUoGPG8OvlWO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>During the migration of the Yocto version from Dunfell to Scarthgap, I=
 am facing an issue,</div>
<div>&nbsp;</div>
<div>
<div>ERROR: iotb-indus-image-1.0-r0 do_rootfs: Unable to install packages. =
Command '/home/sesa739295/Yocto_migration/PAS400_indus/iotb-indus-distro/bu=
ild-cpas-mp/tmp/work/cpas_mp-galaxy-linux-gnueabi/iotb-indus-image/1.0/reci=
pe-sysroot-native/usr/bin/apt-get &nbsp;install --allow-downgrades --allow-=
remove-essential --allow-change-held-packages --allow-unauthenticated --no-=
remove &nbsp;apt dpkg openssl-bin packagegroup-base-extended packagegroup-c=
ore-boot packagegroup-iotb-indus-base packagegroup-iotb-indus-sec packagegr=
oup-partition-tools-base run-postinsts' returned 100:<br />Reading package =
lists...<br />Building dependency tree...<br />Reading state information...=
<br />Some packages could not be installed. This may mean that you have<br =
/>requested an impossible situation or if you are using the unstable<br />d=
istribution that some required packages have not yet been created<br />or b=
een moved out of Incoming.<br />The following information may help to resol=
ve the situation:</div>
<div>The following packages have unmet dependencies:<br />&nbsp;packagegrou=
p-murata-fw-drivers : Depends: backporttool-linux but it is not installable=
<br />E: Unable to correct problems, you have held broken packages.</div>
</div>
<div>&nbsp;</div>
<div>Does anyone have any input on this?</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Rohith</div>

--2yjG6172xUoGPG8OvlWO--

