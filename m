Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB86CE00B58; Fri, 19 May 2017 00:37:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 338ECE00B47
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 00:37:53 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 9B523260F9C
Message-ID: <1495179470.12055.76.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Abayiz <abayiz@yahoo.com>, "jussi.kukkonen@intel.com"
	<jussi.kukkonen@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 19 May 2017 09:37:50 +0200
In-Reply-To: <1239408292.652958.1495114462881@mail.yahoo.com>
References: <853904707.1405328.1495010277595.ref@mail.yahoo.com>
	<853904707.1405328.1495010277595@mail.yahoo.com>
	<1495091834.12055.46.camel@collabora.co.uk>
	<1879655844.551173.1495108954174@mail.yahoo.com>
	<1495113422.12055.56.camel@collabora.co.uk>
	<1239408292.652958.1495114462881@mail.yahoo.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Install Torch7
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
X-List-Received-Date: Fri, 19 May 2017 07:37:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-05-18 at 13:34 +0000, Abayiz wrote:
> Dear Fabien and Jussi, 
> 
> Thank you very much for your time and concern. 
> After your suggestion I tried to find out all those packages installed by "bash install-deps".
> However I found that these deps are required to build JIT version of Lua, as mentioned on the
> official Torch website. 

good

> So instead I used Lua 5.2 instead of JIT, which does not require to run "bash install-deps" first.
> And this time after I generated Torch recipe using devtool and tried to build it, the compilation
> proceeded to nearly 96%, then thows an error saying:
> 
> Could NOT find Wget (missing:  WGET_EXECUTABLE)
> | -- Could NOT find MD5 (missing:  MD5_EXECUTABLE)
> | -- curl found instead of wget :/home/abayiz/trunk/poky/build-hello/tmp/work/i586-poky-
> linux/torch/2.1devel+git999-r0/recipe-sysroot-native/usr/bin/curl
> | CMake Error at exe/luajit-rocks/luarocks/CMakeLists.txt:77 (MESSAGE):
> |   MD5 checker not found
> 
> However in the 'devtool' generated recipe file, I found this line:
> 
> # NOTE: unable to map the following CMake package dependencies: CUDA CUDNN BLAS ARM Torch SSE MD5
> MAGMA LAPACK Readline
> Seems like wget is already set as built-time dependency but the system doesn't see it, as well as
> MD5. Do you have any suggestion for that?

maybe wget is needed for host and not target. As they expect "EXECUTABLE", I think it is more a
RDEPENDS needed. Maybe your soft is not cross compilable as is nad should be patches.
You need to understand why tools are necessary and fix accordingly.

> Thank you again. 
> Best.
> 
> 
> On Thursday, May 18, 2017 4:17 PM, Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> 
> 
> On Thu, 2017-05-18 at 12:02 +0000, Abayiz wrote:
> > Dear Fabien, 
> > 
> > Thank you very much for your reply. 
> > No, I didn't try 'devtool edit-recipe torch' to add dependencies. Actually I didn't know how to
> > add them. Is there any way to directly call that .sh file there??
> > Could you give me a minimal example to illustrate it? 
> 
> Usually we add build dependencies with DEPENDS = "..." and runtime dependencies with RDEPENDS =
> "..."
> 
> So you need to check dependencies installed by "bash install-deps".
> Can you list them? Maybe recipes exists in which case you have to add them to the variable
> described
> above.
> 
> 
> 
> > 
> > Thank you. 
> > 
> > 
> > 
> > On Thursday, May 18, 2017 10:17 AM, Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> > 
> > 
> > On Wed, 2017-05-17 at 08:37 +0000, Abayiz wrote:
> > > Dear all, 
> > > 
> > > I'm quite new to Yocto, I've successfully built qemu and ran helloworld example on it. Now I'm
> > > trying to install Torch 7 (https://github.com/torch/torch7) library. What I did is: 
> > > 
> > > devtool add torch https://github.com/torch/torch7.git
> > > devtool build torch
> > > 
> > > But the build exits with error, in the attachment I share the log file with you. 
> > > My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully running on it. The
> > installation
> > > of Torch first requires to run the 'bash install-deps' command on Ubuntu. My rough estimation
> is
> > > that Yocto seems like cannot build those dependencies automatically. 
> > > 
> > > Could someone give any help on it? Installing Torch7 is very important to my project now,
> thank
> > > you in advance. 
> > > 
> > 
> > Do you try "devtool edit-recipe torch" to add dependencies to the recipe and configure "cache
> > variables" approprietly?
> > 
> > 
> > > Best, 
> > > Abayiz
> > 
> > > 
> > -- 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
> > 
> 
> 

