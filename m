Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 156D8E00E07; Mon, 11 Dec 2017 05:23:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFDF5E00DE2
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 05:22:50 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBBDMlt7006898
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 11 Dec 2017 15:22:47 +0200
To: Paul Barker <pbarker@toganlabs.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<ebee1162-8afd-8966-33e1-9c0b95d3cec4@vitheia.com>
	<CAPyrkgy=XPND1TVRFGoJzd=U_kyOfp1hUH5CsHSgd5cKvsz+rg@mail.gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <b889dbba-5d62-9f01-1049-ad60a2e2f0e5@vitheia.com>
Date: Mon, 11 Dec 2017 15:22:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPyrkgy=XPND1TVRFGoJzd=U_kyOfp1hUH5CsHSgd5cKvsz+rg@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 11 Dec 2017 13:23:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/12/17 15:06, Paul Barker wrote:
> On Mon, Dec 11, 2017 at 12:43 PM, Mircea Gliga <mircea.gliga@vitheia.com> wrote:
>> So I went further and I tested in a VM running Debian 9 - there it works:
>> It looks like I get a Permission denied while building rocko only on Debian
>> 8, *not* on Debian 9.
>>
>> Debian 8 is listed as supported on Yocto Project Reference Manual  here:
>> http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
>> Can somebody confirm this behavior ? It's a straight forward test:
>>
>> $ git clone -b rocko git://git.yoctoproject.org/poky.git
>> $ source poky/oe-init-build-env
>> $ bitbake core-image-minimal
> This looks like a weird permission issue rather than something
> Yocto-related. How are you running your Debian 8 system? Is it bare
> metal, VM, container, some hosting providers VPS, etc?
Debian 8 is running on a real system, no VM etc.
I used netinstall with no desktop environment and without all the blows 
and whistles and added just what I needed, when I needed it.
This machine was used for the last 1,5 years or so for developing on 
Krogoth.
I was able to reproduce the problem on a second box, real machine, 
running Debian 8

Meanwhile I tried building rocko on another real machine, running Debian 
9 - it works. ( in the prev email I tested in a Debian 9 VM)

Thanks

>>
>> PS I've updated the thread subject to better reflect the problem.
>>
>> Thanks
>>
>> On 11/12/17 09:58, Mircea Gliga wrote:
>>
>> Hello,
>>
>> I have a working krogoth build - I build images etc, everything is fine.
>> Then I wanted to try a rocko build, I installed the needed host packages:
>> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages
>> Then sourced env and bitbake core-image-minimal.
>> So no extra layers involved, just poky.
>> I get errors like this:
>>
>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: Build
>> of do_fetch failed
>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
>> Traceback (most recent call last):
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 644, in exec_task
>>      return _exec_task(fn, task, d, quieterr)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 618, in _exec_task
>>      event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 222, in fire
>>      fire_class_handlers(event, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 134, in fire_class_handlers
>>      execute_handler(name, handler, event, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 106, in execute_handler
>>      ret = handler(event)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 166, in run_buildstats
>>      write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 90, in write_task_data
>>      cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 29, in get_process_cputime
>>      with open("/proc/%d/io" % pid, "r") as f:
>> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>>
>> ERROR: Task
>> (virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
>> 'run_buildstats' failed
>> Traceback (most recent call last):
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
>> 0x7f07f3f31898>):
>>           elif isinstance(e, bb.build.TaskSucceeded):
>>      >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>               if e.task == "do_rootfs":
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 90, in write_task_data(status='passed',
>> logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch',
>> e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>,
>> d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>>                   f.write(d.expand("Elapsed time: %0.2f seconds\n" %
>> elapsedtime))
>>      >            cpu, iostats, resources, childres =
>> get_process_cputime(os.getpid())
>>                   if cpu:
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 29, in get_process_cputime(pid=1543):
>>           if os.path.isfile("/proc/%d/io" % pid):
>>      >        with open("/proc/%d/io" % pid, "r") as f:
>>                   while True:
>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>
>> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
>> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call last):
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 644, in exec_task
>>      return _exec_task(fn, task, d, quieterr)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 618, in _exec_task
>>      event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 222, in fire
>>      fire_class_handlers(event, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 134, in fire_class_handlers
>>      execute_handler(name, handler, event, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 106, in execute_handler
>>      ret = handler(event)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 166, in run_buildstats
>>      write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 90, in write_task_data
>>      cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>>    File
>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buildstats.bbclass",
>> line 29, in get_process_cputime
>>      with open("/proc/%d/io" % pid, "r") as f:
>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>
>> Any hints ?
>>
>> Thanks
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>


