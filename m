Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web12.8735.1621945068998464248
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 May 2021 05:17:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=hGyOdzGL;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1621945069;
  x=1653481069;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=T7s6f/zo7xWwmzNqaYqjDyGrFSIG0Yo2U8lUKj24WjU=;
  b=hGyOdzGLIs0rNfo1pK/guEoz1exLP/sv3I2IGwYShnkcrn39tFzjyaii
   sq6567uNQeGyT4Rgq0NaoF7IGrQ0z9WV7iMHNJYxLlytSPaIuIaVwXgN+
   h3vzOoEuGm8+Bh4z6tAjRqTeXkYXrNtFIf83nwLkiega50a1NFHr0L3zs
   zK1vzpFK41b7jhHxIFwJDxbvcMCjmxkZucAVufBs3ljP3DeNNWt/+zaXV
   OQjhAIE1C3jDmLVKm32025n3Ggv85dkl02gL17avOTxWXe82Wp23/aiIb
   hOtdkHOzLWnkXPqw3HoqhGiVlq01R9sY1fvU46HU3fSM/h9BWyXSjHKxv
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Vineela <vineela.tummalapalli@intel.com>
CC: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is
 Released
Thread-Index: AddQyvpO+hVYaKnlSTmgnO7UocMWmQAk/pQAAAA8ULA=
Date: Tue, 25 May 2021 12:17:47 +0000
Message-ID: <6634473a772c49d5a98d068d06340fab@XBOX03.axis.com>
References: <BYAPR11MB33017216B14BA159AF5601E588269@BYAPR11MB3301.namprd11.prod.outlook.com>
 <16824E32EA2689C9.16023@lists.yoctoproject.org>
In-Reply-To: <16824E32EA2689C9.16023@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6634473a772c49d5a98d068d06340fabXBOX03axiscom_"

--_000_6634473a772c49d5a98d068d06340fabXBOX03axiscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

And I just noticed that the "hardknott-25.0.1" tag is missing for poky as w=
ell.

//Peter

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Peter Kjellerstedt
Sent: den 25 maj 2021 14:13
To: Vineela <vineela.tummalapalli@intel.com>
Cc: 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) =
is Released

It seems the "hardknott-25.0.1" tag is missing for meta-gplv2. The "yoccto-=
3.3.1" tag is present.

//Peter

From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> On Behalf =
Of Vineela
Sent: den 25 maj 2021 00:57
To: 'yocto-announce@lists.yoctoproject.org' <yocto-announce@lists.yoctoproj=
ect.org<mailto:yocto-announce@lists.yoctoproject.org>>; 'yocto@lists.yoctop=
roject.org' <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.o=
rg>>; 'yocto-request@eclists.intel.com' <yocto-request@eclists.intel.com<ma=
ilto:yocto-request@eclists.intel.com>>
Subject: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.1) is R=
eleased


Generating announcement for point release 3.3.1.

We are pleased to announce the Yocto Project 3.3.1 (hardknott-25.0.1) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott=
-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>

--------------------------
yocto-3.3.1 Release Notes
--------------------------

--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 05a8aad57ce250b124db16705acec557819905ae
Release Artefact: poky-hardknott-25.0.1
sha: 409b92d819f0c6e928b37bcc7cc4e80e5f27aa94748dcb479e325a4559c391c2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott=
-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: hardknott
Tag: 2021-04.1-hardknott
Git Revision: efce6334bf122a64f63d46c1c04e3dbffe298c51
Release Artefact: oecore-hardknott-25.0.1
sha: d53cdc060784ee7c86853b3b8120d6b3d0b445098cfcd27c939f303f9075262f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/oecore-hardkno=
tt-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/oecore-hardknott-25.0.1.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 422b96cb2b6116442be1f40dfb5bd77447d1219e
Release Artefact: meta-mingw-hardknott-25.0.1
sha: 89bce008a93d4717bca4069c1fd0004d88bf39e8a8098eb1e8376bc7521a600f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-mingw-har=
dknott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-mingw-hardknott-25.0=
.1.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: hardknott
Tag: yocto-3.3.1
Git Revision: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
Release Artefact: meta-gplv2-hardknott-25.0.1
sha: 988a222f13a9a87adf723cb86bd7db2648b3303e15bb3bac2d73e89f3faa547f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-gplv2-har=
dknott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-gplv2-hardknott-25.0=
.1.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.50
Tag: 2021-04.1-hardknott
Git Revision: b67476d4758915db7a5d9f58bc903ae7501a1774
Release Artefact: bitbake-hardknott-25.0.1
sha: 3203a3c80f7ac749b1436b67b25733dbbe09b7ce9b32715a9f2fcd6bc24ec718
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/bitbake-hardkn=
ott-25.0.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.3.1/bitbake-hardknott-25.0.1.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: hardknott
Tag: yocto-3.3.1
Git Revision:eb19a2b5687f11c22c7fc26d3efabbf65adb572e

---------------
Contributors
--------------
Alejandro Enedino Hernandez Samaniego
Alexander Kanavin
Anders Wallin
Anthony Bagwell
Anuj Mittal
Bruce Ashfield
Changqing Li
Chen Qi
Christophe Chapuis
Daniel Ammann
Douglas Royds
Gavin Li
He Zhe
hongxu
Jonas H=F6ppner
Jon Mason
Jose Quaresma
Joshua Watt
Kai Kang
Kevin Hao
Khairul Rohaizzat Jamaluddin
Khem Raj
Konrad Weihmann
Michael Opdenacker
Mikko Rapeli
Mingli Yu
Nicolas Dechesne
Niels Avonds
Paul Eggleton
Peter Budny
Peter Kjellerstedt
Quentin Schulz
Randy MacLeod
Reto Schneider
Richard Purdie
Romain Naour
Ross Burton
Sakib Sajal
Sangeeta Jain
Saul Wold
Stefan Ghinea
Stephen Jolley
Trevor Gamblin
Ulrich =D6lmann
Vin=EDcius Ossanes Aquino
wangmy
Wes Lindauer
Yanfei Xu
Yann Dirson
Yi Fan Yu
Yi Zhao
zhengruoqin

---------------
Known Issues
---------------
An intermittent systemtap issue occurred on arm during testing.

---------------
Security Fixes
---------------
db: update CVE_PRODUCT
qemu: fix CVE-2021-3392
qemu: fix CVE-2021-20263
qemu: fix CVE-2020-27821
xserver-xorg: fix CVE-2021-3472
rsync: fix CVE-2020-14387
glib-2.0: fix CVE-2021-28153
qemu: fix CVE-2021-20257
qemu: fix CVE-2021-3416
qemu: fix CVE-2021-3409
qemu: fix CVE-2021-20221
qemu: fix CVE-2020-29443
qemu: fix CVE-2021-20181
gdk-pixbuf: fix CVE-2021-20240
cairo: fix CVE-2020-35492
wpa-supplicant: fix CVE-2021-30004
busybox: fix CVE-2021-28831
qemu: Fix CVE-2020-35517


---------------
Fixes
---------------
documentation: prepare for 3.3.1 release
build-appliance-image: Update to hardknott head revision
poky.conf: Bump version for 3.3.1 hardknott release
puzzles: Upstream changed to main branch for development
linux-firmware: include all relevant files in -bcm4356
lsb-release: fix reproducibility failure
ruby: upgrade 3.0.0 -> 3.0.1
grub2.inc: remove '-O2' from CFLAGS
dejagnu: needs expect at runtime
libcap: Configure Make variables correctly without a horrible hack
lttng-modules: backport patches to fix build against 5.12+ kernel
linux-yocto/5.4: qemuppc32: reduce serial shutdown issues
linux-firmware: upgrade 20210208 -> 20210315
oeqa/qemurunner: Improve handling of run_serial for shutdown commands
oeqa/qemurunner: Fix binary vs str issue
oeqa/qemurunner: Improve logging thread exit handling for qemu shutdown tes=
t
sanity.bbclass: mention CONNECTIVITY_CHECK_URIS in network failure message
libevent: Increase ptest timing tolerance 50 ms -> 100 ms
classes/image: Use xargs to set file timestamps
linux-yocto/5.10: qemuppc32: reduce serial shutdown issues
lib/package_manager: Use shutil.copy instead of bb.utils.copyfile for inter=
cepts
diffoscope: add native libraries to LD_LIBRARY_PATH
Revert "oeqa: Set LD_LIBRARY_PATH when executing native commands"
oe-buildenv-internal: add BitBake's library to PYTHONPATH
webkitgtk: Fix reproducibility in minibrowser
busybox: Fix reproducibility
libjpeg-turbo: Use --reproducible option for nasm
ptest-runner: libgcc must be installed for pthread_cancel to work
linux-yocto/5.4: update to v5.4.116
linux-yocto/5.10: update to v5.10.34
linux-yocto/5.4: update to v5.4.114
perf: fix python-audit RDEPENDS
linux-yocto/5.10: update to v5.10.32
linux-yocto/5.10: qemuriscv32.cfg: RV32 only supports 1G physical memory
linux-yocto/5.10: aufs fixes
yocto-uninative: Update to 3.1 which includes a patchelf fix
wireless-regdb: upgrade 2020.11.20 -> 2021.04.21
rootfs.py: find .ko.gz and .ko.xz kernel modules as well
pybootchart/draw: Avoid divide by zero error
patchelf: Fix alignment patch
mesa: upgrade 21.0.2 -> 21.0.3
patchelf: Fix note section alignment issues
license_image.bbclass: Fix symlink to generic license files
license_image.bbclass: Detect broken symlinks
bitbake: runqueue: Handle deferred task rehashing in multiconfig builds
bitbake: runqueue: Fix multiconfig deferred task sstate validity caching is=
sue
patchelf: Backport fix from upstream for note section overlap error
weston: fix build failure due to race condition
meta/lib/oeqa/core/tests/cases/timeout.py: add a testcase for the previous =
fix
oeqa: tear down oeqa decorators if one of them raises an exception in setup
cmake.bbclass: remove ${B} before cmake_do_configure
kernel-yocto.bbclass: chdir to ${WORKDIR} for do_kernel_checkout
yocto-check-layer: Avoid bug when iterating and autoadding dependencies
libssh2: fix build failure with option no-ecdsa
go: Use dl.google.com for SRC_URI
cve-update-db-native: skip on empty cpe23Uri
rpm: Upgrade to 4.16.1.3
runqemu: Ensure we cleanup snapshot files after image run
lttng-tools: Fix path for test_python_looging
lttng-tools: Fix missing legacy test files
deb: apply postinstall on sdk
externalsrc: Detect code changes in submodules
Revert "externalsrc: Detect code changes in submodules"
arch-armv6m.inc: fix access rights
libxshmfence: Build fixes for riscv32
packagegroup-core-tools-testapps.bb: Remove kexec for riscv32
packagegroup-core-tools-profile: Remove valgrind for riscv32
ltp: fix empty ltp-dev package
glslang: strip whitespace in pkgconfig file
go: upgrade 1.16.2 -> 1.16.3
pango: re-enable ptest
kmod: do not symlink config.guess/config.sub during autoreconf
libtool: make sure autoheader run before automake
Revert "inittab: Add getty launch on hvc0 for qemuppc64"
sysvinit-inittab/start_getty: Check /sys for the tty device existence
modutils-initscripts: Bail out when no module is installed
systemd: upgrade 247.4 -> 247.6
insane: clean up some more warning messages
sanity: Add error check for '%' in build path
groff: not ship /usr/bin/grap2graph
oeqa/runtime: space needed
parselogs: ignore floppy error on qemu-system-x86 at boot stage
go: update SRC_URI to use https protocol
mesa: upgrade 21.0.1 -> 21.0.2
systemd: Fix build on mips/musl
python3: Improve logging, syntax and update deprecated modules to create_ma=
nifest
python3: Upgrade 3.9.2 -> 3.9.4
oeqa/runtime/cases: Only disable/enable for current boot
oe-time-dd-test.sh: increase timeout to 15 sec
scripts/oe-debuginfod: correct several issues
ca-certificates: Fix openssl runtime cert dependencies
nettle: upgrade 3.7.1 -> 3.7.2
linux-yocto/5.10: fix arm defconfig warnings
linux-yocto/5.4: fix arm defconfig warnings
linux-yocto/5.4: update to v5.4.112
linux-yocto-rt/5.10: update to -rt34
linux-yocto/5.10: update to v5.10.30
linux-yocto/5.4: update to v5.4.111
linux-yocto/5.10: update to v5.10.29
linux-yocto/5.10: BSP configuration fixes
linux-yocto-dev: add features/scsi/scsi-debug.scc features/gpio/mockup.scc =
to KERNEL_FEATURES
linux-yocto/5.10: update to v5.10.27
linux-yocto/5.4: update to v5.4.109
archiver: Fix typos
oeqa/selftest: Ensure packages classes are set correctly for maintainers te=
st
pseudo: Upgrade to add trailing slashes ignore path fix
lib/oe/terminal: Fix tmux new-session on older tmux versions (<1.9)
bitbake: bitbake: tests/fetch: remove write protected files too
bitbake: fetch/gitsm: Fix crash when using git LFS and submodules
bitbake: bitbake-server: ensure server timeout is a float
bitbake: bitbake: tests/fetch: fix test execution without .gitconfig
bitbake: runqueue: Fix deferred task issues
oeqa/selftest: Hardcode test assumptions about heartbeat event timings
oe-time-dd-test.sh: provide more information from "top"
oe-time-dd-test.sh: make executable
ref-manual: add mention of DISTUTILS_SETUP_PATH
ref-manual: migration guide: add release codenames
ref-manual: add migration section for 3.3 release
ref-manual: tweak buildtools section
ref-manual: fix reference to build-essential
ref-manual: add FIT_KERNEL_COMP_ALG*
ref-manual: add passwd-expire to EXTRA_USERS_PARAMS
ref-manual: add python3targetconfig class and remove python 2 references
ref-manual: add REQUIRED_VERSION and adjust PREFERRED_VERSION entry
ref-manual: and SDK_CUSTOM_TEMPLATECONF to glossary
overview-manual: fix git command line
ref-manual: update/fix text for SDK_VERSION
Use variables for minimum host versions and bump Python to 3.6
ref-manual: add METADATA_REVISION and METADATA_BRANCH
bitbake: bitbake-user-manual: add REQUIRED_VERSION and adjust PREFERRED_VER=
SION entry
bitbake: bitbake-user-manual: document no support for using passwords in gi=
t URLs
docs: add a top level page for bitbake documentation
docs: replace anchor links
sdk-manual: fix typo
bitbake: bitbake: Update version to 1.50.0 stable release series

--_000_6634473a772c49d5a98d068d06340fabXBOX03axiscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#943634;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"SV" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US">And I just noticed that
</span><span lang=3D"EN-US" style=3D"color:#943634;mso-fareast-language:EN-=
US">the &#8221;hardknott-25.0.1&#8221; tag
</span><span lang=3D"EN-US" style=3D"color:#943634;mso-fareast-language:EN-=
US">is missing for poky as well.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US">//Peter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;
<b>On Behalf Of </b>Peter Kjellerstedt<br>
<b>Sent:</b> den 25 maj 2021 14:13<br>
<b>To:</b> Vineela &lt;vineela.tummalapalli@intel.com&gt;<br>
<b>Cc:</b> 'yocto@lists.yoctoproject.org' &lt;yocto@lists.yoctoproject.org&=
gt;<br>
<b>Subject:</b> Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-2=
5.0.1) is Released<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US">It seems the &#8221;hardknott-25.0.1&#8221; tag is miss=
ing for meta-gplv2. The &#8220;yoccto-3.3.1&#8221; tag is present.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US">//Peter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634;mso-fare=
ast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto@lists.yoctoproject.org">
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Vineela<br>
<b>Sent:</b> den 25 maj 2021 00:57<br>
<b>To:</b> 'yocto-announce@lists.yoctoproject.org' &lt;<a href=3D"mailto:yo=
cto-announce@lists.yoctoproject.org">yocto-announce@lists.yoctoproject.org<=
/a>&gt;; 'yocto@lists.yoctoproject.org' &lt;<a href=3D"mailto:yocto@lists.y=
octoproject.org">yocto@lists.yoctoproject.org</a>&gt;;
 'yocto-request@eclists.intel.com' &lt;<a href=3D"mailto:yocto-request@ecli=
sts.intel.com">yocto-request@eclists.intel.com</a>&gt;<br>
<b>Subject:</b> [yocto] [ANNOUNCEMENT] Yocto Project 3.3.1 (hardknott-25.0.=
1) is Released<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Generating announcement for poi=
nt release 3.3.1.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We are pleased to announce the =
Yocto Project 3.3.1 (hardknott-25.0.1) Release is now available for downloa=
d.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2">htt=
p://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott-25=
.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2">http://mirrors=
.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">A gpg signed version of these r=
elease notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/RELEASENOTES">http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/RELEASENOTES</a><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Full Test Report:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/testreport.txt">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.3.1/testreport.txt</a><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for everyone's contri=
butions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Vineela Tummalapalli<o:p></o=
:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Yocto Project Build and Rele=
ase<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><a href=3D"mailto:vineela.tu=
mmalapalli@intel.com">vineela.tummalapalli@intel.com</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">--------------------------<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">yocto-3.3.1 Release Notes<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">--------------------------<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">--------------------------<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repositories/Downloads<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">--------------------------<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: poky<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.yoctoproject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: hardknott<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: yocto-3.3.1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision: 05a8aad57ce250b12=
4db16705acec557819905ae<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release Artefact: poky-hardknot=
t-25.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sha: 409b92d819f0c6e928b37bcc7c=
c4e80e5f27aa94748dcb479e325a4559c391c2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Download Locations:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2">htt=
p://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/poky-hardknott-25=
.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2">http://mirrors=
.kernel.org/yocto/yocto/yocto-3.3.1/poky-hardknott-25.0.1.tar.bz2</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: openembedded-c=
ore<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.openembedded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: hardknott<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: 2021-04.1-hardknott<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision: efce6334bf122a64f=
63d46c1c04e3dbffe298c51<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release Artefact: oecore-hardkn=
ott-25.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sha: d53cdc060784ee7c86853b3b81=
20d6b3d0b445098cfcd27c939f303f9075262f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Download Locations:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/oecore-hardknott-25.0.1.tar.bz2">h=
ttp://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/oecore-hardknot=
t-25.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/oecore-hardknott-25.0.1.tar.bz2">http://mirro=
rs.kernel.org/yocto/yocto/yocto-3.3.1/oecore-hardknott-25.0.1.tar.bz2</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: meta-mingw<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.yoctoproject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: hardknott<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: yocto-3.3.1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision: 422b96cb2b6116442=
be1f40dfb5bd77447d1219e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release Artefact: meta-mingw-ha=
rdknott-25.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sha: 89bce008a93d4717bca4069c1f=
d0004d88bf39e8a8098eb1e8376bc7521a600f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Download Locations:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/meta-mingw-hardknott-25.0.1.tar.bz=
2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-mingw-=
hardknott-25.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/meta-mingw-hardknott-25.0.1.tar.bz2">http://m=
irrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-mingw-hardknott-25.0.1.tar.b=
z2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: meta-gplv2<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.yoctoproject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: hardknott<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: yocto-3.3.1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision: 9e119f333cc8f53bd=
3cf64326f826dbc6ce3db0f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release Artefact: meta-gplv2-ha=
rdknott-25.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sha: 988a222f13a9a87adf723cb86b=
d7db2648b3303e15bb3bac2d73e89f3faa547f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Download Locations:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/meta-gplv2-hardknott-25.0.1.tar.bz=
2">http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/meta-gplv2-=
hardknott-25.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/meta-gplv2-hardknott-25.0.1.tar.bz2">http://m=
irrors.kernel.org/yocto/yocto/yocto-3.3.1/meta-gplv2-hardknott-25.0.1.tar.b=
z2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: bitbake<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.openembedded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: 1.50<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: 2021-04.1-hardknott<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision: b67476d4758915db7=
a5d9f58bc903ae7501a1774<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Release Artefact: bitbake-hardk=
nott-25.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sha: 3203a3c80f7ac749b1436b67b2=
5733dbbe09b7ce9b32715a9f2fcd6bc24ec718<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Download Locations:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://downloads.yoc=
toproject.org/releases/yocto/yocto-3.3.1/bitbake-hardknott-25.0.1.tar.bz2">=
http://downloads.yoctoproject.org/releases/yocto/yocto-3.3.1/bitbake-hardkn=
ott-25.0.1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"http://mirrors.kerne=
l.org/yocto/yocto/yocto-3.3.1/bitbake-hardknott-25.0.1.tar.bz2">http://mirr=
ors.kernel.org/yocto/yocto/yocto-3.3.1/bitbake-hardknott-25.0.1.tar.bz2</a>=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Name: yocto-docs<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Repository Location: <a href=3D=
"https://git.yoctoproject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Branch: hardknott<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tag: yocto-3.3.1<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Git Revision:eb19a2b5687f11c22c=
7fc26d3efabbf65adb572e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Contributors<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">--------------<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alejandro Enedino Hernandez Sam=
aniego<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Alexander Kanavin<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Anders Wallin<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Anthony Bagwell<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Anuj Mittal<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Bruce Ashfield<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Changqing Li<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Chen Qi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Christophe Chapuis<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Daniel Ammann<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Douglas Royds<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Gavin Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">He Zhe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">hongxu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jonas H=F6ppner<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jon Mason<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jose Quaresma<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Joshua Watt<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kai Kang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin Hao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Khairul Rohaizzat Jamaluddin<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Khem Raj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Konrad Weihmann<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Michael Opdenacker<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mikko Rapeli<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Mingli Yu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Nicolas Dechesne<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Niels Avonds<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Paul Eggleton<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Peter Budny<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Peter Kjellerstedt<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Quentin Schulz<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Randy MacLeod<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Reto Schneider<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Richard Purdie<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Romain Naour<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ross Burton<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sakib Sajal<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sangeeta Jain<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Saul Wold<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Stefan Ghinea<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Stephen Jolley<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Trevor Gamblin<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ulrich =D6lmann<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Vin=EDcius Ossanes Aquino<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">wangmy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Wes Lindauer<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yanfei Xu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yann Dirson<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yi Fan Yu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yi Zhao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">zhengruoqin<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Known Issues<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">An intermittent systemtap issue=
 occurred on arm during testing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Security Fixes<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">db: update CVE_PRODUCT<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-3392<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-20263<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2020-27821<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">xserver-xorg: fix CVE-2021-3472=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">rsync: fix CVE-2020-14387<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">glib-2.0: fix CVE-2021-28153<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-20257<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-3416<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-3409<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-20221<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2020-29443<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: fix CVE-2021-20181<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">gdk-pixbuf: fix CVE-2021-20240<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">cairo: fix CVE-2020-35492<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">wpa-supplicant: fix CVE-2021-30=
004<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">busybox: fix CVE-2021-28831<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">qemu: Fix CVE-2020-35517<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">---------------<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">documentation: prepare for 3.3.=
1 release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">build-appliance-image: Update t=
o hardknott head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">poky.conf: Bump version for 3.3=
.1 hardknott release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">puzzles: Upstream changed to ma=
in branch for development<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-firmware: include all rel=
evant files in -bcm4356<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lsb-release: fix reproducibilit=
y failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ruby: upgrade 3.0.0 -&gt; 3.0.1=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">grub2.inc: remove '-O2' from CF=
LAGS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">dejagnu: needs expect at runtim=
e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libcap: Configure Make variable=
s correctly without a horrible hack<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lttng-modules: backport patches=
 to fix build against 5.12&#43; kernel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: qemuppc32: red=
uce serial shutdown issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-firmware: upgrade 2021020=
8 -&gt; 20210315<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/qemurunner: Improve handli=
ng of run_serial for shutdown commands<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/qemurunner: Fix binary vs =
str issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/qemurunner: Improve loggin=
g thread exit handling for qemu shutdown test<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sanity.bbclass: mention CONNECT=
IVITY_CHECK_URIS in network failure message<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libevent: Increase ptest timing=
 tolerance 50 ms -&gt; 100 ms<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">classes/image: Use xargs to set=
 file timestamps<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: qemuppc32: re=
duce serial shutdown issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lib/package_manager: Use shutil=
.copy instead of bb.utils.copyfile for intercepts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">diffoscope: add native librarie=
s to LD_LIBRARY_PATH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Revert &quot;oeqa: Set LD_LIBRA=
RY_PATH when executing native commands&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oe-buildenv-internal: add BitBa=
ke's library to PYTHONPATH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">webkitgtk: Fix reproducibility =
in minibrowser<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">busybox: Fix reproducibility<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libjpeg-turbo: Use --reproducib=
le option for nasm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ptest-runner: libgcc must be in=
stalled for pthread_cancel to work<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: update to v5.4=
.116<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: update to v5.=
10.34<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: update to v5.4=
.114<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">perf: fix python-audit RDEPENDS=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: update to v5.=
10.32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: qemuriscv32.c=
fg: RV32 only supports 1G physical memory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: aufs fixes<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">yocto-uninative: Update to 3.1 =
which includes a patchelf fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">wireless-regdb: upgrade 2020.11=
.20 -&gt; 2021.04.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">rootfs.py: find .ko.gz and .ko.=
xz kernel modules as well<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">pybootchart/draw: Avoid divide =
by zero error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">patchelf: Fix alignment patch<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mesa: upgrade 21.0.2 -&gt; 21.0=
.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">patchelf: Fix note section alig=
nment issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">license_image.bbclass: Fix syml=
ink to generic license files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">license_image.bbclass: Detect b=
roken symlinks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: runqueue: Handle defer=
red task rehashing in multiconfig builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: runqueue: Fix multicon=
fig deferred task sstate validity caching issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">patchelf: Backport fix from ups=
tream for note section overlap error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">weston: fix build failure due t=
o race condition<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">meta/lib/oeqa/core/tests/cases/=
timeout.py: add a testcase for the previous fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa: tear down oeqa decorators=
 if one of them raises an exception in setup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">cmake.bbclass: remove ${B} befo=
re cmake_do_configure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">kernel-yocto.bbclass: chdir to =
${WORKDIR} for do_kernel_checkout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">yocto-check-layer: Avoid bug wh=
en iterating and autoadding dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libssh2: fix build failure with=
 option no-ecdsa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">go: Use dl.google.com for SRC_U=
RI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">cve-update-db-native: skip on e=
mpty cpe23Uri<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">rpm: Upgrade to 4.16.1.3<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">runqemu: Ensure we cleanup snap=
shot files after image run<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lttng-tools: Fix path for test_=
python_looging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lttng-tools: Fix missing legacy=
 test files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">deb: apply postinstall on sdk<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">externalsrc: Detect code change=
s in submodules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Revert &quot;externalsrc: Detec=
t code changes in submodules&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">arch-armv6m.inc: fix access rig=
hts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libxshmfence: Build fixes for r=
iscv32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">packagegroup-core-tools-testapp=
s.bb: Remove kexec for riscv32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">packagegroup-core-tools-profile=
: Remove valgrind for riscv32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ltp: fix empty ltp-dev package<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">glslang: strip whitespace in pk=
gconfig file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">go: upgrade 1.16.2 -&gt; 1.16.3=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">pango: re-enable ptest<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">kmod: do not symlink config.gue=
ss/config.sub during autoreconf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">libtool: make sure autoheader r=
un before automake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Revert &quot;inittab: Add getty=
 launch on hvc0 for qemuppc64&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sysvinit-inittab/start_getty: C=
heck /sys for the tty device existence<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">modutils-initscripts: Bail out =
when no module is installed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">systemd: upgrade 247.4 -&gt; 24=
7.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">insane: clean up some more warn=
ing messages<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sanity: Add error check for '%'=
 in build path<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">groff: not ship /usr/bin/grap2g=
raph<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/runtime: space needed<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">parselogs: ignore floppy error =
on qemu-system-x86 at boot stage<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">go: update SRC_URI to use https=
 protocol<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">mesa: upgrade 21.0.1 -&gt; 21.0=
.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">systemd: Fix build on mips/musl=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">python3: Improve logging, synta=
x and update deprecated modules to create_manifest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">python3: Upgrade 3.9.2 -&gt; 3.=
9.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/runtime/cases: Only disabl=
e/enable for current boot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oe-time-dd-test.sh: increase ti=
meout to 15 sec<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">scripts/oe-debuginfod: correct =
several issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ca-certificates: Fix openssl ru=
ntime cert dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">nettle: upgrade 3.7.1 -&gt; 3.7=
.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: fix arm defco=
nfig warnings<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: fix arm defcon=
fig warnings<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: update to v5.4=
.112<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto-rt/5.10: update to =
-rt34<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: update to v5.=
10.30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: update to v5.4=
.111<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: update to v5.=
10.29<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: BSP configura=
tion fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto-dev: add features/s=
csi/scsi-debug.scc features/gpio/mockup.scc to KERNEL_FEATURES<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.10: update to v5.=
10.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">linux-yocto/5.4: update to v5.4=
.109<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">archiver: Fix typos<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/selftest: Ensure packages =
classes are set correctly for maintainers test<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">pseudo: Upgrade to add trailing=
 slashes ignore path fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">lib/oe/terminal: Fix tmux new-s=
ession on older tmux versions (&lt;1.9)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake: tests/fetch: =
remove write protected files too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: fetch/gitsm: Fix crash=
 when using git LFS and submodules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake-server: ensure=
 server timeout is a float<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake: tests/fetch: =
fix test execution without .gitconfig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: runqueue: Fix deferred=
 task issues<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oeqa/selftest: Hardcode test as=
sumptions about heartbeat event timings<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oe-time-dd-test.sh: provide mor=
e information from &quot;top&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">oe-time-dd-test.sh: make execut=
able<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add mention of DIST=
UTILS_SETUP_PATH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: migration guide: ad=
d release codenames<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add migration secti=
on for 3.3 release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: tweak buildtools se=
ction<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: fix reference to bu=
ild-essential<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add FIT_KERNEL_COMP=
_ALG*<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add passwd-expire t=
o EXTRA_USERS_PARAMS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add python3targetco=
nfig class and remove python 2 references<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add REQUIRED_VERSIO=
N and adjust PREFERRED_VERSION entry<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: and SDK_CUSTOM_TEMP=
LATECONF to glossary<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">overview-manual: fix git comman=
d line<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: update/fix text for=
 SDK_VERSION<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Use variables for minimum host =
versions and bump Python to 3.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ref-manual: add METADATA_REVISI=
ON and METADATA_BRANCH<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake-user-manual: a=
dd REQUIRED_VERSION and adjust PREFERRED_VERSION entry<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake-user-manual: d=
ocument no support for using passwords in git URLs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">docs: add a top level page for =
bitbake documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">docs: replace anchor links<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">sdk-manual: fix typo<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake: bitbake: Update versio=
n to 1.50.0 stable release series<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_6634473a772c49d5a98d068d06340fabXBOX03axiscom_--
