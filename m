Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 220ACE00D55; Mon, 11 Dec 2017 04:04:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E92E008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:04:31 -0800 (PST)
Received: by mail-wr0-f176.google.com with SMTP id v22so17317756wrb.0
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o+LlLfhVLuYq42PeiexAgeEynLI6YhU7FuahMT6tI9A=;
	b=hHAjvtgRdsETRIZxzWYZLHwOZ9f1IgnD7MQnaoHcFVANhkrcSiFvHJcNmICXKZTWJ4
	c4tw70/ZIgRAg0ewvgxCupJ9lKMJy7qH3Y752nQOdVWYcJH8jYbIGdbPqJAWTpauq54x
	4VhKGfwCSt06raAdWwgEpBH67ypOkVFnTfWsgwufU6nMiHytg5MKqjq0LdQOW1cabYaP
	KsHwDDRb+pcrcUt3k8j9jPxkXZQ7nuLOaaj6rmaq5V8aZfr65f60nQAxh06okcF3iim5
	dYlof6k6knOvQ9n6q8e1r62Ai9nj9oKAtPiclxjyyvE/Zs08R7teAGwqZDjTxPS31xif
	dUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o+LlLfhVLuYq42PeiexAgeEynLI6YhU7FuahMT6tI9A=;
	b=Fs16y4QLNRtxNlhCd14xl0Yl8byV77mFo4FDTNklZAeKkpZOh0RHDCScCM8PKsEGxS
	0vR5EQIvq7AgJja4MAlVyGsq3Y1XYjz0ACQCduce9VSq/yA2d0ktEY5X6TQ5mogTK34s
	ehsWYU5/YUVYBiz1Yn7KDoWUbYpXuFPTFNlbE/DtC066YZZ+VIpMQa4UMoYU8fyuFAtT
	F3ejAVYGju+wXq2kqlnI63l1gYw+L1KNWy39V3KKThS2UdjtmQuDarmzxVo2AU5bKb9c
	fxR0w+ROPOWWIqJw98F8mM5lo1rmMMiI1QhiOWY6hb/Z7f0LK/Cp3SY3xYbsbhh+0rve
	jjYw==
X-Gm-Message-State: AKGB3mJLNylfE4QhDc06qu4Dsx8u02i8vbTzsKrcPmFCciMIXUlPbbZg
	Mm59rqru8TQW3sBDRUF+nHRN8HjkYXwoCQ8bZWJ3kQ==
X-Google-Smtp-Source: ACJfBosYaO7HOQbtGDFI9KkfqNreOT4EfTtsWlQ9Bh99tO6vl75UVDpoFL6nQYPxLP8RRInd9Z27sVbknVI10RDNYZ0=
X-Received: by 10.223.162.204 with SMTP id t12mr164706wra.258.1512993870730;
	Mon, 11 Dec 2017 04:04:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Mon, 11 Dec 2017 04:04:30 -0800 (PST)
In-Reply-To: <75e0cf65-9cbd-db7e-4c58-fab9099dd55b@vitheia.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
	<fa3e73c4-7172-989a-8c49-19baba97fc9b@vitheia.com>
	<CAGAf8LxihR_dh7_L7FmFZFeH52yvFrGPjGCbm1XEirWBtzqv=A@mail.gmail.com>
	<75e0cf65-9cbd-db7e-4c58-fab9099dd55b@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 11 Dec 2017 13:04:30 +0100
Message-ID: <CAGAf8Lw80WHRuaAg2nHDeTpG71pvr4y6M+FhEj5Tfw38htEnHg@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: rocko build fails
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
X-List-Received-Date: Mon, 11 Dec 2017 12:04:35 -0000
Content-Type: multipart/alternative; boundary="f403045ea6a43659a705600f5685"

--f403045ea6a43659a705600f5685
Content-Type: text/plain; charset="UTF-8"

Hello Mircea,

I again went through your messages, and read carefully (since I am also
learner, trying to help, and at the same time, to learn).

And this:









* File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
90, in write_task_data(status='passed',
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0/do_fetch',
e=<bb.build.TaskSucceeded object at 0x7fa8a2edda58>,
d=<bb.data_smart.DataSmart object at 0x7fa8a28028d0>):
f.write(d.expand("Elapsed time: %0.2f seconds\n" % elapsedtime))
>            cpu, iostats, resources, childres =
get_process_cputime(os.getpid())                 if cpu:  File
"/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line 29, in
get_process_cputime(pid=5946):         if os.path.isfile("/proc/%d/io" %
pid):    >        with open("/proc/%d/io" % pid, "r") as f:
while True:PermissionError: [Errno 13] Permission denied: '/proc/5946/io'*

I also replicated, writing/replicating this output in Python (3.6.3) on my
Fedora 26. And, for me, it also works (output from my Python script):

[user@localhost python3.6]$ pwd
/home/user/projects/python3.6
[user@localhost python3.6]$ ./pytime.py
cputime is 16767822
proctime is: 1
PID is: 13074
<_io.TextIOWrapper name='/proc/13074/io' mode='r' encoding='UTF-8'>
Again, PID is 13074
UID is 1000
GID is 1000
[user@localhost python3.6]$

UID = 1000 is user - user, GID = 1000 is user (user:user). I am NOT
executing this as root, for sure!?

We need to wait for somebody more (YOCTO project wise) versatile.

Thank you,
Zoran

On Mon, Dec 11, 2017 at 10:35 AM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> I installed autoconf and automake, result is the same. bitbake still tries
> to fetch the respective packages, it doesn't use the ones provided by the
> system, and that makes sense... It creates its own toolchain.
>
> As I understand the *Permission denied* error pops up during do_fetch,
> when it tries to gather some statistics for that process. For some reason
> it cannot open the */proc/**PID**/io* files.
>
> I've created a python script to test if I'm able to read such a file from
> python. I was successful...
>
> This error comes up for a bunch of *-native recipes. Here is the complete
> log, the one from the previous email was truncated:
>
> $ bitbake core-image-minimal
> Loading cache: 100% |#############################
> ############################################################
> #################################################################| Time:
> 0:00:00
> Loaded 1275 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.36.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal-4.9"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.4.1"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "rocko:74863e0d67c1a1a63d7d7c6d7753da225e02143d"
>
> Initialising tasks: 100% |#############################
> ############################################################
> ############################################################| Time:
> 0:00:04
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: m4-native-1.4.18-r0 do_fetch: Execution of event handler
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
> 0x7fa8a28028d0>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>              if e.task == "do_rootfs":
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data(status='passed', logfile='/home/repository/
> rocko/build/tmp/buildstats/20171211092724/m4-native-1.4.18-r0/do_fetch',
> e=<bb.build.TaskSucceeded object at 0x7fa8a28028d0>,
> d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =
> get_process_cputime(os.getpid())
>                  if cpu:
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime(pid=5947):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/5947/io'
>
> ERROR: m4-native-1.4.18-r0 do_fetch: Build of do_fetch failed
> ERROR: m4-native-1.4.18-r0 do_fetch: Traceback (most recent call last):
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644,
> in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618,
> in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222,
> in fire
>     fire_class_handlers(event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134,
> in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106,
> in execute_handler
>     ret = handler(event)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/5947/io'
>
> ERROR: Task (/home/repository/rocko/poky/meta/recipes-devtools/m4/m4-
> native_1.4.18.bb:do_fetch) failed with exit code '1'
> ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Execution of event handler
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
> 0x7fa8a2fbc9e8>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>              if e.task == "do_rootfs":
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data(status='passed', logfile='/home/repository/
> rocko/build/tmp/buildstats/20171211092724/texinfo-dummy-native-1.0-r0/do_fetch',
> e=<bb.build.TaskSucceeded object at 0x7fa8a2fbc9e8>,
> d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =
> get_process_cputime(os.getpid())
>                  if cpu:
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime(pid=5945):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/5945/io'
>
> ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Build of do_fetch failed
> ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Traceback (most recent call
> last):
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644,
> in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618,
> in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222,
> in fire
>     fire_class_handlers(event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134,
> in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106,
> in execute_handler
>     ret = handler(event)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/5945/io'
>
> ERROR: Task (/home/repository/rocko/poky/meta/recipes-extended/texinfo-
> dummy-native/texinfo-dummy-native.bb:do_fetch) failed with exit code '1'
> ERROR: quilt-native-0.65-r0 do_fetch: Execution of event handler
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
> 0x7fa8a5bb8c50>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>              if e.task == "do_rootfs":
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data(status='passed', logfile='/home/repository/
> rocko/build/tmp/buildstats/20171211092724/quilt-native-0.65-r0/do_fetch',
> e=<bb.build.TaskSucceeded object at 0x7fa8a5bb8c50>,
> d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =
> get_process_cputime(os.getpid())
>                  if cpu:
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime(pid=5944):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/5944/io'
>
> ERROR: quilt-native-0.65-r0 do_fetch: Build of do_fetch failed
> ERROR: quilt-native-0.65-r0 do_fetch: Traceback (most recent call last):
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644,
> in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618,
> in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222,
> in fire
>     fire_class_handlers(event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134,
> in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106,
> in execute_handler
>     ret = handler(event)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/5944/io'
>
> ERROR: Task (/home/repository/rocko/poky/meta/recipes-devtools/quilt/
> quilt-native_0.65.bb:do_fetch) failed with exit code '1'
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Execution of event handler 'run_buildstats' failed
> Traceback (most recent call last):
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
> 0x7fa8a2edda58>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>              if e.task == "do_rootfs":
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data(status='passed', logfile='/home/repository/
> rocko/build/tmp/buildstats/20171211092724/gnu-config-
> native-20150728+gitAUTOINC+b576fa87c1-r0/do_fetch',
> e=<bb.build.TaskSucceeded object at 0x7fa8a2edda58>,
> d=<bb.data_smart.DataSmart object at 0x7fa8a28028d0>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =
> get_process_cputime(os.getpid())
>                  if cpu:
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime(pid=5946):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/5946/io'
>
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Build of do_fetch failed
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Traceback (most recent call last):
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644,
> in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618,
> in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222,
> in fire
>     fire_class_handlers(event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134,
> in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106,
> in execute_handler
>     ret = handler(event)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/5946/io'
>
> ERROR: Task (virtual:native:/home/repository/rocko/poky/meta/
> recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 4 tasks of which 0 didn't need to be rerun
> and 4 failed.
>
> Summary: 4 tasks failed:
>   /home/repository/rocko/poky/meta/recipes-devtools/m4/m4-
> native_1.4.18.bb:do_fetch
>   /home/repository/rocko/poky/meta/recipes-extended/texinfo-
> dummy-native/texinfo-dummy-native.bb:do_fetch
>   /home/repository/rocko/poky/meta/recipes-devtools/quilt/
> quilt-native_0.65.bb:do_fetch
>   virtual:native:/home/repository/rocko/poky/meta/
> recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch
> Summary: There were 12 ERROR messages shown, returning a non-zero exit
> code.
>
>

--f403045ea6a43659a705600f5685
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Mircea,<div><br></div><div>I again went through your=
 messages, and read carefully (since I am also learner, trying to help, and=
 at the same time, to learn).</div><div><br></div><div>And this:</div><div>=
<br></div><div><i><u><span style=3D"font-size:12.8px">=C2=A0File &quot;/hom=
e/repository/rocko/poky/</span><wbr style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">meta/classes/buildstats.</span><wbr style=3D"font-siz=
e:12.8px"><span style=3D"font-size:12.8px">bbclass&quot;, line 90, in write=
_task_data(status=3D&#39;</span><wbr style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">passed&#39;, logfile=3D&#39;/home/repository/</span><=
wbr style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">rocko/build=
/tmp/buildstats/</span><wbr style=3D"font-size:12.8px"><span style=3D"font-=
size:12.8px">20171211092724/gnu-config-</span><wbr style=3D"font-size:12.8p=
x"><span style=3D"font-size:12.8px">native-20150728+gitAUTOINC+</span><wbr =
style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">b576fa87c1-r0/d=
o_fetch&#39;, e=3D&lt;bb.build.TaskSucceeded object at 0x7fa8a2edda58&gt;, =
d=3D&lt;bb.data_smart.DataSmart object at 0x7fa8a28028d0&gt;):</span><span =
class=3D"gmail-im" style=3D"font-size:12.8px"><br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.=
write(d.expand(&quot;Elapsed time: %0.2f seconds\n&quot; % elapsedtime))<br=
>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D get_process_cputime(o=
s.getpid(<wbr>))<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br></span><span style=3D=
"font-size:12.8px">=C2=A0 File &quot;/home/repository/rocko/poky/</span><wb=
r style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">meta/classes/=
buildstats.</span><wbr style=3D"font-size:12.8px"><span style=3D"font-size:=
12.8px">bbclass&quot;, line 29, in get_process_cputime(pid=3D5946):</span><=
span class=3D"gmail-im" style=3D"font-size:12.8px"><br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quot;/proc/%d/io&quot; % =
pid):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 while True:<br></span><span style=3D"font-size:12.8px">Permiss=
ionError: [Errno 13] Permission denied: &#39;/proc/5946/io&#39;</span></u><=
/i><br></div><div><i><u><span style=3D"font-size:12.8px"><br></span></u></i=
></div><div><span style=3D"font-size:12.8px">I also replicated, writing/rep=
licating this output in Python (3.6.3) on my Fedora 26. And, for me, it als=
o works (output from my Python script):</span></div><div><span style=3D"fon=
t-size:12.8px"><br></span></div><div><div><span style=3D"font-size:12.8px">=
[user@localhost python3.6]$ pwd</span></div><div><span style=3D"font-size:1=
2.8px">/home/user/projects/python3.6</span></div><div><span style=3D"font-s=
ize:12.8px">[user@localhost python3.6]$ ./pytime.py=C2=A0</span></div><div>=
<span style=3D"font-size:12.8px">cputime is 16767822</span></div><div><span=
 style=3D"font-size:12.8px">proctime is: 1</span></div><div><span style=3D"=
font-size:12.8px">PID is: 13074</span></div><div><span style=3D"font-size:1=
2.8px">&lt;_io.TextIOWrapper name=3D&#39;/proc/13074/io&#39; mode=3D&#39;r&=
#39; encoding=3D&#39;UTF-8&#39;&gt;</span></div><div><span style=3D"font-si=
ze:12.8px">Again, PID is 13074</span></div><div><span style=3D"font-size:12=
.8px">UID is 1000</span></div><div><span style=3D"font-size:12.8px">GID is =
1000</span></div><div><span style=3D"font-size:12.8px">[user@localhost pyth=
on3.6]$=C2=A0</span></div></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px">UID =3D 1000 is user - us=
er, GID =3D 1000 is user (user:user). I am NOT executing this as root, for =
sure!?</span></div><div><span style=3D"font-size:12.8px"><br></span></div><=
div><span style=3D"font-size:12.8px">We need to wait for somebody more (YOC=
TO project wise) versatile.</span></div><div><span style=3D"font-size:12.8p=
x"><br></span></div><div><span style=3D"font-size:12.8px">Thank you,</span>=
</div><div><span style=3D"font-size:12.8px">Zoran</span></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Dec 11, 2017 at =
10:35 AM, Mircea Gliga <span dir=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga=
@vitheia.com" target=3D"_blank">mircea.gliga@vitheia.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    I installed autoconf and automake, result is the same. bitbake still
    tries to fetch the respective packages, it doesn&#39;t use the ones
    provided by the system, and that makes sense... It creates its own
    toolchain.<br>
    <br>
    As I understand the *Permission denied* error pops up during
    do_fetch, when it tries to gather some statistics for that process.
    For some reason it cannot open the <b>/proc/</b><b><i>PID</i></b><b>/io=
</b>
    files.<br>
    <br>
    I&#39;ve created a python script to test if I&#39;m able to read such a=
 file
    from python. I was successful...<br>
    <br>
    This error comes up for a bunch of *-native recipes. Here is the
    complete log, the one from the previous email was truncated:<br>
    <br>
    $ bitbake core-image-minimal<br>
    Loading cache: 100%
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>#####|
    Time: 0:00:00<br>
    Loaded 1275 entries from dependency cache.<br>
    NOTE: Resolving any missing task queue dependencies<br>
    <br>
    Build Configuration:<br>
    BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;1.36.0&quot;<br>
    BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;x86_64-linux&quot;<br>
    NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;universal-4.9&q=
uot;<br>
    TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;i586-poky-linux&quot;<br>
    MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;qemux86&quot;<br>
    DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>
    DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.4.1&quot=
;<br>
    TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i=
586&quot;<br>
    TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;&quot;<br>
    meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
    meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>
    meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D
    &quot;rocko:<wbr>74863e0d67c1a1a63d7d7c6d7753da<wbr>225e02143d&quot;<br=
>
    <br>
    Initialising tasks: 100%
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>|
    Time: 0:00:04<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Execution of event handler
    &#39;run_buildstats&#39; failed<span class=3D""><br>
    Traceback (most recent call last):<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats(e=3D&lt;bb.build.<wbr>TaskSucceeded object at
    0x7fa8a28028d0&gt;):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, bb.=
build.TaskSucceeded):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write=
_task_data(&quot;passed&quot;, os.path.join(taskdir,
    e.task), e, d)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data(status=3D&#39;<wbr>passed&#39;,
logfile=3D&#39;/home/repository/<wbr>rocko/build/tmp/buildstats/<wbr>201712=
11092724/m4-native-1.4.<wbr>18-r0/do_fetch&#39;,
    e=3D&lt;bb.build.TaskSucceeded object at 0x7fa8a28028d0&gt;,
    d=3D&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<span cla=
ss=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %
    elapsedtime))<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime(pid=3D5947):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quo=
t;/proc/%d/io&quot; % pid):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with =
open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5947/io&#39;<=
br>
    <br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Build of do_fetch failed<br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Traceback (most recent call
    last):<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    644, in exec_task<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br></span>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5947/io&#39;<=
br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/<wbr>meta/recipes-devtools/m4/m4-<wbr>native_1=
.4.18.bb:do_fetch)
    failed with exit code &#39;1&#39;<br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Execution of event
    handler &#39;run_buildstats&#39; failed<span class=3D""><br>
    Traceback (most recent call last):<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats(e=3D&lt;bb.build.<wbr>TaskSucceeded object at
    0x7fa8a2fbc9e8&gt;):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, bb.=
build.TaskSucceeded):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write=
_task_data(&quot;passed&quot;, os.path.join(taskdir,
    e.task), e, d)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data(status=3D&#39;<wbr>passed&#39;,
logfile=3D&#39;/home/repository/<wbr>rocko/build/tmp/buildstats/<wbr>201712=
11092724/texinfo-dummy-<wbr>native-1.0-r0/do_fetch&#39;,
    e=3D&lt;bb.build.TaskSucceeded object at 0x7fa8a2fbc9e8&gt;,
    d=3D&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<span cla=
ss=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %
    elapsedtime))<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime(pid=3D5945):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quo=
t;/proc/%d/io&quot; % pid):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with =
open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5945/io&#39;<=
br>
    <br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Build of do_fetch
    failed<br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Traceback (most recent
    call last):<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    644, in exec_task<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br></span>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5945/io&#39;<=
br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/<wbr>meta/recipes-extended/texinfo-<wbr>dummy-=
native/texinfo-dummy-<wbr>native.bb:do_fetch)
    failed with exit code &#39;1&#39;<br>
    ERROR: quilt-native-0.65-r0 do_fetch: Execution of event handler
    &#39;run_buildstats&#39; failed<span class=3D""><br>
    Traceback (most recent call last):<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats(e=3D&lt;bb.build.<wbr>TaskSucceeded object at
    0x7fa8a5bb8c50&gt;):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, bb.=
build.TaskSucceeded):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write=
_task_data(&quot;passed&quot;, os.path.join(taskdir,
    e.task), e, d)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data(status=3D&#39;<wbr>passed&#39;,
logfile=3D&#39;/home/repository/<wbr>rocko/build/tmp/buildstats/<wbr>201712=
11092724/quilt-native-0.<wbr>65-r0/do_fetch&#39;,
    e=3D&lt;bb.build.TaskSucceeded object at 0x7fa8a5bb8c50&gt;,
    d=3D&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<span cla=
ss=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %
    elapsedtime))<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime(pid=3D5944):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quo=
t;/proc/%d/io&quot; % pid):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with =
open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5944/io&#39;<=
br>
    <br>
    ERROR: quilt-native-0.65-r0 do_fetch: Build of do_fetch failed<br>
    ERROR: quilt-native-0.65-r0 do_fetch: Traceback (most recent call
    last):<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    644, in exec_task<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br></span>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5944/io&#39;<=
br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/<wbr>meta/recipes-devtools/quilt/<wbr>quilt-na=
tive_0.65.bb:do_fetch)
    failed with exit code &#39;1&#39;<br>
    ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0 do_fetc=
h:
    Execution of event handler &#39;run_buildstats&#39; failed<span class=
=3D""><br>
    Traceback (most recent call last):<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats(e=3D&lt;bb.build.<wbr>TaskSucceeded object at
    0x7fa8a2edda58&gt;):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, bb.=
build.TaskSucceeded):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write=
_task_data(&quot;passed&quot;, os.path.join(taskdir,
    e.task), e, d)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data(status=3D&#39;<wbr>passed&#39;,
logfile=3D&#39;/home/repository/<wbr>rocko/build/tmp/buildstats/<wbr>201712=
11092724/gnu-config-<wbr>native-20150728+gitAUTOINC+<wbr>b576fa87c1-r0/do_f=
etch&#39;,
    e=3D&lt;bb.build.TaskSucceeded object at 0x7fa8a2edda58&gt;,
    d=3D&lt;bb.data_smart.DataSmart object at 0x7fa8a28028d0&gt;):<span cla=
ss=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %
    elapsedtime))<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime(pid=3D5946):<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quo=
t;/proc/%d/io&quot; % pid):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with =
open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5946/io&#39;<=
span class=3D""><br>
    <br>
    ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0 do_fetc=
h:
    Build of do_fetch failed<br>
    ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0 do_fetc=
h:
    Traceback (most recent call last):<br></span>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    644, in exec_task<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br></span>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/build=
.py&quot;, line
    618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File &quot;/home/repository/rocko/poky/<wbr>bitbake/lib/bb/event=
.py&quot;, line
    106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    166, in run_buildstats<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    90, in write_task_data<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br></span>
    =C2=A0 File
    &quot;/home/repository/rocko/poky/<wbr>meta/classes/buildstats.<wbr>bbc=
lass&quot;, line
    29, in get_process_cputime<span class=3D""><br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br></span>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/5946/io&#39;<=
br>
    <br>
    ERROR: Task
(virtual:native:/home/<wbr>repository/rocko/poky/meta/<wbr>recipes-devtools=
/gnu-config/<wbr>gnu-config_git.bb:do_fetch)
    failed with exit code &#39;1&#39;<br>
    NOTE: Tasks Summary: Attempted 4 tasks of which 0 didn&#39;t need to be
    rerun and 4 failed.<br>
    <br>
    Summary: 4 tasks failed:<br>
    =C2=A0
/home/repository/rocko/poky/<wbr>meta/recipes-devtools/m4/m4-<wbr>native_1.=
4.18.bb:do_fetch<br>
    =C2=A0
/home/repository/rocko/poky/<wbr>meta/recipes-extended/texinfo-<wbr>dummy-n=
ative/texinfo-dummy-<wbr>native.bb:do_fetch<br>
    =C2=A0
/home/repository/rocko/poky/<wbr>meta/recipes-devtools/quilt/<wbr>quilt-nat=
ive_0.65.bb:do_fetch<br>
    =C2=A0
virtual:native:/home/<wbr>repository/rocko/poky/meta/<wbr>recipes-devtools/=
gnu-config/<wbr>gnu-config_git.bb:do_fetch<br>
    Summary: There were 12 ERROR messages shown, returning a non-zero
    exit code.<br>
    <br>
  </div>

</blockquote></div><br></div>

--f403045ea6a43659a705600f5685--
