Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4366DE0052B; Mon, 13 Mar 2017 08:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB391E00349
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 08:53:37 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 08:53:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,159,1486454400"; d="scan'208";a="235476142"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga004.fm.intel.com with ESMTP; 13 Mar 2017 08:53:35 -0700
Message-ID: <1489420871.3261.66.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Sven =?ISO-8859-1?Q?Sch=F6nfeld?=
	<sven.schoenfeld@automationselektronik.de>
Date: Mon, 13 Mar 2017 10:01:11 -0600
In-Reply-To: <ecc88f5f-e58d-4ac8-8cd6-1e3ce98b061d@automationselektronik.de>
References: <ecc88f5f-e58d-4ac8-8cd6-1e3ce98b061d@automationselektronik.de>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: directory doesn't contain library
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
X-List-Received-Date: Mon, 13 Mar 2017 15:53:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-03-13 at 10:32 +0100, Sven Schönfeld wrote:
> Dear Yocto-Community
> 
>  
> 
> I’m trying to create an image containing gnash_0.8.7.bb with yocto
> morty (2.2.1) and bitbake 1.32.0. I added the folders to my
> bblayers.conf and included the recipe for gnash in my local.conf file.
> 
>  
> 
> In my bblayers.conf :
> 
>  
> 
> …
> 
> BBLAYERS = „ \
> 
>                 …
> 
>                 \
> 
>                 ${BSPDIR}/sources/meta-qt5 \
> 
>                 ${BSPDIR}/sources/meta-SFA \
> 
>                 „
> 
>  
> 
> In my local.conf:
> 
>  
> 
> …
> 
> IMAGE_INSTALL_append = „ cairo gnash“
> 
>  
> 
> LICENSE_FLAGS_WHITELIST = „commercial_ffmpeg commercial_libav
> commercial_x264“
> 
>  
> 
> Now when I try to bitbake my image, I receive the following error:
> 
>  
> 
> | checking for libatk library… -latk-1.0
> 
> | checking for cairo.h header in specified directory… yes
> 
> | checking for libcairo library in specified directory… configure:
> error: /home/name/yocto/build/tmp/sysroots/sfa2/usr/lib directory
> doesn’t contain library cairo.
> 
> | ERROR: Function failed: do_configure (log file is located
> at /home/name/yocto/build/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/gnash/0.8.7-r0/temp/log.do_configure.2556)
> 
>  
> 
> Obviously it can’t find the library in the directory. However, when I
> check the directory in my file browser, I find a folder named cairo as
> well as several files called libcairo-* (see below).
> 
>  
> 
> cairo
> 
> cairo/libcairo-trace.so.0
> 
> cairo/libcairo-trace.so
> 
> cairo/libcairo-trace.la
> 
> cairo/libcairo-trace.so.0.0.0
> 
>  
> 
> libcairo-gobject.la
> 
> libcairo-gobject.so
> 
> libcairo-gobject.so.2
> 
> libcairo-gobject.so.2.11400.6
> 
> libcairo-script-interpreter.la 
> 
> libcairo-script-interpreter.so 
> 
> libcairo-script-interpreter.so.2
> 
> libcairo-script-interpreter.so.2.11400.6
> 
> libcairo.la
> 
> libcairo.so 
> 
> libcairo.so.2
> 
> libcairo.so.2.11400.6
> 
>  

Take a look at the cairo recipe. The recipes creates several packages,
so on the IMAGE_INSTALL_append variable you need to append those "cairo
cairo-gobject ..."



> 
> As I’m pretty new to yocto I don’t really understand why this error
> occurs. Searching the web didn’t bring up anything helpful so I’m
> asking you for help. Please light my path and tell me how I can fix
> this error.
> 
>  
> 
> Thanks in advance
> 
>  
> 
> Sven
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



