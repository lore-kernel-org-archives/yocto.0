Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84B14C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 14:18:20 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] circular dependency issue #kernel #rpi #scarthgap #yocto
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 30 Jan 2025 06:18:11 -0800
References: <83aaf6d3-0944-4b45-bca1-dbde9fd6d77e@gmail.com>
In-Reply-To: <83aaf6d3-0944-4b45-bca1-dbde9fd6d77e@gmail.com>
Message-ID: <2322.1738246691679375549@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xRI54oDVlYgQSQmbdoRf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 14:18:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64676

--xRI54oDVlYgQSQmbdoRf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

I removed all modifications from local.conf and also deleted all .bbappend =
files still facing same issue.

ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_package has circular dependency on {'virtual:native:=
/home/build/project/meta/recipes-devtools/rpm/rpm_4.19.1.1.bb:do_populate_s=
ysroot', '/home/build/project/meta/recipes-devtools/gcc/libgcc_13.3.bb:do_p=
ackagedata', 'virtual:native:/home/build/project/meta/recipes-devtools/dwar=
fsrcfiles/dwarfsrcfiles.bb:do_populate_sysroot', '/home/build/project/meta-=
raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_packagedata', =
'virtual:native:/home/build/project/meta/recipes-devtools/pseudo/pseudo_git=
.bb:do_populate_sysroot', '/home/build/project/meta-raspberrypi/recipes-ker=
nel/linux/linux-raspberrypi_6.6.bb:do_install'}
ERROR: Command execution failed: 1

I have added few logline so got to know that it is throwing error at do_pop=
ulate_sysroot task.
So tried to build only recipe *do_populate_sysroot linux-raspberrypi* got b=
elow error

ERROR:
Dependency loop #1 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_p=
opulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Dependency loop #2 found:
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_compile (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_uboot_generate_rsa_keys (dependent Tasks ['u-boot_2021.10.bb:do_compile'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_uboot_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_compile', =
'u-boot_2021.10.bb:do_uboot_generate_rsa_keys'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_install (dependent Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.=
bb:do_uboot_assemble_fitimage', 'u-boot_2021.10.bb:do_create_extlinux_confi=
g', 'pseudo_git.bb:do_populate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sys=
root', 'u-boot_2021.10.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_p=
opulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021.10.bb:do_popul=
ate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popula=
te_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseudo_git.bb:do_pop=
ulate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_=
populate_sysroot', 'os-release.bb:do_populate_sysroot', 'python3-setuptools=
_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_populate_sysroot',=
 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_populate_sysroot', '=
flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_populate_sysroot'=
, 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_fet=
ch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_p=
opulate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_configure (dependent Tasks ['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.=
bb:do_deploy_source_date_epoch', 'u-boot_2021.10.bb:do_prepare_recipe_sysro=
ot'])
Dependency loop #3 found:
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_compile (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_uboot_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_compile', =
'u-boot_2021.10.bb:do_uboot_generate_rsa_keys'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_install (dependent Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.=
bb:do_uboot_assemble_fitimage', 'u-boot_2021.10.bb:do_create_extlinux_confi=
g', 'pseudo_git.bb:do_populate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sys=
root', 'u-boot_2021.10.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_p=
opulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021.10.bb:do_popul=
ate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popula=
te_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseudo_git.bb:do_pop=
ulate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_=
populate_sysroot', 'os-release.bb:do_populate_sysroot', 'python3-setuptools=
_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_populate_sysroot',=
 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_populate_sysroot', '=
flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_populate_sysroot'=
, 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_fet=
ch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_p=
opulate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_configure (dependent Tasks ['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.=
bb:do_deploy_source_date_epoch', 'u-boot_2021.10.bb:do_prepare_recipe_sysro=
ot'])
Dependency loop #4 found:
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_compile (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_create_extlinux_config (dependent Tasks ['u-boot_2021.10.bb:do_compile'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_install (dependent Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.=
bb:do_uboot_assemble_fitimage', 'u-boot_2021.10.bb:do_create_extlinux_confi=
g', 'pseudo_git.bb:do_populate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sys=
root', 'u-boot_2021.10.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_p=
opulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021.10.bb:do_popul=
ate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popula=
te_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseudo_git.bb:do_pop=
ulate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_=
populate_sysroot', 'os-release.bb:do_populate_sysroot', 'python3-setuptools=
_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_populate_sysroot',=
 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_populate_sysroot', '=
flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_populate_sysroot'=
, 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_fet=
ch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_p=
opulate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_configure (dependent Tasks ['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.=
bb:do_deploy_source_date_epoch', 'u-boot_2021.10.bb:do_prepare_recipe_sysro=
ot'])
Dependency loop #5 found:
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_compile (dependent Tasks ['u-boot_2021.10.bb:do_configure'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_install (dependent Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.=
bb:do_uboot_assemble_fitimage', 'u-boot_2021.10.bb:do_create_extlinux_confi=
g', 'pseudo_git.bb:do_populate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_populate_sys=
root', 'u-boot_2021.10.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_p=
opulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021.10.bb:do_popul=
ate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popula=
te_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseudo_git.bb:do_pop=
ulate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_=
populate_sysroot', 'os-release.bb:do_populate_sysroot', 'python3-setuptools=
_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_populate_sysroot',=
 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_populate_sysroot', '=
flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_populate_sysroot'=
, 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_fet=
ch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_p=
opulate_sysroot'])
Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do=
_configure (dependent Tasks ['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.=
bb:do_deploy_source_date_epoch', 'u-boot_2021.10.bb:do_prepare_recipe_sysro=
ot'])
Dependency loop #6 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_uboot_generate_rsa_keys (dependent Tasks ['linux-raspberryp=
i_6.6.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_uboot_assemble_fitimage (dependent Tasks ['linux-raspberryp=
i_6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys'=
])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Dependency loop #7 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_transform_kernel (dependent Tasks ['linux-raspberrypi_6.6.b=
b:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Dependency loop #8 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_uboot_assemble_fitimage (dependent Tasks ['linux-raspberryp=
i_6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys'=
])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Dependency loop #9 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_link_images (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_strip (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel=
_link_images', 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_sizecheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_st=
rip'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Dependency loop #10 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_shared_workdir (dependent Tasks ['linux-raspberrypi_6.6.bb:=
do_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile_kernelmodules (dependent Tasks ['linux-raspberrypi_=
6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_shared_workdir'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_strip (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel=
_link_images', 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_sizecheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_st=
rip'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Dependency loop #11 found:
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kern=
el_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_kernel_configcheck',=
 'linux-raspberrypi_6.6.bb:do_configure'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_compile_kernelmodules (dependent Tasks ['linux-raspberrypi_=
6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_shared_workdir'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_strip (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel=
_link_images', 'linux-raspberrypi_6.6.bb:do_compile_kernelmodules'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_sizecheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_st=
rip'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi=
_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_f=
itimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_compile'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb=
:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'biso=
n_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_=
1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge=
.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.=
3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_gi=
t.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-=
raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroo=
t', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot'=
, 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:d=
o_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_pr=
epare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberr=
ypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsr=
c', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6=
.bb:do_configure'])
Halted dependency loops search after 10 matches.
ERROR: Command execution failed: 1
Summary: There were 2 WARNING messages.
Summary: There were 3 ERROR messages, returning a non-zero exit code.
build@ubuntu-bionic:~/project/bitbake/lib/bb$

Ganesh

--xRI54oDVlYgQSQmbdoRf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi <span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', =
Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif=
, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emo=
ji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;"><span style=3D"color: #333333; font-family: system-ui, 'Seg=
oe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sa=
ns-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto C=
olor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: nor=
mal; background-color: #ffffff; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial; display: inline !i=
mportant; float: none;">Gyorgy,<br /><br />I <span style=3D"color: #333333;=
 font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans',=
 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji=
', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: norm=
al; font-variant-ligatures: normal; font-variant-caps: normal; font-weight:=
 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0=
px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke=
-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial; display: inline !important; float: none;">removed all modifica=
tions from <span style=3D"color: #333333; font-family: system-ui, 'Segoe UI=
', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-se=
rif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color =
Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">local.conf and also deleted all .bbappend files still =
facing same issue.<br /><br />ERROR: Task /home/build/project/meta-raspberr=
ypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_package has circular d=
ependency on {'virtual:native:/home/build/project/meta/recipes-devtools/rpm=
/rpm_4.19.1.1.bb:do_populate_sysroot', '/home/build/project/meta/recipes-de=
vtools/gcc/libgcc_13.3.bb:do_packagedata', 'virtual:native:/home/build/proj=
ect/meta/recipes-devtools/dwarfsrcfiles/dwarfsrcfiles.bb:do_populate_sysroo=
t', '/home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_packagedata', 'virtual:native:/home/build/project/meta/reci=
pes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot', '/home/build/projec=
t/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install=
'}<br />ERROR: Command execution failed: 1<br /><br />I have added few logl=
ine so got to know that it is throwing error at <span style=3D"color: #3333=
33; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto San=
s', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Em=
oji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;"><span style=3D"colo=
r: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', '=
Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Seg=
oe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-dec=
oration-color: initial; display: inline !important; float: none;"><span sty=
le=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetic=
a Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Em=
oji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: =
#ffffff; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial; display: inline !important; float: none;"=
>do_populate_sysroot task.<br />So tried to build only recipe<strong> <span=
 style=3D"color: #000000; font-family: Consolas, 'Bitstream Vera Sans Mono'=
, 'Courier New', Courier, monospace; font-size: 14px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: n=
ormal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space=
: nowrap; background-color: #ffffff; text-decoration-thickness: initial; te=
xt-decoration-style: initial; text-decoration-color: initial; float: none; =
display: inline !important;">do_populate_sysroot </span><span style=3D"colo=
r: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', '=
Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Seg=
oe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; float: none; display: inline !important;"><span style=3D"color: #333333=
; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans'=
, 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: pre-wrap; background-color: #ffffff; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial; floa=
t: none; display: inline !important;"><span style=3D"color: #333333; font-f=
amily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liber=
ation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: #ffffff; text-decoration-thickness: initial; t=
ext-decoration-style: initial; text-decoration-color: initial; float: none;=
 display: inline !important;">linux-raspberrypi </span></span></span></stro=
ng><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Robot=
o, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Ap=
ple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; =
font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-v=
ariant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial; float: none; display: inline !important;"><span s=
tyle=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvet=
ica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size:=
 16px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial; float: none; display: inline !important;"><span style=3D"=
color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue=
', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', =
'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial; float: none; display: inline !important;">got below error<br /><b=
r /></span></span></span></span></span></span></span></span></span></span>
<div>ERROR:<br />Dependency loop #1 found:<br />&nbsp; Task /home/build/pro=
ject/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_asse=
mble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot', 'l=
inux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/project/=
meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install (=
dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 'linux-ra=
spberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:do_transform_kern=
el', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 'pseudo_git.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; T=
ask /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspber=
rypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:d=
o_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])<br />&nbsp; Ta=
sk /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberr=
ypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb:d=
o_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'bison_=
3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_1.=
3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.b=
b:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.3.=
bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_git.=
bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-ra=
spberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroot'=
, 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot', =
'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_=
fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])<br />&nbsp; Task /home=
/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.=
bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_prepare_reci=
pe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberrypi_6.6.bb=
:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 'linux=
-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])<br />&nbsp; Task /home/b=
uild/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb=
:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_confi=
gure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kerne=
l/linux/linux-raspberrypi_6.6.bb:do_compile (dependent Tasks ['linux-raspbe=
rrypi_6.6.bb:do_kernel_version_sanity_check', 'linux-raspberrypi_6.6.bb:do_=
kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_configure'])</div>
<div>Dependency loop #2 found:<br />&nbsp; Task /home/build/project/meta-ea=
ton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile (dependent Tasks ['u-bo=
ot_2021.10.bb:do_configure'])<br />&nbsp; Task /home/build/project/meta-eat=
on/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_generate_rsa_keys (depende=
nt Tasks ['u-boot_2021.10.bb:do_compile'])<br />&nbsp; Task /home/build/pro=
ject/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_assemble_fiti=
mage (dependent Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.bb:d=
o_uboot_generate_rsa_keys'])<br />&nbsp; Task /home/build/project/meta-eato=
n/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install (dependent Tasks ['u-boot=
_2021.10.bb:do_compile', 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 'u=
-boot_2021.10.bb:do_create_extlinux_config', 'pseudo_git.bb:do_populate_sys=
root'])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp/u-boot/=
u-boot_2021.10.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.4=
2.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_install'])<br />&nbsp; Tas=
k /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberry=
pi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_popu=
late_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /ho=
me/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.=
6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fit=
image', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:=
do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage'=
, 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile=
'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/li=
nux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutil=
s-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'=
])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boo=
t_2021.10.bb:do_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021=
.10.bb:do_populate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7=
.0.bb:do_populate_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseud=
o_git.bb:do_populate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cr=
oss_13.3.bb:do_populate_sysroot', 'os-release.bb:do_populate_sysroot', 'pyt=
hon3-setuptools_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_pop=
ulate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_popul=
ate_sysroot', 'flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_po=
pulate_sysroot', 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_20=
21.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberr=
ypi_6.6.bb:do_populate_sysroot'])<br />&nbsp; Task /home/build/project/meta=
-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure (dependent Tasks [=
'u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.bb:do_deploy_source_date_epoc=
h', 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])</div>
<div>Dependency loop #3 found:<br />&nbsp; Task /home/build/project/meta-ea=
ton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile (dependent Tasks ['u-bo=
ot_2021.10.bb:do_configure'])<br />&nbsp; Task /home/build/project/meta-eat=
on/recipes-bsp/u-boot/u-boot_2021.10.bb:do_uboot_assemble_fitimage (depende=
nt Tasks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.bb:do_uboot_gener=
ate_rsa_keys'])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp=
/u-boot/u-boot_2021.10.bb:do_install (dependent Tasks ['u-boot_2021.10.bb:d=
o_compile', 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', 'u-boot_2021.10=
.bb:do_create_extlinux_config', 'pseudo_git.bb:do_populate_sysroot'])<br />=
&nbsp; Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.1=
0.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_popul=
ate_sysroot', 'u-boot_2021.10.bb:do_install'])<br />&nbsp; Task /home/build=
/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_=
assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_populate_sysroot'=
, 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/proj=
ect/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_insta=
ll (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 'linu=
x-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:do_transform_=
kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 'pseudo_git=
.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbs=
p; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.=
bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])<br />&nbsp=
; Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:=
do_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_2021.10.bb:do_pop=
ulate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popu=
late_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseudo_git.bb:do_p=
opulate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:d=
o_populate_sysroot', 'os-release.bb:do_populate_sysroot', 'python3-setuptoo=
ls_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_populate_sysroot=
', 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_populate_sysroot',=
 'flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_populate_sysroo=
t', 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_f=
etch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_populate_sysroot'])<br />&nbsp; Task /home/build/project/meta-eaton/recipe=
s-bsp/u-boot/u-boot_2021.10.bb:do_configure (dependent Tasks ['u-boot_2021.=
10.bb:do_patch', 'u-boot_2021.10.bb:do_deploy_source_date_epoch', 'u-boot_2=
021.10.bb:do_prepare_recipe_sysroot'])</div>
<div>Dependency loop #4 found:<br />&nbsp; Task /home/build/project/meta-ea=
ton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile (dependent Tasks ['u-bo=
ot_2021.10.bb:do_configure'])<br />&nbsp; Task /home/build/project/meta-eat=
on/recipes-bsp/u-boot/u-boot_2021.10.bb:do_create_extlinux_config (dependen=
t Tasks ['u-boot_2021.10.bb:do_compile'])<br />&nbsp; Task /home/build/proj=
ect/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install (dependent T=
asks ['u-boot_2021.10.bb:do_compile', 'u-boot_2021.10.bb:do_uboot_assemble_=
fitimage', 'u-boot_2021.10.bb:do_create_extlinux_config', 'pseudo_git.bb:do=
_populate_sysroot'])<br />&nbsp; Task /home/build/project/meta-eaton/recipe=
s-bsp/u-boot/u-boot_2021.10.bb:do_populate_sysroot (dependent Tasks ['binut=
ils-cross_2.42.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_install'])<br=
 />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/li=
nux-raspberrypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.=
10.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&n=
bsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-r=
aspberrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do=
_assemble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspbe=
rrypi_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assem=
ble_fitimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.=
bb:do_compile'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/reci=
pes-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Ta=
sks ['binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.b=
b:do_install'])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp=
/u-boot/u-boot_2021.10.bb:do_prepare_recipe_sysroot (dependent Tasks ['u-bo=
ot-tools_2021.10.bb:do_populate_sysroot', 'bison_3.8.2.bb:do_populate_sysro=
ot', 'dtc_1.7.0.bb:do_populate_sysroot', 'python3_3.12.6.bb:do_populate_sys=
root', 'pseudo_git.bb:do_populate_sysroot', 'glibc_2.39.bb:do_populate_sysr=
oot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'os-release.bb:do_populate_s=
ysroot', 'python3-setuptools_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_1=
3.3.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.=
1.bb:do_populate_sysroot', 'flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot=
-scr.bb:do_populate_sysroot', 'kern-tools-native_git.bb:do_populate_sysroot=
', 'u-boot_2021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 'l=
inux-raspberrypi_6.6.bb:do_populate_sysroot'])<br />&nbsp; Task /home/build=
/project/meta-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure (depe=
ndent Tasks ['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.bb:do_deploy_sou=
rce_date_epoch', 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])</div>
<div>Dependency loop #5 found:<br />&nbsp; Task /home/build/project/meta-ea=
ton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_compile (dependent Tasks ['u-bo=
ot_2021.10.bb:do_configure'])<br />&nbsp; Task /home/build/project/meta-eat=
on/recipes-bsp/u-boot/u-boot_2021.10.bb:do_install (dependent Tasks ['u-boo=
t_2021.10.bb:do_compile', 'u-boot_2021.10.bb:do_uboot_assemble_fitimage', '=
u-boot_2021.10.bb:do_create_extlinux_config', 'pseudo_git.bb:do_populate_sy=
sroot'])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp/u-boot=
/u-boot_2021.10.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.=
42.bb:do_populate_sysroot', 'u-boot_2021.10.bb:do_install'])<br />&nbsp; Ta=
sk /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberr=
ypi_6.6.bb:do_assemble_fitimage (dependent Tasks ['u-boot_2021.10.bb:do_pop=
ulate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /h=
ome/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6=
.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fi=
timage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb=
:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage=
', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compil=
e'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/l=
inux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binuti=
ls-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install=
'])<br />&nbsp; Task /home/build/project/meta-eaton/recipes-bsp/u-boot/u-bo=
ot_2021.10.bb:do_prepare_recipe_sysroot (dependent Tasks ['u-boot-tools_202=
1.10.bb:do_populate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'dtc_1.=
7.0.bb:do_populate_sysroot', 'python3_3.12.6.bb:do_populate_sysroot', 'pseu=
do_git.bb:do_populate_sysroot', 'glibc_2.39.bb:do_populate_sysroot', 'gcc-c=
ross_13.3.bb:do_populate_sysroot', 'os-release.bb:do_populate_sysroot', 'py=
thon3-setuptools_69.1.1.bb:do_populate_sysroot', 'gcc-runtime_13.3.bb:do_po=
pulate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'swig_4.2.1.bb:do_popu=
late_sysroot', 'flex_2.6.4.bb:do_populate_sysroot', 'rpi-u-boot-scr.bb:do_p=
opulate_sysroot', 'kern-tools-native_git.bb:do_populate_sysroot', 'u-boot_2=
021.10.bb:do_fetch', 'openssl_3.2.3.bb:do_populate_sysroot', 'linux-raspber=
rypi_6.6.bb:do_populate_sysroot'])<br />&nbsp; Task /home/build/project/met=
a-eaton/recipes-bsp/u-boot/u-boot_2021.10.bb:do_configure (dependent Tasks =
['u-boot_2021.10.bb:do_patch', 'u-boot_2021.10.bb:do_deploy_source_date_epo=
ch', 'u-boot_2021.10.bb:do_prepare_recipe_sysroot'])</div>
<div>Dependency loop #6 found:<br />&nbsp; Task /home/build/project/meta-ra=
spberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depende=
nt Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linux=
-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_co=
nfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-ke=
rnel/linux/linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys (dependent T=
asks ['linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/=
project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_u=
boot_assemble_fitimage (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compi=
le', 'linux-raspberrypi_6.6.bb:do_uboot_generate_rsa_keys'])<br />&nbsp; Ta=
sk /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberr=
ypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemb=
le_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6=
.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fit=
image', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_c=
ompile'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-ker=
nel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['b=
inutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_in=
stall'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kern=
el/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot (dependent Task=
s ['elfutils_0.191.bb:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_pop=
ulate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_popula=
te_sysroot', 'libmpc_1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_popula=
te_sysroot', 'ovmerge.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sy=
sroot', 'openssl_3.2.3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sy=
sroot', 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_popul=
ate_sysroot', 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.=
bb:do_populate_sysroot', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb=
:do_populate_sysroot', 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux=
-raspberrypi_6.6.bb:do_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])=
<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux=
/linux-raspberrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspberrypi=
_6.6.bb:do_prepare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'l=
inux-raspberrypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_s=
ymlink_kernsrc', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])<b=
r />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/l=
inux-raspberrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux-rasp=
berrypi_6.6.bb:do_configure'])</div>
<div>Dependency loop #7 found:<br />&nbsp; Task /home/build/project/meta-ra=
spberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depende=
nt Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linux=
-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_co=
nfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-ke=
rnel/linux/linux-raspberrypi_6.6.bb:do_transform_kernel (dependent Tasks ['=
linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/project=
/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install =
(dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 'linux-r=
aspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:do_transform_ker=
nel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 'pseudo_git.bb=
:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; =
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:=
do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])<br />&nbsp; T=
ask /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspber=
rypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb:=
do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'bison=
_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_1=
.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.=
bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.3=
.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_git=
.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-r=
aspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroot=
', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot',=
 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do=
_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])<br />&nbsp; Task /hom=
e/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6=
.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_prepare_rec=
ipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberrypi_6.6.b=
b:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 'linu=
x-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])<br />&nbsp; Task /home/=
build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.b=
b:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_conf=
igure'])</div>
<div>Dependency loop #8 found:<br />&nbsp; Task /home/build/project/meta-ra=
spberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depende=
nt Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linux=
-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_co=
nfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-ke=
rnel/linux/linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage (dependent T=
asks ['linux-raspberrypi_6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_u=
boot_generate_rsa_keys'])<br />&nbsp; Task /home/build/project/meta-raspber=
rypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_install (dependent Ta=
sks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 'linux-raspberrypi_6.=
6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:do_transform_kernel', 'linux-=
raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 'pseudo_git.bb:do_populate_=
sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/bu=
ild/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:=
do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.bb:do_populate_s=
ysroot', 'linux-raspberrypi_6.6.bb:do_install'])<br />&nbsp; Task /home/bui=
ld/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:d=
o_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.bb:do_populate_s=
ysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'bison_3.8.2.bb:do_=
populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc_1.3.1.bb:do_po=
pulate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerge.bb:do_populat=
e_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2.3.bb:do_popula=
te_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_git.bb:do_popula=
te_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux-raspberrypi_6.=
6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysroot', 'pseudo_gi=
t.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot', 'binutils-cr=
oss_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_fetch', 'uti=
l-linux_2.39.3.bb:do_populate_sysroot'])<br />&nbsp; Task /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_config=
ure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot',=
 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberrypi_6.6.bb:do_kernel_c=
onfigme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 'linux-raspberrypi=
_6.6.bb:do_deploy_source_date_epoch'])<br />&nbsp; Task /home/build/project=
/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_kernel_c=
onfigcheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_configure'])</div=
>
<div>Dependency loop #9 found:<br />&nbsp; Task /home/build/project/meta-ra=
spberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depende=
nt Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linux=
-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_co=
nfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-ke=
rnel/linux/linux-raspberrypi_6.6.bb:do_kernel_link_images (dependent Tasks =
['linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_strip =
(dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_link_images', 'linux-=
raspberrypi_6.6.bb:do_compile_kernelmodules'])<br />&nbsp; Task /home/build=
/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_=
sizecheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_strip'])<br />&nbs=
p; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_a=
ssemble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberr=
ypi_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assembl=
e_fitimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb=
:do_compile'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipe=
s-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Task=
s ['binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:=
do_install'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes=
-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot (dependent=
 Tasks ['elfutils_0.191.bb:do_populate_sysroot', 'u-boot-tools_2021.10.bb:d=
o_populate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_p=
opulate_sysroot', 'libmpc_1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_p=
opulate_sysroot', 'ovmerge.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_popula=
te_sysroot', 'openssl_3.2.3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_popula=
te_sysroot', 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_=
populate_sysroot', 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_=
13.3.bb:do_populate_sysroot', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3=
.0.bb:do_populate_sysroot', 'binutils-cross_2.42.bb:do_populate_sysroot', '=
linux-raspberrypi_6.6.bb:do_fetch', 'util-linux_2.39.3.bb:do_populate_sysro=
ot'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/=
linux/linux-raspberrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspbe=
rrypi_6.6.bb:do_prepare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch=
', 'linux-raspberrypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb=
:do_symlink_kernsrc', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoch=
'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/li=
nux/linux-raspberrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linux=
-raspberrypi_6.6.bb:do_configure'])</div>
<div>Dependency loop #10 found:<br />&nbsp; Task /home/build/project/meta-r=
aspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depend=
ent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linu=
x-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_c=
onfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-k=
ernel/linux/linux-raspberrypi_6.6.bb:do_shared_workdir (dependent Tasks ['l=
inux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp; Task /home/build/project/=
meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile_k=
ernelmodules (dependent Tasks ['linux-raspberrypi_6.6.bb:do_compile', 'linu=
x-raspberrypi_6.6.bb:do_shared_workdir'])<br />&nbsp; Task /home/build/proj=
ect/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_strip=
 (dependent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_link_images', 'linux=
-raspberrypi_6.6.bb:do_compile_kernelmodules'])<br />&nbsp; Task /home/buil=
d/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do=
_sizecheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_strip'])<br />&nb=
sp; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-ra=
spberrypi_6.6.bb:do_install (dependent Tasks ['linux-raspberrypi_6.6.bb:do_=
assemble_fitimage', 'linux-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspber=
rypi_6.6.bb:do_transform_kernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemb=
le_fitimage', 'pseudo_git.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.b=
b:do_compile'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recip=
es-kernel/linux/linux-raspberrypi_6.6.bb:do_populate_sysroot (dependent Tas=
ks ['binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb=
:do_install'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipe=
s-kernel/linux/linux-raspberrypi_6.6.bb:do_prepare_recipe_sysroot (dependen=
t Tasks ['elfutils_0.191.bb:do_populate_sysroot', 'u-boot-tools_2021.10.bb:=
do_populate_sysroot', 'bison_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_=
populate_sysroot', 'libmpc_1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_=
populate_sysroot', 'ovmerge.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_popul=
ate_sysroot', 'openssl_3.2.3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_popul=
ate_sysroot', 'pkgconfig_git.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do=
_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc=
_13.3.bb:do_populate_sysroot', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.=
3.0.bb:do_populate_sysroot', 'binutils-cross_2.42.bb:do_populate_sysroot', =
'linux-raspberrypi_6.6.bb:do_fetch', 'util-linux_2.39.3.bb:do_populate_sysr=
oot'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel=
/linux/linux-raspberrypi_6.6.bb:do_configure (dependent Tasks ['linux-raspb=
errypi_6.6.bb:do_prepare_recipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patc=
h', 'linux-raspberrypi_6.6.bb:do_kernel_configme', 'linux-raspberrypi_6.6.b=
b:do_symlink_kernsrc', 'linux-raspberrypi_6.6.bb:do_deploy_source_date_epoc=
h'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-kernel/l=
inux/linux-raspberrypi_6.6.bb:do_kernel_configcheck (dependent Tasks ['linu=
x-raspberrypi_6.6.bb:do_configure'])</div>
<div>Dependency loop #11 found:<br />&nbsp; Task /home/build/project/meta-r=
aspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_compile (depend=
ent Tasks ['linux-raspberrypi_6.6.bb:do_kernel_version_sanity_check', 'linu=
x-raspberrypi_6.6.bb:do_kernel_configcheck', 'linux-raspberrypi_6.6.bb:do_c=
onfigure'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recipes-k=
ernel/linux/linux-raspberrypi_6.6.bb:do_compile_kernelmodules (dependent Ta=
sks ['linux-raspberrypi_6.6.bb:do_compile', 'linux-raspberrypi_6.6.bb:do_sh=
ared_workdir'])<br />&nbsp; Task /home/build/project/meta-raspberrypi/recip=
es-kernel/linux/linux-raspberrypi_6.6.bb:do_strip (dependent Tasks ['linux-=
raspberrypi_6.6.bb:do_kernel_link_images', 'linux-raspberrypi_6.6.bb:do_com=
pile_kernelmodules'])<br />&nbsp; Task /home/build/project/meta-raspberrypi=
/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_sizecheck (dependent Task=
s ['linux-raspberrypi_6.6.bb:do_strip'])<br />&nbsp; Task /home/build/proje=
ct/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_instal=
l (dependent Tasks ['linux-raspberrypi_6.6.bb:do_assemble_fitimage', 'linux=
-raspberrypi_6.6.bb:do_sizecheck', 'linux-raspberrypi_6.6.bb:do_transform_k=
ernel', 'linux-raspberrypi_6.6.bb:do_uboot_assemble_fitimage', 'pseudo_git.=
bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_compile'])<br />&nbsp=
; Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
berrypi_6.6.bb:do_populate_sysroot (dependent Tasks ['binutils-cross_2.42.b=
b:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:do_install'])<br />&nbsp;=
 Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspb=
errypi_6.6.bb:do_prepare_recipe_sysroot (dependent Tasks ['elfutils_0.191.b=
b:do_populate_sysroot', 'u-boot-tools_2021.10.bb:do_populate_sysroot', 'bis=
on_3.8.2.bb:do_populate_sysroot', 'kmod_31.bb:do_populate_sysroot', 'libmpc=
_1.3.1.bb:do_populate_sysroot', 'dtc_1.7.0.bb:do_populate_sysroot', 'ovmerg=
e.bb:do_populate_sysroot', 'bc_1.07.1.bb:do_populate_sysroot', 'openssl_3.2=
.3.bb:do_populate_sysroot', 'xz_5.4.6.bb:do_populate_sysroot', 'pkgconfig_g=
it.bb:do_populate_sysroot', 'gcc-cross_13.3.bb:do_populate_sysroot', 'linux=
-raspberrypi_6.6.bb:do_populate_sysroot', 'libgcc_13.3.bb:do_populate_sysro=
ot', 'pseudo_git.bb:do_populate_sysroot', 'gmp_6.3.0.bb:do_populate_sysroot=
', 'binutils-cross_2.42.bb:do_populate_sysroot', 'linux-raspberrypi_6.6.bb:=
do_fetch', 'util-linux_2.39.3.bb:do_populate_sysroot'])<br />&nbsp; Task /h=
ome/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6=
.6.bb:do_configure (dependent Tasks ['linux-raspberrypi_6.6.bb:do_prepare_r=
ecipe_sysroot', 'linux-raspberrypi_6.6.bb:do_patch', 'linux-raspberrypi_6.6=
.bb:do_kernel_configme', 'linux-raspberrypi_6.6.bb:do_symlink_kernsrc', 'li=
nux-raspberrypi_6.6.bb:do_deploy_source_date_epoch'])<br />&nbsp; Task /hom=
e/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6=
.bb:do_kernel_configcheck (dependent Tasks ['linux-raspberrypi_6.6.bb:do_co=
nfigure'])</div>
<div>Halted dependency loops search after 10 matches.</div>
<div>ERROR: Command execution failed: 1</div>
<div>Summary: There were 2 WARNING messages.<br />Summary: There were 3 ERR=
OR messages, returning a non-zero exit code.<br />build@ubuntu-bionic:~/pro=
ject/bitbake/lib/bb$<br /><br />Ganesh&nbsp;</div>
<span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, =
'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; fon=
t-size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-=
color: #ffffff; text-decoration-thickness: initial; text-decoration-style: =
initial; text-decoration-color: initial; display: inline !important; float:=
 none;"><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', =
Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif=
, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emo=
ji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; b=
ackground-color: #ffffff; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial; display: inline !importa=
nt; float: none;"><span style=3D"color: #333333; font-family: system-ui, 'S=
egoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, =
sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto=
 Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: p=
re-wrap; background-color: #ffffff; text-decoration-thickness: initial; tex=
t-decoration-style: initial; text-decoration-color: initial; display: inlin=
e !important; float: none;"><span style=3D"color: #333333; font-family: sys=
tem-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans=
', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symb=
ol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: normal; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial; displa=
y: inline !important; float: none;"><span style=3D"color: #333333; font-fam=
ily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberat=
ion Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe=
 UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: pre-wrap; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; display: inline !important; float: none;"><span style=3D"color: #333333=
; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans'=
, 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;"></span></span></spa=
n></span></span></span></div>

--xRI54oDVlYgQSQmbdoRf--

