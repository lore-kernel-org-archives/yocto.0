Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94E6AE00F0D; Wed, 14 Mar 2018 08:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED8C5E00DB1;
	Wed, 14 Mar 2018 08:05:34 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id e195-v6so302479ita.5;
	Wed, 14 Mar 2018 08:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=m5iFi+6sYAUsgEwvd/utxrvy3LW6IiNQe9M02h2/2Us=;
	b=UY4Eev5Bbsr1BREo84WdSzP9jekXo4mKqZtC2r8EHoJzSnAis3r0SbL7s917YpxdPe
	4c8B64UK/z2We7iQIBtdLguNuXUdhZxpmpO2jMduqvRsv0/nmYcewpzwfZBv1AI2OCH/
	LSA2cJJSuo1fTR1RUjMzx/brtg9BplV8M6etJyobeLlIoacTlNR4nmBazI71aBPfgvJe
	nqzyGyp8uiFkz5fQXVH5YEHRJVO80FrtRfVwceC2BbWIrRThoVw5bHpGnsV3/w1OQZOs
	ZCx5nCnd7Stsmhmxk8Knms20S9RDBB/NjZrlTGESJGqeeB/W+u+XMB8BDGSmnPJKlek0
	5c9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=m5iFi+6sYAUsgEwvd/utxrvy3LW6IiNQe9M02h2/2Us=;
	b=luZQYLwHcAzs9iUpRHZh4kWyJ5VkRXN7dKt/FHwPE3nEjkNnUHzw4F5rB/cqbEG2Rs
	8Xv76qVp+8iZRq0jr3Rs0sL51n8+Qka5rC53MbZROFAcwCMk++bY/zMLj3kuZU5muVE6
	LGtBObbF9CW3SsojWarJRuux13Kh4AoF35rWuFN06TtdIGwAkaL571iWjst+VFm5wz3h
	bcOho/MS/mmUBjXqyU/fK07gKqN+fpl7mpWxbD191Ln0kmkHFUpyY/HEpd1EszYVJQBD
	7NCBysbxvzfiswKnaq2UFiE2D7a4EulSmHMQwovOQoeydp6cVddtcz3aVqsWsn3UHOOM
	SBtg==
X-Gm-Message-State: AElRT7GS/qzF2y1/m9u8SaqXrWMA5NU5fBpf9qB7qNka1YwCm74/8AVA
	W08J1fs8h+5t4UHqKtcZjGJfEKSPbNX+00Ph4ac=
X-Google-Smtp-Source: AG47ELvocdRXBG/O8ogCxZvPFrYja+y+e5pgjpjxt4BhfmfN3S6v3lyU4yU1tq4LIdc/o8ElGBae8i73JSQVRwv2S2M=
X-Received: by 2002:a24:5dce:: with SMTP id
	w197-v6mr2502837ita.144.1521039933765; 
	Wed, 14 Mar 2018 08:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <a7be3069-9890-6b80-5a9b-914b9f464906@intel.com>
	<CAPybu_1jP5cKdntzvUF5w8Pu3sFE0Kz+sAnraCxmHwKKtsnX3w@mail.gmail.com>
	<36c7cee8-f5fd-144c-8cc6-53cffa6c4cbf@gmail.com>
In-Reply-To: <36c7cee8-f5fd-144c-8cc6-53cffa6c4cbf@gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 14 Mar 2018 15:05:22 +0000
Message-ID: <CAFzUWGkPAHSXihsa_gM-GkiTxQ+MY6Jykkir_F7MyUZrNtuYYA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.4.2 (rocko-18.0.2) Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2018 15:05:37 -0000
Content-Type: multipart/alternative; boundary="000000000000f0fd57056760b4f2"

--000000000000f0fd57056760b4f2
Content-Type: text/plain; charset="UTF-8"

Thanks for all the work,

Is there a place that lists all CVEs and links to the commit patching them?

Giordon

On Wed, Mar 14, 2018 at 10:00 akuster808 <akuster808@gmail.com> wrote:

>
>
> On 03/14/2018 04:54 AM, Ricardo Ribalda Delgado wrote:
>
> Hi Tracy
>
> My two cents:
>
> I tried updating to this version and I got a couple of issues:
>
> 1) My distro has moved to glibc2.27, so I had to update my uninative
>
> We are aware of this issue on unsupported new hosts.
>
>
> 2) During glibc-initial -c install I got a bunch of
>
> dso_handle.c:21:3: error: visibility attribute not supported in this
> configuration; ignored [-Werror=attributes
>
> It got fixed when I used top of  rocko branch.
>
>
> Glad this now works for you. The Point releases will always lag the top of
> branch as those go through QA and stabilization.
>
> Armin
> Rocko Maintainer
>
>
>
>
> Thanks!
>
> On Tue, Mar 13, 2018 at 12:37 AM, Tracy Graydon <tracy.graydon@intel.com>
> wrote:
>
>> Hello,
>>
>> The latest release of the Yocto Project 2.4.2 (rocko-18.0.2) is now
>> available for download at:
>>
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
>>
>> A gpg signed version of these release notes is available at:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/RELEASENOTES
>>
>> Full pass test report is available at:
>>
>>
>> https://wiki.yoctoproject.org/wiki/WW10_-_2018-03-05-_Full_Test_Cycle_-_2.4.2_rc2
>>
>> Thank you to everyone for your contributions to this release!
>>
>> Tracy Graydon
>> Yocto Project Build and Release
>> tracy.graydon@intel.com
>>
>>
>> ------------------
>> yocto-2.4.2 Errata
>> ------------------
>>
>> Release Name: eclipse-poky-neon-rocko-18.0.2
>> Branch: neon/rocko
>> Tag: neon/rocko-18.0.2
>> Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab
>> md5: d2a5c651c5680ee3cf4d5f757787d580
>> Download Locations:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/eclipse-poky-neon-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-neon-rocko-18.0.2.tar.bz2
>>
>> Release Name: eclipse-poky-oxygen-rocko-18.0.2
>> Branch: oxygen/rocko
>> Tag: oxygen/rocko-18.0.2
>> Hash: 020fc5814d2028654879356296b647002caf30b6
>> md5: e646e74bbee029b2545a558e097a5c84
>> Download Locations:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/eclipse-poky-oxygen-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-oxygen-rocko-18.0.2.tar.bz2
>>
>> Release Name: meta-qt3-rocko-18.0.2
>> Branch: rocko
>> Tag: rocko-18.0.2
>> Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f
>> md5: 4686bce6110b1c174423d04904e5b1ce
>> Download Locations:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2
>>
>> Release Name: meta-qt4-rocko-18.0.2
>> Branch: rocko
>> Tag: rocko-18.0.2
>> Hash: f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d
>> md5: 21ee0914b20dcdf9c665c231d3fd93c4
>> Download Locations:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2
>>
>> Release Name: poky-rocko-18.0.2
>> Branch: rocko
>> Tag: rocko-18.0.2
>> Hash: 342fbd6a3e57021c8e28b124b3adb241936f3d9d
>> md5: 375ccb80a87771a5664ab170b1ae9d7d
>> Download Locations:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2
>>
>>
>> ---------------
>>  Known Issues
>> ---------------
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12587
>>
>> Runtime providers were sometimes changing order during builds, resulting
>> in non-deterministic build results.
>>
>> Example:
>>
>> DEBUG: providers for lib32-initd-functions are: ['lib32-lsbinitscripts',
>> 'lib32-initscripts']
>>     or
>> DEBUG: providers for lib32-initd-functions are: ['lib32-initscripts',
>> 'lib32-lsbinitscripts']
>>
>> This can lead to test failures.
>>
>> This is fixed with Bitbake rev: 223a0f68530571d2280f526bddbc718fa803a3dc
>> This change ensures we don't rely on the random order of dictionaries in
>> memory and act deterministically.
>>
>> ---------------
>> Security Fixes
>> ---------------
>> glibc: Security fix CVE-2017-17426
>> glibc: Security Fix CVE-2017-16997
>> glibc: Security fix CVE-2017-15671
>> glibc: Security fix CVE-2017-15670
>>
>>
>> ---------------
>> Fixes
>> ---------------
>> glibc: Update to tip of 2.26
>> glibc: Adapt do_install_append_aarch64() for usrmerge
>> libtirpc: refresh patches
>> libtirpc: stop dropping in NIS headers
>> libunwind: Fix multilib header conflict - libunwind.h
>> libmpc: fix SRC_URI
>> siteinfo: add aarch64_illp32 decode
>> update-rc.d: QA regression.
>> webkitgtk_2.18.6.bb: Fix configure failure for aarch64 build
>> eglinfo-fb: Pass -DMESA_EGL_NO_X11_HEADERS to cxxflags
>> openssl: remove patch from 1.0.2m left behind after update to 1.0.2n
>> p11-kit: take source code from official git
>> meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86
>> BSPs
>> linux-yocto: update genericx86* SRCREVs for v4.4
>> linux-yocto: update genericx86* SRCREVs for v4.9
>> linux-yocto: update genericx86* SRCREVs for v4.12
>> meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86
>> BSPs
>> linux-yocto/4.12: fix qemuarm64 boot failure
>> kernel-yocto/4.9: update to v4.9.82
>> linux-yocto/4.12: update to v4.12.20
>> libc6: improve reproducibility
>> musl: Disable thumb1 ISA
>> musl: prevent errors if do_install is run more than once
>> musl: Update to 1.1.18
>> musl: Update to latest
>> gcc-7.3: Drop upstreamed musl cpuinfo patch
>> packagegroup-core-tools-profile: disable valgrind on armeb
>> webkitgtk: update to 2.18.6
>> linux-yocto/4.12: pinctrl backports
>> package_rpm.bbclass: Fix matching of architecture independent packages
>> openssl: update to 1.0.2n
>> openssl-ptest: improve reproducibility
>> build-appliance-image: Update to rocko head revision
>> poky.conf: Bump version for 2.4.2 rocko release
>> documentation: Updated Manual Revision Table for 2.4.2 Release Date
>> yocto-project-qs: Fixed spelling error in Welcome section
>> dev-manual: Fixed variable link to DEFAULTTUNE variable
>> ref-manual: Removed Ubuntu 14.04 from Supported Linux Distribution
>> documentation: Prepared files for a 2.4.2 point release
>> ref-manual, yocto-project-qs, poky.ent: Fixed CentOS package
>> mega-manual: Updated sdk-manual figure used
>> ref-manual: Updated Note to use bullet form and fixed link to sdk-manual
>> ref-manual, yocto-project-qs: Fixed targets for sdk-manual links
>> mega-manual.sed: Fixed string for sdk-manual links
>> net-tools: change a '=' to '+='
>> kernel-uboot: support Image kernel type for arm64
>> libunwind: Fix PACKAGECONFIG option typo
>> glibc-locale.inc: avoid duplicate packages
>> tzdata: update to 2018c
>> tzcode: update to 2018c
>> grub: Move grub-editenv packaging to grub2.inc
>> grub-efi: Add loadenv and test as default built-in
>> grub-efi: Rework GRUB_BUILTIN variable as it is too long
>> grub-efi: Fix DEPENDS
>> libarchive: Enable xz and lzo by default
>> libepoxy: Fix build break for EGL_CAST dependency
>> image_types_wic.bbclass: Ensure '-c image_wic' works
>> uninative.bbclass: Fix broken symlink issue
>> linux-yocto/4.12: update to v4.12.19
>> linux-yocto/4.9: update to v4.9.78
>> linux-yocto/4.4: update to v4.4.113
>> linux-yocto/4.12: iwlwifi and pci id backports
>> kernel-yocto: make SRC_URI defconfig removal more specific
>> linux-yocto/4.12: drm & mips fixes
>> linux-yocto/4.12: coffeeLake-s graphics and audio support
>> linux-yocto/4.12: CQM and rdt backports
>> linux-yocto/4.4: update to 4.4.99
>> linux-yocto/4.9: fix aufs build
>> linux-yocto/4.9: update to v4.9.71
>> gcc: Upgrade 7.2 -> 7.3
>> lz4: remove ptest changes
>> lz4: fix upstream version check
>> glibc: fix C++ compile failures related to 'assert'
>> populate_sdk_ext: Set cleandirs correctly
>> lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and
>> do_populate_sdk repos don't conflict
>> image: Expand PV to avoid AUTOREV parsing failures
>> webkitgtk: update to 2.18.5 (includes Spectre mitigations; see commit
>> description)
>> pax-utils: update SRC_URI
>> linux-firmware: Bump to bf04291 revision
>> linux-firmware: Split out the QAT firmware
>> libunwind: Disable documentation explicitly
>> oeqa/runtime/buildcpio: Use our own mirror for source
>> binutils: Convert SRC_URI and SRCREV to weak defines
>> binutils: update to 2.29.1
>> acpica: fix build with x32
>> boost: fix build with x32 and musl
>> runqemu: Add workaround for APIC hang on pre 4.15 kernels on qemux86
>> glib-2.0: Add python3 modules required by gdbus-codegen
>> lib/oe/patch: add missing import
>> bmap-tools: fix RDEPENDS and update SRC_URI
>> rm_work: remove debugging statements
>> kernel-fitimage: Fix bad image type replacement for aarch64
>> image-live.bbclass: add MLPREFIX to core-image-minimal-initramfs
>> image-live.bbclass: print warn when initramfs is invalid
>> wic: Fix a path to a psuedo state directory (PSEUDO_LOCALSTATEDIR).
>> waf.bbclass: explicitly pass bindir and libdir if supported
>> kernel.bbclass: Fix do_sizecheck behaviour
>> image_types: btrfs use sparse file creation
>> rm_work: Handle race with -inital tasks
>> linux-yocto/4.12: CQM and kmemleak fixes
>> linux-yocto/4.12: common-pc*: enable X2APIC by default
>> linux-yocto/4.12: update to v.4.12.18
>> linux-yocto/4.12: bug fixes and feature backports
>> linux-yocto/4.x: configuration updates
>> linux-yocto/4.12: ipv4 stable backport and config changes
>> linux-yocto/4.12: bug fixes and VRF feature addition
>> linux-yocto/4.12: update to v4.12.16
>> systemd: fix segfault when terminating systemd --test
>> recipetool: create: fix conflict between SRCREV and tag
>> libxslt: use HTTP instead of FTP in SRC_URI
>> ovmf: Fix build failure for PARALLEL_MAKE with no space
>> kernel-yocto: ensure that only a single defconfig is processed
>> kernel-yocto: Stop the build if defconfig is missing
>> kernel-yocto: ensure sccs variable is set when using KBUILD_DEFCONFIG
>> linux-yocto/4.9: update to v4.9.65
>> linux-yocto/4.12: iwlwifi calltrace fixes and configuration warning
>> cleanups
>> linux-yocto/4.9: update to v4.9.61
>> rootfs-postcommands.bbclass: ensure that rootfs gets mounted ro
>> connman.inc: do not check IMAGE_FEATURES
>> templates/layer.conf: remove backslash to enable bbappend setting
>> systemd: allow dots in arguments to template units
>> package_manager: force dnf to refresh the cache
>> meta-selftest: fix upstream version checks for devtool test recipes
>> mtd-utils: fix flash_eraseall installation conflict
>> wpa-supplicant: add a missing WPA_COMMON_CTRL_IFACE definition
>> update-alternatives.bbclass: refuse to manage SysV init scripts
>> Revert "classes: Fix alternatives and rc.d ordering"
>> initscripts: rrecommend initscripts-functions
>> lsbinitscripts: don't use update-alternatives
>> initscripts: don't use update-alternatives
>> sysklogd: don't use update-alternatives
>> install*.sh: add short sleep after parted commands
>> init-install: fix grub-install command
>> initramfs-module-install: Remove allarch and FILESEXTRAPATHS
>> initramfs-framework: add install module
>> initramfs-module-install-efi: update summary
>> initramfs-module-install-efi: point to original copy and delete new file
>> wic: support filesystem label for rawcopy
>> openssl: fix runtime errors with Thumb2 when using binutils 2.29
>> openssl: Upgrade 1.1.0f -> 1.1.0g
>> openssl10: fix runtime errors with Thumb2 when using binutils 2.29
>> openssl10: Upgrade 1.0.2l -> 1.0.2m
>> python[3]-setuptools: inherit setuptools
>> local.conf.sample: Weakly set BB_DISKMON_DIRS
>> documentation: Prepped manual set for a 2.4.1 point release
>> bitbake: toaster: add 'nobuild' option to Toaster
>> bitbake: toaster: landing page show cmdline capture
>> bitbake: toaster: enable custom env support for shell calls
>> bitbake: toaster: some recipe events do not include packages
>> bitbake: toaster: update Toaster for Django 1.11
>> bitbake: toaster: unset BBPATH before starting bbserver for backwards
>> compatibility
>> populate_sdk_ext: Use prebuilt uninative tarball
>> makefile: Removed "yocto-environment.png" from tar list of mega-manual
>> ref-manual: Fixed redundant link for "build system"
>> ref-manual: Added new terms to Yocto Project Terms section.
>> dev-manual: Updated bitbake-layers overview section.
>> ref-manual: 2.4 Migration Revisions
>> build-appliance: Fix branch name
>> --
>> _______________________________________________
>> yocto-announce mailing list
>> yocto-announce@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto-announce
>>
>
>
>
> --
> Ricardo Ribalda
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--000000000000f0fd57056760b4f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for all the work,<br><br>Is there a place that lists all CVEs a=
nd links to the commit patching them?<br><br>Giordon</div><div><br><div cla=
ss=3D"gmail_quote"><div>On Wed, Mar 14, 2018 at 10:00 akuster808 &lt;<a hre=
f=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF=
">
    <p><br>
    </p>
    <br>
    <div class=3D"m_-4717702421742857299moz-cite-prefix">On 03/14/2018 04:5=
4 AM, Ricardo Ribalda
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div>Hi Tracy
        <div><br>
        </div>
        <div>My two cents:</div>
        <div><br>
        </div>
        <div>I tried updating to this version and I got a couple of
          issues:
          <div><br>
          </div>
          <div>1) My distro has moved to glibc2.27, so I had to update
            my uninative</div>
        </div>
      </div>
    </blockquote></div><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    We are aware of this issue on unsupported new hosts.</div><div text=3D"=
#000000" bgcolor=3D"#FFFFFF"><br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <div>
          <div>2) During glibc-initial -c install I got a bunch of</div>
          <div><br>
          </div>
          <div>
            <div>dso_handle.c:21:3: error: visibility attribute not
              supported in this configuration; ignored
              [-Werror=3Dattributes<br>
            </div>
          </div>
          <div><br>
          </div>
          <div>It got fixed when I used top of=C2=A0 rocko branch.</div>
        </div>
      </div>
    </blockquote>
    <br></div><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Glad this now works for you. The Point releases will always lag the
    top of branch as those go through QA and stabilization.<br>
    <br>
    Armin<br>
    Rocko Maintainer</div><div text=3D"#000000" bgcolor=3D"#FFFFFF"><br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Thanks!</div>
        </div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Tue, Mar 13, 2018 at 12:37 AM, Tracy
          Graydon <span>&lt;<a href=3D"mailto:tracy.graydon@intel.com" targ=
et=3D"_blank">tracy.graydon@intel.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hello,<br>
            <br>
            The latest release of the Yocto Project 2.4.2 (rocko-18.0.2)
            is now available for download at:<br>
            <br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/poky-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.=
2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/po=
ky-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://mirror=
s.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2</a><br>
            <br>
            A gpg signed version of these release notes is available at:<br=
>
            <br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/RELEASENOTES" rel=3D"noreferrer" target=3D"_blank">http://download=
s.yoctoproject.org/releases/yocto/yocto-2.4.2/RELEASENOTES</a><br>
            <br>
            Full pass test report is available at:<br>
            <br>
            <a href=3D"https://wiki.yoctoproject.org/wiki/WW10_-_2018-03-05=
-_Full_Test_Cycle_-_2.4.2_rc2" rel=3D"noreferrer" target=3D"_blank">https:/=
/wiki.yoctoproject.org/wiki/WW10_-_2018-03-05-_Full_Test_Cycle_-_2.4.2_rc2<=
/a><br>
            <br>
            Thank you to everyone for your contributions to this
            release!<br>
            <br>
            Tracy Graydon<br>
            Yocto Project Build and Release<br>
            <a href=3D"mailto:tracy.graydon@intel.com" target=3D"_blank">tr=
acy.graydon@intel.com</a><br>
            <br>
            <br>
            ------------------<br>
            yocto-2.4.2 Errata<br>
            ------------------<br>
            <br>
            Release Name: eclipse-poky-neon-rocko-18.0.2<br>
            Branch: neon/rocko<br>
            Tag: neon/rocko-18.0.2<br>
            Hash: a5dbc01b96be55c4ec2f774af9996a8086e402ab<br>
            md5: d2a5c651c5680ee3cf4d5f757787d580<br>
            Download Locations:<br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/eclipse-poky-neon-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=
=3D"_blank">http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/ec=
lipse-poky-neon-rocko-18.0.2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/ec=
lipse-poky-neon-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">=
http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-neon-rocko-1=
8.0.2.tar.bz2</a><br>
            <br>
            Release Name: eclipse-poky-oxygen-rocko-18.0.2<br>
            Branch: oxygen/rocko<br>
            Tag: oxygen/rocko-18.0.2<br>
            Hash: 020fc5814d2028654879356296b647002caf30b6<br>
            md5: e646e74bbee029b2545a558e097a5c84<br>
            Download Locations:<br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/eclipse-poky-oxygen-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" targe=
t=3D"_blank">http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/e=
clipse-poky-oxygen-rocko-18.0.2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/ec=
lipse-poky-oxygen-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank=
">http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/eclipse-poky-oxygen-roc=
ko-18.0.2.tar.bz2</a><br>
            <br>
            Release Name: meta-qt3-rocko-18.0.2<br>
            Branch: rocko<br>
            Tag: rocko-18.0.2<br>
            Hash: f33b73a9563f2dfdfd0ee37b61d65d90197a456f<br>
            md5: 4686bce6110b1c174423d04904e5b1ce<br>
            Download Locations:<br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank=
">http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt3-roc=
ko-18.0.2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/me=
ta-qt3-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://mi=
rrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt3-rocko-18.0.2.tar.bz2</a><=
br>
            <br>
            Release Name: meta-qt4-rocko-18.0.2<br>
            Branch: rocko<br>
            Tag: rocko-18.0.2<br>
            Hash: f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d<br>
            md5: 21ee0914b20dcdf9c665c231d3fd93c4<br>
            Download Locations:<br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank=
">http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/meta-qt4-roc=
ko-18.0.2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/me=
ta-qt4-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://mi=
rrors.kernel.org/yocto/yocto/yocto-2.4.2/meta-qt4-rocko-18.0.2.tar.bz2</a><=
br>
            <br>
            Release Name: poky-rocko-18.0.2<br>
            Branch: rocko<br>
            Tag: rocko-18.0.2<br>
            Hash: 342fbd6a3e57021c8e28b124b3adb241936f3d9d<br>
            md5: 375ccb80a87771a5664ab170b1ae9d7d<br>
            Download Locations:<br>
            <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yoc=
to-2.4.2/poky-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/poky-rocko-18.0.=
2.tar.bz2</a><br>
            <a href=3D"http://mirrors.kernel.org/yocto/yocto/yocto-2.4.2/po=
ky-rocko-18.0.2.tar.bz2" rel=3D"noreferrer" target=3D"_blank">http://mirror=
s.kernel.org/yocto/yocto/yocto-2.4.2/poky-rocko-18.0.2.tar.bz2</a><br>
            <br>
            <br>
            ---------------<br>
            =C2=A0Known Issues<br>
            ---------------<br>
            <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
12587" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D12587</a><br>
            <br>
            Runtime providers were sometimes changing order during
            builds, resulting in non-deterministic build results.<br>
            <br>
            Example:<br>
            <br>
            DEBUG: providers for lib32-initd-functions are:
            [&#39;lib32-lsbinitscripts&#39;, &#39;lib32-initscripts&#39;]<b=
r>
            =C2=A0 =C2=A0 or<br>
            DEBUG: providers for lib32-initd-functions are:
            [&#39;lib32-initscripts&#39;, &#39;lib32-lsbinitscripts&#39;]<b=
r>
            <br>
            This can lead to test failures.<br>
            <br>
            This is fixed with Bitbake rev:
            223a0f68530571d2280f526bddbc718fa803a3dc<br>
            This change ensures we don&#39;t rely on the random order of
            dictionaries in<br>
            memory and act deterministically.<br>
            <br>
            ---------------<br>
            Security Fixes<br>
            ---------------<br>
            glibc: Security fix CVE-2017-17426<br>
            glibc: Security Fix CVE-2017-16997<br>
            glibc: Security fix CVE-2017-15671<br>
            glibc: Security fix CVE-2017-15670<br>
            <br>
            <br>
            ---------------<br>
            Fixes<br>
            ---------------<br>
            glibc: Update to tip of 2.26<br>
            glibc: Adapt do_install_append_aarch64() for usrmerge<br>
            libtirpc: refresh patches<br>
            libtirpc: stop dropping in NIS headers<br>
            libunwind: Fix multilib header conflict - libunwind.h<br>
            libmpc: fix SRC_URI<br>
            siteinfo: add aarch64_illp32 decode<br>
            update-rc.d: QA regression.<br>
            <a href=3D"http://webkitgtk_2.18.6.bb" rel=3D"noreferrer" targe=
t=3D"_blank">webkitgtk_2.18.6.bb</a>:
            Fix configure failure for aarch64 build<br>
            eglinfo-fb: Pass -DMESA_EGL_NO_X11_HEADERS to cxxflags<br>
            openssl: remove patch from 1.0.2m left behind after update
            to 1.0.2n<br>
            p11-kit: take source code from official git<br>
            meta-yocto-bsp: bump to the latest linux stable kernel for
            the non-x86 BSPs<br>
            linux-yocto: update genericx86* SRCREVs for v4.4<br>
            linux-yocto: update genericx86* SRCREVs for v4.9<br>
            linux-yocto: update genericx86* SRCREVs for v4.12<br>
            meta-yocto-bsp: bump to the latest linux stable kernel for
            the non-x86 BSPs<br>
            linux-yocto/4.12: fix qemuarm64 boot failure<br>
            kernel-yocto/4.9: update to v4.9.82<br>
            linux-yocto/4.12: update to v4.12.20<br>
            libc6: improve reproducibility<br>
            musl: Disable thumb1 ISA<br>
            musl: prevent errors if do_install is run more than once<br>
            musl: Update to 1.1.18<br>
            musl: Update to latest<br>
            gcc-7.3: Drop upstreamed musl cpuinfo patch<br>
            packagegroup-core-tools-profile: disable valgrind on
            armeb<br>
            webkitgtk: update to 2.18.6<br>
            linux-yocto/4.12: pinctrl backports<br>
            package_rpm.bbclass: Fix matching of architecture
            independent packages<br>
            openssl: update to 1.0.2n<br>
            openssl-ptest: improve reproducibility<br>
            build-appliance-image: Update to rocko head revision<br>
            poky.conf: Bump version for 2.4.2 rocko release<br>
            documentation: Updated Manual Revision Table for 2.4.2
            Release Date<br>
            yocto-project-qs: Fixed spelling error in Welcome section<br>
            dev-manual: Fixed variable link to DEFAULTTUNE variable<br>
            ref-manual: Removed Ubuntu 14.04 from Supported Linux
            Distribution<br>
            documentation: Prepared files for a 2.4.2 point release<br>
            ref-manual, yocto-project-qs, poky.ent: Fixed CentOS package<br=
>
            mega-manual: Updated sdk-manual figure used<br>
            ref-manual: Updated Note to use bullet form and fixed link
            to sdk-manual<br>
            ref-manual, yocto-project-qs: Fixed targets for sdk-manual
            links<br>
            mega-manual.sed: Fixed string for sdk-manual links<br>
            net-tools: change a &#39;=3D&#39; to &#39;+=3D&#39;<br>
            kernel-uboot: support Image kernel type for arm64<br>
            libunwind: Fix PACKAGECONFIG option typo<br>
            glibc-locale.inc: avoid duplicate packages<br>
            tzdata: update to 2018c<br>
            tzcode: update to 2018c<br>
            grub: Move grub-editenv packaging to grub2.inc<br>
            grub-efi: Add loadenv and test as default built-in<br>
            grub-efi: Rework GRUB_BUILTIN variable as it is too long<br>
            grub-efi: Fix DEPENDS<br>
            libarchive: Enable xz and lzo by default<br>
            libepoxy: Fix build break for EGL_CAST dependency<br>
            image_types_wic.bbclass: Ensure &#39;-c image_wic&#39; works<br=
>
            uninative.bbclass: Fix broken symlink issue<br>
            linux-yocto/4.12: update to v4.12.19<br>
            linux-yocto/4.9: update to v4.9.78<br>
            linux-yocto/4.4: update to v4.4.113<br>
            linux-yocto/4.12: iwlwifi and pci id backports<br>
            kernel-yocto: make SRC_URI defconfig removal more specific<br>
            linux-yocto/4.12: drm &amp; mips fixes<br>
            linux-yocto/4.12: coffeeLake-s graphics and audio support<br>
            linux-yocto/4.12: CQM and rdt backports<br>
            linux-yocto/4.4: update to 4.4.99<br>
            linux-yocto/4.9: fix aufs build<br>
            linux-yocto/4.9: update to v4.9.71<br>
            gcc: Upgrade 7.2 -&gt; 7.3<br>
            lz4: remove ptest changes<br>
            lz4: fix upstream version check<br>
            glibc: fix C++ compile failures related to &#39;assert&#39;<br>
            populate_sdk_ext: Set cleandirs correctly<br>
            lib/oe/package_manager/sdk: Ensure do_populate_sdk_ext and
            do_populate_sdk repos don&#39;t conflict<br>
            image: Expand PV to avoid AUTOREV parsing failures<br>
            webkitgtk: update to 2.18.5 (includes Spectre mitigations;
            see commit description)<br>
            pax-utils: update SRC_URI<br>
            linux-firmware: Bump to bf04291 revision<br>
            linux-firmware: Split out the QAT firmware<br>
            libunwind: Disable documentation explicitly<br>
            oeqa/runtime/buildcpio: Use our own mirror for source<br>
            binutils: Convert SRC_URI and SRCREV to weak defines<br>
            binutils: update to 2.29.1<br>
            acpica: fix build with x32<br>
            boost: fix build with x32 and musl<br>
            runqemu: Add workaround for APIC hang on pre 4.15 kernels on
            qemux86<br>
            glib-2.0: Add python3 modules required by gdbus-codegen<br>
            lib/oe/patch: add missing import<br>
            bmap-tools: fix RDEPENDS and update SRC_URI<br>
            rm_work: remove debugging statements<br>
            kernel-fitimage: Fix bad image type replacement for aarch64<br>
            image-live.bbclass: add MLPREFIX to
            core-image-minimal-initramfs<br>
            image-live.bbclass: print warn when initramfs is invalid<br>
            wic: Fix a path to a psuedo state directory
            (PSEUDO_LOCALSTATEDIR).<br>
            waf.bbclass: explicitly pass bindir and libdir if supported<br>
            kernel.bbclass: Fix do_sizecheck behaviour<br>
            image_types: btrfs use sparse file creation<br>
            rm_work: Handle race with -inital tasks<br>
            linux-yocto/4.12: CQM and kmemleak fixes<br>
            linux-yocto/4.12: common-pc*: enable X2APIC by default<br>
            linux-yocto/4.12: update to v.4.12.18<br>
            linux-yocto/4.12: bug fixes and feature backports<br>
            linux-yocto/4.x: configuration updates<br>
            linux-yocto/4.12: ipv4 stable backport and config changes<br>
            linux-yocto/4.12: bug fixes and VRF feature addition<br>
            linux-yocto/4.12: update to v4.12.16<br>
            systemd: fix segfault when terminating systemd --test<br>
            recipetool: create: fix conflict between SRCREV and tag<br>
            libxslt: use HTTP instead of FTP in SRC_URI<br>
            ovmf: Fix build failure for PARALLEL_MAKE with no space<br>
            kernel-yocto: ensure that only a single defconfig is
            processed<br>
            kernel-yocto: Stop the build if defconfig is missing<br>
            kernel-yocto: ensure sccs variable is set when using
            KBUILD_DEFCONFIG<br>
            linux-yocto/4.9: update to v4.9.65<br>
            linux-yocto/4.12: iwlwifi calltrace fixes and configuration
            warning cleanups<br>
            linux-yocto/4.9: update to v4.9.61<br>
            rootfs-postcommands.bbclass: ensure that rootfs gets mounted
            ro<br>
            connman.inc: do not check IMAGE_FEATURES<br>
            templates/layer.conf: remove backslash to enable bbappend
            setting<br>
            systemd: allow dots in arguments to template units<br>
            package_manager: force dnf to refresh the cache<br>
            meta-selftest: fix upstream version checks for devtool test
            recipes<br>
            mtd-utils: fix flash_eraseall installation conflict<br>
            wpa-supplicant: add a missing WPA_COMMON_CTRL_IFACE
            definition<br>
            update-alternatives.bbclass: refuse to manage SysV init
            scripts<br>
            Revert &quot;classes: Fix alternatives and rc.d ordering&quot;<=
br>
            initscripts: rrecommend initscripts-functions<br>
            lsbinitscripts: don&#39;t use update-alternatives<br>
            initscripts: don&#39;t use update-alternatives<br>
            sysklogd: don&#39;t use update-alternatives<br>
            install*.sh: add short sleep after parted commands<br>
            init-install: fix grub-install command<br>
            initramfs-module-install: Remove allarch and FILESEXTRAPATHS<br=
>
            initramfs-framework: add install module<br>
            initramfs-module-install-efi: update summary<br>
            initramfs-module-install-efi: point to original copy and
            delete new file<br>
            wic: support filesystem label for rawcopy<br>
            openssl: fix runtime errors with Thumb2 when using binutils
            2.29<br>
            openssl: Upgrade 1.1.0f -&gt; 1.1.0g<br>
            openssl10: fix runtime errors with Thumb2 when using
            binutils 2.29<br>
            openssl10: Upgrade 1.0.2l -&gt; 1.0.2m<br>
            python[3]-setuptools: inherit setuptools<br>
            local.conf.sample: Weakly set BB_DISKMON_DIRS<br>
            documentation: Prepped manual set for a 2.4.1 point release<br>
            bitbake: toaster: add &#39;nobuild&#39; option to Toaster<br>
            bitbake: toaster: landing page show cmdline capture<br>
            bitbake: toaster: enable custom env support for shell calls<br>
            bitbake: toaster: some recipe events do not include packages<br=
>
            bitbake: toaster: update Toaster for Django 1.11<br>
            bitbake: toaster: unset BBPATH before starting bbserver for
            backwards compatibility<br>
            populate_sdk_ext: Use prebuilt uninative tarball<br>
            makefile: Removed &quot;yocto-environment.png&quot; from tar li=
st of
            mega-manual<br>
            ref-manual: Fixed redundant link for &quot;build system&quot;<b=
r>
            ref-manual: Added new terms to Yocto Project Terms section.<br>
            dev-manual: Updated bitbake-layers overview section.<br>
            ref-manual: 2.4 Migration Revisions<br>
            build-appliance: Fix branch name<br>
            <span class=3D"m_-4717702421742857299HOEnZb"><font color=3D"#88=
8888">--<br>
                _______________________________________________<br>
                yocto-announce mailing list<br>
                <a href=3D"mailto:yocto-announce@yoctoproject.org" target=
=3D"_blank">yocto-announce@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto-an=
nounce" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/listinfo/yocto-announce</a><br>
              </font></span></blockquote>
        </div>
        <br>
        <br clear=3D"all">
        <div><br>
        </div>
        -- <br>
        <div class=3D"m_-4717702421742857299gmail_signature" data-smartmail=
=3D"gmail_signature">Ricardo
          Ribalda</div>
      </div>
      <br>
      <fieldset class=3D"m_-4717702421742857299mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
  </div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></di=
v>

--000000000000f0fd57056760b4f2--
