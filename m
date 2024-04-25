Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A86CC4345F
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 18:47:47 +0000 (UTC)
Subject: issue adding the user with the yocto kirkstone
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.90)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Apr 2024 11:47:39 -0700
Message-ID: <MUdL.1714070859202231693.qcwE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="118xICBo3sHp6kRa9eTu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 18:47:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63002

--118xICBo3sHp6kRa9eTu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. There

I'm dealing with the yocto kirkstone with the Ubuntu 20.04 LTS host

At present, i have created my custom image by adding the layer meta-custom

Initially, the basic image building were successful and I'm able to boot th=
e custom image

However, my intention is to add the root password and user with the image. =
That's how i have added the EXTRA_USER_PARAMS variable

Unfortunately, This time the image won't be successfully building

This is what I'm getting as and error logs during the building of the image

DEBUG: Executing shell function empty_var_volatile DEBUG: Shell function em=
pty_var_volatile finished NOTE: Executing set_user_group ... DEBUG: Executi=
ng shell function set_user_group NOTE: custom-image: Performing usermod wit=
h [-R /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-mp1/=
tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/rootfs -P mahi roo=
t] usermod: prefix must be an absolute path ERROR: custom-image: usermod co=
mmand did not succeed. WARNING: exit code 1 from a shell command. DEBUG: Py=
thon function do_rootfs finished

Here I have attached the custom-image.bb file

SUMMARY =3D "Minimal custom image for STM32MP1-DK1 board" AUTHOR=3D "Mahend=
ra Sondagar | mahendrasondagar08@gmail.com" IMAGE_INSTALL =3D "packagegroup=
-core-boot ${CORE_IMAGE_EXTRA_INSTALL}" IMAGE_LINGUAS =3D " " LICENSE =3D "=
MIT" inherit core-image inherit extrausers # Set rootfs to 200 MiB by defau=
lt IMAGE_OVERHEAD_FACTOR ?=3D "1.2" IMAGE_ROOTFS_SIZE ?=3D "204800" EXTRA_U=
SERS_PARAMS =3D " \ usermod -P mahi root; \ "

Can anyone help me here to fix the issue ?

Thanks

Mahendra

--118xICBo3sHp6kRa9eTu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi.. There</p>
<p>I'm dealing with the yocto kirkstone with the Ubuntu 20.04 LTS host</p>
<p>At present, i have created my custom image by adding the layer meta-cust=
om</p>
<p>Initially, the basic image building were successful and I'm able to boot=
 the custom image</p>
<p>&nbsp;</p>
<p>However, my intention is to add the root password and user with the imag=
e. That's how i have added the EXTRA_USER_PARAMS variable&nbsp;</p>
<p>Unfortunately, This time the image won't be successfully building</p>
<p>&nbsp;</p>
<p>This is what I'm getting as and error logs during the building of the im=
age</p>
<p>&nbsp;</p>
<p>DEBUG: Executing shell function empty_var_volatile DEBUG: Shell function=
 empty_var_volatile finished NOTE: Executing set_user_group ... DEBUG: Exec=
uting shell function set_user_group NOTE: custom-image: Performing usermod =
with [-R /home/mahendra/Documents/MyWorkSpace/my-git/Yocto-stm32mp1/build-m=
p1/tmp/work/stm32mp1-poky-linux-gnueabi/custom-image/1.0-r0/rootfs -P mahi =
root] usermod: prefix must be an absolute path ERROR: custom-image: usermod=
 command did not succeed. WARNING: exit code 1 from a shell command. DEBUG:=
 Python function do_rootfs finished</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Here I have attached the custom-image.bb file</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>SUMMARY =3D "Minimal custom image for STM32MP1-DK1 board" AUTHOR=3D "Mah=
endra Sondagar | mahendrasondagar08@gmail.com" IMAGE_INSTALL =3D "packagegr=
oup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}" IMAGE_LINGUAS =3D " " LICENSE =
=3D "MIT" inherit core-image inherit extrausers # Set rootfs to 200 MiB by =
default IMAGE_OVERHEAD_FACTOR ?=3D "1.2" IMAGE_ROOTFS_SIZE ?=3D "204800" EX=
TRA_USERS_PARAMS =3D " \ usermod -P mahi root; \ "</p>
<p>&nbsp;</p>
<p>Can anyone help me here to fix the issue ?</p>
<p>&nbsp;</p>
<p>Thanks&nbsp;</p>
<p>Mahendra</p>

--118xICBo3sHp6kRa9eTu--

