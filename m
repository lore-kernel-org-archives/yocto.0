Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA4DAE013D6
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 00:16:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2N7GfgM017958
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Mar 2012 00:16:41 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 23 Mar 2012 00:16:41 -0700
Date: Fri, 23 Mar 2012 02:16:35 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20120323021635.5b4fc048@wrlaptop>
In-Reply-To: <1332472886.1765.1.camel@dongxiao-osel>
References: <2046170.9fCjTlmZqN@helios> <4F3EA17B.7010906@windriver.com>
	<1331715724.25861.16.camel@dongxiao-osel>
	<1332380981.1849.18.camel@dongxiao-osel>
	<20120322111805.6da9cd91@wrlaptop>
	<1332464476.1849.23.camel@dongxiao-osel>
	<20120322212937.71b9bf28@wrlaptop>
	<1332472886.1765.1.camel@dongxiao-osel>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 23 Mar 2012 07:16:44 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Fri, 23 Mar 2012 11:21:26 +0800
"Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:

> What do you mean by first build? Did you click "Just bake" button?

Yes.  The original reproducer I saw said that it worked the first time,
but failed the second time.

> 1) build_target(packages)
> 2) build_target(image)
 
> I noticed the pseudo error will happen when calling
> build_target(image). Therefore I also treated it as second build.

Interesting.

I am, currently, sort of stumped on this.  The failures are coming from
the git log/git branch commands using os.popen(), and those calls
appear to be happening in a process:
1.  Which did not have the pseudo library loaded, at all.
2.  Which has LD_PRELOAD set to include pseudo.
3.  Which has most of the PSEUDO_BINDIR, etc., values set.
4.  Which does not have PSEUDO_PREFIX set.

I can't figure out how to get there.  I can't reproduce this outside of
hob, yet.  And obviously, if the pseudo library isn't loaded, I can't
add more debugging or logging to pseudo to fix it.  (I infer that it's
not loaded because os.popen() isn't hitting diagnostic messages in
pseudo's new popen() wrapper, even if they're completely unconditional.)

I added an abort(), and got a core file.  The core file shows a
backtrace in /bin/sh:

#0  0x00007f1232cd8a75 in raise () from /lib/libc.so.6
#1  0x00007f1232cdc5c0 in abort () from /lib/libc.so.6
#2  0x00007f1233497489 in pseudo_get_prefix (pathname=0x7f123349ac9d
"<null>")
    at pseudo_util.c:1060
#3  0x00007f1233498244 in pseudo_setupenv () at pseudo_util.c:717
#4  0x00007f12334955dd in wrap_fork () at ports/common/guts/fork.c:14
#5  0x00007f1233495675 in fork () at ports/common/pseudo_wrappers.c:322
#6  0x000000000044339c in make_child ()
#7  0x0000000000436f04 in ?? ()
#8  0x0000000000433fa4 in execute_command_internal ()
#9  0x000000000043475e in execute_command_internal ()
#10 0x000000000047262a in parse_and_execute ()
#11 0x000000000041fd04 in ?? ()
#12 0x0000000000420e01 in main ()

I haven't found an obvious way to look at the arguments to main, but
I'm pretty sure it's one of the "cd REPO; git log..." commands.  So...

Basically, I can't see how we can get here.

Currently leaning towards a theory that the issue may be that we only
set PSEUDO_PREFIX when we think we want pseudo, and it looks like in
the PSEUDO_DISABLED=1 case, it may be that we can end up with a task
being run in an environment where LD_PRELOAD had been set, but we've
cleaned up our environment, and the disabled path is skipping part of
the environment setup.

Still really weird to me that I can't reproduce this outside of hob.
I am pretty sure there exists a series of forks and execs and
environment changes such that this will end up happening.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

