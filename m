Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAD1E00830; Thu, 30 Oct 2014 19:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 459B9E00830
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 19:35:19 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id bj1so6756611pad.29
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 19:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=QzqJyvD89Vegzh//pRV6QaV0vjAXoq/HTdXC1GyaN3Q=;
	b=CODN76fS7h7UOuN/CHrvw+FSWVC8MByyR+5eEY4JyEtRRnVL2yQ//UJwsMuwPVA0st
	TsIhf+cfyfw5CNq4ewIGIUbzydla2p0SuKqdIYHm7uq1PkSrJRHC4ARb3Mx7TkiLfFR8
	RwjGb9Y7KobUT+awJtT49ScY6FImbwKpTm/wQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=QzqJyvD89Vegzh//pRV6QaV0vjAXoq/HTdXC1GyaN3Q=;
	b=E76itH1iSvHp+Qk5KbUazXqvclFaEG7DV4yYeBKAlKwEE7RQQF9ZJWqMaxx++4jmeL
	8qvSNgOrjxpe+H6XwXpXbDgDXQ75u4ViDJU6l+rhm4/zgK+kjID2tnZjV2d4YgekOx/m
	k3UxQowm5uXlt6NgkXWH4uPFjRvewnWYEYgcUD0XQ4QtHZtD38YbfpdoIdU/Jn/Hsikt
	6q7JSxdYhoEYTBQzpVoS2SQ/Jn3d1qM/EfbRbCNnrcEoL83vqNZxfHZM9tROayxRCGw5
	n9AVmhMheW/U6sLpiXrRVEp/mRg59tWTnPkAdWWXZ2qSokmJQ8wv2kRxd5ris3c6MCNz
	5Zpw==
X-Gm-Message-State: ALoCoQmy/0Z2AcWlL2G9Smd7oGLvhU8NtCPrGs/H+9gR2DXIRvze+nfq9NLdclyfd/w6AGAqVdZz
X-Received: by 10.68.201.201 with SMTP id kc9mr13424749pbc.149.1414722918566; 
	Thu, 30 Oct 2014 19:35:18 -0700 (PDT)
Received: from [192.168.17.115] (static-50-43-33-119.bvtn.or.frontiernet.net.
	[50.43.33.119])
	by mx.google.com with ESMTPSA id tv4sm8406050pab.28.2014.10.30.19.35.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Oct 2014 19:35:17 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <5452F572.4060002@yoctoproject.org>
Date: Thu, 30 Oct 2014 19:35:30 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto-announce@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 1.7 (dizzy 12.0.0) Released
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
X-List-Received-Date: Fri, 31 Oct 2014 02:35:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

The latest release of the Yocto Project 1.7 (dizzy-12.0.0) is now available
for download at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/poky-dizzy-12.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7/poky-dizzy-12.0.0.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/RELEASENOTES

We have rotated our release signing key with this release. The new key has been
signed by the previous key and the old key has been retired. The new key is
at http://downloads.yoctoproject.org/releases/yocto/keys/yocto-release-key.asc

Full pass test report is available at:

https://wiki.yoctoproject.org/wiki/WW43_-_2014-10-18_-_Full_Pass_-_1.7_M4.rc5

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Michael Halstead
Yocto Systems Administrator
<michael@yoctoproject.org>

- - --------------------
yocto-1.7 Errata
- - --------------------

Release Name: poky-dizzy-12.0.0
Branch:  dizzy
Tag:  dizzy-12.0.0
Hash: 9aff3a4ec058a1a1149d026ebedcc6251089fffb
md5:  5d04120e09bbc0933a3eb53c94cd8daa
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/poky-dizzy-12.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7/poky-dizzy-12.0.0.tar.bz2

Release Name: eclipse-poky-juno-dizzy-12.0.0
Branch:  dizzy
Tag:  dizzy-12.0.0
Hash: 26bfc407781aa185f244a47ba63120343cee4a37
md5:  f147c7938731f616fdcac49c8f1dfb0c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/eclipse-poky-juno-dizzy-12.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7/eclipse-poky-juno-dizzy-12.0.0.tar.bz2

Release Name: eclipse-poky-kepler-dizzy-12.0.0
Branch:  dizzy
Tag:  dizzy-12.0.0
Hash: 4a167fd662262ebdaa3cf0d332ac0debb52d7904
md5:  8f26189fd223a1025fa319687a15bc28
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/eclipse-poky-kepler-dizzy-12.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7/eclipse-poky-kepler-dizzy-12.0.0.tar.bz2

Release Name: meta-qt3-dizzy-12.0.0
Branch:  dizzy
Tag:  dizzy-12.0.0
Hash: 3016129d90b7ac8517a5227d819f10ad417b5b45
md5:  afbfbb2c4a7c7a648071fa503d41ffe6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/meta-qt3-dizzy-12.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.7/meta-qt3-dizzy-12.0.0.tar.bz2

- --------------------
New Features
- --------------------

* gcc 4.9
* glibc (version 2.20) is now used in place of eglibc
* Significant enhancement of systemd support:
 - Upgraded systemd to 216
 - Other packages that overlap in functionality are now masked out when systemd is used
 - Added support for using systemd with uclibc
 - Added support for read-only rootfs when using systemd
 - Added os-release recipe to deploy /etc/os-release
 - Added systemd service files to acpid, bind, cronie, cups, dhcp, portmap, ppp, tcf-agent (some from meta-systemd)
* Core support for musl libc (requires additional meta-musl support layer)
* Improvements to BitBake termination, error handling and responsiveness
* wic image creator 2.0
 - Major code cleanup
 - Added bootimg-partition plugin
 - Added sdimage-bootpart kickstart file for SD card support
 - Added vfat support
 - Added squashfs partition support
 - Added gummiboot support to bootimg-efi
 - Added support to find plugins and kickstart (.wks) files in all configured layers
* Cleanup of bashisms and addition of missing bash/perl dependencies (with split packages where possible)
* Added bootchart2 and cleaned up bootchart support
* Additional recipes: i2c-tools, patchelf, serf, nettle, liberror-perl, libxshmfence, dri3proto, libunwind, pinentry
* RPM4 support (in addition to RPM5)
* Added support for locked shared state
* Extended hardware runtime testing support
 - Added base class for hardware runtime testing
 - Added support for runtime testing on edgerouter, beaglebone and generic GRUB-based machines
 - Added test-remote-image script to download an image and automatically test it on a specified machine
* Added runtime test for error messages in kernel and Xorg logs
* Added runtime test for running installed ptests
* Added runtime testing for SDKs
* Added ptest support to gdbm, openssh, openssl, oprofile, pango, sed
* Package QA check improvements:
 - Added build-deps QA check
 - Added file-rdeps QA check
 - Show QA check name in warning / error messages
 - Overlapping files deployed into the sysroot will now trigger an error instead of a warning
* autotools class now uses a separate build directory by default (B != S)
* mkefidisk: added gummiboot support
* Added "devpyshell" interactive python shell
* package_ipk: Support hierarchical package feeds
* package_deb: Added support for multilib
* bitbake: added bb.utils.contains and bb.utils.contains_any, and replaced instances of base_contains
* Add buildstats-summary class to provide sstate re-use summary at end of build (from meta-mentor)
* Add scripts/contrib/verify-homepage.py to verify HOMEPAGE
* kernel.bbclass: handle .dsp firmware
* Add manifest file support for SDKs
* Add ability to verify toolchain flags as part of sanity checks
* gcc: allow a compiler per architecture, improving build artefact reuse
* Added support for compressing man/info pages
* Added support for xmlto documentation generation
* squashfs-tools: added support for LZO and LZ4 compression
* Dropped most *-config binary configuration scripts (in favour of pkg-config)
* Added PACKAGECONFIG options to a number of recipes
* ddimage: support Mac OS
* bind: added support for read-only rootfs
* bitbake: added fetch support for ClearCase (ccrc://)
* Add uninative - a way of reusing native/cross over multiple distros (experimental)
* Linux kernel 3.17 available, but not default

- --------------------
Security fixes
- --------------------

* apt: CVE-2014-0478
* bash: CVE-2014-6271
* bash: CVE-2014-6277
* bash: CVE-2014-6278
* bash: CVE-2014-7169
* bash: CVE-2014-7186
* bash: CVE-2014-7187
* dpkg: CVE-2014-0471
* dpkg: CVE-2014-3127
* gnupg: CVE-2013-4242
* gst-ffmpeg: CVE-2011-3934
* gst-ffmpeg: CVE-2011-3941
* gst-ffmpeg: CVE-2011-3944
* gst-ffmpeg: CVE-2011-3946
* gst-ffmpeg: CVE-2011-4351
* gst-ffmpeg: CVE-2012-6617
* gst-ffmpeg: CVE-2012-6618
* gst-ffmpeg: CVE-2013-0845
* gst-ffmpeg: CVE-2013-0846
* gst-ffmpeg: CVE-2013-0848
* gst-ffmpeg: CVE-2013-0849
* gst-ffmpeg: CVE-2013-0850
* gst-ffmpeg: CVE-2013-0851
* gst-ffmpeg: CVE-2013-0852
* gst-ffmpeg: CVE-2013-0854
* gst-ffmpeg: CVE-2013-0855
* gst-ffmpeg: CVE-2013-0856
* gst-ffmpeg: CVE-2013-0858
* gst-ffmpeg: CVE-2013-0860
* gst-ffmpeg: CVE-2013-0865
* gst-ffmpeg: CVE-2013-0866
* gst-ffmpeg: CVE-2013-0868
* gst-ffmpeg: CVE-2013-0869
* gst-ffmpeg: CVE-2013-0875
* gst-ffmpeg: CVE-2013-4358
* gst-ffmpeg: CVE-2013-7009
* gst-ffmpeg: CVE-2013-7010
* gst-ffmpeg: CVE-2013-7023
* gst-ffmpeg: CVE-2014-2099
* gst-ffmpeg: CVE-2014-2263
* libpam: CVE-2014-2583
* libpng: CVE-2014-0333
* libtiff: CVE-2012-4564
* libtiff: CVE-2013-1961
* libtiff: CVE-2013-4231
* libxml2: CVE-2014-0191
* lz4: CVE-2014-4611
* nspr: CVE-2014-1545
* nss: CVE-2013-1739
* nss: CVE-2013-1740
* nss: CVE-2013-5606
* nss: CVE-2014-1492
* nss: CVE-2014-1544
* openssh: CVE-2014-2532
* openssh: CVE-2014-2653
* openssl: CVE-2010-5298
* openssl: CVE-2014-0076
* openssl: CVE-2014-0160
* openssl: CVE-2014-0195
* openssl: CVE-2014-0198
* openssl: CVE-2014-0221
* openssl: CVE-2014-0224
* openssl: CVE-2014-3470
* openssl: CVE-2014-3505
* openssl: CVE-2014-3506
* openssl: CVE-2014-3507
* openssl: CVE-2014-3508
* openssl: CVE-2014-3509
* openssl: CVE-2014-3510
* openssl: CVE-2014-3511
* openssl: CVE-2014-3512
* openssl: CVE-2014-3513
* openssl: CVE-2014-3566
* openssl: CVE-2014-3567
* openssl: CVE-2014-3568
* openssl: CVE-2014-5139
* pcihp: CVE-2014-5388
* perl: CVE-2010-4777
* pulseaudio: CVE-2014-3970
* python: CVE-2014-1912
* python: fix _json module arbitrary process memory read vulnerability
* qemu: CVE-2014-3471
* qt4: add patch for GIF denial-of-service vulnerability
* readline: CVE-2014-2524
* screen: CVE-2009-1214
* screen: CVE-2009-1215
* subversion: CVE-2013-1845
* subversion: CVE-2013-1847 and CVE-2013-1846
* subversion: CVE-2013-1849
* subversion: CVE-2013-4131
* subversion: CVE-2013-4277
* subversion: CVE-2013-4505


- --------------------
Recipe Upgrades
- --------------------

* acpid: upgrade to 2.0.22
* alsa-lib: upgrade to 1.0.28
* alsa-tools: upgrade to 1.0.28
* alsa-utils: upgrade to 1.0.28
* apr: upgrade to 1.5.1
* apr-util: upgrade to 1.5.3
* atk: upgrade to 2.12.0
* at-spi2-atk: upgrade to 2.12.1
* at-spi2-core: upgrade to 2.12.0
* at: Upgrade to 3.1.15
* autogen-native: upgrade from 2.18.2 to 2.18.3
* automake: upgrade from 1.14 to 1.14.1
* babeltrace: upgrade to 1.2.1
* bash: Upgrade bash to latest patch level to fix CVEs
* bdwgc: Upgrade 7.2d -> 7.4.2
* bluez5: upgrade to 5.22
* boost: Upgrade to 1.56.0
* btrfs-tools: Upgrade 3.12 -> 3.14.2
* byacc: Update to 20140422 version
* ca-certificates: Update to 20140325
* clutter: update to 1.18.2
* cogl-1.0: update to 1.18.2
* connman: upgrade to 1.25
* cups: Upgrade to 1.7.5
* curl: Upgrade to 7.37.1
* db_5.3.*: Upgrade to 5.3.28
* db: Add version 6.0.30
* dbus: Update to 1.8.2 version
* diffstat: update to version 1.59
* directfb: upgrade to 1.7.4
* elfutils: upgrade to 0.158
* ethtool: upgrade to 3.15
* file: upgrade from 5.17 to 5.18
* flex: Update to 2.5.39 version
* fontconfig: upgrade to 2.11.1
* fontsproto: upgrade to 2.1.3
* freetype: upgrade to 2.5.3
* gawk: upgrade from 4.0.2 to 4.1.1
* gcc: add 4.9.1 recipes
* gccmakedep: Upgrade 1.0.2 -> 1.0.3
* gdb: upgrade to 7.7.1
* gdk-pixbuf: upgrade to 2.30.8
* ghostscript: upgrade to 9.14
* git: update to v2.0.1
* glew: Upgrade to 1.11.0
* glib-2.0: upgrade to 2.40.0
* glibc: Migrate eglibc 2.19 -> glibc 2.20
* gmp: uprev it to 6.0.0
* gnome-common: upgrade to 3.12.0
* gnupg: Upgrade to 2.0.26
* gnutls: upgrade to 3.2.15
* grep: upgrade 2.18 to 2.19
* grub git: update to latest git (grub-2.02-beta2-81-g4b8b913)
* gstreamer1.0-libav: upgrade to 1.4.1
* gstreamer1.0-omx: upgrade to 1.2.0
* gstreamer1.0-plugins-bad: upgrade to 1.4.1
* gstreamer1.0-plugins-base: upgrade to 1.4.1
* gstreamer1.0-plugins-good: upgrade to 1.4.1
* gstreamer1.0-plugins-ugly: upgrade to 1.4.1
* gstreamer1.0-rtsp-server: upgrade to 1.4.1
* gstreamer1.0: upgrade to 1.4.1
* gtk+2: update to 2.24.24
* gtk+3: update to 3.12.2
* guile: Update to 2.0.11 version
* harfbuzz: upgrade to 0.9.35
* help2man-native: Upgrade to 1.46.1
* hicolor-icon-theme: Upgrade to 0.13
* i2c-tools: Uprev to 3.1.1
* icu: upgrade to 53.1
* inputproto: upgrade to 2.3.1
* iproute2: upgrade to 3.16.0
* json-glib: upgrade to 1.0.0
* kbd: Upgrade to 2.0.2
* kexec-tools: upgrade to 2.0.7
* kmod: upgrade to v18 via git
* less: Upgrade to 466
* libassuan: Upgrade to 2.1.2
* libav: update 0.8 version to 0.8.15
* libav: update 9.x version to 9.16
* libbsd: Upgrade to 0.7.0
* libcheck: Upgrade to 0.9.14
* libconvert-asn1-perl: Upgrade 0.26 -> 0.27
* libdrm: upgrade to 2.4.54
* libffi: Update to 3.1
* libgcrypt: update to 1.6.1
* libical: upgrade to 1.0.0
* libice: upgrade to 1.0.9
* libidn: Upgrade to 1.29
* libnewt/libnewt-python: upgrade to 0.52.17
* libnl: update to 3.2.24
* libnl: Upgrade to 3.2.25
* libogg: upgrade to 1.3.2
* libpcap: upgrade to 1.6.1
* libpcre: Update to 8.35 version
* libpng12: upgrade to 1.2.51
* libpng: update to 1.6.13
* libpod-plainer-perl: Upgrade to 1.04
* librsvg: upgrade to 2.40.2
* libsdl2: upgrade to 2.0.3
* libsoup: upgrade to 2.46.0
* libtasn1: update to 4.0
* libtirpc: upgrade to 0.2.5
* liburcu: Update to 0.8.4
* libusb1: Update to 1.0.19
* libxfont: upgrade to 1.5.0
* libxft: upgrade to 2.3.2
* libxi: upgrade to 1.7.4
* libxkbcommon: Upgrade to 0.4.3
* lighttpd: upgrade to 1.4.35
* linux-firmware: upgrade to commit dec41bce44e0dff6a2c3358a958fadf22bf58858
* linux-libc-headers: update to 3.16
* linux-yocto/3.10: update to v3.10.55
* linux-yocto/3.14: update to v3.14.19
* linux-yocto: introduce v3.17
* lsbinitscripts: Upgrade to 9.55
* ltp: update version to 20140422
* lttng-modules: update to 2.5.0
* lttng-tools: update to version 2.5.0
* lttng-ust: update to version 2.5.0
* lz4: update to version 122
* lzo: Upgrade to 2.08
* man-pages: Upgrade to 3.71
* mc: update to 4.8.12
* mdadm: Upgrade 3.3 -> 3.3.1
* mesa-demos: upgrade to 8.2.0
* mesa: upgrade to 10.1.3
* meta-bsps: update to v3.10.35
* mklibs-native: upgrade from 0.1.38 to 0.1.39
* msmtp: update to 1.4.32
* mtd-utils: upgrade to 1.5.1+gitAUTOINC+12158de
* nasm: upgrade to 2.11.05
* nfs-utils: upgrade to 1.3.0
* nspr: Upgrade to 4.10.7
* ofono: upgrade to 1.15
* openssh: update to 6.6p1
* openssl: upgrade to 1.0.1j
* opkg: Upgrade to v0.2.2
* opkg-utils: Update SRCREV
* oprofileui*: Update to latest git
* oprofile: Update to 0.9.9
* pango: update to 1.36.6
* pax-utils: upgrade to 0.8.1
* perl, perl-native, perl-ptest: upgrade from 5.14.3 to 5.20.0
* pixman: upgrade to 0.32.6
* powertop: Upgrade 2.5 -> 2.6.1
* pseudo: update to pseudo 1.6.2
* python-docutil: Upgrade 0.11 -> 0.12
* python-pycurl: Upgrade 7.19.3 -> 7.19.3.1
* python-pygobject: upgrade to 2.28.3
* python-scons: Upgrade 2.3.0 -> 2.3.2
* qemu: upgrade to 2.1
* qt4: upgrade to version 4.8.6
* quilt: Update to 0.63 version
* resolvconf: Update to 1.75
* rpm: Upgrade to 5.4.14
* rt-tests: bump version 0.87 => 0.89
* rxvt-unicode: upgrade to 9.20
* shadow: upgrade from 4.1.4.3 to 4.2.1
* shared-mime-info: upgrade to 1.3
* socat: upgrade to 1.7.2.4
* sqlite3: Upgrade to 3.8.6.0
* squashfs-tools: Upgrade to 4.3
* subversion: Upgrade 1.7.7 -> 1.8.9
* sudo: upgrade to 1.8.10p3
* systemd: upgrade to 216
* systemtap: update to 2.5 release
* taglib: upgrade to 1.9.1
* telepathy-glib: upgrade to 0.24.0
* trace-cmd: Update to version 2.3.2
* tzcode-native: update to 2014h
* tzdata: update to 2014h
* uclibc: Upgrade to tip of master
* util-linux: Update to 2.24.2
* util-macros: update to 1.19.0
* wayland: upgrade to 1.5.0
* weston: upgrade to 1.5.0
* wget: upgrade from 1.14 to 1.15
* wpa-supplicant: upgrade to 2.2
* x264: Update SRCREV to match commit in upstream git repo
* xauth: upgrade to 1.0.9
* xcb-util-renderutil: Update to version 0.3.9
* xcb-util-wm: upgrade to 0.4.1
* xf86-input-mouse: upgrade to 1.9.1
* xf86-input-synaptics: upgrade to 1.8.0
* xf86-video-evdev: upgrade to 2.9.0
* xf86-video-intel: upgrade to 2.99.912
* xf86-video-vmware: update to 13.0.2
* xkeyboard-config: upgrade to 2.12
* xproto: upgrade to 7.0.26
* xrandr: upgrade to 1.4.2
* xserver-xorg: upgrade to 1.15.1
* xtrans: upgrade to 1.3.4


- --------------------------
Documentation Improvements
- --------------------------

* Permalinks throughout manual headings, glossary terms, and QA warning and error messages.
* New chapter on QA warning and error messages listing messages and providing some explanation and resolution information
* Significant enhancements to "Making Images More Secure" section in the Development Manual
* New Tasks chapter documenting 51 tasks
* Variables glossary expanded by 70+ variables
* New chapter on QEMU use added to the Development Manual
* Enhancements throughout the set driven by bug fixes, community input, and team input.

- ------------
Known Issues
- ------------
* Core Issues
** 6121	powertop --calibrate does not work on QemuPPC
** 4872	Do smart install and remove more times will occur Segmentation fault
** 6144	read-only-rootfs in IMAGES_FEATURES doesn't work for systemd
** 6168	Unplugging USB stick throws Call Trace	normal
** 6734	do_rootfs: The postinstall intercept hook 'update_pixbuf_cache' failed
** 5597	openssh: can't restart systemd services during install
* Toaster
** 6887 - Wrong number of packages included for non-clean builds
** 6885 - Toaster fails to display errors in the build dashboard
** 6775 - Unable to load task details page for Covered task
* Release Process
** 6909 - Release should not cause failure of release organism
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJUUunhAAoJEFxoB9HCeXZzLwIIAKN+fRHvwEJ9Svn0pXBWW0Ra
966gYvBFifBAnz4En0zS+uoTx+nChFXMT4rht8CZkxeQLAJPl81gf89jza2fGP56
Lh0aLy/G0MaA8SXwTgs4fDSdLinB/UDp9gQJKb7OnWrF4dNaeYXKGSeD4zUyNgOh
fbmgpnDhd+eRBftJeFua/sRVK2T/bNKv+EmKYyJKCI7k0mxXp4/4QOqQaVgtjf0d
N+XbehOqneALL9jcBvAk6PmR8Bt4kpMEF/VAHOCDxCtJI7m6yqMYCGhksZCHCKoQ
6qVpTS0sn/bqbAGp0nAZJP8t/t5ANVVOFo1sCWh8/zjoBiA+HSL+d9o7XksbfEI=
=gG4D
-----END PGP SIGNATURE-----


