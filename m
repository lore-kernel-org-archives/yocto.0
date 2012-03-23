Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBACBE0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 15:45:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2NMj7LS017248
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 23 Mar 2012 15:45:07 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 23 Mar 2012 15:45:08 -0700
Date: Fri, 23 Mar 2012 17:45:06 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20120323174506.5634af61@wrlaptop>
In-Reply-To: <1537192.Q99X1xdoal@helios>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
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
X-List-Received-Date: Fri, 23 Mar 2012 22:45:09 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Fri, 23 Mar 2012 12:20:08 +0000
Paul Eggleton <paul.eggleton@linux.intel.com> wrote:

> On Friday 23 March 2012 02:16:35 Peter Seebach wrote:
> > Still really weird to me that I can't reproduce this outside of hob.
> > I am pretty sure there exists a series of forks and execs and
> > environment changes such that this will end up happening.
> 
> I now have a fairly simple test case outside of hob. Put the attached
> file in meta/classes/ and then add the following to your local.conf:
> 
> INHERIT += "breakit"

Okay, some notes.

The magic seems to come from the interpolated Python output that itself
calls os.popen from inside the shell script.

A bit of poking about turns up the following:

1.  The environment setup and teardown in runqueue.py don't seem to be
atomic at all, such that if I annotate the stashing in envbackup with a
bb.note for each variable stashed, I sometimes see a fork() call in
pseudo BETWEEN two variables.  Which is to say, we can be forking WHILE
changing the environment.
2.  The func_exec_shell calls seem to be able to call the git_branch
stuff (which uses os.popen()) in a way that does not hit the runqueue
code AT ALL.  Meaning it operates with Whatever Environment Seems Handy.
3.  I am inclined to suggest that a first pass would be to distinguish
between "we need to set this, but we never need to unset
it" (PSEUDO_PREFIX) and "we need to set this and then revert
it" (PSEUDO_UNLOAD).
4.  We should have a handler for popen() anyway, but it will not in and
of itself fix the problem.

I am still getting the hang of finding my way around bitbake and
figuring out who's calling what.  I'd guess that just making sure
PSEUDO_PREFIX never gets unset would effectively mitigate the problem,
but I suspect that we'll still be vulnerable to Weird Race Conditions.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

