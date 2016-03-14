Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBDB7E0083D; Mon, 14 Mar 2016 06:45:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDB4E006AE
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 06:45:06 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5A82668A019; Mon, 14 Mar 2016 13:45:05 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 3813F68A019;
	Mon, 14 Mar 2016 13:45:00 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9C72767400B3;
	Mon, 14 Mar 2016 14:44:59 +0100 (CET)
To: yocto@yoctoproject.org
References: <56E6B182.1060505@mlbassoc.com>
	<CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
	<56E6B3BF.7020307@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E6C05A.2020509@mlbassoc.com>
Date: Mon, 14 Mar 2016 14:44:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56E6B3BF.7020307@mlbassoc.com>
Subject: Re: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 13:45:09 -0000
X-Groupsio-MsgNum: 29000
Content-Type: multipart/mixed; boundary="------------070009060707040503040402"

--------------070009060707040503040402
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2016 01:51 PM, Gary Thomas wrote:
> On 03/14/2016 01:46 PM, Burton, Ross wrote:
>>
>> On 14 March 2016 at 12:41, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>
>>     How can I find out what's going on here?
>>
>>
>> bitbake-whatchanged is generally helpful here.  Do a build in one configuration, switch to the other, run
>> bitbake-whatchanged.  It will identify the hashes that have changed and try and chase them down.
>>
>> That said perl is quite a deep recipe so rebuilding that will certainly bubble up the tree causing all sorts of rebuilds.
>
> Thanks, I'll give this a try.
>

I've run this and I still don't have a clue.  Here's what I got.  Maybe
you can explain what I'm seeing?

e.g. why did the kernel need to be rebuilt if all I did was change perl?
what about mobile-broadband-info (which I think is pretty much just
static data)?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070009060707040503040402
Content-Type: text/plain; charset=UTF-8;
 name="changes"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="changes"

Figuring out the STAMPS_DIR ...
Generating the new stamps ... (need several minutes)
=== Newly added tasks: (945 tasks)
  renderproto-native: do_populate_sysroot do_patch do_install do_populate_lic do_unpack do_build do_configure do_fetch do_compile
  shadow-native: do_fetch do_unpack do_populate_lic do_populate_sysroot do_patch do_build do_compile do_configure do_install
  qemu-helper-native: do_build do_install do_fetch do_populate_sysroot do_compile do_populate_lic do_configure do_unpack do_patch
  ncurses-native: do_populate_lic do_populate_sysroot do_build do_compile do_patch do_install do_configure do_unpack
  xtrans-native: do_configure do_build do_unpack do_install do_compile do_fetch do_populate_lic do_populate_sysroot do_patch
  elfutils-native: do_configure do_populate_lic do_fetch do_compile do_unpack do_install do_populate_sysroot do_build do_patch
  e2fsprogs-native: do_unpack do_configure do_patch do_build do_compile do_populate_sysroot do_install do_populate_lic
  libtool-native: do_unpack do_build do_patch do_compile do_install do_populate_lic do_fetch do_populate_sysroot do_configure
  ldconfig-native: do_build do_unpack do_install do_configure do_compile do_patch do_fetch do_populate_lic do_populate_sysroot
  randrproto-native: do_configure do_install do_populate_sysroot do_unpack do_patch do_build do_fetch do_compile do_populate_lic
  intltool-native: do_compile do_configure do_install do_populate_lic do_fetch do_unpack do_build do_patch do_populate_sysroot
  tzcode-native: do_unpack do_fetch do_configure do_populate_sysroot do_populate_lic do_compile do_install do_build do_patch
  texinfo-dummy-native: do_unpack do_configure do_fetch do_install do_compile do_populate_sysroot do_populate_lic do_build do_patch
  core-image-base: do_configure do_compile do_install
  opkg-native: do_install do_compile do_configure do_unpack do_fetch do_populate_sysroot do_build do_patch do_populate_lic
  pbzip2-native: do_install do_fetch do_compile do_build do_populate_sysroot do_populate_lic do_unpack do_configure do_patch
  bc-native: do_populate_sysroot do_configure do_populate_lic do_install do_compile do_patch do_unpack do_build
  xextproto-native: do_unpack do_build do_populate_sysroot do_install do_fetch do_configure do_patch do_compile do_populate_lic
  libsdl-native: do_compile do_unpack do_populate_lic do_fetch do_install do_populate_sysroot do_build do_configure do_patch
  libarchive-native: do_populate_lic do_unpack do_patch do_install do_compile do_configure do_build do_populate_sysroot do_fetch
  xz-native: do_configure do_patch do_install do_unpack do_fetch do_compile do_populate_lic do_build do_populate_sysroot
  dtc-native: do_populate_lic do_configure do_unpack do_compile do_patch do_populate_sysroot do_build do_fetch do_install
  libxml-parser-perl-native: do_configure do_install do_patch do_build do_populate_lic do_populate_sysroot do_unpack do_compile
  automake-native: do_compile do_patch do_unpack do_populate_lic do_install do_configure do_populate_sysroot do_build do_fetch
  m4-native: do_install do_patch do_configure do_fetch do_unpack do_populate_sysroot do_populate_lic do_compile do_build
  dbus-native: do_populate_sysroot do_install do_patch do_configure do_unpack do_build do_populate_lic do_compile
  prelink-native: do_compile do_populate_lic do_configure do_fetch do_build do_install do_unpack do_patch do_populate_sysroot
  packagegroup-core-ssh-openssh: do_populate_sysroot do_packagedata do_package_write_rpm do_package_qa do_build do_compile do_install do_populate_lic do_package do_configure
  dbus-glib-native: do_unpack do_populate_sysroot do_populate_lic do_compile do_install do_patch do_build do_configure
  libpthread-stubs-native: do_build do_configure do_compile do_unpack do_populate_sysroot do_populate_lic do_patch do_install
  xcb-proto-native: do_install do_populate_sysroot do_build do_compile do_configure do_patch do_populate_lic do_unpack
  pseudo-native: do_unpack do_build do_populate_lic do_populate_sysroot do_compile do_patch do_fetch do_install do_configure
  binutils-native: do_populate_lic do_build do_populate_sysroot do_install do_unpack do_compile do_patch do_configure
  createrepo-native: do_compile do_populate_lic do_build do_populate_sysroot do_install do_fetch do_patch do_unpack do_configure
  kbproto-native: do_compile do_install do_fetch do_configure do_patch do_unpack do_populate_lic do_populate_sysroot do_build
  libxml2-native: do_build do_unpack do_populate_lic do_install do_patch do_compile do_populate_sysroot do_configure
  expat-native: do_build do_unpack do_configure do_populate_lic do_patch do_compile do_populate_sysroot do_install
  libxdmcp-native: do_build do_configure do_populate_lic do_install do_patch do_populate_sysroot do_unpack do_compile
  readline-native: do_populate_sysroot do_build do_populate_lic do_patch do_install do_configure do_unpack do_fetch do_compile
  gettext-minimal-native: do_populate_sysroot do_configure do_unpack do_install do_build do_populate_lic do_compile do_fetch do_patch
  kmod-native: do_configure do_populate_sysroot do_patch do_install do_build do_unpack do_compile do_fetch do_populate_lic
  gettext-native: do_build do_populate_lic do_configure do_populate_sysroot do_compile do_patch do_install do_unpack
  libxau-native: do_configure do_patch do_build do_populate_sysroot do_unpack do_compile do_populate_lic do_install
  rpm-native: do_configure do_compile do_patch do_unpack do_populate_sysroot do_fetch do_populate_lic do_install do_build
  unifdef-native: do_populate_lic do_populate_sysroot do_configure do_patch do_unpack do_fetch do_build do_compile do_install
  update-rc.d: do_compile do_packagedata do_package_write_rpm do_install do_build do_populate_sysroot do_package_qa do_unpack do_package do_patch do_populate_lic do_fetch do_configure
  gmp-native: do_patch do_fetch do_populate_lic do_build do_configure do_install do_unpack do_populate_sysroot do_compile
  kern-tools-native: do_configure do_patch do_populate_lic do_compile do_build do_fetch do_install do_unpack do_populate_sysroot
  flex-native: do_fetch do_populate_lic do_patch do_install do_compile do_build do_unpack do_configure do_populate_sysroot
  libffi-native: do_patch do_install do_compile do_unpack do_populate_sysroot do_build do_fetch do_configure do_populate_lic
  pigz-native: do_configure do_patch do_unpack do_compile do_populate_lic do_build do_fetch do_install do_populate_sysroot
  python-pygobject-native: do_install do_build do_unpack do_configure do_compile do_populate_lic do_patch do_populate_sysroot
  alsa-lib-native: do_populate_sysroot do_build do_compile do_install do_unpack do_fetch do_configure do_patch do_populate_lic
  cmake-native: do_unpack do_configure do_patch do_install do_populate_sysroot do_fetch do_populate_lic do_build do_compile
  mpfr-native: do_unpack do_patch do_populate_lic do_populate_sysroot do_compile do_install do_configure do_build do_fetch
  rpmresolve-native: do_unpack do_build do_fetch do_patch do_populate_sysroot do_compile do_populate_lic do_install do_configure
  cross-localedef-native: do_patch do_populate_sysroot do_build do_unpack do_fetch do_install do_configure do_compile do_populate_lic
  run-postinsts: do_install do_populate_sysroot do_configure do_package_qa do_unpack do_populate_lic do_packagedata do_package_write_rpm do_fetch do_compile do_build do_patch do_package
  swig-native: do_populate_lic do_configure do_populate_sysroot do_patch do_build do_compile do_unpack do_fetch do_install
  libxext-native: do_unpack do_populate_sysroot do_compile do_build do_configure do_install do_populate_lic do_patch
  db-native: do_compile do_populate_lic do_install do_configure do_unpack do_patch do_populate_sysroot do_build
  libx11-native: do_compile do_unpack do_install do_configure do_populate_sysroot do_populate_lic do_patch do_build
  bzip2-native: do_populate_sysroot do_fetch do_compile do_patch do_unpack do_configure do_populate_lic do_build do_install
  libxcb-native: do_populate_lic do_patch do_build do_configure do_compile do_unpack do_install do_populate_sysroot
  acl-native: do_populate_lic do_compile do_unpack do_configure do_populate_sysroot do_build do_fetch do_patch do_install
  xproto-native: do_populate_lic do_build do_fetch do_compile do_unpack do_populate_sysroot do_install do_patch do_configure
  util-macros-native: do_unpack do_install do_build do_compile do_patch do_configure do_fetch do_populate_sysroot do_populate_lic
  libmpc-native: do_populate_sysroot do_build do_populate_lic do_configure do_unpack do_fetch do_patch do_compile do_install
  libxslt-native: do_configure do_patch do_populate_lic do_build do_install do_compile do_populate_sysroot do_unpack do_fetch
  gnu-config-native: do_fetch do_compile do_build do_unpack do_configure do_install do_populate_sysroot do_populate_lic do_patch
  attr-native: do_unpack do_compile do_install do_patch do_populate_lic do_fetch do_populate_sysroot do_configure do_build
  libxrandr-native: do_populate_lic do_configure do_build do_patch do_install do_unpack do_compile do_populate_sysroot
  tzdata: do_install do_compile do_populate_lic do_package_qa do_configure do_populate_sysroot do_fetch do_package_write_rpm do_unpack do_patch do_package do_build do_packagedata
  quilt-native: do_fetch do_populate_sysroot do_compile do_unpack do_configure do_populate_lic do_patch do_build do_install
  libpng-native: do_populate_lic do_populate_sysroot do_compile do_configure do_patch do_unpack do_install do_build
  ossp-uuid-native: do_configure do_unpack do_build do_populate_lic do_patch do_compile do_populate_sysroot do_install do_fetch
  autoconf-native: do_unpack do_populate_sysroot do_build do_patch do_install do_fetch do_populate_lic do_configure do_compile
  gcc-cross-mips64: do_populate_lic do_populate_sysroot do_build do_install do_configure do_compile
  gcc-cross-initial-mips64: do_compile do_populate_lic do_configure do_build do_populate_sysroot do_install
  libpcre-native: do_unpack do_install do_build do_patch do_populate_sysroot do_populate_lic do_configure do_compile
  qemuwrapper-cross: do_configure do_compile
  pixman-native: do_populate_sysroot do_build do_populate_lic do_unpack do_compile do_install do_configure do_patch do_fetch
  sqlite3-native: do_install do_configure do_build do_patch do_unpack do_compile do_populate_lic do_populate_sysroot
  byacc-native: do_patch do_populate_lic do_populate_sysroot do_configure do_unpack do_install do_compile do_build do_fetch
  python-smartpm-native: do_build do_populate_lic do_unpack do_configure do_populate_sysroot do_compile do_fetch do_patch do_install
  makedevs-native: do_install do_patch do_compile do_fetch do_populate_sysroot do_configure do_populate_lic do_unpack do_build
  inputproto-native: do_unpack do_populate_sysroot do_install do_patch do_fetch do_build do_configure do_compile do_populate_lic
  lzo-native: do_populate_lic do_install do_populate_sysroot do_patch do_unpack do_configure do_compile do_fetch do_build
  bison-native: do_populate_sysroot do_populate_lic do_compile do_build do_patch do_install do_unpack do_configure
  openssl-native: do_unpack do_install do_populate_sysroot do_fetch do_populate_lic do_configure do_build do_compile do_patch
  pkgconfig-native: do_build do_configure do_unpack do_compile do_populate_lic do_install do_patch do_populate_sysroot do_fetch
  python-pyrex-native: do_configure do_unpack do_populate_sysroot do_populate_lic do_compile do_patch do_fetch do_build do_install
  gtk-doc-stub-native: do_build do_populate_sysroot do_unpack do_configure do_compile do_patch do_populate_lic do_fetch do_install
  perl-native: do_patch do_populate_sysroot do_unpack do_configure do_populate_lic do_fetch do_install do_compile do_build
  qemu-native: do_configure do_fetch do_compile do_populate_lic do_install do_build do_patch do_unpack do_populate_sysroot
  shared-mime-info-native: do_configure do_patch do_populate_lic do_install do_populate_sysroot do_compile do_unpack do_build
  zlib-native: do_populate_sysroot do_unpack do_compile do_install do_fetch do_patch do_populate_lic do_configure do_build
  libxrender-native: do_unpack do_patch do_populate_lic do_configure do_install do_compile do_build do_populate_sysroot
  opkg-utils-native: do_populate_sysroot do_compile do_configure do_build do_patch do_install do_unpack do_fetch do_populate_lic
  cryptodev-linux-native: do_build do_patch do_unpack do_install do_configure do_compile do_populate_sysroot do_populate_lic
  gperf-native: do_populate_sysroot do_compile do_unpack do_populate_lic do_install do_build do_configure do_fetch do_patch
  binutils-cross-mips64: do_patch do_unpack do_populate_sysroot do_install do_configure do_build do_compile do_populate_lic
  mklibs-native: do_fetch do_populate_sysroot do_compile do_build do_install do_unpack do_configure do_patch do_populate_lic
  icu-native: do_install do_unpack do_fetch do_populate_sysroot do_populate_lic do_configure do_build do_compile do_patch
  popt-native: do_install do_populate_lic do_unpack do_configure do_build do_populate_sysroot do_compile do_patch
  file-native: do_fetch do_install do_unpack do_patch do_configure do_populate_sysroot do_build do_compile do_populate_lic
  update-rc.d-native: do_unpack do_compile do_build do_install do_populate_lic do_populate_sysroot do_configure do_patch
  util-linux-native: do_patch do_populate_lic do_install do_build do_populate_sysroot do_fetch do_configure do_unpack do_compile
  glib-2.0-native: do_install do_build do_populate_sysroot do_patch do_fetch do_populate_lic do_configure do_unpack do_compile

=== PV changed: (39 tasks)
  linux-yocto: 4.4.3+gitAUTOINC+89419d8b90_06c34af69f -> 4.4.3+gitAUTOINC+89419d8b90_79b496614c
  perl: 5.22.1 -> 5.20.0

=== Dependencies changed: (1354 tasks)
  busybox: do_package do_configure do_packagedata do_install_ptest_base do_populate_sysroot do_build do_configure_ptest_base do_package_qa do_compile_ptest_base do_install do_compile do_package_write_rpm do_populate_lic
  ofono: do_compile do_configure do_install do_package_qa do_package do_build do_populate_sysroot do_package_write_rpm do_populate_lic do_packagedata do_unpack do_patch
  glibc-initial: do_install do_populate_sysroot do_build do_compile do_install_locale do_configure do_patch do_evacuate_scripts do_populate_lic
  libtirpc: do_package do_package_qa do_populate_sysroot do_configure do_unpack do_packagedata do_build do_populate_lic do_package_write_rpm do_install do_compile do_patch
  alsa-state: do_package_write_rpm do_populate_sysroot do_packagedata do_package do_install do_build do_package_qa do_configure do_compile do_populate_lic
  gdbm: do_compile_ptest_base do_populate_sysroot do_build do_populate_lic do_package_qa do_compile do_install_ptest_base do_configure_ptest_base do_install do_configure do_package do_packagedata do_package_write_rpm
  linux-libc-headers: do_package do_install do_configure do_populate_lic do_package_qa do_build do_package_write_rpm do_packagedata do_compile do_patch do_populate_sysroot do_unpack
  libxdmcp: do_package do_populate_lic do_configure do_package_qa do_install do_populate_sysroot do_package_write_rpm do_packagedata do_compile do_build
  sysvinit-inittab: do_build do_install do_configure do_populate_sysroot do_packagedata do_populate_lic do_package_write_rpm do_package do_package_qa do_compile
  core-image-base: do_image do_image_complete do_unpack do_package do_packagedata do_package_write_rpm do_build do_package_qa do_populate_sysroot do_image_tar do_populate_lic do_rootfs do_rootfs_wicenv do_image_ext4 do_patch
  gmp: do_configure do_populate_lic do_packagedata do_build do_compile do_package_qa do_populate_sysroot do_package_write_rpm do_install do_package
  packagegroup-core-boot: do_package_write_rpm do_install do_package do_packagedata do_populate_lic do_compile do_populate_sysroot do_package_qa do_build do_configure
  kbproto: do_package_write_rpm do_package do_compile do_configure do_build do_package_qa do_populate_lic do_install do_packagedata do_populate_sysroot
  flex: do_packagedata do_package do_build do_install_ptest_base do_compile do_install do_package_qa do_configure do_package_write_rpm do_compile_ptest_base do_populate_sysroot do_populate_lic do_configure_ptest_base
  libsndfile1: do_populate_sysroot do_build do_configure do_package_qa do_package do_install do_populate_lic do_package_write_rpm do_packagedata do_compile
  libusb-compat: do_package do_packagedata do_build do_package_qa do_populate_sysroot do_compile do_install do_configure do_populate_lic do_package_write_rpm
  python: do_install do_compile do_populate_lic do_build do_configure do_package do_configure_ptest_base do_populate_sysroot do_install_ptest_base do_package_write_rpm do_compile_ptest_base do_packagedata do_patch do_package_qa do_unpack
  libidn: do_package_write_rpm do_compile do_populate_lic do_build do_packagedata do_install do_populate_sysroot do_configure do_package do_package_qa
  xproto: do_package do_packagedata do_package_qa do_configure do_package_write_rpm do_populate_lic do_build do_populate_sysroot do_install do_compile
  bash-completion: do_build do_package_write_rpm do_packagedata do_install do_package do_populate_sysroot do_populate_lic do_compile do_package_qa do_configure
  work-shared: do_preconfigure
  opkg-utils: do_package_write_rpm do_compile do_configure do_package_qa do_populate_sysroot do_packagedata do_populate_lic do_package do_install do_build
  shadow: do_package_qa do_populate_sysroot do_build do_package_write_rpm do_populate_lic do_compile do_packagedata do_install do_configure do_package do_unpack do_patch
  util-linux: do_package_write_rpm do_configure do_patch do_compile_ptest_base do_install_ptest_base do_install do_unpack do_build do_configure_ptest_base do_package do_compile do_package_qa do_packagedata do_populate_sysroot do_populate_lic
  libdaemon: do_build do_install do_package_qa do_populate_lic do_package do_compile do_package_write_rpm do_populate_sysroot do_packagedata do_configure
  libsm: do_configure do_populate_sysroot do_install do_packagedata do_package_write_rpm do_compile do_populate_lic do_package do_package_qa do_build
  glibc-locale: do_packagedata do_package_qa do_package do_configure do_build do_install do_populate_lic do_package_write_rpm do_compile do_populate_sysroot
  sysvinit: do_package_write_rpm do_install do_compile do_package do_package_qa do_populate_sysroot do_build do_configure do_packagedata do_populate_lic
  dbus: do_package_write_rpm do_install do_package_qa do_package do_populate_lic do_configure do_build do_populate_sysroot do_compile do_packagedata
  dbus-test: do_install do_build do_package_write_rpm do_compile_ptest_base do_packagedata do_populate_lic do_install_ptest_base do_populate_sysroot do_configure_ptest_base do_package do_compile do_package_qa do_configure
  libvorbis: do_populate_sysroot do_configure do_patch do_build do_package_qa do_package do_install do_unpack do_populate_lic do_compile do_packagedata do_package_write_rpm
  amanda: do_build do_package do_install do_populate_lic do_compile do_populate_sysroot do_package_qa do_packagedata do_package_write_rpm do_configure
  shared-mime-info: do_package_write_rpm do_unpack do_populate_sysroot do_package_qa do_build do_populate_lic do_compile do_packagedata do_patch do_install do_configure do_package
  rpcbind: do_package_write_rpm do_populate_lic do_packagedata do_package do_install do_compile do_package_qa do_populate_sysroot do_build do_configure
  libnss-mdns: do_populate_lic do_compile do_configure do_packagedata do_populate_sysroot do_build do_package_write_rpm do_install do_package do_package_qa
  util-macros: do_package do_populate_lic do_populate_sysroot do_package_qa do_packagedata do_configure do_build do_package_write_rpm do_compile do_install
  sed: do_install do_populate_sysroot do_populate_lic do_compile_ptest_base do_compile do_package_qa do_configure_ptest_base do_package do_build do_packagedata do_package_write_rpm do_configure do_install_ptest_base
  libgcc: do_populate_lic do_packagedata do_package_write_rpm do_compile do_multilib_install do_populate_sysroot do_package_qa do_install do_build do_extra_symlinks do_package do_configure
  tcp-wrappers: do_package do_packagedata do_package_qa do_populate_lic do_populate_sysroot do_compile do_install do_configure do_package_write_rpm do_build
  inputproto: do_package do_package_write_rpm do_build do_install do_configure do_packagedata do_populate_lic do_populate_sysroot do_package_qa do_compile
  libxau: do_configure do_install do_compile do_build do_package do_package_qa do_packagedata do_package_write_rpm do_populate_lic do_populate_sysroot
  kmod: do_populate_sysroot do_install do_configure do_package_write_rpm do_compile do_package_qa do_packagedata do_populate_lic do_build do_package
  modutils-initscripts: do_install do_package do_populate_lic do_populate_sysroot do_package_qa do_compile do_build do_package_write_rpm do_packagedata do_configure
  bluez5: do_package do_package_write_rpm do_unpack do_packagedata do_package_qa do_configure do_build do_patch do_compile do_install do_populate_sysroot do_populate_lic
  glibc: do_populate_sysroot do_compile do_install_locale do_configure do_populate_lic do_install do_packagedata do_package_qa do_package_write_rpm do_patch do_package do_build do_evacuate_scripts
  libgpg-error: do_populate_sysroot do_packagedata do_package_write_rpm do_populate_lic do_configure do_compile do_build do_package do_package_qa do_install
  libice: do_populate_lic do_package_write_rpm do_populate_sysroot do_package_qa do_packagedata do_configure do_package do_compile do_install do_build
  init-ifupdown: do_populate_lic do_populate_sysroot do_packagedata do_build do_configure do_package do_package_write_rpm do_package_qa do_install do_compile
  icu: do_populate_lic do_build do_populate_sysroot do_install do_package do_configure do_package_qa do_compile do_packagedata do_package_write_rpm
  msmtp: do_unpack do_build do_package do_compile do_configure do_packagedata do_populate_lic do_patch do_package_qa do_populate_sysroot do_install do_package_write_rpm
  bc: do_package do_package_write_rpm do_package_qa do_packagedata do_build do_compile do_configure do_install do_populate_lic do_populate_sysroot
  gawk: do_populate_lic do_package_write_rpm do_package_qa do_install do_compile_ptest_base do_populate_sysroot do_install_ptest_base do_packagedata do_compile do_build do_configure_ptest_base do_configure do_package
  xcb-proto: do_packagedata do_install do_package_write_rpm do_build do_package do_compile do_configure do_populate_sysroot do_package_qa do_populate_lic
  libgcc-initial: do_build do_extra_symlinks do_populate_lic do_install do_configure do_multilib_install do_populate_sysroot do_compile
  libxml-parser-perl: do_package_write_rpm do_packagedata do_populate_sysroot do_configure do_populate_lic do_build do_compile do_package_qa do_package do_install
  libgcrypt: do_package_write_rpm do_install do_build do_package do_populate_sysroot do_compile do_package_qa do_packagedata do_populate_lic do_configure
  bash: do_install do_install_ptest_base do_packagedata do_populate_sysroot do_configure_ptest_base do_compile do_compile_ptest_base do_populate_lic do_package_write_rpm do_configure do_package do_build do_package_qa
  eudev: do_package_write_rpm do_populate_sysroot do_package do_populate_lic do_build do_compile do_install do_packagedata do_package_qa do_configure
  shadow-securetty: do_build do_package_write_rpm do_compile do_configure do_package do_packagedata do_populate_lic do_install do_populate_sysroot do_package_qa
  openssh: do_install do_package do_install_ptest_base do_populate_sysroot do_packagedata do_compile do_configure_ptest_base do_package_qa do_compile_ptest_base do_configure do_populate_lic do_package_write_rpm do_build
  python-pygobject: do_package do_populate_lic do_configure do_compile do_package_qa do_populate_sysroot do_build do_package_write_rpm do_packagedata do_install
  openssl: do_configure_ptest_base do_compile do_package do_compile_ptest_base do_populate_sysroot do_install_ptest_base do_packagedata do_build do_configure do_package_qa do_install do_populate_lic do_package_write_rpm
  gnutls: do_configure do_package do_compile do_build do_package_qa do_install do_patch do_populate_sysroot do_packagedata do_populate_lic do_package_write_rpm do_unpack
  ptest-runner: do_populate_lic do_configure do_package_qa do_build do_install do_populate_sysroot do_compile do_packagedata do_package do_package_write_rpm
  cryptodev-linux: do_package_qa do_configure do_populate_lic do_install do_package_write_rpm do_compile do_packagedata do_populate_sysroot do_build do_package
  xextproto: do_compile do_populate_lic do_packagedata do_install do_populate_sysroot do_package_qa do_configure do_package_write_rpm do_build do_package
  libical: do_package do_install do_package_qa do_configure do_populate_sysroot do_compile do_packagedata do_generate_toolchain_file do_package_write_rpm do_build do_populate_lic
  depmodwrapper-cross: do_populate_sysroot do_populate_lic do_install do_build
  libtool-cross: do_package_write_rpm do_package_qa do_install do_packagedata do_populate_lic do_build do_compile do_package do_configure do_populate_sysroot
  psplash: do_install do_compile do_build do_package do_populate_lic do_populate_sysroot do_configure do_package_write_rpm do_package_qa do_packagedata
  libusb1: do_install do_populate_sysroot do_populate_lic do_package_write_rpm do_compile do_configure do_build do_package_qa do_package do_packagedata
  libxml-simple-perl: do_package do_install do_package_write_rpm do_package_qa do_packagedata do_configure do_build do_compile do_populate_sysroot do_populate_lic
  libxcb: do_install do_configure do_build do_compile do_packagedata do_populate_lic do_package_qa do_populate_sysroot do_package_write_rpm do_package
  packagegroup-base: do_populate_sysroot do_package do_populate_lic do_packagedata do_package_write_rpm do_package_qa do_build
  glib-2.0: do_package_write_rpm do_install do_compile_ptest_base do_packagedata do_patch do_populate_lic do_populate_sysroot do_install_ptest_base do_configure do_configure_ptest_base do_package_qa do_unpack do_package do_build do_compile
  m4: do_package do_packagedata do_populate_sysroot do_configure do_populate_lic do_install do_package_qa do_package_write_rpm do_compile do_build
  netbase: do_configure do_install do_packagedata do_populate_lic do_populate_sysroot do_build do_patch do_package_qa do_compile do_package_write_rpm do_package do_unpack
  libpcre: do_package_write_rpm do_compile do_populate_lic do_install_ptest_base do_build do_configure do_configure_ptest_base do_packagedata do_compile_ptest_base do_package_qa do_install do_populate_sysroot do_package
  libsamplerate0: do_compile do_packagedata do_install do_populate_sysroot do_populate_lic do_build do_package_write_rpm do_configure do_package do_package_qa
  ncurses: do_package_write_rpm do_populate_sysroot do_populate_lic do_package do_compile do_package_qa do_packagedata do_install do_configure do_build
  flac: do_unpack do_build do_package_qa do_configure do_populate_lic do_package_write_rpm do_populate_sysroot do_patch do_package do_packagedata do_install do_compile
  sysfsutils: do_package_qa do_populate_sysroot do_package do_build do_configure do_compile do_package_write_rpm do_populate_lic do_packagedata do_install
  gcc-runtime: do_build do_package_qa do_populate_lic do_populate_sysroot do_compile do_install do_package do_configure do_packagedata do_package_write_rpm
  qemuwrapper-cross: do_packagedata do_package do_populate_sysroot do_populate_lic do_install do_build do_package_write_rpm do_package_qa
  backup-setup: do_populate_lic do_compile do_build do_package_write_rpm do_package_qa do_configure do_install do_package do_packagedata do_populate_sysroot
  attr: do_install_ptest_base do_package do_configure_ptest_base do_package_write_rpm do_populate_sysroot do_compile do_populate_lic do_packagedata do_install do_package_qa do_compile_ptest_base do_configure do_build
  libnl: do_packagedata do_install do_populate_sysroot do_populate_lic do_compile do_configure do_build do_package_qa do_package_write_rpm do_package
  zlib: do_package_qa do_compile do_compile_ptest_base do_install do_configure do_patch do_build do_package_write_rpm do_unpack do_package do_install_ptest_base do_populate_sysroot do_populate_lic do_packagedata do_configure_ptest_base
  xtrans: do_populate_lic do_package_write_rpm do_install do_packagedata do_package do_configure do_compile do_package_qa do_populate_sysroot do_build
  initscripts: do_install do_configure do_package do_compile do_package_qa do_package_write_rpm do_populate_sysroot do_populate_lic do_build do_packagedata
  avahi: do_package_write_rpm do_install do_package_qa do_build do_populate_lic do_packagedata do_populate_sysroot do_compile do_package do_configure
  procps: do_package_write_rpm do_patch do_compile do_package_qa do_populate_sysroot do_package do_configure do_unpack do_build do_populate_lic do_install do_packagedata
  alsa-utils: do_populate_sysroot do_compile do_package_write_rpm do_install do_configure do_package do_packagedata do_package_qa do_populate_lic do_build
  neard: do_package_write_rpm do_packagedata do_populate_lic do_unpack do_compile do_package do_patch do_populate_sysroot do_package_qa do_build do_configure do_install
  tar: do_install do_package_write_rpm do_populate_sysroot do_package do_build do_configure do_populate_lic do_package_qa do_compile do_packagedata
  libxml2: do_install do_build do_package_write_rpm do_populate_lic do_configure_ptest_base do_compile do_packagedata do_package do_compile_ptest_base do_install_ptest_base do_populate_sysroot do_configure do_package_qa
  expat: do_build do_populate_sysroot do_package_write_rpm do_package_qa do_compile do_packagedata do_package do_configure do_populate_lic do_unpack do_install do_patch
  iw: do_packagedata do_build do_populate_lic do_install do_compile do_package do_package_write_rpm do_package_qa do_populate_sysroot do_configure
  shadow-sysroot: do_packagedata do_compile do_configure do_package_write_rpm do_package_qa do_install do_populate_sysroot do_package do_build do_populate_lic
  base-files: do_configure do_populate_lic do_packagedata do_compile do_populate_sysroot do_build do_package do_install do_package_write_rpm do_package_qa
  libpthread-stubs: do_populate_sysroot do_package_write_rpm do_package_qa do_configure do_compile do_populate_lic do_build do_package do_packagedata do_install
  dbus-glib: do_populate_lic do_package do_install do_packagedata do_package_write_rpm do_configure do_compile do_populate_sysroot do_package_qa do_build
  bzip2: do_packagedata do_package_qa do_package_write_rpm do_install do_compile_ptest_base do_configure do_install_ptest_base do_populate_lic do_package do_compile do_configure_ptest_base do_populate_sysroot do_build
  alsa-lib: do_package_write_rpm do_compile do_package do_build do_package_qa do_populate_sysroot do_populate_lic do_install do_configure do_packagedata
  make: do_compile do_populate_lic do_populate_sysroot do_package do_build do_configure do_install do_packagedata do_package_write_rpm do_package_qa
  gettext: do_package do_package_qa do_build do_install do_packagedata do_configure do_compile do_populate_lic do_populate_sysroot do_package_write_rpm
  coreutils: do_populate_sysroot do_build do_install do_package do_package_write_rpm do_package_qa do_unpack do_patch do_packagedata do_compile do_populate_lic do_configure
  sqlite3: do_populate_sysroot do_populate_lic do_install do_package_qa do_build do_compile do_packagedata do_package do_package_write_rpm do_configure
  libcap: do_configure do_compile do_packagedata do_package do_build do_package_qa do_unpack do_package_write_rpm do_install do_populate_sysroot do_populate_lic do_patch
  python-dbus: do_compile do_populate_sysroot do_build do_package_write_rpm do_packagedata do_populate_lic do_configure do_install do_package do_package_qa
  libcheck: do_packagedata do_package_write_rpm do_install do_package_qa do_populate_sysroot do_build do_package do_populate_lic do_configure do_compile
  wireless-tools: do_package_qa do_compile do_populate_sysroot do_configure do_packagedata do_populate_lic do_package do_install do_build do_package_write_rpm
  db: do_packagedata do_build do_configure do_populate_lic do_compile do_package_write_rpm do_package do_package_qa do_install do_populate_sysroot
  quota: do_packagedata do_populate_sysroot do_build do_compile do_configure do_package do_install do_package_write_rpm do_populate_lic do_package_qa
  libogg: do_package_write_rpm do_packagedata do_package do_package_qa do_build do_patch do_populate_lic do_install do_compile do_populate_sysroot do_configure do_unpack
  libffi: do_configure do_packagedata do_compile do_package_qa do_package do_populate_lic do_populate_sysroot do_package_write_rpm do_install do_build
  readline: do_populate_sysroot do_package_write_rpm do_packagedata do_package do_populate_lic do_install do_configure do_compile do_build do_package_qa
  wpa-supplicant: do_package do_populate_lic do_build do_packagedata do_configure do_package_qa do_populate_sysroot do_package_write_rpm do_compile do_install
  mobile-broadband-provider-info: do_install do_packagedata do_package_write_rpm do_populate_lic do_compile do_build do_package_qa do_configure do_package do_populate_sysroot
  diffutils: do_install_ptest_base do_populate_lic do_install do_build do_unpack do_packagedata do_package_write_rpm do_compile do_package do_package_qa do_compile_ptest_base do_configure do_patch do_populate_sysroot do_configure_ptest_base
  libx11: do_install do_populate_sysroot do_configure do_package_qa do_package do_populate_lic do_packagedata do_build do_package_write_rpm do_compile
  e2fsprogs: do_package_qa do_install_ptest_base do_configure_ptest_base do_populate_sysroot do_compile_ptest_base do_packagedata do_package do_compile do_install do_build do_configure do_package_write_rpm do_populate_lic
  nettle: do_package do_install_ptest_base do_package_write_rpm do_configure_ptest_base do_compile do_package_qa do_compile_ptest_base do_populate_lic do_build do_packagedata do_populate_sysroot do_install do_configure
  gzip: do_packagedata do_configure do_install do_package do_populate_sysroot do_package_qa do_build do_populate_lic do_package_write_rpm do_compile
  gnome-desktop-testing: do_patch do_package_qa do_unpack do_populate_sysroot do_packagedata do_install do_populate_lic do_compile do_package do_configure do_package_write_rpm do_build
  base-passwd: do_packagedata do_build do_configure do_package do_package_write_rpm do_populate_sysroot do_package_qa do_populate_lic do_compile do_install

=== Summary: (2338 changed, 322 unchanged)
Newly added: 945
PV changed: 39
PR changed: 0
Dependencies changed: 1354

Removing the newly generated stamps dir ...

--------------070009060707040503040402--
