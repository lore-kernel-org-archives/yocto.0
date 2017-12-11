Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D285CE00D69; Mon, 11 Dec 2017 00:35:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAACAE00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 00:35:05 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBB8Z2J5019657
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 11 Dec 2017 10:35:03 +0200
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <fa3e73c4-7172-989a-8c49-19baba97fc9b@vitheia.com>
Date: Mon, 11 Dec 2017 10:35:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 08:35:09 -0000
Content-Type: multipart/alternative;
	boundary="------------94FEAFFC4EF5E59C61AAADFE"
Content-Language: en-US

--------------94FEAFFC4EF5E59C61AAADFE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi again,

 >For the starters, No idea what is your host. I will assume it is Ubuntu.

Sorry about that.
I'm on Debian 8:
# cat /etc/os-release
PRETTY_NAME="Debian GNU/Linux 8 (jessie)"

I updated the system this morning, and again now:

# aptitude update; aptitude full-upgrade
[...]
No packages will be installed, upgraded, or removed.
0 packages upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B of archives. After unpacking 0 B will be used.

I checked again if I have all the packages mentioned on the Quick Start 
guide installed: 
http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages

They are all there.
Should I also install autoconf/automake ? They are not mentioned in the 
guide ...

Thanks


On 11/12/17 10:25, Zoran Stojsavljevic wrote:
> > Any hints ?
>
> For the starters, No idea what is your host. I will assume it is Ubuntu.
>
> So for rocko, you need to upgrade you host. I have Fedora 26, so my 
> latest autotools are:
> [root@localhost ~]# dnf install autoconf automake
> Last metadata expiration check: 0:05:16 ago on Mon 11 Dec 2017 
> 09:14:44 AM CET.
> Package autoconf-2.69-24.fc26.noarch is already installed, skipping.
> Package automake-1.15-9.fc26.noarch is already installed, skipping.
> Dependencies resolved.
> Nothing to do.
> Complete!
> [root@localhost ~]#
> _______
>
> If you have Fedora, I warmly recommend: dnf upgrade --refresh
> If you have Ubuntu, at least: apt-get update
>
> Maybe this will solve your problem. Lets hope.
>
> Zoran
>
> On Mon, Dec 11, 2017 at 8:58 AM, Mircea Gliga 
> <mircea.gliga@vitheia.com <mailto:mircea.gliga@vitheia.com>> wrote:
>
>     Hello,
>
>     I have a working krogoth build - I build images etc, everything is
>     fine.
>     Then I wanted to try a rocko build, I installed the needed host
>     packages:
>     http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages
>     <http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages>
>     Then sourced env and /bitbake core-image-minimal/.
>     So no extra layers involved, just poky.
>     I get errors like this:
>
>     ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0
>     do_fetch: Build of do_fetch failed
>     ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0
>     do_fetch: Traceback (most recent call last):
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>     line 644, in exec_task
>         return _exec_task(fn, task, d, quieterr)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>     line 618, in _exec_task
>         event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 222, in fire
>         fire_class_handlers(event, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 134, in fire_class_handlers
>         execute_handler(name, handler, event, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 106, in execute_handler
>         ret = handler(event)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 166, in run_buildstats
>         write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 90, in write_task_data
>         cpu, iostats, resources, childres =
>     get_process_cputime(os.getpid())
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 29, in get_process_cputime
>         with open("/proc/%d/io" % pid, "r") as f:
>     PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>
>     ERROR: Task
>     (virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
>     failed with exit code '1'
>     ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event
>     handler 'run_buildstats' failed
>     Traceback (most recent call last):
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
>     0x7f07f3f31898>):
>              elif isinstance(e, bb.build.TaskSucceeded):
>         >        write_task_data("passed", os.path.join(taskdir,
>     e.task), e, d)
>                  if e.task == "do_rootfs":
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 90, in write_task_data(status='passed',
>     logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch',
>     e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>,
>     d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>                      f.write(d.expand("Elapsed time: %0.2f seconds\n"
>     % elapsedtime))
>         >            cpu, iostats, resources, childres =
>     get_process_cputime(os.getpid())
>                      if cpu:
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 29, in get_process_cputime(pid=1543):
>              if os.path.isfile("/proc/%d/io" % pid):
>         >        with open("/proc/%d/io" % pid, "r") as f:
>                      while True:
>     PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
>     ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
>     ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent
>     call last):
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>     line 644, in exec_task
>         return _exec_task(fn, task, d, quieterr)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>     line 618, in _exec_task
>         event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 222, in fire
>         fire_class_handlers(event, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 134, in fire_class_handlers
>         execute_handler(name, handler, event, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>     line 106, in execute_handler
>         ret = handler(event)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 166, in run_buildstats
>         write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 90, in write_task_data
>         cpu, iostats, resources, childres =
>     get_process_cputime(os.getpid())
>       File
>     "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>     line 29, in get_process_cputime
>         with open("/proc/%d/io" % pid, "r") as f:
>     PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
>     Any hints ?
>
>     Thanks
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------94FEAFFC4EF5E59C61AAADFE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi again, <br>
    <br>
    &gt;<span style="font-size:12.8px">For the starters, No idea what is
      your host. I will assume it is Ubuntu.<br>
      <br>
    </span>Sorry about that. <br>
    I'm on Debian 8: <span style="font-size:12.8px"><br>
      # cat /etc/os-release <br>
      PRETTY_NAME="Debian GNU/Linux 8 (jessie)"<br>
      <br>
    </span>I updated the system this morning, and again now:<span
      style="font-size:12.8px"><br>
      <br>
      # aptitude update; aptitude full-upgrade<br>
      [...]<br>
      No packages will be installed, upgraded, or removed.<br>
      0 packages upgraded, 0 newly installed, 0 to remove and 0 not
      upgraded.<br>
      Need to get 0 B of archives. After unpacking 0 B will be used.<br>
      <br>
    </span>I checked again if I have all the packages mentioned on the
    Quick Start guide installed:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages">http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages</a><br>
    <br>
    They are all there<span style="font-size:12.8px">.<br>
    </span>Should I also install autoconf/automake ? They are not
    mentioned in the guide ...<span style="font-size:12.8px"><br>
      <br>
    </span>Thanks<span style="font-size:12.8px"><br>
      <br>
    </span><br>
    <div class="moz-cite-prefix">On 11/12/17 10:25, Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com">
      <div dir="ltr"><span style="font-size:12.8px">&gt; Any hints ?</span><br>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">For the starters, No idea
            what is your host. I will assume it is Ubuntu.</span></div>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">So for rocko, you need to
            upgrade you host. I have Fedora 26, so my latest autotools
            are:</span></div>
        <div>
          <div><span style="font-size:12.8px">[root@localhost ~]# dnf
              install autoconf automake</span></div>
          <div><span style="font-size:12.8px">Last metadata expiration
              check: 0:05:16 ago on Mon 11 Dec 2017 09:14:44 AM CET.</span></div>
          <div><span style="font-size:12.8px">Package
              autoconf-2.69-24.fc26.noarch is already installed,
              skipping.</span></div>
          <div><span style="font-size:12.8px">Package
              automake-1.15-9.fc26.noarch is already installed,
              skipping.</span></div>
          <div><span style="font-size:12.8px">Dependencies resolved.</span></div>
          <div><span style="font-size:12.8px">Nothing to do.</span></div>
          <div><span style="font-size:12.8px">Complete!</span></div>
          <div><span style="font-size:12.8px">[root@localhost ~]#</span></div>
        </div>
        <div>_______</div>
        <div><br>
        </div>
        <div>If you have Fedora, I warmly recommend: dnf upgrade
          --refresh</div>
        <div>If you have Ubuntu, at least: apt-get update</div>
        <div><br>
        </div>
        <div>Maybe this will solve your problem. Lets hope.</div>
        <div><br>
        </div>
        <div>Zoran</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Mon, Dec 11, 2017 at 8:58 AM, Mircea
          Gliga <span dir="ltr">&lt;<a
              href="mailto:mircea.gliga@vitheia.com" target="_blank"
              moz-do-not-send="true">mircea.gliga@vitheia.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div text="#000000" bgcolor="#FFFFFF"> Hello,<br>
              <br>
              I have a working krogoth build - I build images etc,
              everything is fine.<br>
              Then I wanted to try a rocko build, I installed the needed
              host packages:
              <a class="m_-201208393440935626moz-txt-link-freetext"
href="http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages"
                target="_blank" moz-do-not-send="true">http://www.yoctoproject.org/<wbr>docs/2.4/yocto-project-qs/<wbr>yocto-project-qs.html#packages</a><br>
              Then sourced env and <i>bitbake core-image-minimal</i>.<br>
              So no extra layers involved, just poky.<br>
              I get errors like this: <br>
              <br>
              ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0
              do_fetch: Build of do_fetch failed<br>
              ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0
              do_fetch: Traceback (most recent call last):<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/build.py",
              line 644, in exec_task<br>
                  return _exec_task(fn, task, d, quieterr)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/build.py",
              line 618, in _exec_task<br>
                  event.fire(TaskSucceeded(task, logfn, localdata),
              localdata)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 222, in fire<br>
                  fire_class_handlers(event, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 134, in fire_class_handlers<br>
                  execute_handler(name, handler, event, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 106, in execute_handler<br>
                  ret = handler(event)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 166, in run_buildstats<br>
                  write_task_data("passed", os.path.join(taskdir,
              e.task), e, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 90, in write_task_data<br>
                  cpu, iostats, resources, childres =
              get_process_cputime(os.getpid(<wbr>))<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 29, in get_process_cputime<br>
                  with open("/proc/%d/io" % pid, "r") as f:<br>
              PermissionError: [Errno 13] Permission denied:
              '/proc/1530/io'<br>
              <br>
              ERROR: Task
              (virtual:native:/media/mircea/<wbr>ExtLinux/Adventure/repository/<wbr>rocko/poky/meta/recipes-<wbr>devtools/gnu-config/gnu-<wbr>config_git.bb:do_fetch)
              failed with exit code '1'<br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Execution of
              event handler 'run_buildstats' failed<br>
              Traceback (most recent call last):<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 166, in run_buildstats(e=&lt;bb.build.<wbr>TaskSucceeded
              object at 0x7f07f3f31898&gt;):<br>
                       elif isinstance(e, bb.build.TaskSucceeded):<br>
                  &gt;        write_task_data("passed",
              os.path.join(taskdir, e.task), e, d)<br>
                           if e.task == "do_rootfs":<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 90, in write_task_data(status='<wbr>passed',
              logfile='/media/mircea/<wbr>ExtLinux/Adventure/repository/<wbr>rocko/build/tmp/buildstats/<wbr>20171211074610/autoconf-<wbr>native-2.69-r11/do_fetch',
              e=&lt;bb.build.TaskSucceeded object at 0x7f07f3f31898&gt;,
              d=&lt;bb.data_smart.DataSmart object at
              0x7f07f23de2b0&gt;):<br>
                               f.write(d.expand("Elapsed time: %0.2f
              seconds\n" % elapsedtime))<br>
                  &gt;            cpu, iostats, resources, childres =
              get_process_cputime(os.getpid(<wbr>))<br>
                               if cpu:<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 29, in get_process_cputime(pid=1543):<br>
                       if os.path.isfile("/proc/%d/io" % pid):<br>
                  &gt;        with open("/proc/%d/io" % pid, "r") as f:<br>
                               while True:<br>
              PermissionError: [Errno 13] Permission denied:
              '/proc/1543/io'<br>
              <br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Build of
              do_fetch failed<br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most
              recent call last):<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/build.py",
              line 644, in exec_task<br>
                  return _exec_task(fn, task, d, quieterr)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/build.py",
              line 618, in _exec_task<br>
                  event.fire(TaskSucceeded(task, logfn, localdata),
              localdata)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 222, in fire<br>
                  fire_class_handlers(event, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 134, in fire_class_handlers<br>
                  execute_handler(name, handler, event, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitbake/lib/bb/event.py",
              line 106, in execute_handler<br>
                  ret = handler(event)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 166, in run_buildstats<br>
                  write_task_data("passed", os.path.join(taskdir,
              e.task), e, d)<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 90, in write_task_data<br>
                  cpu, iostats, resources, childres =
              get_process_cputime(os.getpid(<wbr>))<br>
                File
              "/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta/classes/buildstats.<wbr>bbclass",
              line 29, in get_process_cputime<br>
                  with open("/proc/%d/io" % pid, "r") as f:<br>
              PermissionError: [Errno 13] Permission denied:
              '/proc/1543/io'<br>
              <br>
              Any hints ?<br>
              <br>
              Thanks<br>
              <br>
            </div>
            <br>
            --<br>
            ______________________________<wbr>_________________<br>
            yocto mailing list<br>
            <a href="mailto:yocto@yoctoproject.org"
              moz-do-not-send="true">yocto@yoctoproject.org</a><br>
            <a href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
            <br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------94FEAFFC4EF5E59C61AAADFE--
