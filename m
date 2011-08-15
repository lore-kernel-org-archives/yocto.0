Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89590E00777
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 07:37:02 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@googlemail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so3577685qwj.35
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2011 07:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=BjmlqqOTi1kvSsaokJTkZTPuEF3CMzg0TgEEaGlv94I=;
	b=OvxrzEtNKeJDfGw3nNBzvW5IiK8hNCzFHcRYn8uIx/EqhW3v7l3iJLQhdHnPvT1c0P
	CEnkjE1+L0mVTjAjd0etoEUq5St0mjlCHAcsyUdD669rWdKklki6kzt9rI7Lzh0Y804y
	4X1T5JGGdwDqh1l8zGiOHMOf8FOQKO96ZJMaE=
MIME-Version: 1.0
Received: by 10.229.133.141 with SMTP id f13mr2607556qct.135.1313419030635;
	Mon, 15 Aug 2011 07:37:10 -0700 (PDT)
Received: by 10.229.186.7 with HTTP; Mon, 15 Aug 2011 07:37:10 -0700 (PDT)
In-Reply-To: <CAGiJk9eEVC6fFCNNEUo7iV+4guBOq8ZcEmwzvq+OAqTgvwbDnw@mail.gmail.com>
References: <CAGiJk9eEVC6fFCNNEUo7iV+4guBOq8ZcEmwzvq+OAqTgvwbDnw@mail.gmail.com>
Date: Mon, 15 Aug 2011 16:37:10 +0200
Message-ID: <CAGiJk9fmTDYbpDkLbT5W7GZrdmuNoBoj6RJ0e94KyM-pxM5UnA@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 15 Aug 2011 14:37:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Sorry, I forgot to include the link to the patch:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3Da6c48298b17e6a5844b3=
638b422fe226e3b67b89

2011/8/15 Samuel Stirtzel <s.stirtzel@googlemail.com>:
> Hi, after Richard Purdie dropped the domain stuff from bitbake/msg.py
> I get error messages while running bitbake -c cleansstates.
> The following error message shows up:
> -
> ERROR: Running idle function
> Traceback (most recent call last):
> =A0File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/server/process=
.py",
> line 122, in ProcessServer.idle_commands(delay=3D0.1):
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 try:
> =A0 =A0> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0retval =3D function(self, data, F=
alse)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if retval is False:
> =A0File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/cooker.py",
> line 1062, in buildTargetsIdle(server=3D<ProcessServer(ProcessServer-1,
> started)>, rq=3D<bb.runqueue.RunQueue instance at 0x9c3c560>,
> abort=3DFalse):
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 try:
> =A0 =A0> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0retval =3D rq.execute_runqueue()
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 except runqueue.TaskFailure as exc:
> =A0File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
> line 936, in RunQueue.execute_runqueue():
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 self.rqexe =3D RunQueueExecuteDummy(self)
> =A0 =A0> =A0 =A0 =A0 =A0 =A0 =A0if self.rqdata.prepare() =3D=3D 0:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 self.state =3D runQueueComplete
> =A0File "/var/oe-core/setup-scripts/sources/bitbake/lib/bb/runqueue.py",
> line 590, in RunQueueData.prepare():
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if target[1] not in taskData.tasks_lookup=
[fnid]:
> =A0 =A0> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bb.msg.fatal(bb.msg.domain.RunQue=
ue, "Task %s
> does not exist for target %s" % (target[1], target[0]))
>
> AttributeError: 'module' object has no attribute 'domain'
> -
> Seems like "bb.msg.fatal(bb.msg.domain.RunQueue, "Task %s does not
> exist for target %s" % (target[1], target[0]))" should be responsible
> for the error.
> Looks simple to fix, and I would write a patch, but I don't know the
> code and have no idea where this message should be passed to.
>
>
>
> Regards
> Samuel
>



Regards
Samuel

