Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B285E00D69; Mon, 11 Dec 2017 04:43:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F36EE008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:43:16 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBBChE3a019206
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 14:43:15 +0200
To: yocto@yoctoproject.org
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <ebee1162-8afd-8966-33e1-9c0b95d3cec4@vitheia.com>
Date: Mon, 11 Dec 2017 14:43:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
Subject: Re: Permission denied while building rocko on Debian 8 [was: rocko build fails]
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
X-List-Received-Date: Mon, 11 Dec 2017 12:43:19 -0000
Content-Type: multipart/alternative;
	boundary="------------8E9622163D3243B176B105B9"
Content-Language: en-US

--------------8E9622163D3243B176B105B9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

So I went further and I tested in a VM running Debian 9 - there it works:
It looks like I get a Permission denied while building rocko only on 
Debian 8, *not* on Debian 9.

Debian 8 is listed as supported on /Yocto Project Reference Manual/ 
here: 
http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
Can somebody confirm this behavior ? It's a straight forward test:

$ git clone -b rocko git://git.yoctoproject.org/poky.git
$ source poky/oe-init-build-env
$ bitbake core-image-minimal


PS I've updated the thread subject to better reflect the problem.

Thanks

On 11/12/17 09:58, Mircea Gliga wrote:
> Hello,
>
> I have a working krogoth build - I build images etc, everything is fine.
> Then I wanted to try a rocko build, I installed the needed host 
> packages: 
> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages
> Then sourced env and /bitbake core-image-minimal/.
> So no extra layers involved, just poky.
> I get errors like this:
>
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
> Build of do_fetch failed
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: 
> Traceback (most recent call last):
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 222, in fire
>     fire_class_handlers(event, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 106, in execute_handler
>     ret = handler(event)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>
> ERROR: Task 
> (virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch) 
> failed with exit code '1'
> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler 
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at 
> 0x7f07f3f31898>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), 
> e, d)
>              if e.task == "do_rootfs":
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 90, in write_task_data(status='passed', 
> logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch', 
> e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>, 
> d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" % 
> elapsedtime))
>     >            cpu, iostats, resources, childres = 
> get_process_cputime(os.getpid())
>                  if cpu:
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 29, in get_process_cputime(pid=1543):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call 
> last):
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py", 
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 222, in fire
>     fire_class_handlers(event, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py", 
> line 106, in execute_handler
>     ret = handler(event)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File 
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass", 
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> Any hints ?
>
> Thanks
>
>
>


--------------8E9622163D3243B176B105B9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    So I went further and I tested in a VM running Debian 9 - there it
    works:<br>
    It looks like I get a Permission denied while building rocko only on
    Debian 8, *not* on Debian 9.<br>
    <br>
    Debian 8 is listed as supported on <span class="emphasis"><em>Yocto
        Project Reference Manual</em></span> 
    here:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros">http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros</a><br>
    Can somebody confirm this behavior ? It's a straight forward test:<br>
    <br>
    $ git clone -b rocko git://git.yoctoproject.org/poky.git<br>
    $ source poky/oe-init-build-env<br>
    $ bitbake core-image-minimal<br>
    <br>
    <br>
    PS I've updated the thread subject to better reflect the problem.<br>
    <br>
    Thanks<br>
    <br>
    <div class="moz-cite-prefix">On 11/12/17 09:58, Mircea Gliga wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      Hello,<br>
      <br>
      I have a working krogoth build - I build images etc, everything is
      fine.<br>
      Then I wanted to try a rocko build, I installed the needed host
      packages:
      <a class="moz-txt-link-freetext"
href="http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages"
        moz-do-not-send="true">http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages</a><br>
      Then sourced env and <i>bitbake core-image-minimal</i>.<br>
      So no extra layers involved, just poky.<br>
      I get errors like this: <br>
      <br>
      ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0
      do_fetch: Build of do_fetch failed<br>
      ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0
      do_fetch: Traceback (most recent call last):<br>
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
      ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event
      handler 'run_buildstats' failed<br>
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
                       f.write(d.expand("Elapsed time: %0.2f seconds\n"
      % elapsedtime))<br>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------8E9622163D3243B176B105B9--
