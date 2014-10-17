Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8537E007B9; Fri, 17 Oct 2014 07:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FCC6E0078E
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 07:51:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2014 07:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,739,1406617200"; d="scan'208";a="616124883"
Received: from pwarusav-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.1])
	by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2014 07:51:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Neuer User <auslands-kv@gmx.de>
Date: Fri, 17 Oct 2014 15:51:27 +0100
Message-ID: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.4-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <m1qpbo$lsa$1@ger.gmane.org>
References: <m1qpbo$lsa$1@ger.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Fri, 17 Oct 2014 14:51:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi there,

On Friday 17 October 2014 12:00:23 Neuer User wrote:
> Because of shellshock I decided to update my daisy repo to latest
> revision (old version was from about June).
> 
> Everybody know: "NEVER EVER CHANGE A RUNNING SYSTEM" :-)
> Well, I needed to because of shellshock. And now I need to try to repair
> everything that broke (currently at 7 packages).
> 
> One that I am completely stuck with is a custom recipe (which of course
> worked nicely before the repo sync). This is the recipe:
> 
> pyotherside.bb:
> ---------------
> SUMMARY = "Python3 bindings for Qt5"
> DESCRIPTION = "New framework for including python interpreter into Qt5 apps"
> HOMEPAGE = "http://thp.io/2011/pyotherside/"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
> PV = "1.3+git${SRCPV}"
> 
> SRCREV = "f870396346bec40b1bb64f95e27d4e3dafeda799"
> 
> SRC_URI = "git://github.com/thp/pyotherside.git;branch=master;protocol=git"
> 
> S = "${WORKDIR}/git/"
> 
> DEPENDS = "qtdeclarative python3 python3-native"
> RDEPENDS_${PN} = "qtdeclarative-qmlplugins"
> 
> inherit python3native
> 
> require recipes-qt/qt5/qt5.inc
> 
> 
> I did need to bbappend the original python3 recipe with this here (just
> the last part is changed), because python-config used python2.7 instead
> of 3.3:
> 
> python3-native_3.3.3.bbappend:
> ------------------------------
> do_install() {
>         install -d ${D}${libdir}/pkgconfig
>         oe_runmake 'DESTDIR=${D}' install
>         if [ -e ${WORKDIR}/sitecustomize.py ]; then
>                 install -m 0644 ${WORKDIR}/sitecustomize.py
> ${D}/${libdir}/python${PYTHON_MAJMIN}
>         fi
>         install -d ${D}${bindir}/${PN}
>         install -m 0755 Parser/pgen ${D}${bindir}/${PN}
> 
>         # Make sure we use /usr/bin/env python3
>         for PYTHSCRIPT in `grep -rIl ${bindir}/${PN}/python
> ${D}${bindir}/${PN}`; do
>                 sed -i -e '1s|^#!.*|#!/usr/bin/env python3|' $PYTHSCRIPT
>         done
> }
> 
> 
> Unfortunately, after upgrading daisy I get the following error during
> compilation:
> 
> In file included from ../../git/src/pyotherside_plugin.cpp:19:0:
> ../../git/src/qpython_priv.h:22:20: fatal error: Python.h: No such file
> or directory
>  #include "Python.h"
>                     ^
> compilation terminated.
> In file included from ../../git/src/qml_python_bridge.h:22:0,
>                  from ../../git/src/qpython.cpp:19:
> ../../git/src/pyobject_converter.h:24:20: fatal error: Python.h: No such
> file or directory
>  #include "Python.h"
>                     ^
> compilation terminated.
> make[1]: *** [pyotherside_plugin.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make[1]: *** [qpython.o] Error 1
> In file included from ../../git/src/qpython_imageprovider.cpp:19:0:
> ../../git/src/qpython_priv.h:22:20: fatal error: Python.h: No such file
> or directory
>  #include "Python.h"
>                     ^
> compilation terminated.
> In file included from ../../git/src/qml_python_bridge.h:22:0,
>                  from ../../git/src/qpython_priv.cpp:19:
> ../../git/src/pyobject_converter.h:24:20: fatal error: Python.h: No such
> file or directory
>  #include "Python.h"
>                     ^
> compilation terminated.
> make[1]: *** [qpython_priv.o] Error 1
> make[1]: *** [qpython_imageprovider.o] Error 1
> ../../git/src/global_libpython_loader.cpp:25:0: warning: "_GNU_SOURCE"
> redefined [enabled by default]
>  #define _GNU_SOURCE
>  ^
> <command-line>:0:0: note: this is the location of the previous definition
> ../../git/src/global_libpython_loader.cpp:31:12: warning: unused
> parameter 'size' [-Wunused-parameter]
>  static int load_python_globally_callback(struct dl_phdr_info *info,
> size_t size, void *data)
>             ^
> make[1]: Leaving directory
> `/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/py
> otherside/1.3+gitAUTOINC+f870396346-r0/build/src' make: ***
> [sub-src-make_first] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> 
> 
> Does anybody have any idea, why Python.h is no longer found?
> 
> $ find tmp/work -name "Python.h"
> tmp/work/i686-linux/python3-native/3.3.3-r0.0/sysroot-destdir/home/ubuntu/yo
> cto/build/tmp/sysroots/i686-linux/usr/include/python3.3m/Python.h
> tmp/work/i686-linux/python3-native/3.3.3-r0.0/Python-3.3.3/Include/Python.h
> tmp/work/i686-linux/python-native/2.7.3-r0.1/Python-2.7.3/Include/Python.h
> tmp/work/i686-linux/python-native/2.7.3-r0.1/image/home/ubuntu/yocto/build/
> tmp/sysroots/i686-linux/usr/include/python2.7/Python.h
> tmp/work/i686-linux/python-native/2.7.3-r0.1/sysroot-destdir/home/ubuntu/yo
> cto/build/tmp/sysroots/i686-linux/usr/include/python2.7/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r0.0/package/
> usr/include/python3.3m/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r0.0/sysroot-
> destdir/usr/include/python3.3m/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python3/3.3.3-r0.0/packages
> -split/python3-dev/usr/include/python3.3m/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/Python-2.
> 7.3/Include/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/package/u
> sr/include/python2.7/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/package/u
> sr/src/debug/python/2.7.3-r0.3/Python-2.7.3/Include/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/image/usr
> /include/python2.7/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/sysroot-d
> estdir/usr/include/python2.7/Python.h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/packages-
> split/python-dbg/usr/src/debug/python/2.7.3-r0.3/Python-2.7.3/Include/Python
> .h
> tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/python/2.7.3-r0.3/packages-
> split/python-dev/usr/include/python2.7/Python.h

I agree this sort of thing shouldn't happen on a stable branch. I'm not sure 
what would have caused such a problem though. However, above you are looking 
under tmp/work, but the file being present under there doesn't really say much 
- the key question is is it still in the sysroot i.e. tmp/sysroots/* ? The 
first thing to figure out is if the file is really missing, or if it is now 
simply not looking for it in the right location.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

