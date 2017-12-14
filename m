Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10628E00D7F; Thu, 14 Dec 2017 03:01:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9E11E00D72
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 03:01:32 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id g75so10576067wme.0
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 03:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vpQrCrdjJV7HxvMVCKfy0iCcz8bebT0KpHWBDxTqiJE=;
	b=lgB7j2aujLVQmQApg3cwz4yWvNowhmipA6qilI4Cku3lPwNxGMt3m9LFlr1aVwnG4s
	EOvYxZ4GnEm2WT79jEyfdY1wlFMp2WlAoMki9D/tkAggWoyYgQJytOzZu+EVAd6oHSHO
	RXn8SDfriTJ7o+HPVAvqGEb7Ki9yRfBs26eqMtfRo4hTz4xBT6XTN+nJ2/206s3+ivjk
	R6LvfHWWMJlIKCeLUFtWTPNSZ5Plny1isCueY7RNqZndYPTiDiAM1hEc1ukxLQ7gZOs2
	+Is9d0gfD5IeyL7n+A7+dGOBoo/SfMENC+VL2xvSuJRoCc+ikUHTtZIYpChEGDlcvEkG
	mAbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vpQrCrdjJV7HxvMVCKfy0iCcz8bebT0KpHWBDxTqiJE=;
	b=ekPpQsZ+Sf5KbEVCmKXBY2YZP8LQFFWtxbrmoGirdlUHoKbAgYLHXrPUtFd5W9LDUK
	N2GFLM5ykSoVBEV2Lgni2/xVi9cws/3rfE+mLHtNMZEhP6iBvT39xgMLC6GdxZ+gR0EC
	h+XTGYC1M+avGH0tLNJjFYvCotUcciWZ6JF/iroscLQg5iNHRRmc3VCClrn79vvo76mQ
	5/er+dazIZVeHf9RrosBpG+uCrMVRySRTNnu9zZuZx56gc3WT9Jr7iCn1Y4Z7uDYFrMh
	A1lzewePX5i/NsKVIhcSjBAW1OzrDbccZUJSc/O4bNIKFiF1ZmqlPXJDEGaZw92gvwBG
	eQ7Q==
X-Gm-Message-State: AKGB3mJ2ld2okFDNwZMlgwws+qL0t00AnYMWMFr/Vwx7R1j44i1KL2G5
	sNzxhp2hvVtrc3Na9sqQ9krc/yUjxO+ODys26cUnVQ==
X-Google-Smtp-Source: ACJfBouEw0GG3A1bDHaVR4KGXTIvdaZj29MRD25iJkZA9d2/f40TWfxytsQBEtlLNxnfqrNuc7sfJpH8YfJAJBB5YZI=
X-Received: by 10.28.194.139 with SMTP id s133mr1836380wmf.14.1513249291517;
	Thu, 14 Dec 2017 03:01:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Thu, 14 Dec 2017 03:01:30 -0800 (PST)
In-Reply-To: <7a05adf7-1fd9-9d72-01b7-8f54b9e5902c@vitheia.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<ebee1162-8afd-8966-33e1-9c0b95d3cec4@vitheia.com>
	<CAPyrkgy=XPND1TVRFGoJzd=U_kyOfp1hUH5CsHSgd5cKvsz+rg@mail.gmail.com>
	<b889dbba-5d62-9f01-1049-ad60a2e2f0e5@vitheia.com>
	<7a05adf7-1fd9-9d72-01b7-8f54b9e5902c@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 14 Dec 2017 12:01:30 +0100
Message-ID: <CAGAf8Lx=Txi4Aa_c0K4bb7xZQWMi3qSjhj2OYohp-omGna0Mdg@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Permission denied while building rocko on Debian 8
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
X-List-Received-Date: Thu, 14 Dec 2017 11:01:35 -0000
Content-Type: multipart/alternative; boundary="001a114b0a667a439105604ace36"

--001a114b0a667a439105604ace36
Content-Type: text/plain; charset="UTF-8"

You might try also to post the same question in basic form here:
http://forums.debian.net

Zoran

On Thu, Dec 14, 2017 at 7:53 AM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> Hi list
>
> See below
>
> On 11/12/17 15:22, Mircea Gliga wrote:
>
>>
>>
>> On 11/12/17 15:06, Paul Barker wrote:
>>
>>> On Mon, Dec 11, 2017 at 12:43 PM, Mircea Gliga <mircea.gliga@vitheia.com>
>>> wrote:
>>>
>>>> So I went further and I tested in a VM running Debian 9 - there it
>>>> works:
>>>> It looks like I get a Permission denied while building rocko only on
>>>> Debian
>>>> 8, *not* on Debian 9.
>>>>
>>>> Debian 8 is listed as supported on Yocto Project Reference Manual  here:
>>>> http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.
>>>> html#detailed-supported-distros
>>>> Can somebody confirm this behavior ? It's a straight forward test:
>>>>
>>>> $ git clone -b rocko git://git.yoctoproject.org/poky.git
>>>> $ source poky/oe-init-build-env
>>>> $ bitbake core-image-minimal
>>>>
>>> This looks like a weird permission issue rather than something
>>> Yocto-related. How are you running your Debian 8 system? Is it bare
>>> metal, VM, container, some hosting providers VPS, etc?
>>>
>> Indeed, the problem on the Debian 8 machine was that the following
> command was run sometime in the past - we needed a python service to listen
> on a privileged port:
> $ sudo setcap 'cap_net_bind_service=+ep' '/usr/bin/python3.5'
>
> Doing a setcap -r /usr/bin/python3.5 fixes the problem.
>
> So it has nothing to do with Yocto!
>
> Thanks for support.
>
>
> Debian 8 is running on a real system, no VM etc.
>> I used netinstall with no desktop environment and without all the blows
>> and whistles and added just what I needed, when I needed it.
>> This machine was used for the last 1,5 years or so for developing on
>> Krogoth.
>> I was able to reproduce the problem on a second box, real machine,
>> running Debian 8
>>
>> Meanwhile I tried building rocko on another real machine, running Debian
>> 9 - it works. ( in the prev email I tested in a Debian 9 VM)
>>
>> Thanks
>>
>>
>>>> PS I've updated the thread subject to better reflect the problem.
>>>>
>>>> Thanks
>>>>
>>>> On 11/12/17 09:58, Mircea Gliga wrote:
>>>>
>>>> Hello,
>>>>
>>>> I have a working krogoth build - I build images etc, everything is fine.
>>>> Then I wanted to try a rocko build, I installed the needed host
>>>> packages:
>>>> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-
>>>> project-qs.html#packages
>>>> Then sourced env and bitbake core-image-minimal.
>>>> So no extra layers involved, just poky.
>>>> I get errors like this:
>>>>
>>>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
>>>> Build
>>>> of do_fetch failed
>>>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
>>>> Traceback (most recent call last):
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>>>>
>>>> line 644, in exec_task
>>>>      return _exec_task(fn, task, d, quieterr)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>>>>
>>>> line 618, in _exec_task
>>>>      event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 222, in fire
>>>>      fire_class_handlers(event, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 134, in fire_class_handlers
>>>>      execute_handler(name, handler, event, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 106, in execute_handler
>>>>      ret = handler(event)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 166, in run_buildstats
>>>>      write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 90, in write_task_data
>>>>      cpu, iostats, resources, childres = get_process_cputime(os.getpid(
>>>> ))
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 29, in get_process_cputime
>>>>      with open("/proc/%d/io" % pid, "r") as f:
>>>> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>>>>
>>>> ERROR: Task
>>>> (virtual:native:/media/mircea/ExtLinux/Adventure/repository/
>>>> rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
>>>>
>>>> failed with exit code '1'
>>>> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
>>>> 'run_buildstats' failed
>>>> Traceback (most recent call last):
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 166, in run_buildstats(e=<bb.build.TaskSucceeded object at
>>>> 0x7f07f3f31898>):
>>>>           elif isinstance(e, bb.build.TaskSucceeded):
>>>>      >        write_task_data("passed", os.path.join(taskdir, e.task),
>>>> e, d)
>>>>               if e.task == "do_rootfs":
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 90, in write_task_data(status='passed',
>>>> logfile='/media/mircea/ExtLinux/Adventure/repository/rocko/
>>>> build/tmp/buildstats/20171211074610/autoconf-native-2.69-r11/do_fetch',
>>>>
>>>> e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>,
>>>> d=<bb.data_smart.DataSmart object at 0x7f07f23de2b0>):
>>>>                   f.write(d.expand("Elapsed time: %0.2f seconds\n" %
>>>> elapsedtime))
>>>>      >            cpu, iostats, resources, childres =
>>>> get_process_cputime(os.getpid())
>>>>                   if cpu:
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 29, in get_process_cputime(pid=1543):
>>>>           if os.path.isfile("/proc/%d/io" % pid):
>>>>      >        with open("/proc/%d/io" % pid, "r") as f:
>>>>                   while True:
>>>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>>>
>>>> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
>>>> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call
>>>> last):
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>>>>
>>>> line 644, in exec_task
>>>>      return _exec_task(fn, task, d, quieterr)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>>>>
>>>> line 618, in _exec_task
>>>>      event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 222, in fire
>>>>      fire_class_handlers(event, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 134, in fire_class_handlers
>>>>      execute_handler(name, handler, event, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>>>>
>>>> line 106, in execute_handler
>>>>      ret = handler(event)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 166, in run_buildstats
>>>>      write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 90, in write_task_data
>>>>      cpu, iostats, resources, childres = get_process_cputime(os.getpid(
>>>> ))
>>>>    File
>>>> "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>>>> meta/classes/buildstats.bbclass",
>>>> line 29, in get_process_cputime
>>>>      with open("/proc/%d/io" % pid, "r") as f:
>>>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>>>
>>>> Any hints ?
>>>>
>>>> Thanks
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b0a667a439105604ace36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You might try also to post the same question in basic form=
 here: <a href=3D"http://forums.debian.net">http://forums.debian.net</a><br=
><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Thu, Dec 14, 2017 at 7:53 AM, Mircea Gliga <span di=
r=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga@vitheia.com" target=3D"_blank"=
>mircea.gliga@vitheia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Hi list<br>
<br>
See below<br>
<br>
On 11/12/17 15:22, Mircea Gliga wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
On 11/12/17 15:06, Paul Barker wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Mon, Dec 11, 2017 at 12:43 PM, Mircea Gliga &lt;<a href=3D"mailto:mircea=
.gliga@vitheia.com" target=3D"_blank">mircea.gliga@vitheia.com</a>&gt; wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
So I went further and I tested in a VM running Debian 9 - there it works:<b=
r>
It looks like I get a Permission denied while building rocko only on Debian=
<br>
8, *not* on Debian 9.<br>
<br>
Debian 8 is listed as supported on Yocto Project Reference Manual=C2=A0 her=
e:<br>
<a href=3D"http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#=
detailed-supported-distros" rel=3D"noreferrer" target=3D"_blank">http://www=
.yoctoproject.org/do<wbr>cs/2.4/ref-manual/ref-manual.<wbr>html#detailed-su=
pported-<wbr>distros</a> <br>
Can somebody confirm this behavior ? It&#39;s a straight forward test:<br>
<br>
$ git clone -b rocko git://<a href=3D"http://git.yoctoproject.org/poky.git"=
 rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/pok<wbr>y.git</a=
><br>
$ source poky/oe-init-build-env<br>
$ bitbake core-image-minimal<br>
</blockquote>
This looks like a weird permission issue rather than something<br>
Yocto-related. How are you running your Debian 8 system? Is it bare<br>
metal, VM, container, some hosting providers VPS, etc?<br>
</blockquote></blockquote>
Indeed, the problem on the Debian 8 machine was that the following command =
was run sometime in the past - we needed a python service to listen on a pr=
ivileged port:<br>
$ sudo setcap &#39;cap_net_bind_service=3D+ep&#39; &#39;/usr/bin/python3.5&=
#39;<br>
<br>
Doing a setcap -r /usr/bin/python3.5 fixes the problem.<br>
<br>
So it has nothing to do with Yocto!<br>
<br>
Thanks for support.<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Debian 8 is running on a real system, no VM etc.<br>
I used netinstall with no desktop environment and without all the blows and=
 whistles and added just what I needed, when I needed it.<br>
This machine was used for the last 1,5 years or so for developing on Krogot=
h.<br>
I was able to reproduce the problem on a second box, real machine, running =
Debian 8<br>
<br>
Meanwhile I tried building rocko on another real machine, running Debian 9 =
- it works. ( in the prev email I tested in a Debian 9 VM)<br>
<br>
Thanks<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
PS I&#39;ve updated the thread subject to better reflect the problem.<br>
<br>
Thanks<br>
<br>
On 11/12/17 09:58, Mircea Gliga wrote:<br>
<br>
Hello,<br>
<br>
I have a working krogoth build - I build images etc, everything is fine.<br=
>
Then I wanted to try a rocko build, I installed the needed host packages:<b=
r>
<a href=3D"http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-proj=
ect-qs.html#packages" rel=3D"noreferrer" target=3D"_blank">http://www.yocto=
project.org/do<wbr>cs/2.4/yocto-project-qs/yocto-<wbr>project-qs.html#packa=
ges</a> <br>
Then sourced env and bitbake core-image-minimal.<br>
So no extra layers involved, just poky.<br>
I get errors like this:<br>
<br>
ERROR: gnu-config-native-20150728+git<wbr>AUTOINC+b576fa87c1-r0 do_fetch: B=
uild<br>
of do_fetch failed<br>
ERROR: gnu-config-native-20150728+git<wbr>AUTOINC+b576fa87c1-r0 do_fetch:<b=
r>
Traceback (most recent call last):<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/build.py&quot;, <br>
line 644, in exec_task<br>
=C2=A0=C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/build.py&quot;, <br>
line 618, in _exec_task<br>
=C2=A0=C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), =
localdata)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 222, in fire<br>
=C2=A0=C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 134, in fire_class_handlers<br>
=C2=A0=C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 106, in execute_handler<br>
=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 166, in run_buildstats<br>
=C2=A0=C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(t=
askdir, e.task), e, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 90, in write_task_data<br>
=C2=A0=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D get_process_=
cputime(os.getpid(<wbr>))<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 29, in get_process_cputime<br>
=C2=A0=C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&q=
uot;) as f:<br>
PermissionError: [Errno 13] Permission denied: &#39;/proc/1530/io&#39;<br>
<br>
ERROR: Task<br>
(virtual:native:/media/mircea/<wbr>ExtLinux/Adventure/repository/<wbr>rocko=
/poky/meta/recipes-devtoo<wbr>ls/gnu-config/gnu-config_git.<wbr>bb:do_fetch=
) <br>
failed with exit code &#39;1&#39;<br>
ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler<br>
&#39;run_buildstats&#39; failed<br>
Traceback (most recent call last):<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 166, in run_buildstats(e=3D&lt;bb.build.Tas<wbr>kSucceeded object at<b=
r>
0x7f07f3f31898&gt;):<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinstance(e, b=
b.build.TaskSucceeded):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wri=
te_task_data(&quot;passed&quot;, os.path.join(taskdir, e.task), e, d)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 90, in write_task_data(status=3D&#39;passed<wbr>&#39;,<br>
logfile=3D&#39;/media/mircea/ExtLinu<wbr>x/Adventure/repository/rocko/<wbr>=
build/tmp/buildstats/201712110<wbr>74610/autoconf-native-2.69-<wbr>r11/do_f=
etch&#39;, <br>
e=3D&lt;bb.build.TaskSucceeded object at 0x7f07f3f31898&gt;,<br>
d=3D&lt;bb.data_smart.DataSmart object at 0x7f07f23de2b0&gt;):<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %0.2f seco=
nds\n&quot; %<br>
elapsedtime))<br>
=C2=A0=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D<br>
get_process_cputime(os.getpid(<wbr>))<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 29, in get_process_cputime(pid=3D1543):<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.isfile(&q=
uot;/proc/%d/io&quot; % pid):<br>
=C2=A0=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wit=
h open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br>
PermissionError: [Errno 13] Permission denied: &#39;/proc/1543/io&#39;<br>
<br>
ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed<br>
ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call last)=
:<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/build.py&quot;, <br>
line 644, in exec_task<br>
=C2=A0=C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/build.py&quot;, <br>
line 618, in _exec_task<br>
=C2=A0=C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, localdata), =
localdata)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 222, in fire<br>
=C2=A0=C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 134, in fire_class_handlers<br>
=C2=A0=C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>bitb=
ake/lib/bb/event.py&quot;, <br>
line 106, in execute_handler<br>
=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 166, in run_buildstats<br>
=C2=A0=C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.path.join(t=
askdir, e.task), e, d)<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 90, in write_task_data<br>
=C2=A0=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D get_process_=
cputime(os.getpid(<wbr>))<br>
=C2=A0=C2=A0 File<br>
&quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/poky/<wbr>meta=
/classes/buildstats.bbclas<wbr>s&quot;, <br>
line 29, in get_process_cputime<br>
=C2=A0=C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&q=
uot;) as f:<br>
PermissionError: [Errno 13] Permission denied: &#39;/proc/1543/io&#39;<br>
<br>
Any hints ?<br>
<br>
Thanks<br>
<br>
<br>
<br>
<br><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br>
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
<br>
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114b0a667a439105604ace36--
