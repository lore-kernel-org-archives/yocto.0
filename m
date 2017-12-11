Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FDB4E00D79; Mon, 11 Dec 2017 01:35:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7716E00D75
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 01:35:32 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBB9ZShw012059
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 11 Dec 2017 11:35:28 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
	<fa3e73c4-7172-989a-8c49-19baba97fc9b@vitheia.com>
	<CAGAf8LxihR_dh7_L7FmFZFeH52yvFrGPjGCbm1XEirWBtzqv=A@mail.gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <75e0cf65-9cbd-db7e-4c58-fab9099dd55b@vitheia.com>
Date: Mon, 11 Dec 2017 11:35:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxihR_dh7_L7FmFZFeH52yvFrGPjGCbm1XEirWBtzqv=A@mail.gmail.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 09:35:57 -0000
Content-Type: multipart/alternative;
	boundary="------------4C578BDA0EEDF8E44465EB9A"
Content-Language: en-US

--------------4C578BDA0EEDF8E44465EB9A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I installed autoconf and automake, result is the same. bitbake still 
tries to fetch the respective packages, it doesn't use the ones provided 
by the system, and that makes sense... It creates its own toolchain.

As I understand the *Permission denied* error pops up during do_fetch, 
when it tries to gather some statistics for that process. For some 
reason it cannot open the */proc/**/PID/**/io* files.

I've created a python script to test if I'm able to read such a file 
from python. I was successful...

This error comes up for a bunch of *-native recipes. Here is the 
complete log, the one from the previous email was truncated:

$ bitbake core-image-minimal
Loading cache: 100% 
|##########################################################################################################################################################| 
Time: 0:00:00
Loaded 1275 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal-4.9"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4.1"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "rocko:74863e0d67c1a1a63d7d7c6d7753da225e02143d"

Initialising tasks: 100% 
|#####################################################################################################################################################| 
Time: 0:00:04
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: m4-native-1.4.18-r0 do_fetch: Execution of event handler 
'run_buildstats' failed
Traceback (most recent call last):
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
0x7fa8a28028d0>):
          elif isinstance(e, bb.build.TaskSucceeded):
     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
              if e.task == "do_rootfs":
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data(status='passed', 
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/m4-native-1.4.18-r0/do_fetch', 
e=<bb.build.TaskSucceeded object at 0x7fa8a28028d0>, 
d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
elapsedtime))
     >            cpu, iostats, resources, childres = 
get_process_cputime(os.getpid())
                  if cpu:
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime(pid=5947):
          if os.path.isfile("/proc/%d/io" % pid):
     >        with open("/proc/%d/io" % pid, "r") as f:
                  while True:
PermissionError: [Errno 13] Permission denied: '/proc/5947/io'

ERROR: m4-native-1.4.18-r0 do_fetch: Build of do_fetch failed
ERROR: m4-native-1.4.18-r0 do_fetch: Traceback (most recent call last):
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644, 
in exec_task
     return _exec_task(fn, task, d, quieterr)
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618, 
in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222, 
in fire
     fire_class_handlers(event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134, 
in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106, 
in execute_handler
     ret = handler(event)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/5947/io'

ERROR: Task 
(/home/repository/rocko/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) 
failed with exit code '1'
ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Execution of event handler 
'run_buildstats' failed
Traceback (most recent call last):
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
0x7fa8a2fbc9e8>):
          elif isinstance(e, bb.build.TaskSucceeded):
     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
              if e.task == "do_rootfs":
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data(status='passed', 
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/texinfo-dummy-native-1.0-r0/do_fetch', 
e=<bb.build.TaskSucceeded object at 0x7fa8a2fbc9e8>, 
d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
elapsedtime))
     >            cpu, iostats, resources, childres = 
get_process_cputime(os.getpid())
                  if cpu:
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime(pid=5945):
          if os.path.isfile("/proc/%d/io" % pid):
     >        with open("/proc/%d/io" % pid, "r") as f:
                  while True:
PermissionError: [Errno 13] Permission denied: '/proc/5945/io'

ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Build of do_fetch failed
ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Traceback (most recent call 
last):
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644, 
in exec_task
     return _exec_task(fn, task, d, quieterr)
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618, 
in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222, 
in fire
     fire_class_handlers(event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134, 
in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106, 
in execute_handler
     ret = handler(event)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/5945/io'

ERROR: Task 
(/home/repository/rocko/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_fetch) 
failed with exit code '1'
ERROR: quilt-native-0.65-r0 do_fetch: Execution of event handler 
'run_buildstats' failed
Traceback (most recent call last):
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
0x7fa8a5bb8c50>):
          elif isinstance(e, bb.build.TaskSucceeded):
     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
              if e.task == "do_rootfs":
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data(status='passed', 
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/quilt-native-0.65-r0/do_fetch', 
e=<bb.build.TaskSucceeded object at 0x7fa8a5bb8c50>, 
d=<bb.data_smart.DataSmart object at 0x7fa8a5d41780>):
                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
elapsedtime))
     >            cpu, iostats, resources, childres = 
get_process_cputime(os.getpid())
                  if cpu:
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime(pid=5944):
          if os.path.isfile("/proc/%d/io" % pid):
     >        with open("/proc/%d/io" % pid, "r") as f:
                  while True:
PermissionError: [Errno 13] Permission denied: '/proc/5944/io'

ERROR: quilt-native-0.65-r0 do_fetch: Build of do_fetch failed
ERROR: quilt-native-0.65-r0 do_fetch: Traceback (most recent call last):
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644, 
in exec_task
     return _exec_task(fn, task, d, quieterr)
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618, 
in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222, 
in fire
     fire_class_handlers(event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134, 
in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106, 
in execute_handler
     ret = handler(event)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/5944/io'

ERROR: Task 
(/home/repository/rocko/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch) 
failed with exit code '1'
ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
Execution of event handler 'run_buildstats' failed
Traceback (most recent call last):
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
0x7fa8a2edda58>):
          elif isinstance(e, bb.build.TaskSucceeded):
     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
              if e.task == "do_rootfs":
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data(status='passed', 
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0/do_fetch', 
e=<bb.build.TaskSucceeded object at 0x7fa8a2edda58>, 
d=<bb.data_smart.DataSmart object at 0x7fa8a28028d0>):
                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
elapsedtime))
     >            cpu, iostats, resources, childres = 
get_process_cputime(os.getpid())
                  if cpu:
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime(pid=5946):
          if os.path.isfile("/proc/%d/io" % pid):
     >        with open("/proc/%d/io" % pid, "r") as f:
                  while True:
PermissionError: [Errno 13] Permission denied: '/proc/5946/io'

ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
Build of do_fetch failed
ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
Traceback (most recent call last):
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 644, 
in exec_task
     return _exec_task(fn, task, d, quieterr)
   File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line 618, 
in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 222, 
in fire
     fire_class_handlers(event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 134, 
in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line 106, 
in execute_handler
     ret = handler(event)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/5946/io'

ERROR: Task 
(virtual:native:/home/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4 tasks of which 0 didn't need to be 
rerun and 4 failed.

Summary: 4 tasks failed:
/home/repository/rocko/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch
/home/repository/rocko/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_fetch
/home/repository/rocko/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch
virtual:native:/home/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch
Summary: There were 12 ERROR messages shown, returning a non-zero exit code.


--------------4C578BDA0EEDF8E44465EB9A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    I installed autoconf and automake, result is the same. bitbake still
    tries to fetch the respective packages, it doesn't use the ones
    provided by the system, and that makes sense... It creates its own
    toolchain.<br>
    <br>
    As I understand the *Permission denied* error pops up during
    do_fetch, when it tries to gather some statistics for that process.
    For some reason it cannot open the <b>/proc/</b><b><i>PID</i></b><b>/io</b>
    files.<br>
    <br>
    I've created a python script to test if I'm able to read such a file
    from python. I was successful...<br>
    <br>
    This error comes up for a bunch of *-native recipes. Here is the
    complete log, the one from the previous email was truncated:<br>
    <br>
    $ bitbake core-image-minimal<br>
    Loading cache: 100%
|##########################################################################################################################################################|
    Time: 0:00:00<br>
    Loaded 1275 entries from dependency cache.<br>
    NOTE: Resolving any missing task queue dependencies<br>
    <br>
    Build Configuration:<br>
    BB_VERSION           = "1.36.0"<br>
    BUILD_SYS            = "x86_64-linux"<br>
    NATIVELSBSTRING      = "universal-4.9"<br>
    TARGET_SYS           = "i586-poky-linux"<br>
    MACHINE              = "qemux86"<br>
    DISTRO               = "poky"<br>
    DISTRO_VERSION       = "2.4.1"<br>
    TUNE_FEATURES        = "m32 i586"<br>
    TARGET_FPU           = ""<br>
    meta                 <br>
    meta-poky            <br>
    meta-yocto-bsp       =
    "rocko:74863e0d67c1a1a63d7d7c6d7753da225e02143d"<br>
    <br>
    Initialising tasks: 100%
|#####################################################################################################################################################|
    Time: 0:00:04<br>
    NOTE: Executing SetScene Tasks<br>
    NOTE: Executing RunQueue Tasks<br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Execution of event handler
    'run_buildstats' failed<br>
    Traceback (most recent call last):<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats(e=&lt;bb.build.TaskSucceeded object at
    0x7fa8a28028d0&gt;):<br>
             elif isinstance(e, bb.build.TaskSucceeded):<br>
        &gt;        write_task_data("passed", os.path.join(taskdir,
    e.task), e, d)<br>
                 if e.task == "do_rootfs":<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data(status='passed',
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/m4-native-1.4.18-r0/do_fetch',
    e=&lt;bb.build.TaskSucceeded object at 0x7fa8a28028d0&gt;,
    d=&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<br>
                     f.write(d.expand("Elapsed time: %0.2f seconds\n" %
    elapsedtime))<br>
        &gt;            cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
                     if cpu:<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime(pid=5947):<br>
             if os.path.isfile("/proc/%d/io" % pid):<br>
        &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                     while True:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5947/io'<br>
    <br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Build of do_fetch failed<br>
    ERROR: m4-native-1.4.18-r0 do_fetch: Traceback (most recent call
    last):<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    222, in fire<br>
        fire_class_handlers(event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    106, in execute_handler<br>
        ret = handler(event)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5947/io'<br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
    failed with exit code '1'<br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Execution of event
    handler 'run_buildstats' failed<br>
    Traceback (most recent call last):<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats(e=&lt;bb.build.TaskSucceeded object at
    0x7fa8a2fbc9e8&gt;):<br>
             elif isinstance(e, bb.build.TaskSucceeded):<br>
        &gt;        write_task_data("passed", os.path.join(taskdir,
    e.task), e, d)<br>
                 if e.task == "do_rootfs":<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data(status='passed',
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/texinfo-dummy-native-1.0-r0/do_fetch',
    e=&lt;bb.build.TaskSucceeded object at 0x7fa8a2fbc9e8&gt;,
    d=&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<br>
                     f.write(d.expand("Elapsed time: %0.2f seconds\n" %
    elapsedtime))<br>
        &gt;            cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
                     if cpu:<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime(pid=5945):<br>
             if os.path.isfile("/proc/%d/io" % pid):<br>
        &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                     while True:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5945/io'<br>
    <br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Build of do_fetch
    failed<br>
    ERROR: texinfo-dummy-native-1.0-r0 do_fetch: Traceback (most recent
    call last):<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    222, in fire<br>
        fire_class_handlers(event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    106, in execute_handler<br>
        ret = handler(event)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5945/io'<br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_fetch)
    failed with exit code '1'<br>
    ERROR: quilt-native-0.65-r0 do_fetch: Execution of event handler
    'run_buildstats' failed<br>
    Traceback (most recent call last):<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats(e=&lt;bb.build.TaskSucceeded object at
    0x7fa8a5bb8c50&gt;):<br>
             elif isinstance(e, bb.build.TaskSucceeded):<br>
        &gt;        write_task_data("passed", os.path.join(taskdir,
    e.task), e, d)<br>
                 if e.task == "do_rootfs":<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data(status='passed',
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/quilt-native-0.65-r0/do_fetch',
    e=&lt;bb.build.TaskSucceeded object at 0x7fa8a5bb8c50&gt;,
    d=&lt;bb.data_smart.DataSmart object at 0x7fa8a5d41780&gt;):<br>
                     f.write(d.expand("Elapsed time: %0.2f seconds\n" %
    elapsedtime))<br>
        &gt;            cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
                     if cpu:<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime(pid=5944):<br>
             if os.path.isfile("/proc/%d/io" % pid):<br>
        &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                     while True:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5944/io'<br>
    <br>
    ERROR: quilt-native-0.65-r0 do_fetch: Build of do_fetch failed<br>
    ERROR: quilt-native-0.65-r0 do_fetch: Traceback (most recent call
    last):<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    222, in fire<br>
        fire_class_handlers(event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    106, in execute_handler<br>
        ret = handler(event)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5944/io'<br>
    <br>
    ERROR: Task
(/home/repository/rocko/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch)
    failed with exit code '1'<br>
    ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
    Execution of event handler 'run_buildstats' failed<br>
    Traceback (most recent call last):<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats(e=&lt;bb.build.TaskSucceeded object at
    0x7fa8a2edda58&gt;):<br>
             elif isinstance(e, bb.build.TaskSucceeded):<br>
        &gt;        write_task_data("passed", os.path.join(taskdir,
    e.task), e, d)<br>
                 if e.task == "do_rootfs":<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data(status='passed',
logfile='/home/repository/rocko/build/tmp/buildstats/20171211092724/gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0/do_fetch',
    e=&lt;bb.build.TaskSucceeded object at 0x7fa8a2edda58&gt;,
    d=&lt;bb.data_smart.DataSmart object at 0x7fa8a28028d0&gt;):<br>
                     f.write(d.expand("Elapsed time: %0.2f seconds\n" %
    elapsedtime))<br>
        &gt;            cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
                     if cpu:<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime(pid=5946):<br>
             if os.path.isfile("/proc/%d/io" % pid):<br>
        &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                     while True:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5946/io'<br>
    <br>
    ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
    Build of do_fetch failed<br>
    ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
    Traceback (most recent call last):<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/build.py", line
    618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    222, in fire<br>
        fire_class_handlers(event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File "/home/repository/rocko/poky/bitbake/lib/bb/event.py", line
    106, in execute_handler<br>
        ret = handler(event)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
    "/home/repository/rocko/poky/meta/classes/buildstats.bbclass", line
    29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/5946/io'<br>
    <br>
    ERROR: Task
(virtual:native:/home/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
    failed with exit code '1'<br>
    NOTE: Tasks Summary: Attempted 4 tasks of which 0 didn't need to be
    rerun and 4 failed.<br>
    <br>
    Summary: 4 tasks failed:<br>
     
/home/repository/rocko/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch<br>
     
/home/repository/rocko/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_fetch<br>
     
/home/repository/rocko/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_fetch<br>
     
virtual:native:/home/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch<br>
    Summary: There were 12 ERROR messages shown, returning a non-zero
    exit code.<br>
    <br>
  </body>
</html>

--------------4C578BDA0EEDF8E44465EB9A--
