Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8344AE0084F; Tue, 23 Sep 2014 11:12:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C33BE00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 11:12:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Sep 2014 11:12:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="604191102"
Received: from curranmi-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.194])
	by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2014 11:11:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Tue, 23 Sep 2014 19:11:58 +0100
Message-ID: <2336754.PRSm2CVh32@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD8728275@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<70578361.4Gz1RoikmA@peggleto-mobl5.ger.corp.intel.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FD8728275@MSXBEBVT12.planar.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 18:12:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 September 2014 10:57:21 Matt Schuckmann wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Tuesday, September 23, 2014 10:26 AM
> > To: Matt Schuckmann
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] How to include static library and headers in sdk
> > 
> > On Tuesday 23 September 2014 10:21:44 Matt Schuckmann wrote:
> > > > -----Original Message-----
> > > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > > Sent: Tuesday, September 23, 2014 9:54 AM
> > > > To: Matt Schuckmann
> > > > Cc: yocto@yoctoproject.org
> > > > Subject: Re: [yocto] How to include static library and headers in
> > > > sdk
> > > > 
> > > > On Tuesday 23 September 2014 09:43:55 Matt Schuckmann wrote:
> > > > > > -----Original Message-----
> > > > > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > > > > Sent: Tuesday, September 23, 2014 2:10 AM
> > > > > > To: Matt Schuckmann
> > > > > > Cc: yocto@yoctoproject.org
> > > > > > Subject: Re: [yocto] How to include static library and headers
> > > > > > in sdk
> > > > > > 
> > > > > > On Monday 22 September 2014 18:57:03 Matt Schuckmann wrote:
> > > > > > > I've got a custom image and 2 custom recipes both very simple
> > > > > > > libraries that use cmake. I included the libraries into my
> > > > > > > image by adding EXTRA_IMAGEDEPENDS += "simple1"
> > > > > > > EXTRA_IMAGEDEPENDS += "simple2"
> > > > > > > To my image recipe.
> > > > > > 
> > > > > > Except this doesn't actually add those things into your image,
> > > > > > it only ensures they are built alongside it. To actually add
> > > > > > them to the image
> > > > > 
> > > > > > you need to ensure you add them to IMAGE_INSTALL; see:
> > > > > If I add my simple1 and simple2 recipes to IMAGE_INSTALL I get
> > 
> > the
> > 
> > > > > following error in the do_rootfs task: * opkg_install_cmd: Cannot
> > > > > install package simple1.
> > > > > 
> > > > > I assumed that this is because there really is nothing to install
> > > > > in the image as this is a static library with nothing that should
> > > > > go in
> > > > 
> > > > the image.
> > > > 
> > > > > > http://www.yoctoproject.org/docs/current/dev-manual/dev-> >
> > > > > > manual.html#usingpoky-extend-customimage
> > > > > > 
> > > > > > > When I build my image (i.e. bitbake custom-image ) I can see
> > > > > > > that the library header files and .a files are placed in the
> > > > > > > correct place in the sysroot directory.
> > > > > > > 
> > > > > > > However when I try to create an sdk (i.e. bitbake custom-
> > 
> > image
> > 
> > > > > > > -c
> > > > > > > populate_sdk) and then install the SDK the headers and .a
> > > > > > > files are nowhere to be found in the installed sysroot.
> > > > > > 
> > > > > > If you want all -staticdev packages in the SDK for the
> > 
> > libraries
> > 
> > > > > > in your image, add the following to your local.conf (or the
> > > > > > image recipe,
> > > > > > 
> > > > > > doesn't matter which):
> > > > > >  SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs staticdev-pkgs"
> > > > > > 
> > > > > > If you want a single staticdev package in the SDK you'd need to
> > > > > > add the
> > > > > > 
> > > > > > following instead:
> > > > > >  TOOLCHAIN_HOST_TASK_append = " simple1-staticdev"
> > > > > 
> > > > > Again if I try adding this to my image recipe I get a similar
> > > > > error
> > > > > * opkg_install_cmd: Cannot install package simple1-staticdev.
> > > > > 
> > > > > For reference here is my simple1 recipe, maybe I'm missing
> > > > > something in there.
> > > > > 
> > > > > DESCRIPTION = "Simple library 1."
> > > > > LICENSE = "CLOSED"
> > > > > LIC_FILES_CHKSUM = ""
> > > > > 
> > > > > SRC_URI =
> > 
> > "git://git@gitlab.work.net/libs/simple1.git;protocol=ssh"
> > 
> > > > > SRCREV = "${AUTOREV}"
> > > > > 
> > > > > S = "${WORKDIR}/git"
> > > > > 
> > > > > inherit pkgconfig cmake
> > > > 
> > > > So is your recipe actually producing any packages at all? i.e. are
> > > > any of the directories under packages-split within the workdir for
> > > > the recipe non-empty?
> > > > At the moment it looks like it isn't producing anything.
> > > 
> > > Yes the simple1-dev directory contains the include files and the
> > > library file under usr/include and usr/lib respectively. The
> > > simple1-staticdev directory contains only the library file under
> > 
> > usr/lib.
> > 
> > > My understanding, limited as it is, is that the cmake class handles
> > > identifying what goes in what package automagicaly assuming some
> > 
> > basic
> > 
> > > conventions about where things get installed. Note if I run: bitbake
> > > -e
> > > simple1
> > > and search for FILES_simple1-staticdev I find:
> > > # $FILES_simple1-staticdev
> > > #   rename from FILES_${PN}-staticdev data.py:170 [expandKeys]
> > > FILES_simple1-staticdev="/usr/lib/*.a /lib/*.a /usr/lib/simple1/*.a"
> > > 
> > > Or search for FILES_simple1-dev
> > > #
> > > # $FILES_simple1-dev
> > > #   rename from FILES_${PN}-dev data.py:170 [expandKeys]
> > > #     "${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o
> > > ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal
> > > ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la"
> > > FILES_jsoncpp-dev="/usr/include /lib/lib*.so /usr/lib/lib*.so
> > > /usr/lib/*.la /usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig
> > > /usr/share/aclocal /lib/*.o /usr/lib/simple1/*.la /lib/*.la"
> > > 
> > > If my understanding is wrong then that's totally understandable as
> > 
> > I'm
> > 
> > > new to this as there really isn't much of any documentation on how
> > 
> > the
> > 
> > > cmake class works.
> > 
> > That sounds correct to me.
> > 
> > Actually I realised I made a mistake above that might explain why the
> > second suggestion didn't work as expected. I think you need to add to
> > 
> > TOOLCHAIN_TARGET_TASK rather than TOOLCHAIN_HOST_TASK i.e.:
> >  TOOLCHAIN_TARGET_TASK_append = " simple1-staticdev"
> > 
> > Try that and see if it works.
> > 
> > Cheers,
> > Paul
> 
> Ya I noticed that it might need to be TOOLCHAIN_TARGET_TASK instead of
> TOOLCHAIN_HOST_TASK. When I try that I get almost the same error, now it's:
> * satisfy_dependencies_for: Cannot satisfy the following dependencies for
> simple1-dev: * 	simple1 (= 0.7.0-r0) *
> * opkg_install_cmd: Cannot install package simple1-dev.
> 
> Notice that my simple1 recipe file is called simple1_0.7.0.bb, I don't know
> what dependency it can't resolve.
> 
> If I open up the simple-dev_0.7.0-r0_cortexa8t2hf-vfp-neon.ipk file and
> inspect the control file I can see a Depends line like so: Depends: simple1
> (= 0.7.0-r0)
> 
> I'm not sure if this has anything to do with it.

So the way our system works, we assume that a recipe will have a main package 
and in the case of a library that that will contain the actual library file; 
the dev package just contains headers and the non-versioned symlink to the 
library. Thus if you install the -dev package, it's assumed it won't be of any 
use unless you install the main package, hence the hard dependency. Also, the 
-staticdev package depends upon the -dev package. However, if the main package 
is empty, it won't be produced at all, but the -dev package still depends upon 
it and you'll get the error above. If all you want to do is ship a static .a 
file in the -staticdev package and you're never going to have a main package, 
probably the thing to do is just drop the dependency on the main package, by 
adding the following to your recipe:

RDEPENDS_${PN}-dev = ""

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

