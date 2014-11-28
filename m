Return-Path: <bart.thoelen@telenet.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A7D4E008EA; Fri, 28 Nov 2014 00:54:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.130.137.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Nov 2014 00:54:44 PST
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC788E006EF
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 00:54:44 -0800 (PST)
Received: from zcshobo42.telenet-ops.be ([213.224.145.76])
	by michel.telenet-ops.be with bizsmtp
	id Lwpg1p00d1f7MJD06wpgv0; Fri, 28 Nov 2014 09:49:40 +0100
Date: Fri, 28 Nov 2014 09:49:40 +0100 (CET)
From: bart.thoelen@telenet.be
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <1608096582.60660456.1417164580603.JavaMail.root@telenet.be>
In-Reply-To: <3519242.bp6EKar7DE@peggleto-mobl5.ger.corp.intel.com>
References: <64061056.59535533.1417105449594.JavaMail.root@telenet.be>
	<3519242.bp6EKar7DE@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-Originating-IP: [::ffff:94.107.227.132]
Thread-Topic: RPATH invalid
Thread-Index: /RvmhmZ1Qd5e1ChOPGymbcsfLLL1Xg==
Cc: yocto@yoctoproject.org
Subject: Re: RPATH invalid
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
X-List-Received-Date: Fri, 28 Nov 2014 08:54:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



----- Original Message -----
> From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
> To: "bart thoelen" <bart.thoelen@telenet.be>
> Cc: yocto@yoctoproject.org
> Sent: Thursday, November 27, 2014 5:43:17 PM
> Subject: Re: [yocto] RPATH invalid
> 
> Hi there,
> 
> On Thursday 27 November 2014 17:24:09 bart.thoelen@telenet.be wrote:
> > I now the following issue pops up here and there, but I cannot find a
> > proper
> > answer on what is wrong.
> > 
> > I'm trying to build a custom created auto-tools package in yocto (daisy
> > release). I get this QA check error:
> > 
> > 
> > 
> > ERROR: QA Issue: package logctrl contains bad RPATH
> > /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/sysroots/zynq-lc80dx-appl/u
> > sr/lib in file
> > /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/work/armv7a-vfp-neon-poky-l
> > inux-gnueabi/logctrl/1.0.0-r0/packages-split/logctrl/usr/bin/logctrl ERROR:
> > QA run found fatal errors. Please consider fixing them.
> > ERROR: Function failed: do_package_qa
> > ERROR: Logfile of failure stored in:
> > /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/work/armv7a-vfp-neon-poky-l
> > inux-gnueabi/logctrl/1.0.0-r0/temp/log.do_package.20691 ERROR: Task 10
> > (/mnt/data/sources/dx2/yocto/dx2/yocto/meta-nikon/recipes-core/logctrl/logc
> > trl_1.0.0.bb, do_package) failed with exit code '1'
> > 
> > I guess this must be passed via the configure - see configure log (ignore
> > --without-rpath):
> 
> It depends entirely on whether the configure script provides an option for
> this, it looks like this one either does not, or if it does it isn't called
> --without-rpath.
> 
> There are some hints here about how to solve this kind of problem in the
> general case:
> 
>   http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-issue-rpaths
> 
> Ultimately you'll need to dig into how this particular software's own
> build system is set up with regard to enabling RPATHs when compiling
> - usually it's a matter of stopping the appropriate arguments from being
> passed to the compiler/linker.

That is exactly what I was thinking as well.  I created the automake scripts myself, they all behave well
when I build project the 'the old-fashion' way - i.e. doing the configure and make manually.
The project is building in Buildroot without any problem.  I'm moving towards yocto now.  So I really need to understand 
what yocto does differently so that I can adapt my automake scripts.

Anyway, I could just disable the QA checks for RPATH - but this is not the way I like to work.

greets,

BartT.

> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre
> 

