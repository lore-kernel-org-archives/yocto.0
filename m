Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 996BBE009CF; Mon, 30 Jan 2017 00:44:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A668AE007AD
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:31 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id u25so121528543qki.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=44ptKBobQ299Lky7LFjR1w8oiZtKqetgAuczpJEiieY=;
	b=FAZt51x0OY4jy9cDQIxOCvJxJJGBObakPAGbFuFGfAWuObPQR+cgqsGle/mGd7Pcu6
	Q91Gi0kME8fqv2eJIub3ONqpf7sX+bvCf5HbYWGJVX9KD8aREtie/kEsaW3RY9Vs76pU
	JNsNQGFJCRKGK7LajWeTUJO43xomypWLqjFUEG50p0JRuJkRNOlrZbncUbtGsggdK4B5
	KNs57Ux2HOIi6fiZ1haK3QYkUrQoHDtTRT/ejoUVXZHO67BSV8+abvcFcWzYMR5fRfI1
	R6olb2u8GWjlfyYjdVlOWRGiZIO70zzr+7/xgXtOv9weF9b6RpQwyxEedjoEoHX2kfk2
	NkQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=44ptKBobQ299Lky7LFjR1w8oiZtKqetgAuczpJEiieY=;
	b=pJ2h+hnHmKhudVWDAQQx0qFZcYSckztqcNs2SQxLuGp9MV4LQFGd0ulhT/R0oVzElW
	1AQ5SlhvvE+GHJ90lshvjT1Hq/7iW4XfzeMgiZTIKlm1kL5sZJoDcwV4ep0nh00qzOtS
	XvxmpVLSN5rCGlpK94t7mGzDHYVgcSVYpGqgu2SQU6mjOFfPmcm3GVWHJYIMySBvLCND
	iL/O/1EpnMTpJvrzUwavlrvuQEy4kHHRb2MEa6cnSm8jv5mNONMRXi5JvJ0XbdnqQPiJ
	ipEVMoeE4SUboTqTNTJJMeok+upB2Z9KrAjjSe9ZWvu05JzEjzyw0mK0NTxg88A6mNzu
	iVEQ==
X-Gm-Message-State: AIkVDXKeiz5SmNgxaUnXoM4e0Oy/5mP6/Nw0bIR6t4fGwGf81qjAEr7escTOsVnjqZLa6/KeMTzhHt6B3ZNbgw==
X-Received: by 10.55.10.131 with SMTP id 125mr22273471qkk.257.1485765870374;
	Mon, 30 Jan 2017 00:44:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.137.175 with HTTP; Mon, 30 Jan 2017 00:44:29 -0800 (PST)
In-Reply-To: <20170130084124.10596-0-nathan@nathanrossi.com>
References: <20170130084124.10596-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Mon, 30 Jan 2017 18:44:29 +1000
Message-ID: <CA+aJhH1baVs2LyyAmobCrWTVzRa5LsmDjaKDu4kuJ2neSRvOyQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Alistair Francis <alistai@xilinx.com>
Subject: Re: [meta-mingw][PATCH 0/19] Adding support for building QEMU for Windows
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:48 -0000
Content-Type: text/plain; charset=UTF-8

Sorry this should have v2 in the subject. I realized just as the
second patch was sent. I've resent with v2 for clarity.

Regards,
Nathan

On 30 January 2017 at 18:41, Nathan Rossi <nathan@nathanrossi.com> wrote:
> This series enables a number of packages and dependencies to be built
> for mingw32. The goal is to enable the building and packaging of QEMU
> targeting mingw32 with support for SDL/VNC enabled as well as being able
> to execute the qemu* machines of oe-core/meta.
>
> The following series fixes a number of issues with compilation of
> certain components that are required to build and distribute QEMU. This
> series includes:
>
>  * Enabling 'secure-api' for mingw-w64-headers
>  * Fix/enable building of shared libraries for gettext
>  * Work around to avoid dependency on bash for glib-2.0, clean up of
>    some glib-2.0 appends which are resolved in oe-core meta
>  * Better packaging of libgcc for easy use on Windows (deploy dll to
>    bindir)
>  * Updating FILES_* to support locations for mingw32 output (bindir
>    contains .dll) for libgcc, expat, libpcre, gettext, glib-2.0, libsdl,
>    libgpg-error and libgcrypt
>  * Addition of PACKAGECONFIG options to libsdl, and configuring of
>    PACKAGECONFIG for libsdl, glib-2.0 and libgcrypt to handle Windows
>    only features and or ability to disable features that do not support
>    mingw32/Windows
>  * Enabling build of libfdt in the dtc recipe, but skipping dtc itself
>  * Fixes for configuring libgpg-error and libgcrypt when targeting
>    mingw32
>
> The intended build execution is to allow for 'buildtools-tarball' (or
> any populate_sdk target with 'nativesdk-qemu' in TOOLCHAIN_HOST_TASK) to
> create an output that includes all dependent nativesdk binaries as well
> as a nativesdk QEMU binaries. This series does not however address
> fixing the environment setup script or self-extracting installer shell
> script that is normally provided by buildtools-tarball.
>
> This series with the multiple oe-core/meta series was tested on the
> following target Windows platforms: Windows 10 (64-bit), Windows 8.1
> (64-bit) and Windows 7 SP1 (64-bit).
>
> The changes were also tested on the following Linux build hosts: Debian
> 8 (64-bit), Ubuntu 16.04 (64-bit), CentOS 7 (64-bit).
>
> For convenience this series is also available in the git repository:
>
>   https://github.com/nathanrossi/meta-mingw nrossi/mingw-qemu-v2
>
> This series partly depends on a set of series for oe-core/meta. The
> following series are required for building of QEMU (but not all parts of
> this series specifically), including dll packaging detection and
> libgcrypt support:
>
>   https://patchwork.openembedded.org/series/5049/
>   https://patchwork.openembedded.org/series/5050/
>   https://patchwork.openembedded.org/series/5051/
>   https://patchwork.openembedded.org/series/5052/
>   https://patchwork.openembedded.org/series/5053/
>
> A branch which has the series above merged has been published to allow
> for easy testing, it is available at:
>
>   https://github.com/nathanrossi/openembedded-core testing/mingw-support-2017-01-30
>
> ---
>
> Changes v2:
>  * Moved a number of patches from oe-core series to this series
>  * Updated cover letter to reflect series additional inclusion
>  * Bring cover letter info from oe-core/meta series
>  * Updated commit messages
>
> Nathan Rossi (19):
>   mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
>   libgcc: Relocate and package dll's in bindir
>   expat: Fix ${PN}-bin handling for .exe files
>   libpcre: Handle shipping .exe and .dll files for mingw32
>   gettext_0.19.%.bbappend: Fix/enable shared building of gettext
>   gettext_0.19.%.bbappend: Handle packaging .dll's for mingw32
>   gettext_0.19.%.bbappend: Handle gettext-libintl .dll packaging
>   glib-2.0: Prevent a bash dependency via bash-completion
>   glib-2.0: Disable libmount support for mingw32 targets
>   glib-2.0: Handle packaging .dll and .exe files for mingw32
>   glib-2.0: Clean up unnecessary appends that are resolved in oe-core
>   dtc: Only build libfdt for mingw32
>   libsdl: Windows specific PACKAGECONFIG
>   libsdl: Fix ${PN}-bin handling for .exe files
>   libgpg-error: Handle packaging .exe files
>   libgpg-error_1.25.bbappend: Add patch to fix configure bug for mingw32
>   libgcrypt: Handle packaging of .exe and .def files
>   libgcrypt: Disable 'capabilities' for mingw32
>   libgcrypt_1.7.3.bbappend: Add patch to fix configure bug for mingw32
>
>  recipes-core/dtc/dtc_%.bbappend                    | 16 ++++++
>  recipes-core/expat/expat_%.bbappend                |  3 +
>  .../fix-gl_cv_prog_as_underscore-test.patch        | 67 ++++++++++++++++++++++
>  recipes-core/gettext/gettext_0.19.%.bbappend       | 11 +++-
>  recipes-core/glib-2.0/glib-2.0_%.bbappend          | 17 +++++-
>  recipes-devtools/gcc/libgcc_%.bbappend             |  8 ++-
>  .../mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb |  4 ++
>  recipes-graphics/libsdl/libsdl_%.bbappend          |  9 +++
>  ...c-Set-mym4_revision-to-0-if-not-a-git-rep.patch | 46 +++++++++++++++
>  recipes-support/libgcrypt/libgcrypt_%.bbappend     | 11 ++++
>  recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend |  6 ++
>  ...c-Set-mym4_revision-to-0-if-not-a-git-rep.patch | 46 +++++++++++++++
>  .../libgpg-error/libgpg-error_%.bbappend           |  3 +
>  .../libgpg-error/libgpg-error_1.25.bbappend        |  6 ++
>  recipes-support/libpcre/libpcre_%.bbappend         |  6 ++
>  15 files changed, 255 insertions(+), 4 deletions(-)
>  create mode 100644 recipes-core/dtc/dtc_%.bbappend
>  create mode 100644 recipes-core/expat/expat_%.bbappend
>  create mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
>  create mode 100644 recipes-graphics/libsdl/libsdl_%.bbappend
>  create mode 100644 recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
>  create mode 100644 recipes-support/libgcrypt/libgcrypt_%.bbappend
>  create mode 100644 recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend
>  create mode 100644 recipes-support/libgpg-error/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
>  create mode 100644 recipes-support/libgpg-error/libgpg-error_%.bbappend
>  create mode 100644 recipes-support/libgpg-error/libgpg-error_1.25.bbappend
>  create mode 100644 recipes-support/libpcre/libpcre_%.bbappend
>
> --
> 2.11.0

