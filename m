Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B575E009A0; Mon, 30 Jan 2017 00:44:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666A7E0095F
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:18 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 75so31003184pgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=LzN4wCBTxK2jvtcQvUSz26gG6SPxjv/Iuy1rUKukN0Q=;
	b=NEOiqPfCBIzqEOVqWUK6KClkb2MEaI/O/gwEbvGToL1NmQ8e0GsEWr+U78J33teGXE
	2HtuGEmKL2+zA3181u5y4p1gjsz0OcbsZYXDAUgGblnDJ50HUxOl/tI4n25XsTh0Oqlv
	f+47PJmKRFTo+hKy31b4oBoAZ4lrEvVeDU366sEXCcPkuxPZviIVzCpyXshQ9r1kJ4Jq
	iOMEygbSsk7+Ym+vABqvc/qBNHN/5hV5TDqacnvEfPD+aVeThsQ2TGkTz2xIsglLBIoe
	4cYqcVBlBuhRSsVvH+sozwFo+ZgKAhyTlLm59GzRzHKdra9kGdiAS0slBVA/8aI9mt66
	GJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:from:to:cc:subject:mime-version
	:content-transfer-encoding;
	bh=LzN4wCBTxK2jvtcQvUSz26gG6SPxjv/Iuy1rUKukN0Q=;
	b=UgJrnYqWYBO/EYBLZJduZSoIzN+8Zm1lnMljstwAiPV61/pYJ8GBhC80N9rL+dRCQr
	CrHTvvByQ3end3Xiva/xwmaVy9Kd9KPP/zZxCSQcNUUAeEXWmAYSLCxI1ILGfEyfNfhM
	F7GMJPInCt1OtRNdYNr0JINZH+tOzc8B18liAd13Q18puJAkuSWFSTI4x2TaEZMs4NkD
	Xp/RELfr7BPfYHj0AEmh1CoebrpDqXsydfm37vXP8XBG9OrAVrxFAl+MjKU30ROCLFC0
	q268vMzWcGsD/rwHt8gwMMl2/+tqhtmeMrVRwfWC4b6Lez1YuZQInxAvxNAHCC9g530/
	A/HA==
X-Gm-Message-State: AIkVDXIjAxDQYP0dx4z4xb4oIIVjJY9p9zwfPTokJ/IFTsn5ls2tMWXIPk5KEAVfWqbLKQ==
X-Received: by 10.98.66.82 with SMTP id p79mr22116128pfa.10.1485765857943;
	Mon, 30 Jan 2017 00:44:17 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	82sm30298182pge.42.2017.01.30.00.44.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:17 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 0/19] Adding support for building QEMU for Windows
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:30 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

This series enables a number of packages and dependencies to be built
for mingw32. The goal is to enable the building and packaging of QEMU
targeting mingw32 with support for SDL/VNC enabled as well as being able
to execute the qemu* machines of oe-core/meta.

The following series fixes a number of issues with compilation of
certain components that are required to build and distribute QEMU. This
series includes:

 * Enabling 'secure-api' for mingw-w64-headers
 * Fix/enable building of shared libraries for gettext
 * Work around to avoid dependency on bash for glib-2.0, clean up of
   some glib-2.0 appends which are resolved in oe-core meta
 * Better packaging of libgcc for easy use on Windows (deploy dll to
   bindir)
 * Updating FILES_* to support locations for mingw32 output (bindir
   contains .dll) for libgcc, expat, libpcre, gettext, glib-2.0, libsdl,
   libgpg-error and libgcrypt
 * Addition of PACKAGECONFIG options to libsdl, and configuring of
   PACKAGECONFIG for libsdl, glib-2.0 and libgcrypt to handle Windows
   only features and or ability to disable features that do not support
   mingw32/Windows
 * Enabling build of libfdt in the dtc recipe, but skipping dtc itself
 * Fixes for configuring libgpg-error and libgcrypt when targeting
   mingw32

The intended build execution is to allow for 'buildtools-tarball' (or
any populate_sdk target with 'nativesdk-qemu' in TOOLCHAIN_HOST_TASK) to
create an output that includes all dependent nativesdk binaries as well
as a nativesdk QEMU binaries. This series does not however address
fixing the environment setup script or self-extracting installer shell
script that is normally provided by buildtools-tarball.

This series with the multiple oe-core/meta series was tested on the
following target Windows platforms: Windows 10 (64-bit), Windows 8.1
(64-bit) and Windows 7 SP1 (64-bit).

The changes were also tested on the following Linux build hosts: Debian
8 (64-bit), Ubuntu 16.04 (64-bit), CentOS 7 (64-bit).

For convenience this series is also available in the git repository:

  https://github.com/nathanrossi/meta-mingw nrossi/mingw-qemu-v2

This series partly depends on a set of series for oe-core/meta. The
following series are required for building of QEMU (but not all parts of
this series specifically), including dll packaging detection and
libgcrypt support:

  https://patchwork.openembedded.org/series/5049/
  https://patchwork.openembedded.org/series/5050/
  https://patchwork.openembedded.org/series/5051/
  https://patchwork.openembedded.org/series/5052/
  https://patchwork.openembedded.org/series/5053/

A branch which has the series above merged has been published to allow
for easy testing, it is available at:

  https://github.com/nathanrossi/openembedded-core testing/mingw-support-2017-01-30

---

Changes v2:
 * Moved a number of patches from oe-core series to this series
 * Updated cover letter to reflect series additional inclusion
 * Bring cover letter info from oe-core/meta series
 * Updated commit messages

Nathan Rossi (19):
  mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
  libgcc: Relocate and package dll's in bindir
  expat: Fix ${PN}-bin handling for .exe files
  libpcre: Handle shipping .exe and .dll files for mingw32
  gettext_0.19.%.bbappend: Fix/enable shared building of gettext
  gettext_0.19.%.bbappend: Handle packaging .dll's for mingw32
  gettext_0.19.%.bbappend: Handle gettext-libintl .dll packaging
  glib-2.0: Prevent a bash dependency via bash-completion
  glib-2.0: Disable libmount support for mingw32 targets
  glib-2.0: Handle packaging .dll and .exe files for mingw32
  glib-2.0: Clean up unnecessary appends that are resolved in oe-core
  dtc: Only build libfdt for mingw32
  libsdl: Windows specific PACKAGECONFIG
  libsdl: Fix ${PN}-bin handling for .exe files
  libgpg-error: Handle packaging .exe files
  libgpg-error_1.25.bbappend: Add patch to fix configure bug for mingw32
  libgcrypt: Handle packaging of .exe and .def files
  libgcrypt: Disable 'capabilities' for mingw32
  libgcrypt_1.7.3.bbappend: Add patch to fix configure bug for mingw32

 recipes-core/dtc/dtc_%.bbappend                    | 16 ++++++
 recipes-core/expat/expat_%.bbappend                |  3 +
 .../fix-gl_cv_prog_as_underscore-test.patch        | 67 ++++++++++++++++++++++
 recipes-core/gettext/gettext_0.19.%.bbappend       | 11 +++-
 recipes-core/glib-2.0/glib-2.0_%.bbappend          | 17 +++++-
 recipes-devtools/gcc/libgcc_%.bbappend             |  8 ++-
 .../mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb |  4 ++
 recipes-graphics/libsdl/libsdl_%.bbappend          |  9 +++
 ...c-Set-mym4_revision-to-0-if-not-a-git-rep.patch | 46 +++++++++++++++
 recipes-support/libgcrypt/libgcrypt_%.bbappend     | 11 ++++
 recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend |  6 ++
 ...c-Set-mym4_revision-to-0-if-not-a-git-rep.patch | 46 +++++++++++++++
 .../libgpg-error/libgpg-error_%.bbappend           |  3 +
 .../libgpg-error/libgpg-error_1.25.bbappend        |  6 ++
 recipes-support/libpcre/libpcre_%.bbappend         |  6 ++
 15 files changed, 255 insertions(+), 4 deletions(-)
 create mode 100644 recipes-core/dtc/dtc_%.bbappend
 create mode 100644 recipes-core/expat/expat_%.bbappend
 create mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
 create mode 100644 recipes-graphics/libsdl/libsdl_%.bbappend
 create mode 100644 recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
 create mode 100644 recipes-support/libgcrypt/libgcrypt_%.bbappend
 create mode 100644 recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend
 create mode 100644 recipes-support/libgpg-error/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
 create mode 100644 recipes-support/libgpg-error/libgpg-error_%.bbappend
 create mode 100644 recipes-support/libgpg-error/libgpg-error_1.25.bbappend
 create mode 100644 recipes-support/libpcre/libpcre_%.bbappend

-- 
2.11.0

