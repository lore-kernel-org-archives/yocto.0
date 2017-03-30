Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CADCE0097C; Thu, 30 Mar 2017 05:46:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 144BFE00953
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:46:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id B4851261048
Message-ID: <1490877979.11772.26.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Yuvarajesh Valleru <yv@iseg-hv.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 30 Mar 2017 14:46:19 +0200
In-Reply-To: <4d2de3b6-6427-c5ad-4fe9-165d07cd718e@iseg-hv.de>
References: <21d9c51d-9b7b-9504-32e5-1bbec292a549@iseg-hv.de>
	<1490871292.11772.23.camel@collabora.co.uk>
	<4d2de3b6-6427-c5ad-4fe9-165d07cd718e@iseg-hv.de>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
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
X-List-Received-Date: Thu, 30 Mar 2017 12:46:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Seems to be related to missing CFLAGS to compile.
IMO you should look at how other recipe build qt4 apps.

On Thu, 2017-03-30 at 14:38 +0200, Yuvarajesh Valleru wrote:
> Thanks, It worked. But experienced another error.
> 
> ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log 
> file is located at 
> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> r0/temp/log.do_compile.31394)
> ERROR: Logfile of failure stored in: 
> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> r0/temp/log.do_compile.31394
> Log data follows:
> > DEBUG: Executing shell function do_compile
> > 
> 
> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> r0/helloworld.cpp:1:23: 
> fatal error: QTextStream: No such file or directory
> > compilation terminated.
> > WARNING: exit code 1 from a shell command.
> > ERROR: Function failed: do_compile (log file is located at 
> 
> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> r0/temp/log.do_compile.31394)
> ERROR: Task 
> (/home/cc/src/oe-core/build/../layers/meta-laye/recipes-
> hi/helloworld/helloworld_1.0.bb:do_compile) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 591 tasks of which 590 didn't need to be 
> rerun and 1 failed.
> NOTE: Writing buildhistory
> 
> Summary: 1 task failed:
> /home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/helloworld_1.0.bb:do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> 
> 
> Am 30.03.2017 um 12:54 schrieb Fabien Lahoudere:
> > Try
> > 
> > do_compile() {
> >            ${CC} ${S}/helloworld.cpp -o ${S}/helloworld
> > }
> > 
> > On Thu, 2017-03-30 at 12:43 +0200, Yuvarajesh Valleru wrote:
> > > Here is the tree for my recipe and also attached the error.
> > > 
> > > /home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/
> > > ├── files
> > > │ ├── helloworld.cpp
> > > │ └── helloworld.pro
> > > └── helloworld_1.0.bb
> > > 
> > > 1 directory, 3 files
> > > 
> > > ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log
> > > file is located at
> > > /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-
> > > gnueabi/helloworld/1.0-
> > > r0/temp/log.do_compile.23742)
> > > 
> > > ERROR: Logfile of failure stored in: /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-
> > > neon-
> > > angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742
> > > Log data follows:
> > > > DEBUG: Executing shell function do_compile
> > > > arm-angstrom-linux-gnueabi-gcc: error: helloworld.cpp: No such file or directory
> > > > arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
> > > > compilation terminated.
> > > > WARNING: exit code 1 from a shell command.
> > > > ERROR: Function failed: do_compile (log file is located at /home/cc/src/oe-core/build/tmp-
> > > > glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> > > > r0/temp/log.do_compile.23742)
> > > 
> > > ERROR: Task (/home/cc/src/oe-core/build/../layers/meta-layer/recipes-
> > > hi/helloworld/helloworld_1.0.bb:do_compile) failed with exit code '1'
> > > NOTE: Tasks Summary: Attempted 591 tasks of which 584 didn't need to be rerun and 1 failed.
> > > NOTE: Writing buildhistory
> > > 
> > > Summary: 1 task failed:
> > >     /home/cc/src/oe-core/build/../layers/meta-layer/recipes-
> > > hi/helloworld/helloworld_1.0.bb:do_compile
> > > Summary: There was 1 WARNING message shown.
> > > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> > > 
> > > 
> > > 
> 
> 

