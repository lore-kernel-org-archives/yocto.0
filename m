Received: from cloud1.hoststud.com (cloud1.hoststud.com [159.69.73.38])
 by mx.groups.io with SMTP id smtpd.web10.4608.1616587162006240413
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 04:59:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: phytecembedded.in, ip: 159.69.73.38, mailfrom: poornesh.g@phytecembedded.in)
Received: from [::1] (port=51330 helo=cloud1.hoststud.com)
	by cloud1.hoststud.com with esmtpa (Exim 4.94)
	(envelope-from <poornesh.g@phytecembedded.in>)
	id 1lP2AR-00008y-EJ
	for yocto@lists.yoctoproject.org; Wed, 24 Mar 2021 17:29:19 +0530
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 17:29:19 +0530
From: poornesh.g@phytecembedded.in
To: yocto@lists.yoctoproject.org
Subject: Re: Creating a FIT Image with INITRAMFs
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <dd0b3d469b5cecf5967a04cbf2022555@phytecembedded.in>
X-Sender: poornesh.g@phytecembedded.in
Organization: Phytec Embedded India
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud1.hoststud.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - phytecembedded.in
X-Get-Message-Sender-Via: cloud1.hoststud.com: authenticated_id: poornesh.g@phytecembedded.in
X-Authenticated-Sender: cloud1.hoststud.com: poornesh.g@phytecembedded.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/alternative;
 boundary="=_33ab6924ca097711c0b29fef65d5c0b1"

--=_33ab6924ca097711c0b29fef65d5c0b1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

Greetings !

Processor  : i.MX8MM

Yocto : 2.7.1 (warrior)

I am trying to crate a "initramfs image" bundling with the "Kernel 
image".

Below mentioned is the link and  which I am following .

https://www.yoctoproject.org/docs/3.1/dev-manual/dev-manual.html#building-an-initramfs-image

Below is the steps which I followed :

1. Added INITRAMFS_IMAGE_BUNDLE variable to "1" in local.conf

2. Added INITRAMFS_IMAGE = "phytec-initramfs-image" in your local.conf

3. And tried building the image using bitbake.

But when I am compiling the image, I am getting the following mentioned 
"Circular dependency error". Kindly Requesting solution/suggestions for 
the same .

------------------------------------------------------

ERROR: 1830 unbuildable tasks were 
found.######################################## | ETA: 0:00:01 These are 
usually caused by circular dependencies and any circular dependency 
chains found will be printed below. Increase the debug level to see a 
list of unbuildable tasks.

Identifying dependency loops (this may take a short while)...

ERROR: Dependency loop #1 found: Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs 
(dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_install', 
'core-image-minimal-initramfs.bb:do_image_complete']) Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy 
(dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_populate_sysroot', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs', 
'depmodwrapper-cross_1.0.bb:do_populate_sysroot']) Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_wic 
(dependent Tasks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 
'core-image-minimal-initramfs.bb:do_image', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy', 
'imx-boot-phytec_0.2.bb:do_deploy', 
'u-boot-imx_2019.04_1.1.0-phy5.bb:do_deploy', 
'gptfdisk_1.0.4.bb:do_populate_sysroot', 
'dosfstools_4.1.bb:do_populate_sysroot', 
'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_populate_sysroot', 
'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_deploy']) 
Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_complete 
(dependent Tasks ['core-image-minimal-initramfs.bb:do_image', 
'core-image-minimal-initramfs.bb:do_image_tar', 
'core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink', 
'core-image-minimal-initramfs.bb:do_image_wic'])

Dependency loop #2 found: Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs 
(dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_install', 
'core-image-minimal-initramfs.bb:do_image_complete']) Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy 
(dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_populate_sysroot', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_bundle_initramfs', 
'depmodwrapper-cross_1.0.bb:do_populate_sysroot']) Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_wic 
(dependent Tasks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 
'core-image-minimal-initramfs.bb:do_image', 
'linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy', 
'imx-boot-phytec_0.2.bb:do_deploy', 
'u-boot-imx_2019.04_1.1.0-phy5.bb:do_deploy', 
'gptfdisk_1.0.4.bb:do_populate_sysroot', 
'dosfstools_4.1.bb:do_populate_sysroot', 
'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_populate_sysroot', 
'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_deploy']) 
Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink 
(dependent Tasks ['core-image-minimal-initramfs.bb:do_image_wic']) Task 
/mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_complete 
(dependent Tasks ['core-image-minimal-initramfs.bb:do_image', 
'core-image-minimal-initramfs.bb:do_image_tar', 
'core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink', 
'core-image-minimal-initramfs.bb:do_image_wic'])

ERROR: Command execution failed: 1

------------------------------------------------------

-- 
Thanks and Regards

Poornesh G

--=_33ab6924ca097711c0b29fef65d5c0b1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<p>Greetings !</p>
<p>Processor&nbsp; : i.MX8MM</p>
<p>Yocto : 2.7.1 (warrior)</p>
<p>I am trying to crate a "initramfs image" bundling with the "Kernel image=
".</p>
<p>Below mentioned is the link and&nbsp; which I am following .</p>
<p>https://www.yoctoproject.org/docs/3.1/dev-manual/dev-manual.html#buildin=
g-an-initramfs-image</p>
<p><br />Below is the steps which I followed :</p>
<p>1. Added INITRAMFS_IMAGE_BUNDLE variable to "1" in local.conf</p>
<p>2. Added INITRAMFS_IMAGE =3D "phytec-initramfs-image" in your local.conf=
&nbsp;</p>
<p>3. And tried building the image using bitbake.</p>
<p><br /></p>
<p><br />But when I am compiling the image, I am getting the following ment=
ioned "Circular dependency error". Kindly Requesting solution/suggestions f=
or the same .</p>
<p>------------------------------------------------------</p>
<p>ERROR: 1830 unbuildable tasks were found.###############################=
######### | ETA: 0:00:01 These are usually caused by circular dependencies =
and any circular dependency chains found will be printed below. Increase th=
e debug level to see a list of unbuildable tasks.</p>
<p>Identifying dependency loops (this may take a short while)...</p>
<p>ERROR: Dependency loop #1 found: Task /mnt/Aditional_2TB/khaleel_new/yoc=
to/iMX8MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19=
=2E35_1.1.0-phy4.bb:do_bundle_initramfs (dependent Tasks ['linux-imx_4.19=
=2E35_1.1.0-phy4.bb:do_install', 'core-image-minimal-initramfs.bb:do_image_=
complete']) Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/=
=2E./meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_de=
ploy (dependent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 'l=
inux-imx_4.19.35_1.1.0-phy4.bb:do_populate_sysroot', 'linux-imx_4.19.35_1=
=2E1.0-phy4.bb:do_bundle_initramfs', 'depmodwrapper-cross_1.0.bb:do_populat=
e_sysroot']) Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/=
meta/recipes-core/images/core-image-minimal-initramfs.bb:do_image_wic (depe=
ndent Tasks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 'core-imag=
e-minimal-initramfs.bb:do_image', 'linux-imx_4.19.35_1.1.0-phy4.bb:do_deplo=
y', 'imx-boot-phytec_0.2.bb:do_deploy', 'u-boot-imx_2019.04_1.1.0-phy5.bb:d=
o_deploy', 'gptfdisk_1.0.4.bb:do_populate_sysroot', 'dosfstools_4.1.bb:do_p=
opulate_sysroot', 'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_pop=
ulate_sysroot', 'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_=
deploy']) Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/met=
a/recipes-core/images/core-image-minimal-initramfs.bb:do_image_complete (de=
pendent Tasks ['core-image-minimal-initramfs.bb:do_image', 'core-image-mini=
mal-initramfs.bb:do_image_tar', 'core-image-minimal-initramfs.bb:do_image_c=
reate_sdcard_symlink', 'core-image-minimal-initramfs.bb:do_image_wic'])</p>
<p>Dependency loop #2 found: Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8=
MM/sources/poky/../meta-phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1=
=2E0-phy4.bb:do_bundle_initramfs (dependent Tasks ['linux-imx_4.19.35_1.1=
=2E0-phy4.bb:do_install', 'core-image-minimal-initramfs.bb:do_image_complet=
e']) Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/../meta-=
phytec/recipes-kernel/linux/linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy (depe=
ndent Tasks ['linux-imx_4.19.35_1.1.0-phy4.bb:do_packagedata', 'linux-imx_4=
=2E19.35_1.1.0-phy4.bb:do_populate_sysroot', 'linux-imx_4.19.35_1.1.0-phy4=
=2Ebb:do_bundle_initramfs', 'depmodwrapper-cross_1.0.bb:do_populate_sysroot=
']) Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/reci=
pes-core/images/core-image-minimal-initramfs.bb:do_image_wic (dependent Tas=
ks ['core-image-minimal-initramfs.bb:do_rootfs_wicenv', 'core-image-minimal=
-initramfs.bb:do_image', 'linux-imx_4.19.35_1.1.0-phy4.bb:do_deploy', 'imx-=
boot-phytec_0.2.bb:do_deploy', 'u-boot-imx_2019.04_1.1.0-phy5.bb:do_deploy'=
, 'gptfdisk_1.0.4.bb:do_populate_sysroot', 'dosfstools_4.1.bb:do_populate_s=
ysroot', 'firmware-imx-8m_8.5.bb:do_deploy', 'parted_3.2.bb:do_populate_sys=
root', 'mtools_4.0.19.bb:do_populate_sysroot', 'imx-atf_2.0.bb:do_deploy'])=
 Task /mnt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes=
-core/images/core-image-minimal-initramfs.bb:do_image_create_sdcard_symlink=
 (dependent Tasks ['core-image-minimal-initramfs.bb:do_image_wic']) Task /m=
nt/Aditional_2TB/khaleel_new/yocto/iMX8MM/sources/poky/meta/recipes-core/im=
ages/core-image-minimal-initramfs.bb:do_image_complete (dependent Tasks ['c=
ore-image-minimal-initramfs.bb:do_image', 'core-image-minimal-initramfs.bb:=
do_image_tar', 'core-image-minimal-initramfs.bb:do_image_create_sdcard_syml=
ink', 'core-image-minimal-initramfs.bb:do_image_wic'])</p>
<p>ERROR: Command execution failed: 1</p>
<p>------------------------------------------------------</p>
<p><br /></p>
<div id=3D"signature">-- <br />
<p>Thanks and Regards</p>
<p><strong>Poornesh G<br /></strong></p>
</div>
</body></html>

--=_33ab6924ca097711c0b29fef65d5c0b1--
