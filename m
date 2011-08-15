Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B0DE00320
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 09:32:27 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7FGWZMX018481;
	Mon, 15 Aug 2011 17:32:35 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17517-10; Mon, 15 Aug 2011 17:32:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7FGWUJM018475
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 15 Aug 2011 17:32:30 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
In-Reply-To: <CAGiJk9fmTDYbpDkLbT5W7GZrdmuNoBoj6RJ0e94KyM-pxM5UnA@mail.gmail.com>
References: <CAGiJk9eEVC6fFCNNEUo7iV+4guBOq8ZcEmwzvq+OAqTgvwbDnw@mail.gmail.com>
	<CAGiJk9fmTDYbpDkLbT5W7GZrdmuNoBoj6RJ0e94KyM-pxM5UnA@mail.gmail.com>
Date: Mon, 15 Aug 2011 17:32:27 +0100
Message-ID: <1313425947.14274.599.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake -c cleansstates error after the Poky "bitbake/msg.py: Drop manually created domain lists" patch
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
X-List-Received-Date: Mon, 15 Aug 2011 16:32:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-08-15 at 16:37 +0200, Samuel Stirtzel wrote:
> Sorry, I forgot to include the link to the patch:
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a6c48298b17e6a5844b3638b422fe226e3b67b89
> 
> 2011/8/15 Samuel Stirtzel <s.stirtzel@googlemail.com>:
> > Hi, after Richard Purdie dropped the domain stuff from bitbake/msg.py
> > I get error messages while running bitbake -c cleansstates.
> > The following error message shows up:
> > -
> > ERROR: Running idle function
> > Traceback (most recent call last):
> >  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/server/process.py",
> > line 122, in ProcessServer.idle_commands(delay=0.1):
> >                 try:
> >    >                retval = function(self, data, False)
> >                     if retval is False:
> >  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/cooker.py",
> > line 1062, in buildTargetsIdle(server=<ProcessServer(ProcessServer-1,
> > started)>, rq=<bb.runqueue.RunQueue instance at 0x9c3c560>,
> > abort=False):
> >                 try:
> >    >                retval = rq.execute_runqueue()
> >                 except runqueue.TaskFailure as exc:
> >  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
> > line 936, in RunQueue.execute_runqueue():
> >                 self.rqexe = RunQueueExecuteDummy(self)
> >    >            if self.rqdata.prepare() == 0:
> >                     self.state = runQueueComplete
> >  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
> > line 590, in RunQueueData.prepare():
> >                 if target[1] not in taskData.tasks_lookup[fnid]:
> >    >                bb.msg.fatal(bb.msg.domain.RunQueue, "Task %s
> > does not exist for target %s" % (target[1], target[0]))
> >
> > AttributeError: 'module' object has no attribute 'domain'
> > -
> > Seems like "bb.msg.fatal(bb.msg.domain.RunQueue, "Task %s does not
> > exist for target %s" % (target[1], target[0]))" should be responsible
> > for the error.
> > Looks simple to fix, and I would write a patch, but I don't know the
> > code and have no idea where this message should be passed to.

Sorry about that, there are fixes in the appropriate places now.

Cheers,

Richard


