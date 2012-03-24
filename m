Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882FDE00596
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 10:15:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OHFO4q009072;
	Sat, 24 Mar 2012 17:15:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06586-03; Sat, 24 Mar 2012 17:15:19 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OHFCPo009066
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 24 Mar 2012 17:15:13 GMT
Message-ID: <1332609315.28414.19.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Seebach <peter.seebach@windriver.com>
Date: Sat, 24 Mar 2012 17:15:15 +0000
In-Reply-To: <20120323174506.5634af61@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
	<1537192.Q99X1xdoal@helios> <20120323174506.5634af61@wrlaptop>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 24 Mar 2012 17:15:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-23 at 17:45 -0500, Peter Seebach wrote:
> On Fri, 23 Mar 2012 12:20:08 +0000
> Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> 
> > On Friday 23 March 2012 02:16:35 Peter Seebach wrote:
> > > Still really weird to me that I can't reproduce this outside of hob.
> > > I am pretty sure there exists a series of forks and execs and
> > > environment changes such that this will end up happening.
> > 
> > I now have a fairly simple test case outside of hob. Put the attached
> > file in meta/classes/ and then add the following to your local.conf:
> > 
> > INHERIT += "breakit"
> 
> Okay, some notes.
> 
> The magic seems to come from the interpolated Python output that itself
> calls os.popen from inside the shell script.
> 
> A bit of poking about turns up the following:
> 
> 1.  The environment setup and teardown in runqueue.py don't seem to be
> atomic at all, such that if I annotate the stashing in envbackup with a
> bb.note for each variable stashed, I sometimes see a fork() call in
> pseudo BETWEEN two variables.  Which is to say, we can be forking WHILE
> changing the environment.
> 2.  The func_exec_shell calls seem to be able to call the git_branch
> stuff (which uses os.popen()) in a way that does not hit the runqueue
> code AT ALL.  Meaning it operates with Whatever Environment Seems Handy.
> 3.  I am inclined to suggest that a first pass would be to distinguish
> between "we need to set this, but we never need to unset
> it" (PSEUDO_PREFIX) and "we need to set this and then revert
> it" (PSEUDO_UNLOAD).
> 4.  We should have a handler for popen() anyway, but it will not in and
> of itself fix the problem.
> 
> I am still getting the hang of finding my way around bitbake and
> figuring out who's calling what.  I'd guess that just making sure
> PSEUDO_PREFIX never gets unset would effectively mitigate the problem,
> but I suspect that we'll still be vulnerable to Weird Race Conditions.

Let me share my notes. I looked at Pauls instructions and thought, fair
enough and tried:

bitbake git-native -c install -f

which showed no error. Hmm. To summarise what I found:

bitbake git-native -c install -f    - no pseudo issue
bitbake bzip2 -c compile -f         - no pseudo issue
bitbake bzip2 -c install -f         - pseudo issue
bitbake bzip2 -c package -f         - pseudo issue

So there is a pattern, we have to execute a task where we enable pseudo.
Once we've done that we see a problem. Pseudo is left loaded but
disabled for -native tasks and compile but is active for install/package
of target recipes.

This implies that once we enable pseudo for a child, there is some
change in the parent which persists.

Let me talk a little about what should happen. The code in question is
in runqueue.py, the function fork_off_task().

Our starting position is pseudo is loaded but disabled as per the
variables in scripts/bitbake (effectively PSEUDO_DISABLED=1).

We then look at whether the child we need to create should run pseudo.
If it does, we look at FAKEROOTENV (set from meta/conf/bitbake.conf)
to: 

"PSEUDO_PREFIX=${STAGING_DIR_NATIVE}${prefix_native}
PSEUDO_LOCALSTATEDIR=${PSEUDO_LOCALSTATEDIR} PSEUDO_PASSWD=
${PSEUDO_PASSWD} PSEUDO_NOSYMLINKEXP=1 PSEUDO_DISABLED=0"

so we poke those into the environment, then fork(), the child does its
thing under pseudo and the parent restores the environment to its
original values.

If the child does not need to run under pseudo, we process FAKEROOTNOENV
("PSEUDO_UNLOAD=1") and set this, fork the child where pseudo should
have unloaded and then reset the environment back in the parent.

So somehow the pseudo in the parent is changing state after we run any
pseudo task. If we then run a command using popen later in the parent
context, pseudo is complaining.

I'm not sure if this is a bug in the way we're using pseudo, the code
implmentation has an issue somewhere I'm not seeing or whether pseduo
shouldn't be changing state like this.

I did note I can make the error "disappear" with:

diff --git a/scripts/bitbake b/scripts/bitbake
index 45c8697..a5b1539 100755
--- a/scripts/bitbake
+++ b/scripts/bitbake
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 export BBFETCH2=True
-export BB_ENV_EXTRAWHITE="PSEUDO_BUILD PSEUDO_DISABLED $BB_ENV_EXTRAWHITE"
+export BB_ENV_EXTRAWHITE="PSEUDO_BUILD PSEUDO_DISABLED PSEUDO_PREFIX $BB_ENV_EXTRAWHITE"
 
 NO_BUILD_OPTS="--version -h --help -p --parse-only -s --show-versions -e --environment -g --graphviz"
 PASSTHROUGH_OPTS="-D -DD -DDD -DDDD -v"

since the envbackup is unsetting PSEUDO_PREFIX in the pseudo enabled
task case which seems to be the trigger.

What puzzles me is we get this value from  envbackup[key] =
os.environ.get("PSEUDO_PREFIX") so its already not in the environment.

So basically if we read "PSEUDO_PREFIX" from the environment we get
nothing. If we unset the value back to being "nothing", things break.

This would imply we have some other issue going on here somewhere...

Cheers,

Richard




















