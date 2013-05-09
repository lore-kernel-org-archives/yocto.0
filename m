Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id ED448E00429
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 12:32:40 -0700 (PDT)
Received: (qmail 29938 invoked by uid 1003); 9 May 2013 19:32:39 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@71.171.26.125)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	9 May 2013 19:32:39 -0000
Message-ID: <518BF9D6.3070202@balister.org>
Date: Thu, 09 May 2013 15:32:38 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130311 Thunderbird/17.0.4
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
In-Reply-To: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 19:32:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

There is already a recipe for gsl in meta-oe:

./meta-oe/recipes-support/gsl/gsl_1.12.bb

We be happy to take a patch to update it to a current gsl.

Philip

On 05/09/2013 11:48 AM, Edward Vidal wrote:
> Hello,
> I am trying to write the recipe to add gsl-1.15 to core-image-sato.
> 
> First I did mdkir poky/meta/recipes-support/gsl
> 
> Is this the correct location for this recipe?
> 
> cp ~/POKY/gsl_1.15.bb ../meta/recipes-support/gsl/
> 
> This is the gsl_1.15.bb file
> *************************************************
> DESCRIPTION = "GNU Scientific Library (GSL)"
> HOMEPAGE = "http://www.gnu.org/software/gsl/"
> 
> LICENSE = "GPLv3"
> LIC_FILES_CHKSUM =
> "file://NEWS;beginline=362;endline=363;md5=325d4344063147ef38e3ac2cbf1cc157"
> 
> SRC_URI = "http://mirror.rit.edu/gnu/gnu/gsl/gsl-${PV}.tar.gz"
> SRC_URI[md5sum] = "494ffefd90eef4ada678c306bab4030b"
> SRC_URI[sha256sum] =
> "85b907e57902e2b7606ef3aef960302ffdd13bd9dc5b8fcbfa75e4f0bf340ea3"
> 
> S = "${WORKDIR}/gsl-${PV}"
> 
> inherit autotools
> *************************************************
> When I execute MACHINE=beagleboard bitbake gsl
> 
> Build Configuration:
> BB_VERSION        = "1.19.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130509"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:84d45db4ddced96c736f106f8122eefadf925c41"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> 
> The fetch appears to work since in my repository I see the following:
> /home/vidal/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz
> /home/vidal/POKY/linux_src_dnloads/downloads/gsl-1.15.tar.gz.done
> 
> In the file NEWS
> 
>     362 ** License updated to GNU GPL version 3.
>     363
> gsl-1.15]$ md5sum NEWS
> 325d4344063147ef38e3ac2cbf1cc157  NEWS
> 
> ERROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6
> ERROR: gsl: Check if the license information has changed in
> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in:
> /home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839
> ERROR: Task 5 (/home/vidal/POKY/build050613/poky/meta/recipes-support/gsl/
> gsl_1.15.bb, do_configure) failed with exit code '1'
> 
> /home/vidal/POKY/build050613/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gsl/1.15-r0/temp/log.do_configure.5839
> configure: WARNING: unrecognized options: --disable-silent-rules
> DEBUG: Shell function do_configure finished
> DEBUG: Executing python function do_qa_configure
> NOTE: Checking autotools environment for common misconfiguration
> ERROR: gsl: md5 data is not matching for
> file://NEWS;beginline=362;endline=363;md5=325d4344063147ef38e3ac2cbf1cc157
> ERROR: gsl: The new md5 checksum is 73ea11aaa98f8c40401be7c60ee2a8e6
> ERROR: gsl: Check if the license information has changed in
> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
> DEBUG: Python function do_qa_configure finished
> 
> Any and all help will be appreciated.
> Thanks
> Ed Vidal Jr.
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

