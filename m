Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD8C9E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 11:04:17 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UnYMB-0000Zh-ON
	for yocto@yoctoproject.org; Fri, 14 Jun 2013 20:04:15 +0200
Received: from c-68-51-81-31.hsd1.il.comcast.net ([68.51.81.31])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 20:04:15 +0200
Received: from dtran11 by c-68-51-81-31.hsd1.il.comcast.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 20:04:15 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Dat Tran <dtran11@gmail.com>
Date: Fri, 14 Jun 2013 18:03:58 +0000 (UTC)
Message-ID: <loom.20130614T200317-354@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
	<1571616.VWc8oWtlLJ@helios>
	<loom.20130614T195255-724@post.gmane.org>
	<CE727E34-D6D2-4B25-840A-0D2F32318C0A@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 68.51.81.31 (Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML,
	like Gecko) Chrome/27.0.1453.110 Safari/537.36)
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 14 Jun 2013 18:04:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Khem Raj <raj.khem@...> writes:

> 
> 
> On Jun 14, 2013, at 10:53 AM, Dat Tran <dtran11@...> wrote:
> 
> > Paul, thanks for your suggestions. I think you are right in that there 
are 
> > more settings we need to set. Here is what I had done with no success:
> > 
> > 
> > diff --git a/meta/recipes-devtools/gcc/gcc-4.7.inc b/meta/recipes-
> > devtools/gcc/gcc-4.7.inc
> > index 1a3e09b..3c48232 100644
> > --- a/meta/recipes-devtools/gcc/gcc-4.7.inc
> > +++ b/meta/recipes-devtools/gcc/gcc-4.7.inc
> >  <at>  <at>  -82,7 +82,7  <at>  <at>  S = "${TMPDIR}/work-shared/gcc-
${PV}-${PR}/gcc-${PV}"
> > B = "${WORKDIR}/gcc-${PV}/build.${HOST_SYS}.${TARGET_SYS}"
> > 
> > # Language Overrides
> > -FORTRAN = ""
> > +FORTRAN = ",fortran"
> > JAVA = ""
> > 
> > EXTRA_OECONF_BASE = " --enable-lto \
> > diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc 
> > b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> > index 4eb59fd..48dd606 100644
> > --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> > +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> >  <at>  <at>  -10,7 +10,7  <at>  <at>  JAVA_armeb ?= ""
> > JAVA_mipsel ?= ""
> > JAVA_sh3 ?= ""
> > # gcc 3.x expects 'f77', 4.0 expects 'f95', 4.1 and 4.2 expect 'fortran'
> > -FORTRAN ?= ",f77"
> > +FORTRAN = ",fortran"
> > LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"
> > # disable --enable-target-optspace for powerpc SPE
> > # at -Os libgcc.so.1 creates references into
> > diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc 
> > b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> > index d40383c..4c641f2 100644
> > --- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> > +++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> >  <at>  <at>  -7,7 +7,7  <at>  <at>  EXTRA_OECONF_PATHS = " \
> >     --with-sysroot=${STAGING_DIR_TARGET} \
> >     --with-build-sysroot=${STAGING_DIR_TARGET}"
> > 
> > -RUNTIMETARGET = "libssp libstdc++-v3"
> > +RUNTIMETARGET = "libgfortran libssp libstdc++-v3"
> > RUNTIMETARGET_append_powerpc = " libgomp"
> > RUNTIMETARGET_append_powerpc64 = " libgomp"
> > #  ?
> 
> ideally this is all you should need. But then its not frequent tested 
combination
> What errors do you run into ?
> 


This is the error I get:


configure: WARNING: unrecognized options: --disable-silent-rules, --with-
sysroot 
DEBUG: Shell function do_configure finished 
DEBUG: Executing python function do_qa_configure 
NOTE: Checking autotools environment for common misconfiguration 
ERROR: This autoconf log indicates errors, it looked at host include and/or 
library paths while determining system capabilities. 
Rerun configure task after fixing this. The path was 
'/home/appusr/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-
gnueabi/libtool-cross-2.4.2-r5.1/libtool-2.4.2' 
DEBUG: Python function do_qa_configure finished 
ERROR: Function failed: do_qa_configure 


Thanks



