Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBFE5E00D69; Sun, 10 Dec 2017 23:58:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BEA9E00D32
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 23:58:25 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBB7wNHo014178
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 09:58:23 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
Date: Mon, 11 Dec 2017 09:58:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: rocko build fails
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
X-List-Received-Date: Mon, 11 Dec 2017 07:58:27 -0000
Content-Type: multipart/alternative;
	boundary="------------E3738AD77450256982967241"
Content-Language: en-US

--------------E3738AD77450256982967241
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I have a working krogoth build - I build images etc, everything is fine.
Then I wanted to try a rocko build, I installed the needed host 
packages: 
http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages
Then sourced env and /bitbake core-image-minimal/.
So no extra layers involved, just poky.
I get errors like this:

ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
Build of do_fetch failed
ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
Traceback (most recent call last):
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
line 644, in exec_task
     return _exec_task(fn, task, d, quieterr)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
line 618, in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 222, in fire
     fire_class_handlers(event, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 134, in fire_class_handlers
     execute_handler(name, handler, event, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 106, in execute_handler
     ret = handler(event)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/1530/io'

ERROR: Task 
(virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) 
failed with exit code '1'
ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler 
'run_buildstats' failed
Traceback (most recent call last):
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
0x7f07f3f31898>):
          elif isinstance(e, bb.build.TaskSucceeded):
     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
              if e.task == "do_rootfs":
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data(status='passed', 
logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch', 
e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>, 
d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
elapsedtime))
     >            cpu, iostats, resources, childres = 
get_process_cputime(os.getpid())
                  if cpu:
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime(pid=1543):
          if os.path.isfile("/proc/%d/io" % pid):
     >        with open("/proc/%d/io" % pid, "r") as f:
                  while True:
PermissionError: [Errno 13] Permission denied: '/proc/1543/io'

ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call last):
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
line 644, in exec_task
     return _exec_task(fn, task, d, quieterr)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
line 618, in _exec_task
     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 222, in fire
     fire_class_handlers(event, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 134, in fire_class_handlers
     execute_handler(name, handler, event, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
line 106, in execute_handler
     ret = handler(event)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 166, in run_buildstats
     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 90, in write_task_data
     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
   File 
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
line 29, in get_process_cputime
     with open("/proc/%d/io" % pid, "r") as f:
PermissionError: [Errno 13] Permission denied: '/proc/1543/io'

Any hints ?

Thanks


--------------E3738AD77450256982967241
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello,<br>
    <br>
    I have a working krogoth build - I build images etc, everything is
    fine.<br>
    Then I wanted to try a rocko build, I installed the needed host
    packages:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages">http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages</a><br>
    Then sourced env and <i>bitbake core-image-minimal</i>.<br>
    So no extra layers involved, just poky.<br>
    I get errors like this: <br>
    <br>
    ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
    Build of do_fetch failed<br>
    ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
    Traceback (most recent call last):<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
    line 644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
    line 618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 222, in fire<br>
        fire_class_handlers(event, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 106, in execute_handler<br>
        ret = handler(event)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/1530/io'<br>
    <br>
    ERROR: Task
(virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
    failed with exit code '1'<br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
    'run_buildstats' failed<br>
    Traceback (most recent call last):<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 166, in run_buildstats(e=&lt;bb.build.TaskSucceeded object at
    0x7f07f3f31898&gt;):<br>
             elif isinstance(e, bb.build.TaskSucceeded):<br>
        &gt;        write_task_data("passed", os.path.join(taskdir,
    e.task), e, d)<br>
                 if e.task == "do_rootfs":<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 90, in write_task_data(status='passed',
logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch',
    e=&lt;bb.build.TaskSucceeded object at 0x7f07f3f31898&gt;,
    d=&lt;bb.data_smart.DataSmart object at 0x7f07f23de2b0&gt;):<br>
                     f.write(d.expand("Elapsed time: %0.2f seconds\n" %
    elapsedtime))<br>
        &gt;            cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
                     if cpu:<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 29, in get_process_cputime(pid=1543):<br>
             if os.path.isfile("/proc/%d/io" % pid):<br>
        &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                     while True:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/1543/io'<br>
    <br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed<br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent
    call last):<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
    line 644, in exec_task<br>
        return _exec_task(fn, task, d, quieterr)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
    line 618, in _exec_task<br>
        event.fire(TaskSucceeded(task, logfn, localdata), localdata)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 222, in fire<br>
        fire_class_handlers(event, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 134, in fire_class_handlers<br>
        execute_handler(name, handler, event, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
    line 106, in execute_handler<br>
        ret = handler(event)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 166, in run_buildstats<br>
        write_task_data("passed", os.path.join(taskdir, e.task), e, d)<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 90, in write_task_data<br>
        cpu, iostats, resources, childres =
    get_process_cputime(os.getpid())<br>
      File
"/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
    line 29, in get_process_cputime<br>
        with open("/proc/%d/io" % pid, "r") as f:<br>
    PermissionError: [Errno 13] Permission denied: '/proc/1543/io'<br>
    <br>
    Any hints ?<br>
    <br>
    Thanks<br>
    <br>
  </body>
</html>

--------------E3738AD77450256982967241--
