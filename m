Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADA67E0084F; Tue, 23 Sep 2014 10:38:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1400E00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:38:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Sep 2014 10:26:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="595717150"
Received: from curranmi-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.194])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2014 10:26:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Tue, 23 Sep 2014 18:26:01 +0100
Message-ID: <70578361.4Gz1RoikmA@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.16.2-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD8728262@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<156836059.zJCsOPYVjU@peggleto-mobl5.ger.corp.intel.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FD8728262@MSXBEBVT12.planar.net>
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
X-List-Received-Date: Tue, 23 Sep 2014 17:38:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 September 2014 10:21:44 Matt Schuckmann wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Tuesday, September 23, 2014 9:54 AM
> > To: Matt Schuckmann
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] How to include static library and headers in sdk
> > 
> > On Tuesday 23 September 2014 09:43:55 Matt Schuckmann wrote:
> > > > -----Original Message-----
> > > > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > > > Sent: Tuesday, September 23, 2014 2:10 AM
> > > > To: Matt Schuckmann
> > > > Cc: yocto@yoctoproject.org
> > > > Subject: Re: [yocto] How to include static library and headers in
> > > > sdk
> > > > 
> > > > On Monday 22 September 2014 18:57:03 Matt Schuckmann wrote:
> > > > > I've got a custom image and 2 custom recipes both very simple
> > > > > libraries that use cmake. I included the libraries into my image
> > > > > by adding EXTRA_IMAGEDEPENDS += "simple1"
> > > > > EXTRA_IMAGEDEPENDS += "simple2"
> > > > > To my image recipe.
> > > > 
> > > > Except this doesn't actually add those things into your image, it
> > > > only ensures they are built alongside it. To actually add them to
> > > > the image
> > > 
> > > > you need to ensure you add them to IMAGE_INSTALL; see:
> > > If I add my simple1 and simple2 recipes to IMAGE_INSTALL I get the
> > > following error in the do_rootfs task: * opkg_install_cmd: Cannot
> > > install package simple1.
> > > 
> > > I assumed that this is because there really is nothing to install in
> > > the image as this is a static library with nothing that should go in
> > 
> > the image.
> > 
> > > > http://www.yoctoproject.org/docs/current/dev-manual/dev-> >
> > > > manual.html#usingpoky-extend-customimage
> > > > 
> > > > > When I build my image (i.e. bitbake custom-image ) I can see that
> > > > > the library header files and .a files are placed in the correct
> > > > > place in the sysroot directory.
> > > > > 
> > > > > However when I try to create an sdk (i.e. bitbake custom-image -c
> > > > > populate_sdk) and then install the SDK the headers and .a files
> > > > > are nowhere to be found in the installed sysroot.
> > > > 
> > > > If you want all -staticdev packages in the SDK for the libraries in
> > > > your image, add the following to your local.conf (or the image
> > > > recipe,
> > > > 
> > > > doesn't matter which):
> > > >  SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs staticdev-pkgs"
> > > > 
> > > > If you want a single staticdev package in the SDK you'd need to add
> > > > the
> > > > 
> > > > following instead:
> > > >  TOOLCHAIN_HOST_TASK_append = " simple1-staticdev"
> > > 
> > > Again if I try adding this to my image recipe I get a similar error
> > > * opkg_install_cmd: Cannot install package simple1-staticdev.
> > > 
> > > For reference here is my simple1 recipe, maybe I'm missing something
> > > in there.
> > > 
> > > DESCRIPTION = "Simple library 1."
> > > LICENSE = "CLOSED"
> > > LIC_FILES_CHKSUM = ""
> > > 
> > > SRC_URI = "git://git@gitlab.work.net/libs/simple1.git;protocol=ssh"
> > > SRCREV = "${AUTOREV}"
> > > 
> > > S = "${WORKDIR}/git"
> > > 
> > > inherit pkgconfig cmake
> > 
> > So is your recipe actually producing any packages at all? i.e. are any
> > of the directories under packages-split within the workdir for the
> > recipe non-empty?
> > At the moment it looks like it isn't producing anything.
> 
> Yes the simple1-dev directory contains the include files and the library
> file under usr/include and usr/lib respectively. The simple1-staticdev
> directory contains only the library file under usr/lib.
> 
> My understanding, limited as it is, is that the cmake class handles
> identifying what goes in what package automagicaly assuming some basic
> conventions about where things get installed. Note if I run: bitbake -e
> simple1
> and search for FILES_simple1-staticdev I find:
> # $FILES_simple1-staticdev
> #   rename from FILES_${PN}-staticdev data.py:170 [expandKeys]
> FILES_simple1-staticdev="/usr/lib/*.a /lib/*.a /usr/lib/simple1/*.a"
> 
> Or search for FILES_simple1-dev
> #
> # $FILES_simple1-dev
> #   rename from FILES_${PN}-dev data.py:170 [expandKeys]
> #     "${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o
> ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal
> ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la"
> FILES_jsoncpp-dev="/usr/include /lib/lib*.so /usr/lib/lib*.so /usr/lib/*.la
> /usr/lib/*.o /usr/lib/pkgconfig /usr/share/pkgconfig /usr/share/aclocal
> /lib/*.o /usr/lib/simple1/*.la /lib/*.la"
> 
> If my understanding is wrong then that's totally understandable as I'm new
> to this as there really isn't much of any documentation on how the cmake
> class works.

That sounds correct to me.

Actually I realised I made a mistake above that might explain why the second 
suggestion didn't work as expected. I think you need to add to 
TOOLCHAIN_TARGET_TASK rather than TOOLCHAIN_HOST_TASK i.e.:

 TOOLCHAIN_TARGET_TASK_append = " simple1-staticdev"

Try that and see if it works.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

