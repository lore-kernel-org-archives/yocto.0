Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D2EBE00D69; Mon, 11 Dec 2017 05:06:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68305E008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 05:06:57 -0800 (PST)
Received: by mail-wr0-f176.google.com with SMTP id v105so17503816wrc.3
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 05:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=XPsdlIPW8BUfgoRlBqDQu6B6a7x4v1gHLNiIl2prYzM=;
	b=vbKAcoqufVcUqXluwoyzhDB6+cVZKUiJKYbnBgPUxKz9N7V+HCcNvIFyo5LUhU6k0w
	X1Y7mzLJ1g7CjxhwRTrFs1GRCuAsWsoHZ/QVsL9apb4O89NMLKMUR1Y/MFtRyQwmHVfW
	d+YI5e0E4dFDpcUb/KDrPWZHN7ay2MYTR7m9kHJApZbcqa1LrILVqR6V5ioNvqM9/IDV
	thgdJ9HyP/NW/I1U77AhZ/EABw3D8igGX8eT6+ZwlhTX51Dg3s+KAY6LZatMobBnpPRd
	4u33enPZ51Nzo7Oftc5BFG6ZZaCvQyQ8IgjG+b3p6//5bjUAVwwUhbUNlIH097jwam9E
	bn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=XPsdlIPW8BUfgoRlBqDQu6B6a7x4v1gHLNiIl2prYzM=;
	b=rJjEQOZNDh1JPKuIsFU2KUVr53IgYWjCOgzkJcrCwNVX8sJs8HPi3DZiwSmaWkRxRs
	A8kLf02eiYOn50GCfiFOzCKCEMeDexQhM9EVch87qu5BQ9CBzjqXZlMNyjmy4P2dU+tu
	DN/zxCe1FoGCzD/urzZFVGeZKwnznuLQuf2spGwrI161VsasCkc4TTlh6AIvPVL97zSj
	qTsTun85aawWtXPP8NDZQ3ym1Nf7jFR7MosJ0SGxdrYcvYA9v8/aTjc8ya29ZJ4X4BIn
	dLy12/mtPr2NnbK07tzWlGJzYXnEcPJDjjkffYcoxjRP4GKMfLLXgKLP9o7itNW9iUcm
	/nUA==
X-Gm-Message-State: AKGB3mJQgOHQ27HvnbcEwk9dNPy36IjP1B+bWoo9EnOpFosVMil/nAQI
	EpYS7WdMyeq3BBFa4J5uUlYgD5sfaz/VpeYg/HBrcQ==
X-Google-Smtp-Source: ACJfBotsKOMyQvc2ZJJThgKSMaWC/gwhus1mDVlhh1LpKJ9uCv8fNShqK8J6R3CUjGQ3eU3svnU9EQ3+m7gjQcinqu0=
X-Received: by 10.223.149.5 with SMTP id 5mr302167wrs.135.1512997617108; Mon,
	11 Dec 2017 05:06:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 05:06:56 -0800 (PST)
In-Reply-To: <ebee1162-8afd-8966-33e1-9c0b95d3cec4@vitheia.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<ebee1162-8afd-8966-33e1-9c0b95d3cec4@vitheia.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 13:06:56 +0000
Message-ID: <CAPyrkgy=XPND1TVRFGoJzd=U_kyOfp1hUH5CsHSgd5cKvsz+rg@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 13:06:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2017 at 12:43 PM, Mircea Gliga <mircea.gliga@vitheia.com> w=
rote:
> So I went further and I tested in a VM running Debian 9 - there it works:
> It looks like I get a Permission denied while building rocko only on Debi=
an
> 8, *not* on Debian 9.
>
> Debian 8 is listed as supported on Yocto Project Reference Manual  here:
> http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-=
supported-distros
> Can somebody confirm this behavior ? It's a straight forward test:
>
> $ git clone -b rocko git://git.yoctoproject.org/poky.git
> $ source poky/oe-init-build-env
> $ bitbake core-image-minimal

This looks like a weird permission issue rather than something
Yocto-related. How are you running your Debian 8 system? Is it bare
metal, VM, container, some hosting providers VPS, etc?

>
>
> PS I've updated the thread subject to better reflect the problem.
>
> Thanks
>
> On 11/12/17 09:58, Mircea Gliga wrote:
>
> Hello,
>
> I have a working krogoth build - I build images etc, everything is fine.
> Then I wanted to try a rocko build, I installed the needed host packages:
> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.ht=
ml#packages
> Then sourced env and bitbake core-image-minimal.
> So no extra layers involved, just poky.
> I get errors like this:
>
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch: Buil=
d
> of do_fetch failed
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Traceback (most recent call last):
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/bu=
ild.py",
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/bu=
ild.py",
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 222, in fire
>     fire_class_handlers(event, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 106, in execute_handler
>     ret =3D handler(event)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres =3D get_process_cputime(os.getpid()=
)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>
> ERROR: Task
> (virtual:native:/media/mircea/ExtLinux/Adventure/repository/rocko/poky/me=
ta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
> failed with exit code '1'
> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 166, in run_buildstats(e=3D<bb.build.TaskSucceeded object at
> 0x7f07f3f31898>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, =
d)
>              if e.task =3D=3D "do_rootfs":
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 90, in write_task_data(status=3D'passed',
> logfile=3D'/media/mircea/ExtLinux/Adventure/repository/rocko/build/tmp/bu=
ildstats/20171211074610/autoconf-native-2.69-r11/do_fetch',
> e=3D<bb.build.TaskSucceeded object at 0x7f07f3f31898>,
> d=3D<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =3D
> get_process_cputime(os.getpid())
>                  if cpu:
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 29, in get_process_cputime(pid=3D1543):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call las=
t):
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/bu=
ild.py",
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/bu=
ild.py",
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 222, in fire
>     fire_class_handlers(event, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/ev=
ent.py",
> line 106, in execute_handler
>     ret =3D handler(event)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 90, in write_task_data
>     cpu, iostats, resources, childres =3D get_process_cputime(os.getpid()=
)
>   File
> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/meta/classes/buil=
dstats.bbclass",
> line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> Any hints ?
>
> Thanks
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Paul Barker
Tog=C3=A1n Labs Ltd

