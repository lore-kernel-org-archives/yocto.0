Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A557AE00B3F; Tue, 10 Nov 2015 05:14:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93FAAE00B2C
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 05:14:53 -0800 (PST)
Received: by ioc74 with SMTP id 74so32626ioc.2
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 05:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YL0x/OVtN4STETlKdDMod5phyvaHpFGHDQ0SREGqALQ=;
	b=pWVr0hLfJrsmqx89L7vxz6lLHrcwYL63LMBAAP/CRqDvjb+P6sqENJjuKengUcN5qR
	t38aObs+RBdEzPuy+RRan+gnOuyHAtR+OLXwUpp0RwBqVMGCNhgc062fT3wNtFdszy5l
	5mCds8l+KtVJrtqoN8UCJsqEBbUIg73s6L3CEdLbEH/S32/lLx+ai/MMFB6uNOFPJS3O
	MJ/9SCL+/9yeF/dP9j2Jv5lbxbsXbrRMWzYlbq8NML1mYI0PRd7liSWU75OEYBKpXyY4
	1J5nZrGm8goTOc74OEFjA+PtUphGcUDWuOGyHk7/D8PesFXRrIZeYqyGrt5eLNjHb7ZK
	4E5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YL0x/OVtN4STETlKdDMod5phyvaHpFGHDQ0SREGqALQ=;
	b=AtA3mBVdsjJgM/nWcZHvH7EreeYOQ+XrjAl9rZajOOaqoQbzAJ2eFf/kvtIihjIR7e
	JNPVXBZTf78Ja9RuuEvxMSXtcvE5+OFlQag0+41TiljFoNE6CUOcUB9nM0EShdDfnvtV
	LeyLN8bFfRWgp5xM9EcyYUyE+ZJOSslhqnB+K7M1wXcsh8v+A7SXA1jc0eGTdVnwmWyy
	zsJZs3r7J0NT729fNlcTmz7wa2P0L3OCbMq0EPCB22OJCW9WcQICS7EbdnecEtQHdrYm
	nQ26ZV41dsex0/o7OcvmzGdI3qUKiuPVY8nXHtakco+CinvEvQJFGJFM3MTrx4x6smNe
	v+kA==
X-Gm-Message-State: ALoCoQkuYk5+E+w3gJ5u5v+g+gCV7X0QKfj7y9Jh0jbRmLzgk/0IQvtKEahvit6yIELIQwpbV3VZ
MIME-Version: 1.0
X-Received: by 10.107.165.131 with SMTP id o125mr3489866ioe.94.1447161292196; 
	Tue, 10 Nov 2015 05:14:52 -0800 (PST)
Received: by 10.107.20.204 with HTTP; Tue, 10 Nov 2015 05:14:52 -0800 (PST)
In-Reply-To: <564161F0.30302@mvista.com>
References: <CAPhnLPAi=wb+g8gzstcrbgZMU39Q=uzLtoH2xx2xdkt0J++BeA@mail.gmail.com>
	<56414B8F.6050704@windriver.com> <564161F0.30302@mvista.com>
Date: Tue, 10 Nov 2015 13:14:52 +0000
Message-ID: <CAPhnLPAGJkmHWAhb4S+y2d7F5FC4AkQ=J9w=RYyMD7rXNGrZoQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: akuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 1.7.3 (fido 12.0.3) Released
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
X-List-Received-Date: Tue, 10 Nov 2015 13:14:54 -0000
Content-Type: text/plain; charset=UTF-8

On 10 November 2015 at 03:18, akuster <akuster@mvista.com> wrote:
>
>
> On 11/09/2015 05:42 PM, Robert Yang wrote:
>>
>> I think that the codename is not fido for 1.7 ?
>
> its Dizzy.

Sorry folks. Our automated release note generation blew up a bit. It
is dizzy. My apologies.

-b


>
> - armin
>>
>> // Robert
>>
>> On 11/10/2015 03:45 AM, Flanagan, Elizabeth wrote:
>>> Hello,
>>>
>>> The latest release of the Yocto Project 1.7.3 (dizzy-12.0.3) is now
>>> available
>>> for download at:
>>>
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>>
>>>
>>> A gpg signed version of these release notes is available at:
>>>
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/RELEASENOTES
>>>
>>> Full pass test report is available at:
>>>
>>> https://wiki.yoctoproject.org/wiki/Ww41_-_2015-10-08_-_Full_Pass_1.7.3.rc1
>>>
>>>
>>> Thanks go out to everyone for all their hard work during this release!
>>>
>>> Sincerely,
>>>
>>> Elizabeth Flanagan
>>> Yocto Project
>>> Build and Release
>>>
>>> ---------------------
>>> yocto-1.7.3 Errata
>>>
>>> Release Name:  eclipse-poky-kepler-12.0.3
>>> Branch: kepler/dizzy
>>> Tag: luna/dizzy-12.0.3
>>> Hash:  cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
>>> md5: e7eca889b7a6efffa815581fee50b657
>>> eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>>> Download Locations:
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>>>
>>>
>>> Release Name:  eclipse-poky-luna-12.0.3
>>> Branch: luna/dizzy
>>> Tag: luna/dizzy-12.0.3
>>> Hash: 45aa5c77523bdf051d548fff4305382942db2ebb
>>> md5: ebcf90e66bae33519387f299ca0c908a
>>> eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>>> Download Locations:
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>>>
>>>
>>> Release Name:  meta-qt3-12.0.3
>>> Branch: dizzy
>>> Tag: dizzy-12.0.3
>>> Hash:  3016129d90b7ac8517a5227d819f10ad417b5b45
>>> md5: 77f5c7cb8b3523862086dd9e6271b79d  meta-qt3-dizzy-12.0.3.tar.bz2
>>> Download Locations:
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/meta-qt3-dizzy-12.0.3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/meta-qt3-dizzy-12.0.3.tar.bz2
>>>
>>>
>>> Release Name:  poky-12.0.3
>>> Branch: dizzy
>>> Tag: dizzy-12.0.3
>>> Hash:  b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94
>>> md5: 7d3196798cb5e78e6b7f89e03edcf9e7  poky-dizzy-12.0.3.tar.bz2
>>> Download Locations:
>>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>>
>>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>>
>>>
>>> -------
>>> Security Fixes
>>> -------
>>> bind: CVE-2015-1349 CVE-2015-4620 CVE-2015-5722
>>> icu: CVE-2014-8146-CVE-2014-8147
>>> gnutls: CVE-2015-3308
>>> qemu-slirp: CVE-2014-3640
>>> qemu-vnc: CVE-2014-7815
>>> qemu: CVE-2014-7840
>>> bind9.9.5: CVE-2015-5477
>>> libxml2: Security Advisory - libxml2 - CVE-2015-1819
>>> rpm: Fix CVE-2013-6435
>>> rpm: Fix CVE-2014-8118
>>> dbus: CVE-2015-0245: prevent forged ActivationFailure
>>> unzip: fix four CVE defects
>>> unzip: Security Advisory -CVE-2014-9636 and CVE-2015-1315
>>> gpgme: fix CVE-2014-3564
>>> glibc: CVE-2015-1781: resolv/nss_dns/dns-host.c buffer overflow
>>> qemu: fix CVE-2015-3456
>>> ppp: Security Advisory - CVE-2015-3310
>>> libsndfile: Security Advisory - libsndfile - CVE-2014-9496
>>>
>>> -------
>>> Fixes
>>> -------
>>> build-appliance-image: Update to dizzy head revision
>>> poky.conf: Bump version for 1.7.3 dizzy release
>>> sstate: run recipe-provided hooks outside of ${B}
>>> oprofileui: Use inherit gettext
>>> rootfs.py: show intercept script output in log.do_rootfs
>>> postinst_intercept: allow to pass variables with spaces
>>> rootfs.py: Allow to override postinst-intercepts location
>>> base.bbclass: Note when including pn with INCOMPATIBLE_LICENSES
>>> autotools.bbclass: mkdir ${B} -> mkdir -p ${B}
>>> perf: mkdir ${B} -> mkdir -p ${B}
>>> bitbake: prserv/serv: Improve exit handling
>>> bitbake: bitbake: cooker: properly fix bitbake.lock handling
>>> bitbake: runqueue: Add message to explain the problem if diffsigs
>>> multiple tasks don't exist
>>> oeqa/selftest: fix test_incremental_image_generation for changes in
>>> log output
>>> qemurunner: Improves checking for server and target IPs on qemus
>>> parameters
>>> oeqa/utils/qemurunner: fix logging
>>> oeqa/QemuRunner: don't use bb for logging
>>> license.bbclass: fix unexpected operator for LICENSE values with space
>>> license_class: fix license.manifest shows LICENSE field differently to
>>> recipe
>>> connman-conf: fix SRC_URI_append
>>> sstate: Use SSTATE_DIR for FILESPATH
>>> gnome: move introspection options to gnomebase
>>> tzdata, tzcode-native: drop older versions 2014h, 2015b
>>> grub-efi: Add backslash lost from previous commit
>>> grub-efi: Use the backport patch from grub
>>> license_class: Fix choose_lic_set into incompatible license
>>> dpkg: Fix tarfix.patch
>>> dpkg: Fix for Fedora22 and new versions of tar
>>> oeqa/bbtests: Fix to ensure DL_DIR is set
>>> oeqa/bbtests: Fix race over DL_DIR and SSTATE_DIR
>>> subversion: Fix subversion-native on Fedora22
>>> subversion: Add -P to CPPFLAGS
>>> cross-localedef-native: Use older C standards for older code
>>> grub: Backport const qualifier fix for gcc-5
>>> binutils: fix native builds when host has gcc5
>>> ncurses: fix native builds when host has gcc5
>>> unzip: drop 12-cve-2014-9636-test-compr-eb.patch
>>> linux-firmware: Package Marvell pci8897 and usb8897 firmware
>>> test-dependencies.sh: strip only .bb suffix
>>> mesa: update --with-llvm-shared-libs configure option
>>> e2fsprogs: install populate-extfs.sh
>>> qt4: add patch for BMP denial-of-service vulnerability
>>> license.bbclass: set dirs for do_populate_lic_setscene
>>> perf: add LIBNUMA_DEFINES
>>> squashfs-tools: build and install unsquashfs as well
>>> curl: add a few missing security fixes
>>> curl: several security fixes
>>> tzdata: update to 2015d
>>> tzcode: update to 2015d
>>> neard: fix the install path in init scripts
>>> openssl: upgrade to 1.0.1p
>>> split_and_strip_files: regroup hardlinks to make build deterministic
>>> meta/lib/oe/package.py: fix files ownership in packages
>>> init-install-efi.sh: fix gummiboot entry installation
>>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

