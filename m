Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84A53E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 10:54:12 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UnYCR-0001Te-H0
	for yocto@yoctoproject.org; Fri, 14 Jun 2013 19:54:11 +0200
Received: from c-68-51-81-31.hsd1.il.comcast.net ([68.51.81.31])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 19:54:11 +0200
Received: from dtran11 by c-68-51-81-31.hsd1.il.comcast.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 19:54:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Dat Tran <dtran11@gmail.com>
Date: Fri, 14 Jun 2013 17:53:55 +0000 (UTC)
Message-ID: <loom.20130614T195255-724@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
	<1571616.VWc8oWtlLJ@helios>
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
X-List-Received-Date: Fri, 14 Jun 2013 17:54:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Paul Eggleton <paul.eggleton@...> writes:

> 
> On Friday 14 June 2013 04:04:07 Dat Tran wrote:
> > Anyone know of any clues that will help us? Thanks.
> > 
> > Edward Vidal <vidal.develone <at> ...> writes:
> > > Dat Tran <dtran11 at gmail.com> wrote 
> > > > Hello,
> > > > 
> > > > I want to add support for FORTRAN in my image.
> > > > On target gcc -v shows --enable-languages=c,c++
> > > > This needs to --enable-languages=c,c++,fortran.based on my host 
system.
> > > > How does the variable FORTRAN in
> > > 
> > > /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
> > > configure-common.inc get set?  Can this be done in the local.conf 
file?
> > > 
> > > > Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" 
since
> > > > we are building gcc4.7?
> 
> I have no direct knowledge of how to enable language support, but if you 
look 
> at meta/recipes-devtools/gcc/gcc-4.7.inc you'll see it sets FORTRAN = "", 
> which means setting it with = in local.conf won't work (since local.conf 
> parsing comes before recipes) nor will the FORTRAN ?= setting in 
meta/recipes-
> devtools/gcc/gcc-configure-common.inc. 
> 
> I'd suggest bbappending the appropriate gcc recipe and set FORTRAN there 
> (which one depends on where you want to compile fortran code; gcc-cross 
would 
> be the right one for building a recipe for fortran software to run on the 
> target). You may need to set other variables in the bbappend as well, I'm 
not 
> entirely sure.
> 
> An example of a layer that does something similar would be the meta-ada 
layer:
> 
> https://github.com/Lucretia/meta-ada
> 
> Cheers,
> Paul
> 


Paul, thanks for your suggestions. I think you are right in that there are 
more settings we need to set. Here is what I had done with no success:


diff --git a/meta/recipes-devtools/gcc/gcc-4.7.inc b/meta/recipes-
devtools/gcc/gcc-4.7.inc
index 1a3e09b..3c48232 100644
--- a/meta/recipes-devtools/gcc/gcc-4.7.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.7.inc
@@ -82,7 +82,7 @@ S = "${TMPDIR}/work-shared/gcc-${PV}-${PR}/gcc-${PV}"
 B = "${WORKDIR}/gcc-${PV}/build.${HOST_SYS}.${TARGET_SYS}"
 
 # Language Overrides
-FORTRAN = ""
+FORTRAN = ",fortran"
 JAVA = ""
 
 EXTRA_OECONF_BASE = " --enable-lto \
diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc 
b/meta/recipes-devtools/gcc/gcc-configure-common.inc
index 4eb59fd..48dd606 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
@@ -10,7 +10,7 @@ JAVA_armeb ?= ""
 JAVA_mipsel ?= ""
 JAVA_sh3 ?= ""
 # gcc 3.x expects 'f77', 4.0 expects 'f95', 4.1 and 4.2 expect 'fortran'
-FORTRAN ?= ",f77"
+FORTRAN = ",fortran"
 LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"
 # disable --enable-target-optspace for powerpc SPE
 # at -Os libgcc.so.1 creates references into
diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc 
b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
index d40383c..4c641f2 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
@@ -7,7 +7,7 @@ EXTRA_OECONF_PATHS = " \
     --with-sysroot=${STAGING_DIR_TARGET} \
     --with-build-sysroot=${STAGING_DIR_TARGET}"
 
-RUNTIMETARGET = "libssp libstdc++-v3"
+RUNTIMETARGET = "libgfortran libssp libstdc++-v3"
 RUNTIMETARGET_append_powerpc = " libgomp"
 RUNTIMETARGET_append_powerpc64 = " libgomp"
 #  ?



