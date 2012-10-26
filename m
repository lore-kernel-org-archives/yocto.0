Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C457E003D7
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 17:07:26 -0700 (PDT)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 25 Oct 2012 17:06:57 -0700
Received: by mail-ia0-f200.google.com with SMTP id k20so3945127iak.11
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 17:07:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=ARdTo/VNdlACY13lzGBWx/mPnmkwSGUXJqXZ4SbRPzY=;
	b=GkG7CRyRXXU/bBdlvVcb5XzX3IBeUfwBzqkIudrCKjntgrlasYN2Tx5ttmqTt32ES6
	62Ai+uKGm88dOG9Oyug+4/nX8SnVe5BZh27zsEQy4lIfFPVjSB5dkOIP9BO38QysqPQC
	G1kGGfD9rjVMS2gf/M/V6vFcHx1g4XnUgtzWBmpanJ4U4opH4U8WudtvFnUBklFkblCa
	FuQM3MR5ZHVemN8JwaXJxyNyuYQP0VThb94+a7cqSzTPhE729F+atigjG5deW1Rb0xmW
	tYW4U2/K1P8Dp6+y/+Z32gO8GDRCc8t/Uh7/8zzTNtfDU+HZztk2XrI5UbK4lGhdE87w
	oF9A==
Received: by 10.42.80.207 with SMTP id w15mr17888580ick.40.1351210044743;
	Thu, 25 Oct 2012 17:07:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.42.80.207 with SMTP id w15mr17888577ick.40.1351210044643; Thu,
	25 Oct 2012 17:07:24 -0700 (PDT)
Received: by 10.64.147.10 with HTTP; Thu, 25 Oct 2012 17:07:24 -0700 (PDT)
Date: Thu, 25 Oct 2012 17:07:24 -0700
Message-ID: <CAPhnLPB0PwmBGauHYXLr-3iu+dxpXuRdQRWX6d7MZc9Rd6QLEQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlWEUykN8th+9EPpxeSNTaAkn8PQ2ryobSHiDNlCJLmznHzQZMJ4PAtM3LnYrGLqXuYdx0c4iJcJWCR8B32w6fTA70OcpbwKwWf+SykArehL9wWMlvl4/SmSHAZfc0LhymomQuNpKGpFx5wDHijq9Z6Djsy3Q==
Subject: [ANNOUNCEMENT] Yocto Project 1.3 "danny" Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Oct 2012 00:07:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The latest major release of the Yocto Project, 1.3 "danny", is now
available for download at:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-danny-8.0.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.3/poky-danny-8.0.tar.bz2

Improvements over the last 6 months include:

    - A new terminal based UI, knotty 2, that avoids burying any warnings
      and indicates parallelism
    - A relocatable SDK
    - Hob usability improvements
    - Upgraded gcc, eglibc, and kernel
    - Over 500 bugs fixed

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Beth Flanagan
Yocto Project Build and Release

- --------------------
yocto-1.3 Errata
- --------------------

Release Name: poky-danny-8.0
Branch      : danny
Tag         :  1.3
Hash        :  27af23e65f63b41962a7cfddba9e9372d5212396
md5         :  b61c39b96d02d98c07a826abdf79f06d

Download Locations:
            http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/poky-danny-8.0.tar.bz2
            http://mirrors.kernel.org/yocto/yocto/yocto-1.3/poky-danny-8.0.tar.bz2

Release Name: eclipse-poky-danny-8.0
Branch      :  danny
Tag         :  1.3
Hash        :  cb8a0eff776d2cbd1b5f596a94dce825860574ab
md5         :  cea2b89dd7f8df32399199239a518e03

Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/eclipse-poky-danny-8.0.tar.bz2
    http://mirrors.kernel.org/yocto/yocto/yocto-1.3/eclipse-poky-danny-8.0.tar.bz2

Release Name: meta-qt3-danny-8.0
Branch      :  danny
Tag         :  1.3
Hash        :  c86fb1727ae09526c442ec29fffde3f010aa70eb
md5         :  74e5d782e36a0a720f01f287d28f5984
Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/meta-qt3-danny-8.0.tar.bz2
    http://mirrors.kernel.org/yocto/yocto/yocto-1.3/meta-qt3-danny-8.0.tar.bz2

Release Name: yocto-autobuilder-danny-8.0
Branch      :  danny
Tag         :  1.3
Hash        :  2fe295ebc00f9661e47702bf9dc392a3826f5469
md5         :  3719e4a7e4f5ce58bb14b77c966814e4

Download Locations:
    http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/yocto-autobuilder-danny-8.0.tar.bz2
    http://mirrors.kernel.org/yocto/yocto/yocto-1.3/yocto-autobuilder-danny-8.0.tar.bz2

- --------------------
Features
- --------------------
- - Improved terminal UI, which makes it easy to see the tasks that are
  currently executing, and avoids burying any warnings that are printed
- - Eliminated intermediate step when building cross compiler toolchain
- - Relocatable SDK
- - Large number of usability improvements in the Hob image building UI
- - Upgraded eglibc to version 2.16
- - Upgraded gcc to version 4.7
- - upgraded Linux kernel version to 3.4.11
- - Added yocto-bsp script for automating the initial parts of
creating a new BSP
- - Python functions now consistently use four spaces for indentation -
  no more having to try to match the mix of tabs and spaces in your
  recipes
- - Disabled sharing shared state between machines using different
  distros by default to avoid glibc version problems
- - qemu-native can now be built on host systems without X11 (i.e. for
  console use only)
- - Enabled python and perl scripting for perf as well as text-mode UI
- - Added ability to produce a companion SDK together with an image
- - Allow forced rebuilds of a recipe (new -C and improved -f options)
- - Enabled EFI in grub installer
- - Release of the J.A.R.V.I.S. reference layer at
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-jarvis/
- - Mesa can now provide GLES accelerated graphics without X11 (through EGL)
- - Added script for producing "bootcharts" from buildstats so you can
  see the timeline of the build
- - Checksums for local files referred to in SRC_URI are now included in
  task signatures so that changing their contents causes the relevant
  tasks to be re-executed
- - Extended bitbake-diffsigs to look up signature files from task and
  recipe name, and trace back recursively through dependent task changes
- - Moved from module-init-tools to kmod
- - Added create-recipe script to automate some of the parts of creating
  a brand new recipe
- - Buildhistory improvements: better performance, track postinst/postrm scripts
- - Added bin_package bbclass for recipes that package pre-built binaries
- - Added doc-pkgs IMAGE_FEATURES feature to install all documentation
- - Added class-* overrides - particularly useful for
  target/cross/crosssdk but works with all classes
- - Reference hardware BSPs are now separate from Poky reference distro
  configuration
- - nativesdk is now a prefix rather than a suffix, greatly simplifying
  packaging in nativesdk recipes
- - Detections and warnings when files in the sysroot are potentially
  written to by multiple recipes
- - Automatic launching of "screen" within terminal for devshell/patch
resolution
- - task-* recipes renamed to packagegroup-* and tidied up significantly
- - Improved mirror handling - allow mirrors of mirrors; handle errors
  more gracefully
- - Reduced dependencies between debugging symbol packages
- - Significant cleanup of X server recipes
- - Added beginnings of a regression test suite for BitBake
- - Numerous improvements and fixes to documentation and others,
  upgrades to recipes and packages.
- - The first major release of the yocto-autobuilder source.
- - Eclipse plug-in upgraded to Juno and remote target operations support
  connections over both tcf and/or ssh.
- - Improved bitbake commander plugin.

- --------------------
Migration issues
- --------------------
See: The "Migrating to a New Yocto Project Release" section in the
     Yocto Project Reference Manual at
     http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#migration

See: https://wiki.yoctoproject.org/wiki/Yocto_Project_1.3_Migration_notes

- --------------------
Know Issues
- --------------------
The lttng support in Yocto 1.3 (danny) is broken. The workaround for
this problem is to apply a couple small patch fixes that didn't make it
into this release to your local poky metadata.

Please see the LTTng section of the Yocto Tracing and Profiling wiki
page, which can be found under the Projects | Tracing and Profiling
section of the Yocto wiki:

https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling

- --------------------
Open Bugs
- --------------------
* 3176       Hob shows layer misconfiguration error after deleting
             meta-yocto layer
* 2694       [QEMU-X86_64]zypper refresh fail
* 3243       Using debian packaging with build-appliance fails due to
             missing perl module
* 3287       Broken GL on qemux86/qemux86-64
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQib+4AAoJEEyK+E/MEkQPeAEIAKQ3BpUCI0Za46dkMVNfqTyg
q7syEsq/p6kZP3i16E6bii5lNZmHpX/2CWCv45acEgzgunG/DL9QEf7FsbWucFef
IpRVnc4c+D/LFHw+lluG626Pga3/ASEGvFJLYXPaVPZw6er4sb4vHOXyg51adbf4
qovR0saIFtmWRukxYA7zTxbUxBE75Z3OGRZPpKkUpTbaJrEgidjGODW08lEPFYCw
iaq/d8DguGxlALY6p/q08jtfwWpvyriIlA0urw1LkqjYAYSd+B1+1TDEAO2gw0ez
PElvz6KJzVpcGTlxsGZuDlzQVjeL0rnfw7eObFtX25MfL0RvEAKj2VkW8q9Ba5s=
=qMPf
-----END PGP SIGNATURE-----

