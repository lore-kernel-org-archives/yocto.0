Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30136E00F3A; Tue, 19 Apr 2016 10:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E34F7E00D1C
	for <yocto@lists.yoctoproject.org>;
	Tue, 19 Apr 2016 10:51:34 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Apr 2016 10:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,506,1455004800"; d="scan'208";a="962096605"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2016 10:51:28 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id A043A6A4007; Tue, 19 Apr 2016 11:39:04 -0700 (PDT)
Received: from 10.252.24.10 (SquirrelMail authenticated user alexander.kanavin)
	by linux.intel.com with HTTP; Tue, 19 Apr 2016 21:39:04 +0300 (EEST)
Message-ID: <54866.10.252.24.10.1461091144.squirrel@linux.intel.com>
Date: Tue, 19 Apr 2016 21:39:04 +0300 (EEST)
From: alexander.kanavin@linux.intel.com
To: yocto@lists.yoctoproject.org
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
References: 
In-Reply-To: 
Cc: paul.eggleton@linux.intel.com
Subject: gobject introspection release notes
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
X-List-Received-Date: Tue, 19 Apr 2016 17:51:39 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hello,

here is the information about gobject introspection that should be placed
to the release notes of the upcoming yocto release.

1. Introduction

This Yocto release adds support for generating and packaging GObject 
introspection data. GObject introspection data is a description of the API
provided by libraries built on top of GLib framework, and that framework's
GObject mechanism in particular. The data is generated when building such
a library, by linking the library with a small executable binary that 
asks the library to describe itself, then executing the binary and 
processing its output. Making this work in a cross-compilation environment
is difficult, because the library is produced for the target architecture,

but its code needs to be executed on the build host. This problem is 
solved in Yocto by running the code through Qemu emulator which allows 
precisely that, but unfortunately Qemu does not always work perfectly (see
known issues list below).

2. Why all this trouble?

GObject introspection is nowadays the standard mechanism for accessing
GObject-based software from runtime environments. If you want to construct

GStreamer pipelines using Python, or control UPnP infrastructure using 
Javascript and GUPnP, this is the only way to do it.

3. Where does generated introspection data go?

Gir files go to -dev packages, typelib files go to main packages
(they are packaged together with libraries that are introspected).

4. I don't need introspection data (or Qemu does not work on my
combination of build host and target architecture), how can I switch it  
off?

You have two options:
a) add
DISTRO_FEATURES_BACKFILL_CONSIDERED = "gobject-introspection-data" to your
distro configuration. This will disable building introspection data using
qemu, but will still enable building introspection tools and  libraries
(building them does not require the use of qemu).

b) add
MACHINE_FEATURES_BACKFILL_CONSIDERED = "qemu-usermode"
to your machine configuration. This will disable the use of qemu when 
building packages for your machine; at the moment this feature is
used only by introspection recipes and has the same effect as option a), 
but in the future there may be other features that this affects.

If introspection data is disabled, it can still be obtained through other 
means (for example, by copying the data from a suitable sysroot, or 
generating it on the target hardware). Yocto currently does not provide 
specific support for these techniques.

5. How do I enable generating introspection data in my library package?
(variant: I have a library that no longer builds against latest Yocto  
release, and build process prints introspection related errors, how to fix
it?)

a. Inherit gobject-introspection class.

b. Make sure introspection is not disabled anywhere in the recipe or its
includes. Also, make sure that 'gobject-introspection-data' is neither

in DISTRO_FEATURES_BACKFILL_CONSIDERED, and 'qemu-usermode is not in 
MACHINE_FEATURES_BACKFILL_CONSIDERED, or nothing will happen.

c. Try to build the recipe; if this results in build errors that look like
something is unable to find .so libraries, check where these
libraries
are in the source tree and add GIR_EXTRA_LIBS_PATH=${B}/something/.libs to
the recipe (look at recipes in oe-core which have that variable for a 
template).

c. Any other errors probably mean that introspection support in a package
is not entirely standard, and breaks down in a cross-compilation
environment. Custom-made fixing is needed then - please come to the yocto 
mailing list for help.

6. How do I test that introspection works in an image?

a. Make sure that 'gobject-introspection-data' is not in
DISTRO_FEATURES_BACKFILL_CONSIDERED and 'qemu-usermode' is not in
MACHINE_FEATURES_BACKFILL_CONSIDERED.

b. Build core-image-sato.

c. Start terminal, start python in the terminal.

d. Type out something like:

>>> from gi.repository import GLib
>>> GLib.get_host_name()

e. Also, try something more advanced, for example:
http://python-gtk-3-tutorial.readthedocs.org/en/latest/introduction.html

7. Known issues:

- qemu-ppc64 crashes out immediately; so introspection data
cannot be built on that architecture

- x32 is not supported by qemu; therefore introspection data is disabled
there.

- musl is causing transient glib binaries to crash on assertion failures,
so generating introspection data is disabled there as well

- introspection is disabled for some specific packages under specific
arhcitectures (such as gcr, libsecret, webkit), because qemu is not able 
to run the binaries correctly


Thanks,
Alex


