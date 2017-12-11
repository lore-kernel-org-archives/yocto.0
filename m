Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35A4E00D69; Mon, 11 Dec 2017 01:00:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 089F5E00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 01:00:51 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id i11so12578094wmf.4
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 01:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0CXp5QYqi1PDzTYciF8v3132KMEID5DXNZEyOIAfoCk=;
	b=YIiYItVZ4nf9k5+ADC7M37nepSksEFsZybcYxAGB8P0WP7o048f7DYWrrKA1WEI3je
	y8mm5PtP25LzF3m97+jNmtjjw1kLrCWkQnyP7k8iq42gQiY+vbk5ZuCPOdIhIOTGY5mp
	CH5/hau0S2v/lksacjR6PY1U81499s3Ti0X1KfU/h8MMREFXz6yLuj4TrKk3y8ZHdmXv
	v5gsUbpnQ2IrLGF44yhBFJuxK+C9zCheuSdrqJ1lqwBFOMRCvgMlW8xr8HUAFVoh+w8t
	fMsVsvVifHqS1XvECEP0iCRJj//+VfHX/1eP6MoYDQZ2fwIFx+As1L9lZ5/omKlYjQSV
	kjBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0CXp5QYqi1PDzTYciF8v3132KMEID5DXNZEyOIAfoCk=;
	b=rLqfix9wKBzXIQudAmdgPGEZVPYdXasn4ARtDqkH31HjpeO+CCOC5yE/G9DW/Jbjvj
	saBT472KbUi+7NfDOZeGCTjTo1sI+r9J24VH7WdLiiZAifGpEn2axWaNnmTJIzH4m9oN
	DASXsMSqtCyAzVSPEh7gzXwJJhCpwcCaoEEefGL4QWY8BsmTAnjFZ9FBnVBzt8a3xy2D
	XzTOzkXMweaiTqRkxjuuXv9bxvmPNl4os3x+3v8sPQ5kKfs00rq5prpbGUYuNiFeVeko
	qGEDef8biSB2Wc8jf06eyy+KN6TPeEDtCO84amzroJqUSYmHJ3Bqu4s0V38Rirl3cRLH
	p4QA==
X-Gm-Message-State: AKGB3mIQmCy1pfTZZeXHW4Vyfm2Ecf7G36WqUzo4v40Y3/t1uQJmV+ff
	FgIgR5uYZbW3qS6M5pLx+NPwQqvJQe/EH3FGs5M=
X-Google-Smtp-Source: ACJfBovZcvCJYtyHSUkjYPTouYxm1MA+OgRMhvlmulykzWxf570RdbOOSenWrgtsnm8K1TLCNtqPloJdmy83VjwR7Ds=
X-Received: by 10.28.169.198 with SMTP id s189mr102213wme.65.1512982850935;
	Mon, 11 Dec 2017 01:00:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Mon, 11 Dec 2017 01:00:50 -0800 (PST)
In-Reply-To: <fa3e73c4-7172-989a-8c49-19baba97fc9b@vitheia.com>
References: <0e2a62dd-edac-65ae-b029-12d3b3934f66@vitheia.com>
	<CAGAf8LwcNnLbYZ=rEppUk1GfHEEANee9VO_6eavQUoOx8cZaYQ@mail.gmail.com>
	<fa3e73c4-7172-989a-8c49-19baba97fc9b@vitheia.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 11 Dec 2017 10:00:50 +0100
Message-ID: <CAGAf8LxihR_dh7_L7FmFZFeH52yvFrGPjGCbm1XEirWBtzqv=A@mail.gmail.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 09:00:53 -0000
Content-Type: multipart/alternative; boundary="001a114b9788619ef105600cc503"

--001a114b9788619ef105600cc503
Content-Type: text/plain; charset="UTF-8"

> Should I also install autoconf/automake ? They are not mentioned in the
guide ...

You mentioned it before (previous @). Sorry, I forgot. If they are not
installed, you should.

Zoran

On Mon, Dec 11, 2017 at 9:35 AM, Mircea Gliga <mircea.gliga@vitheia.com>
wrote:

> Hi again,
>
> >For the starters, No idea what is your host. I will assume it is Ubuntu.
>
> Sorry about that.
> I'm on Debian 8:
> # cat /etc/os-release
> PRETTY_NAME="Debian GNU/Linux 8 (jessie)"
>
> I updated the system this morning, and again now:
>
> # aptitude update; aptitude full-upgrade
> [...]
> No packages will be installed, upgraded, or removed.
> 0 packages upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
> Need to get 0 B of archives. After unpacking 0 B will be used.
>
> I checked again if I have all the packages mentioned on the Quick Start
> guide installed: http://www.yoctoproject.org/docs/2.4/yocto-project-qs/
> yocto-project-qs.html#packages
>
> They are all there.
> Should I also install autoconf/automake ? They are not mentioned in the
> guide ...
>
> Thanks
>
>
>
> On 11/12/17 10:25, Zoran Stojsavljevic wrote:
>
> > Any hints ?
>
> For the starters, No idea what is your host. I will assume it is Ubuntu.
>
> So for rocko, you need to upgrade you host. I have Fedora 26, so my latest
> autotools are:
> [root@localhost ~]# dnf install autoconf automake
> Last metadata expiration check: 0:05:16 ago on Mon 11 Dec 2017 09:14:44 AM
> CET.
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
> On Mon, Dec 11, 2017 at 8:58 AM, Mircea Gliga <mircea.gliga@vitheia.com>
> wrote:
>
>> Hello,
>>
>> I have a working krogoth build - I build images etc, everything is fine.
>> Then I wanted to try a rocko build, I installed the needed host packages:
>> http://www.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-
>> project-qs.html#packages
>> Then sourced env and *bitbake core-image-minimal*.
>> So no extra layers involved, just poky.
>> I get errors like this:
>>
>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
>> Build of do_fetch failed
>> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_fetch:
>> Traceback (most recent call last):
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 644, in exec_task
>>     return _exec_task(fn, task, d, quieterr)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 618, in _exec_task
>>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 222, in fire
>>     fire_class_handlers(event, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 134, in fire_class_handlers
>>     execute_handler(name, handler, event, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 106, in execute_handler
>>     ret = handler(event)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 166, in run_buildstats
>>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 90, in write_task_data
>>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 29, in get_process_cputime
>>     with open("/proc/%d/io" % pid, "r") as f:
>> PermissionError: [Errno 13] Permission denied: '/proc/1530/io'
>>
>> ERROR: Task (virtual:native:/media/mircea/ExtLinux/Adventure/repository/
>> rocko/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_fetch)
>> failed with exit code '1'
>> ERROR: autoconf-native-2.69-r11 do_fetch: Execution of event handler
>> 'run_buildstats' failed
>> Traceback (most recent call last):
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 166, in
>> run_buildstats(e=<bb.build.TaskSucceeded object at 0x7f07f3f31898>):
>>          elif isinstance(e, bb.build.TaskSucceeded):
>>     >        write_task_data("passed", os.path.join(taskdir, e.task), e,
>> d)
>>              if e.task == "do_rootfs":
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 90, in
>> write_task_data(status='passed', logfile='/media/mircea/ExtLinu
>> x/Adventure/repository/rocko/build/tmp/buildstats/201712110
>> 74610/autoconf-native-2.69-r11/do_fetch', e=<bb.build.TaskSucceeded
>> object at 0x7f07f3f31898>, d=<bb.data_smart.DataSmart object at
>> 0x7f07f23de2b0>):
>>                  f.write(d.expand("Elapsed time: %0.2f seconds\n" %
>> elapsedtime))
>>     >            cpu, iostats, resources, childres =
>> get_process_cputime(os.getpid())
>>                  if cpu:
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 29, in
>> get_process_cputime(pid=1543):
>>          if os.path.isfile("/proc/%d/io" % pid):
>>     >        with open("/proc/%d/io" % pid, "r") as f:
>>                  while True:
>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>
>> ERROR: autoconf-native-2.69-r11 do_fetch: Build of do_fetch failed
>> ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most recent call
>> last):
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 644, in exec_task
>>     return _exec_task(fn, task, d, quieterr)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/build.py",
>> line 618, in _exec_task
>>     event.fire(TaskSucceeded(task, logfn, localdata), localdata)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 222, in fire
>>     fire_class_handlers(event, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 134, in fire_class_handlers
>>     execute_handler(name, handler, event, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/bitbake/lib/bb/event.py",
>> line 106, in execute_handler
>>     ret = handler(event)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 166, in run_buildstats
>>     write_task_data("passed", os.path.join(taskdir, e.task), e, d)
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 90, in write_task_data
>>     cpu, iostats, resources, childres = get_process_cputime(os.getpid())
>>   File "/media/mircea/ExtLinux/Adventure/repository/rocko/poky/
>> meta/classes/buildstats.bbclass", line 29, in get_process_cputime
>>     with open("/proc/%d/io" % pid, "r") as f:
>> PermissionError: [Errno 13] Permission denied: '/proc/1543/io'
>>
>> Any hints ?
>>
>> Thanks
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>

--001a114b9788619ef105600cc503
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; Should I also instal=
l autoconf/automake ? They are not mentioned in the guide ...</span><br><di=
v><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fon=
t-size:12.8px">You mentioned=C2=A0it before (previous @). Sorry, I forgot. =
If they are not installed, you should.</span></div><div><span style=3D"font=
-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">Zoran<=
/span></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Mon, Dec 11, 2017 at 9:35 AM, Mircea Gliga <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:mircea.gliga@vitheia.com" target=3D"_blank">mircea.gliga@vithei=
a.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Hi again, <br><span class=3D"">
    <br>
    &gt;<span style=3D"font-size:12.8px">For the starters, No idea what is
      your host. I will assume it is Ubuntu.<br>
      <br>
    </span></span>Sorry about that. <br>
    I&#39;m on Debian 8: <span style=3D"font-size:12.8px"><br>
      # cat /etc/os-release <br>
      PRETTY_NAME=3D&quot;Debian GNU/Linux 8 (jessie)&quot;<br>
      <br>
    </span>I updated the system this morning, and again now:<span style=3D"=
font-size:12.8px"><br>
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
<a class=3D"m_-8363324307331762309moz-txt-link-freetext" href=3D"http://www=
.yoctoproject.org/docs/2.4/yocto-project-qs/yocto-project-qs.html#packages"=
 target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.4/yocto-project-=
qs/<wbr>yocto-project-qs.html#packages</a><br>
    <br>
    They are all there<span style=3D"font-size:12.8px">.<br>
    </span>Should I also install autoconf/automake ? They are not
    mentioned in the guide ...<span style=3D"font-size:12.8px"><br>
      <br>
    </span>Thanks<div><div class=3D"h5"><span style=3D"font-size:12.8px"><b=
r>
      <br>
    </span><br>
    <div class=3D"m_-8363324307331762309moz-cite-prefix">On 11/12/17 10:25,=
 Zoran Stojsavljevic
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; Any hints ?</s=
pan><br>
        <div><span style=3D"font-size:12.8px"><br>
          </span></div>
        <div><span style=3D"font-size:12.8px">For the starters, No idea
            what is your host. I will assume it is Ubuntu.</span></div>
        <div><span style=3D"font-size:12.8px"><br>
          </span></div>
        <div><span style=3D"font-size:12.8px">So for rocko, you need to
            upgrade you host. I have Fedora 26, so my latest autotools
            are:</span></div>
        <div>
          <div><span style=3D"font-size:12.8px">[root@localhost ~]# dnf
              install autoconf automake</span></div>
          <div><span style=3D"font-size:12.8px">Last metadata expiration
              check: 0:05:16 ago on Mon 11 Dec 2017 09:14:44 AM CET.</span>=
</div>
          <div><span style=3D"font-size:12.8px">Package
              autoconf-2.69-24.fc26.noarch is already installed,
              skipping.</span></div>
          <div><span style=3D"font-size:12.8px">Package
              automake-1.15-9.fc26.noarch is already installed,
              skipping.</span></div>
          <div><span style=3D"font-size:12.8px">Dependencies resolved.</spa=
n></div>
          <div><span style=3D"font-size:12.8px">Nothing to do.</span></div>
          <div><span style=3D"font-size:12.8px">Complete!</span></div>
          <div><span style=3D"font-size:12.8px">[root@localhost ~]#</span><=
/div>
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
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Mon, Dec 11, 2017 at 8:58 AM, Mircea
          Gliga <span dir=3D"ltr">&lt;<a href=3D"mailto:mircea.gliga@vithei=
a.com" target=3D"_blank">mircea.gliga@vitheia.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div text=3D"#000000" bgcolor=3D"#FFFFFF"> Hello,<br>
              <br>
              I have a working krogoth build - I build images etc,
              everything is fine.<br>
              Then I wanted to try a rocko build, I installed the needed
              host packages:
              <a class=3D"m_-8363324307331762309m_-201208393440935626moz-tx=
t-link-freetext" href=3D"http://www.yoctoproject.org/docs/2.4/yocto-project=
-qs/yocto-project-qs.html#packages" target=3D"_blank">http://www.yoctoproje=
ct.org/do<wbr>cs/2.4/yocto-project-qs/yocto-<wbr>project-qs.html#packages</=
a><br>
              Then sourced env and <i>bitbake core-image-minimal</i>.<br>
              So no extra layers involved, just poky.<br>
              I get errors like this: <br>
              <br>
              ERROR: gnu-config-native-20150728+git<wbr>AUTOINC+b576fa87c1-=
r0
              do_fetch: Build of do_fetch failed<br>
              ERROR: gnu-config-native-20150728+git<wbr>AUTOINC+b576fa87c1-=
r0
              do_fetch: Traceback (most recent call last):<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/build.py&quot;,
              line 644, in exec_task<br>
              =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<b=
r>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/build.py&quot;,
              line 618, in _exec_task<br>
              =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, loca=
ldata),
              localdata)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 222, in fire<br>
              =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 134, in fire_class_handlers<br>
              =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<b=
r>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 106, in execute_handler<br>
              =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 166, in run_buildstats<br>
              =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.pat=
h.join(taskdir,
              e.task), e, d)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 90, in write_task_data<br>
              =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
              get_process_cputime(os.getpid(<wbr>))<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 29, in get_process_cputime<br>
              =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &=
quot;r&quot;) as f:<br>
              PermissionError: [Errno 13] Permission denied:
              &#39;/proc/1530/io&#39;<br>
              <br>
              ERROR: Task
              (virtual:native:/media/mircea/<wbr>ExtLinux/Adventure/reposit=
ory/<wbr>rocko/poky/meta/recipes-devtoo<wbr>ls/gnu-config/gnu-config_git.<w=
br>bb:do_fetch)
              failed with exit code &#39;1&#39;<br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Execution of
              event handler &#39;run_buildstats&#39; failed<br>
              Traceback (most recent call last):<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 166, in run_buildstats(e=3D&lt;bb.build.Tas<wbr>kSucceed=
ed
              object at 0x7f07f3f31898&gt;):<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 elif isinsta=
nce(e, bb.build.TaskSucceeded):<br>
              =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 write_task_data(&quot;passed&quot;,
              os.path.join(taskdir, e.task), e, d)<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if e.task =3D=3D &quot;do_rootfs&quot;:<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 90, in write_task_data(status=3D&#39;passed<wbr>&#39;,
              logfile=3D&#39;/media/mircea/ExtLinu<wbr>x/Adventure/reposito=
ry/rocko/<wbr>build/tmp/buildstats/201712110<wbr>74610/autoconf-native-2.69=
-<wbr>r11/do_fetch&#39;,
              e=3D&lt;bb.build.TaskSucceeded object at 0x7f07f3f31898&gt;,
              d=3D&lt;bb.data_smart.DataSmart object at
              0x7f07f23de2b0&gt;):<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f.write(d.expand(&quot;Elapsed time: %=
0.2f
              seconds\n&quot; % elapsedtime))<br>
              =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
              get_process_cputime(os.getpid(<wbr>))<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if cpu:<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 29, in get_process_cputime(pid=3D1543):<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if os.path.i=
sfile(&quot;/proc/%d/io&quot; % pid):<br>
              =C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &quot;r&quot;) as f:<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 while True:<br>
              PermissionError: [Errno 13] Permission denied:
              &#39;/proc/1543/io&#39;<br>
              <br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Build of
              do_fetch failed<br>
              ERROR: autoconf-native-2.69-r11 do_fetch: Traceback (most
              recent call last):<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/build.py&quot;,
              line 644, in exec_task<br>
              =C2=A0=C2=A0=C2=A0 return _exec_task(fn, task, d, quieterr)<b=
r>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/build.py&quot;,
              line 618, in _exec_task<br>
              =C2=A0=C2=A0=C2=A0 event.fire(TaskSucceeded(task, logfn, loca=
ldata),
              localdata)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 222, in fire<br>
              =C2=A0=C2=A0=C2=A0 fire_class_handlers(event, d)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 134, in fire_class_handlers<br>
              =C2=A0=C2=A0=C2=A0 execute_handler(name, handler, event, d)<b=
r>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>bitbake/lib/bb/event.py&quot;,
              line 106, in execute_handler<br>
              =C2=A0=C2=A0=C2=A0 ret =3D handler(event)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 166, in run_buildstats<br>
              =C2=A0=C2=A0=C2=A0 write_task_data(&quot;passed&quot;, os.pat=
h.join(taskdir,
              e.task), e, d)<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 90, in write_task_data<br>
              =C2=A0=C2=A0=C2=A0 cpu, iostats, resources, childres =3D
              get_process_cputime(os.getpid(<wbr>))<br>
              =C2=A0 File
              &quot;/media/mircea/ExtLinux/Advent<wbr>ure/repository/rocko/=
poky/<wbr>meta/classes/buildstats.bbclas<wbr>s&quot;,
              line 29, in get_process_cputime<br>
              =C2=A0=C2=A0=C2=A0 with open(&quot;/proc/%d/io&quot; % pid, &=
quot;r&quot;) as f:<br>
              PermissionError: [Errno 13] Permission denied:
              &#39;/proc/1543/io&#39;<br>
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
            <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a><br>
            <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/yocto</a><br>
            <br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--001a114b9788619ef105600cc503--
