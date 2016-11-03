Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06533E0074B; Thu,  3 Nov 2016 13:54:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F456E0050B
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:54:12 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 03 Nov 2016 13:54:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,440,1473145200"; d="scan'208";a="27264720"
Received: from bkarakos-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.187.65])
	by orsmga005.jf.intel.com with ESMTP; 03 Nov 2016 13:54:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Swapna.Gurumani@microchip.com
Date: Fri, 04 Nov 2016 09:54:08 +1300
Message-ID: <13817639.9cDx3fPmhy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE791C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE791C@CHN-SV-EXMX05.mchp-main.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Thu, 03 Nov 2016 20:54:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wed, 02 Nov 2016 20:17:11 Swapna.Gurumani@microchip.com wrote:
> > In any case, when debugging situations like this it helps to make a fresh
> > start - run "bitbake -c clean crank" (you don't need -c cleansstate
> > because being stuck at do_install you haven't got to any real sstate tasks
> > yet). Then methodically run through each task - when do_unpack ran what
> > got unpacked into ${WORKDIR}? If that's as expected, what got put into
> > ${D} (which is the "image" subdirectory under ${WORKDIR})? Does what's in
> > ${D} match up with the layout you expect to be on the target? At any time
> > you can use "bitbake -e crank | less" to inspect the value of variables.
> > You can also see exactly what commands got run within the task by looking
> > at the run.do_* files under "temp" in the workdir.
>
> ANSWER >> All this looks good. The run.do* files don't show much. Although,
> why am I seeing stuff like: NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon
> -poky-linux-gnueabi/crank/1.0-r0/packages-split/crank/opt/crank/linux-sama5d
> -armle-fbdev-obj/lib/luagretest.so In log.do_package_qa?

There are various QA checks on the output (as you've no doubt seen) - some of
those require examining binaries such as the checks on rpaths, and that
requires running objdump.

> > * Based on what you've said earlier, your S value cannot be correct - it
> > may not matter, but it might as well be fixed anyway. If the tarball
> > unpacks a "crank" subdirectory then it should be set to
> > "${WORKDIR}/crank".
> 
> ANSWER >> I get the same error no matter what the S is set to:
> non -staticdev package contains static .a library: crank path
> 'work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/packages-split/crank/
> opt/crank/linux-sama5d-armle-fbdev-obj/lib/libssgf.a' [staticdev]
> 
> WHY am I getting this error?

That error has nothing to do with the S value - as I mentioned, S may not
matter in this case, but it might as well be correct if you're setting it at
all.

You resolved this issue in the end, but for future reference there is a guide
on how to deal with various QA errors/warnings here:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-errors-and-warnings
 
> > * Setting DEPENDS isn't really doing you any good - DEPENDS is for
> > build-time dependencies. You're only unpacking a tarball, you don't need
> > any build-time dependencies to speak of. If you have runtime dependencies
> > then set them in RDEPENDS_${PN} since that's where runtime dependencies
> > need to be set.
>
> ANSWER>> without that line, I get the following error:
> 
> WARNING: crank-1.0-r0 do_package_qa: QA Issue: crank rdepends on tslib, but
> it isn't a build dependency, missing tslib in DEPENDS or PACKAGECONFIG?
> [build-deps] 
> WARNING: crank-1.0-r0 do_package_qa: QA Issue: crank rdepends
> on libasound, but it isn't a build dependency, missing alsa-lib in DEPENDS
> or PACKAGECONFIG? [build-deps]
 
That message is slightly misleading - in this case it really is just a runtime
dependency (since you're not building anything) and you should be able to
resolve it by setting RDEPENDS_${PN} rather than DEPENDS.

> > * As another responder pointed out, the inherit of pkgconfig isn't needed
> > - you don't need pkg-config for anything being done here. 
>
> Again, same error with or without this. Or even if I use " inherit bin_package"

Again, this isn't related to those errors, pkg-config just isn't necessary
for what this recipe does. 

FYI, bin_package is more suited to packages whose layout is already prepared
for the target (e.g. if you had an rpm or deb file) - you could have used it
here, but I'm not entirely sure it would have made things much easier given
the issues you ran into.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

