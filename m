Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916D8E00A9B; Mon,  9 Nov 2015 19:18:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00EF2E00A81
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 19:18:11 -0800 (PST)
Received: by pacdm15 with SMTP id dm15so195516685pac.3
	for <yocto@yoctoproject.org>; Mon, 09 Nov 2015 19:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista_com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=zP9Y9GNAyki3QuvSOCwqPc1PW6y7xEHrP7pm9tjrMmM=;
	b=hHEbFSoCyL9jmmP9rrokUlCaHIqmxSTri0cATupIF/wRniQ/xQMIBPQOYm6+DWtNlh
	/5gpcrZVvpHUlcVdLuNqrbM5srZoA96QJJfpImjmip7Zyu5jAA2t1cId/P5Rp6qbdVrM
	bwuSu5MISyg9K9pEtbl6Xrn+tfIGoVDB4AvGUPC2cSBMiiTm/SVqh6PL07BN6Ig4iZ/6
	Ekzo5imQaQEDebYZpaqfOwZAyXwup1g8tav209YflTmTsWyyTcqK/CJyO9Vzb8ODbcHo
	QIDT3vFZ8lS9FexH+qlmk4fmjnw11p16y/L5wPPouLrPEAuhi7Zv7nInti8WvEsAwvUT
	f7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=zP9Y9GNAyki3QuvSOCwqPc1PW6y7xEHrP7pm9tjrMmM=;
	b=OFciCFLrulOepolTT4xGe/U7ZtFoSRZfNGrnsSYtwYJhQwGhmSyI8V+x5ZA3yGnsYQ
	PJSwAMnN7fpDut7p2+fGnoZy1Vyw6Wo49oHLwkaZUKc8Hm3+j622ymSIq7OGP9vuCu85
	XDIf/krEb8Ir/vg0wQrJOI6DMcpidTg1ePPwheh1Xi9ZzZ023yJSeW5WxJSaZgIFU0iq
	cJ/dxZjglqTHi8sBpJiEkYP4TkqjkMm4hfBeN/m9orueqBlLoRKlZoeGR4yDe2UOh5HT
	oc9xHuVtudZCbDxIX1wuTgJkJeI4f6XdAzWEWdDz5A9xfqOzGXuBQmYaboHBm/ibxcWr
	ZZvw==
X-Gm-Message-State: ALoCoQmzAEJCksTsdfmdJkzKzlBH6av0nlZkr7dKOLL0SMpJ+c+8IPZmqgbu4JaII4q6TzCZHP0b
X-Received: by 10.68.104.229 with SMTP id gh5mr2126568pbb.130.1447125490922;
	Mon, 09 Nov 2015 19:18:10 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:e94f:5cb4:435d:4094?
	([2601:202:4000:1239:e94f:5cb4:435d:4094])
	by smtp.googlemail.com with ESMTPSA id
	rx10sm915946pab.21.2015.11.09.19.18.09 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Nov 2015 19:18:10 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAPhnLPAi=wb+g8gzstcrbgZMU39Q=uzLtoH2xx2xdkt0J++BeA@mail.gmail.com>
	<56414B8F.6050704@windriver.com>
From: akuster <akuster@mvista.com>
Message-ID: <564161F0.30302@mvista.com>
Date: Mon, 9 Nov 2015 19:18:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56414B8F.6050704@windriver.com>
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
X-List-Received-Date: Tue, 10 Nov 2015 03:18:13 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 11/09/2015 05:42 PM, Robert Yang wrote:
> 
> I think that the codename is not fido for 1.7 ?

its Dizzy.

- armin
> 
> // Robert
> 
> On 11/10/2015 03:45 AM, Flanagan, Elizabeth wrote:
>> Hello,
>>
>> The latest release of the Yocto Project 1.7.3 (dizzy-12.0.3) is now
>> available
>> for download at:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>
>>
>> A gpg signed version of these release notes is available at:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/RELEASENOTES
>>
>> Full pass test report is available at:
>>
>> https://wiki.yoctoproject.org/wiki/Ww41_-_2015-10-08_-_Full_Pass_1.7.3.rc1
>>
>>
>> Thanks go out to everyone for all their hard work during this release!
>>
>> Sincerely,
>>
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>>
>> ---------------------
>> yocto-1.7.3 Errata
>>
>> Release Name:  eclipse-poky-kepler-12.0.3
>> Branch: kepler/dizzy
>> Tag: luna/dizzy-12.0.3
>> Hash:  cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
>> md5: e7eca889b7a6efffa815581fee50b657 
>> eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/eclipse-poky-kepler-dizzy-12.0.3.tar.bz2
>>
>>
>> Release Name:  eclipse-poky-luna-12.0.3
>> Branch: luna/dizzy
>> Tag: luna/dizzy-12.0.3
>> Hash: 45aa5c77523bdf051d548fff4305382942db2ebb
>> md5: ebcf90e66bae33519387f299ca0c908a 
>> eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/eclipse-poky-luna-dizzy-12.0.3.tar.bz2
>>
>>
>> Release Name:  meta-qt3-12.0.3
>> Branch: dizzy
>> Tag: dizzy-12.0.3
>> Hash:  3016129d90b7ac8517a5227d819f10ad417b5b45
>> md5: 77f5c7cb8b3523862086dd9e6271b79d  meta-qt3-dizzy-12.0.3.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/meta-qt3-dizzy-12.0.3.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/meta-qt3-dizzy-12.0.3.tar.bz2
>>
>>
>> Release Name:  poky-12.0.3
>> Branch: dizzy
>> Tag: dizzy-12.0.3
>> Hash:  b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94
>> md5: 7d3196798cb5e78e6b7f89e03edcf9e7  poky-dizzy-12.0.3.tar.bz2
>> Download Locations:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>
>> http://mirrors.kernel.org/yocto/yocto/yocto-1.7.3/poky-dizzy-12.0.3.tar.bz2
>>
>>
>> -------
>> Security Fixes
>> -------
>> bind: CVE-2015-1349 CVE-2015-4620 CVE-2015-5722
>> icu: CVE-2014-8146-CVE-2014-8147
>> gnutls: CVE-2015-3308
>> qemu-slirp: CVE-2014-3640
>> qemu-vnc: CVE-2014-7815
>> qemu: CVE-2014-7840
>> bind9.9.5: CVE-2015-5477
>> libxml2: Security Advisory - libxml2 - CVE-2015-1819
>> rpm: Fix CVE-2013-6435
>> rpm: Fix CVE-2014-8118
>> dbus: CVE-2015-0245: prevent forged ActivationFailure
>> unzip: fix four CVE defects
>> unzip: Security Advisory -CVE-2014-9636 and CVE-2015-1315
>> gpgme: fix CVE-2014-3564
>> glibc: CVE-2015-1781: resolv/nss_dns/dns-host.c buffer overflow
>> qemu: fix CVE-2015-3456
>> ppp: Security Advisory - CVE-2015-3310
>> libsndfile: Security Advisory - libsndfile - CVE-2014-9496
>>
>> -------
>> Fixes
>> -------
>> build-appliance-image: Update to dizzy head revision
>> poky.conf: Bump version for 1.7.3 dizzy release
>> sstate: run recipe-provided hooks outside of ${B}
>> oprofileui: Use inherit gettext
>> rootfs.py: show intercept script output in log.do_rootfs
>> postinst_intercept: allow to pass variables with spaces
>> rootfs.py: Allow to override postinst-intercepts location
>> base.bbclass: Note when including pn with INCOMPATIBLE_LICENSES
>> autotools.bbclass: mkdir ${B} -> mkdir -p ${B}
>> perf: mkdir ${B} -> mkdir -p ${B}
>> bitbake: prserv/serv: Improve exit handling
>> bitbake: bitbake: cooker: properly fix bitbake.lock handling
>> bitbake: runqueue: Add message to explain the problem if diffsigs
>> multiple tasks don't exist
>> oeqa/selftest: fix test_incremental_image_generation for changes in
>> log output
>> qemurunner: Improves checking for server and target IPs on qemus
>> parameters
>> oeqa/utils/qemurunner: fix logging
>> oeqa/QemuRunner: don't use bb for logging
>> license.bbclass: fix unexpected operator for LICENSE values with space
>> license_class: fix license.manifest shows LICENSE field differently to
>> recipe
>> connman-conf: fix SRC_URI_append
>> sstate: Use SSTATE_DIR for FILESPATH
>> gnome: move introspection options to gnomebase
>> tzdata, tzcode-native: drop older versions 2014h, 2015b
>> grub-efi: Add backslash lost from previous commit
>> grub-efi: Use the backport patch from grub
>> license_class: Fix choose_lic_set into incompatible license
>> dpkg: Fix tarfix.patch
>> dpkg: Fix for Fedora22 and new versions of tar
>> oeqa/bbtests: Fix to ensure DL_DIR is set
>> oeqa/bbtests: Fix race over DL_DIR and SSTATE_DIR
>> subversion: Fix subversion-native on Fedora22
>> subversion: Add -P to CPPFLAGS
>> cross-localedef-native: Use older C standards for older code
>> grub: Backport const qualifier fix for gcc-5
>> binutils: fix native builds when host has gcc5
>> ncurses: fix native builds when host has gcc5
>> unzip: drop 12-cve-2014-9636-test-compr-eb.patch
>> linux-firmware: Package Marvell pci8897 and usb8897 firmware
>> test-dependencies.sh: strip only .bb suffix
>> mesa: update --with-llvm-shared-libs configure option
>> e2fsprogs: install populate-extfs.sh
>> qt4: add patch for BMP denial-of-service vulnerability
>> license.bbclass: set dirs for do_populate_lic_setscene
>> perf: add LIBNUMA_DEFINES
>> squashfs-tools: build and install unsquashfs as well
>> curl: add a few missing security fixes
>> curl: several security fixes
>> tzdata: update to 2015d
>> tzcode: update to 2015d
>> neard: fix the install path in init scripts
>> openssl: upgrade to 1.0.1p
>> split_and_strip_files: regroup hardlinks to make build deterministic
>> meta/lib/oe/package.py: fix files ownership in packages
>> init-install-efi.sh: fix gummiboot entry installation
>>

