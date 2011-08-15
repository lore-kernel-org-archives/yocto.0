Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1736E00777
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 07:14:17 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@googlemail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk7 with SMTP id 7so3493756qyk.14
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 07:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sEr09fOTw7J3yr1+VgqP0/9w3XQ0uqk9K2x+g0j5/DI=;
	b=sTAtxaO0jU25o9YSRRt4MaV/dF4Z3pjbsgWdTWo4QfZ/6ySuAvK3CM/KtVCjFTZNze
	/J7P5QRRpWMQfvKHcRPxw7Gyv0gkiNPgt29k9QawcnVBdu/j+X6fv0egcSgyqhoaMwcE
	bxAPyP0/78W84+3IFtmWhSIYIDeezxfVliq3Q=
MIME-Version: 1.0
Received: by 10.229.192.148 with SMTP id dq20mr2316902qcb.97.1313417667522;
	Mon, 15 Aug 2011 07:14:27 -0700 (PDT)
Received: by 10.229.186.7 with HTTP; Mon, 15 Aug 2011 07:14:27 -0700 (PDT)
Date: Mon, 15 Aug 2011 16:14:27 +0200
Message-ID: <CAGiJk9eEVC6fFCNNEUo7iV+4guBOq8ZcEmwzvq+OAqTgvwbDnw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: yocto@yoctoproject.org
Subject: Bitbake -c cleansstates error after the Poky "bitbake/msg.py: Drop manually created domain lists" patch
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
X-List-Received-Date: Mon, 15 Aug 2011 14:14:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, after Richard Purdie dropped the domain stuff from bitbake/msg.py
I get error messages while running bitbake -c cleansstates.
The following error message shows up:
-
ERROR: Running idle function
Traceback (most recent call last):
  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/server/process.py",
line 122, in ProcessServer.idle_commands(delay=0.1):
                 try:
    >                retval = function(self, data, False)
                     if retval is False:
  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/cooker.py",
line 1062, in buildTargetsIdle(server=<ProcessServer(ProcessServer-1,
started)>, rq=<bb.runqueue.RunQueue instance at 0x9c3c560>,
abort=False):
                 try:
    >                retval = rq.execute_runqueue()
                 except runqueue.TaskFailure as exc:
  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
line 936, in RunQueue.execute_runqueue():
                 self.rqexe = RunQueueExecuteDummy(self)
    >            if self.rqdata.prepare() == 0:
                     self.state = runQueueComplete
  File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
line 590, in RunQueueData.prepare():
                 if target[1] not in taskData.tasks_lookup[fnid]:
    >                bb.msg.fatal(bb.msg.domain.RunQueue, "Task %s
does not exist for target %s" % (target[1], target[0]))

AttributeError: 'module' object has no attribute 'domain'
-
Seems like "bb.msg.fatal(bb.msg.domain.RunQueue, "Task %s does not
exist for target %s" % (target[1], target[0]))" should be responsible
for the error.
Looks simple to fix, and I would write a patch, but I don't know the
code and have no idea where this message should be passed to.



Regards
Samuel

