Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79BFE013D6
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:40:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Aug 2013 03:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,933,1367996400"; d="scan'208";a="350094363"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.241])
	by azsmga001.ch.intel.com with ESMTP; 22 Aug 2013 03:40:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 22 Aug 2013 11:40:49 +0100
Message-ID: <2275177.m6TO4hPgaX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <194F81E112554215A78C3D22D34B2A58@PAULD>
References: <C0360C54FF104163BE67C2C714409398@PAULD>
	<CAJTo0LYbxT61+Dd_S2f+Det3vk-Fr2q1MgGKOgZ0AM9wxKsaeA@mail.gmail.com>
	<194F81E112554215A78C3D22D34B2A58@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building one package needs header from another
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
X-List-Received-Date: Thu, 22 Aug 2013 10:40:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Tuesday 20 August 2013 16:06:54 Paul D. DeRocco wrote:
> > From: Burton, Ross [mailto:ross.burton@intel.com]
> > If you've built pygtk then the target sysroot should have the headers
> > in, and for me it does:
> > 
> > ross@melchett /data/poky-master/tmp/sysroots/genericx86
> > $ find . -name pygtk.h
> > ./usr/include/pygtk-2.0/pygtk/pygtk.h
> > 
> > This is probably a problem with python-matplotlib, can you share the
> > configure and build logs?  It's probably looking in the wrong place.
> 
> Yes, the include files are there. I'm only beginning to grasp a little
> about how builds work, and that sysroots/overo is the context in which the
> Gumstix cross tools run. But the appropriate directory,
> /home/pauld/yocto/build/tmp/sysroots/overo/usr/include/pygtk-2.0, is not
> on the compiler command line, and that causes the error.
> 
> I've been trying to figure out how the setup.py/setup.cfg (and distutils)
> stuff works. The setup.cfg file lists only one possible option for adding
> directories, which is basedirlist, but setting that to foo adds
> foo/include to the include directories and foo/lib to the library
> directories, so that's not appropriate. 

Could you just send it ${STAGING_DIR_HOST}/${prefix} ? We do do that elsewhere 
with similar-behaving configure scripts.

> The configure log shows nothing, but the compile log (which shows the
> compile error at the end), shows this DEBUG note right at the beginning:
> 
> /home/pauld/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python
> -matplotlib-1.1.0-r3/temp/run.do_compile.14201: line 82:
> /home/pauld/yocto/build/tmp/sysroots/i686-linux/usr/bin/python: No such
> file or directory
> basedirlist is: ['/home/pauld/yocto/build/tmp/sysroots/overo/usr/lib']
> 
> The message refers to this script in run.do_compile (slightly
> reformatted):
> 
> do_compile() {
>   BUILD_SYS=i686-linux HOST_SYS=arm-poky-linux-gnueabi \
>   /home/pauld/yocto/build/tmp/sysroots/i686-linux/usr/bin/python \
>       setup.py build || true
>   distutils_do_compile
> }
> 
> This would suggest that setup.py isn't even being run. Yet when I
> accidentally put a syntax error into setup.cfg, it barfed. Is setup.cfg
> read before setup.py is run, by something else?
> 
> So there are two questions: why is there no python in that directory?
> (There is a python-native subdirectory containing python.)

To be honest, I'm not sure if it is appropriate, but you could inherit 
pythonnative in the recipe, that might fix this.

> I'm also curious if distutils is something that is used throughout the
> bitbake process, or is it something specific to building Python-related
> stuff? Can the setup.py/setup.cfg mechanism be used in any recipes?

distutils is python-specific, so no.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

