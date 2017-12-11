Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6401DE00D69; Mon, 11 Dec 2017 00:25:34 -0800 (PST)
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
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D09E00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 00:25:32 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id i11so12408836wmf.4
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 00:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BhMmaCAdN7M3BBDWOHDeMgctggC0nv6tdj5m2jVE68I=;
	b=mpbq63KDQ0tAmNJITY4tjnBOLEv97DH7E0Ep0tu/fQIDTtjNDgkST6in6u4dU++O+I
	MksQFx768Ewrehc81dC2dT5wN542MOn+ufO9GIJ5+MOYtnZXponi6rUGF6z84jOCryje
	xc1CcuAdpw9tvSqZAdTXkyfMU90npw3yDFmrMktAoXJ39zYi/iVD7NlXImOq9Qq+X+jU
	zc62xkZQIo8GFyfGz7y+c6XMLbIz00IevX05mLWCZ1kiUSDYbLv7EBjTNQcE3YYwOau6
	mEulFnUrQOV0Z6+k1jb5TaF8/hN0gJ7c0weKgz4ekJAg55PxLxTWHVzHRYiKv2rjdzRJ
	ib1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BhMmaCAdN7M3BBDWOHDeMgctggC0nv6tdj5m2jVE68I=;
	b=ZLbvmDKFlHirGBDakTB79qC65gujdoeIY06UuM73JieZ1sTxSPfJ+y1lsAULG2L4Nh
	s0uqtVqsM/6aETLcbmZreytMwmycZmPBkg/o5+ByXCuF0WrogFAACS37XeOymhEvFv7L
	BuXJ6DiZTOrac5FiwQOaGxoZRGUmxvh7+c/IiFEW0ZOEEjsylVChUrtBgSHxdqrxk4nr
	P5wEa20VDYggx+VyAwX2QDMAjOV4UvvKiCwlEF5a3Mmzj4c0jGCy5sNQ9CUuzn0QhRbe
	d+RejOLkXXwqG4sdZOsuzgQqR3FmPecrL2+AG7A4UuswpL6vEH6bJhzkd5lJYnEimEcn
	SEDw==
X-Gm-Message-State: AKGB3mJo7pCP3y7zAe8eRJvolUNno/2YfAbFB+K6mCYZBr8gx/xO25i2
	FJvmNjipKeR6RbSEPNVmrwMyBw67SoGlKk0YPHz6+g==
X-Google-Smtp-Source: ACJfBovpNhiZsRE0qyovkwt75WGv3G7cwrqwgKj+btS1z+zNbtfUOWC6Zr/bRk08MHR0QI+Win/G/fGhyWSxKZn5+Yw=
X-Received: by 10.28.194.139 with SMTP id s133mr48017wmf.14.1512980731283;
	Mon, 11 Dec 2017 00:25:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Mon, 11 Dec 2017 00:25:30 -0800 (PST)
In-Reply-To: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 11 Dec 2017 09:25:30 +0100
Message-ID: <CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 08:25:34 -0000
Content-Type: multipart/alternative; boundary="001a114b0a660a4c0c05600c4733"

--001a114b0a660a4c0c05600c4733
Content-Type: text/plain; charset="UTF-8"

> Any hints ?

For the starters, No idea what is your host. I will assume it is Ubuntu.

So for rocko, you need to upgrade you host. I have Fedora 26, so my latest
autotools are:
[root@localhost ~]# dnf install autoconf automake
Last metadata expiration check: 0:05:16 ago on Mon 11 Dec 2017 09:14:44 AM
CET.
Package autoconf-2.69-24.fc26.noarch is already installed, skipping.
Package automake-1.15-9.fc26.noarch is already installed, skipping.
Dependencies resolved.
Nothing to do.
Complete!
[root@localhost ~]#
_______

If you have Fedora, I warmly recommend: dnf upgrade --refresh
If you have Ubuntu, at least: apt-get update

Maybe this will solve your problem. Lets hope.

Zoran

On Mon, Dec 11, 2017 at 8:58 AM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> Hello,
>
> I have a working krogoth build - I build images etc, everything is fine.
> Then I wanted to try a rocko build, I installed the needed host packages:
> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/
> yocto-project-qs.html#packages
> Then sourced env and *bitbake core-image-minimal*.
> So no extra layers involved, just poky.
> I get errors like this:
>
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Build of do_fetch failed
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
> Traceback (most recent call last):
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 222, in fire
>     fire_class_handlers(event, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 106, in execute_handler
>     ret = handler(event)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>
> ERROR: Task (virtual:native:/media/mircea/ExtLinux/Adventure/repository/
> rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
> failed with exit code '1'
> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
> 'run_buildstats' failed
> Traceback (most recent call last):
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 166, in
> run_buildstats(e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>):
>          elif isinstance(e, bb.build.TaskSucceeded):
>     >        write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>              if e.task == "do_rootfs":
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 90, in
> write_task_data(status='passed', logfile='/media/mircea/
> ExtLinux/Adventure/repository/rocko/build/tmp/buildstats/
> 20171211074610/autoconf-native-2.69-r11/do_fetch',
> e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>,
> d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
> elapsedtime))
>     >            cpu, iostats, resources, childres =
> get_process_cputime(os.getpid())
>                  if cpu:
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 29, in
> get_process_cputime(pid=1543):
>          if os.path.isfile("/proc/%d/io" % pid):
>     >        with open("/proc/%d/io" % pid, "r") as f:
>                  while True:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call
> last):
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
> line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
> line 618, in _exec_task
>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 222, in fire
>     fire_class_handlers(event, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 134, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
> line 106, in execute_handler
>     ret = handler(event)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 166, in run_buildstats
>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 90, in write_task_data
>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/
> poky/meta/classes/buildstats.bbclass", line 29, in get_process_cputime
>     with open("/proc/%d/io" % pid, "r") as f:
> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>
> Any hints ?
>
> Thanks
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114b0a660a4c0c05600c4733
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; Any hints ?</span><b=
r><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px">For the starters, No idea what is your host. I will a=
ssume it is Ubuntu.</span></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px">So for rocko, you need to=
 upgrade you host. I have Fedora 26, so my latest autotools are:</span></di=
v><div><div><span style=3D"font-size:12.8px">[root@localhost ~]# dnf instal=
l autoconf automake</span></div><div><span style=3D"font-size:12.8px">Last =
metadata expiration check: 0:05:16 ago on Mon 11 Dec 2017 09:14:44 AM CET.<=
/span></div><div><span style=3D"font-size:12.8px">Package autoconf-2.69-24.=
fc26.noarch is already installed, skipping.</span></div><div><span style=3D=
"font-size:12.8px">Package automake-1.15-9.fc26.noarch is already installed=
, skipping.</span></div><div><span style=3D"font-size:12.8px">Dependencies =
resolved.</span></div><div><span style=3D"font-size:12.8px">Nothing to do.<=
/span></div><div><span style=3D"font-size:12.8px">Complete!</span></div><di=
v><span style=3D"font-size:12.8px">[root@localhost ~]#</span></div></div><d=
iv>_______</div><div><br></div><div>If you have Fedora, I warmly recommend:=
 dnf upgrade --refresh</div><div>If you have Ubuntu, at least: apt-get upda=
te</div><div><br></div><div>Maybe this will solve your problem. Lets hope.<=
/div><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Mon, Dec 11, 2017 at 8:58 AM, Mircea Gliga <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_bl=
ank">mircea.gliga@vitheia.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Hello,<br>
    <br>
    I have a working krogoth build - I build images etc, everything is
    fine.<br>
    Then I wanted to try a rocko build, I installed the needed host
    packages:
<a class=3D"m_-201208393440935626moz-txt-link-freetext" href=3D"http://www.=
yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages" =
target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.4/yocto-project-q=
s/<wbr>yocto-project-qs.html#packages</a><br>
    Then sourced env and <i>bitbake core-image-minimal</i>.<br>
    So no extra layers involved, just poky.<br>
    I get errors like this: <br>
    <br>
    ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0 do_fetc=
h:
    Build of do_fetch failed<br>
    ERROR: gnu-config-native-20150728+<wbr>gitAUTOINC+b576fa87c1-r0 do_fetc=
h:
    Traceback (most recent call last):<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/build.py&quot;,
    line 644, in exec_task<br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/build.py&quot;,
    line 618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 166, in run_buildstats<br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 90, in write_task_data<br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 29, in get_process_cputime<br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/1530/io&#39;<=
br>
    <br>
    ERROR: Task
(virtual:native:/media/mircea/<wbr>ExtLinux/Adventure/repository/<wbr>rocko=
/poky/meta/recipes-<wbr>devtools/gnu-config/gnu-<wbr>config_git.bb:do_fetch=
)
    failed with exit code &#39;1&#39;<br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
    &#39;run_buildstats&#39; failed<br>
    Traceback (most recent call last):<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 166, in run_buildstats(e=3D&lt;bb.build.<wbr>TaskSucceeded object =
at
    0x7f07f3f31898&gt;):<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, bb.=
build.TaskSucceeded):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 write=
_task_data(&quot;passed&quot;, os.path.join(taskdir,
    e.task), e, d)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 90, in write_task_data(status=3D&#39;<wbr>passed&#39;,
logfile=3D&#39;/media/mircea/<wbr>ExtLinux/Adventure/repository/<wbr>rocko/=
build/tmp/buildstats/<wbr>20171211074610/autoconf-<wbr>native-2.69-r11/do_f=
etch&#39;,
    e=3D&lt;bb.build.TaskSucceeded object at 0x7f07f3f31898&gt;,
    d=3D&lt;bb.data_smart.DataSmart object at 0x7f07f23de2b0&gt;):<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %
    elapsedtime))<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 29, in get_process_cputime(pid=3D1543):<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&quo=
t;/proc/%d/io&quot; % pid):<br>
    =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 with =
open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/1543/io&#39;<=
br>
    <br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed<br>
    ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent
    call last):<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/build.py&quot;,
    line 644, in exec_task<br>
    =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/build.py&quot;,
    line 618, in _exec_task<br>
    =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), lo=
caldata)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 222, in fire<br>
    =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 134, in fire_class_handlers<br>
    =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/bitb=
ake/lib/bb/event.py&quot;,
    line 106, in execute_handler<br>
    =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 166, in run_buildstats<br>
    =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(tas=
kdir, e.task), e, d)<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 90, in write_task_data<br>
    =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
    get_process_cputime(os.getpid(<wbr>))<br>
    =C2=A0 File
&quot;/media/mircea/ExtLinux/<wbr>Adventure/repository/rocko/<wbr>poky/meta=
/classes/buildstats.<wbr>bbclass&quot;,
    line 29, in get_process_cputime<br>
    =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quo=
t;) as f:<br>
    PermissionError: [Errno 13] Permission denied: &#39;/proc/1543/io&#39;<=
br>
    <br>
    Any hints ?<br>
    <br>
    Thanks<br>
    <br>
  </div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114b0a660a4c0c05600c4733--
