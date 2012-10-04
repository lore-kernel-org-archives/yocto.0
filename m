Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361F6E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 23:44:02 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so337351iea.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 23:43:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=uLpolUwE3f0cmHlGF6ZTQGNxk+/jFpSu1S4TgwP66Bw=;
	b=ALgvzzcCDD/we9NDuBzkAezptslyw/sLGPzEkKoPZlExCFKhXlHadZfjkItl7DcWZn
	T8IkAM1+S4oRUkSxHAi9r9SO6/uPt8/ODhvsbpfuhtCKUzZ711HWIGfDrUaXSw+gnKjX
	gAa8H8MV7CpifgNov5mF2g+F1Ht5m3vHr/UU9NWg9kXrEumLzCGnwdYmQApu6SQCPpVq
	IfIPqEdtnHpFw0gCpM/eS6aWn6wYpp2iYzTO4z8N7R7BtskSPpq8xU4nChNFZ0EF8Tg5
	3QGJGWtfwU6ge1aqlG24eL1hKd3MqA+bt2WcjOlA8Ze80treorEMlnAKBPOc6YuC0Vnw
	UuEQ==
MIME-Version: 1.0
Received: by 10.50.187.194 with SMTP id fu2mr4241594igc.63.1349333039334; Wed,
	03 Oct 2012 23:43:59 -0700 (PDT)
Received: by 10.64.52.8 with HTTP; Wed, 3 Oct 2012 23:43:58 -0700 (PDT)
X-Originating-IP: [79.118.166.187]
Received: by 10.64.52.8 with HTTP; Wed, 3 Oct 2012 23:43:58 -0700 (PDT)
In-Reply-To: <CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
	<CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
Date: Thu, 4 Oct 2012 09:43:58 +0300
Message-ID: <CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Rudolf Streif <rudolf.streif@linux.com>
X-Gm-Message-State: ALoCoQlX50C1Ld6To47VAAfztPm9ujgNoPhLVS06Ced3hoHMS2Nk520p2utSsmuXVjG+8kYj6Srn
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 06:44:02 -0000
Content-Type: multipart/alternative; boundary=14dae9340de37e466304cb361452

--14dae9340de37e466304cb361452
Content-Type: text/plain; charset=ISO-8859-1

There were some issues with libffi while updating the package. Maybe some
bumps were missed. So:
1. This is not new build. In this case a pull on master should fix it. I
think I saw some pr bumps sent as patch.
2. If 1. won't work, recompile libowl si libclutter as a workaround.

ag
 On Oct 4, 2012 4:40 AM, "Rudolf Streif" <rudolf.streif@linux.com> wrote:

> No, nothing extra. But you are right about the number of tasks. I checked
> out master a while ago, built successfully back then, now pulled the latest
> today, and reused the build environment. I will try again with a fresh
> environment.
>
> :rjs
> On Oct 3, 2012 6:35 PM, "Saul Wold" <sgw@linux.intel.com> wrote:
>
>> On 10/03/2012 04:21 PM, Rudolf Streif wrote:
>>
>>> I checked out Poky from Master and tried to build core-image-minimal.
>>> do_rootfs failed on the libffi dependency [1]. Is that known/expected?
>>>
>>>  This is interesting, I just tried it also, and it is working, see below.
>>
>>
>>  :rjs
>>>
>>> --------
>>>
>>> [1]
>>>
>>> bitbake core-image-minimal
>>> Loading cache: 100%
>>> |#############################**##############################**
>>> #####################|
>>> ETA:  00:00:00
>>> Loaded 1131 entries from dependency cache.
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.16.0"
>>> TARGET_ARCH       = "i586"
>>> TARGET_OS         = "linux"
>>> MACHINE           = "qemux86"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.2+snapshot-20121003"
>>> TUNE_FEATURES     = "m32 i586"
>>> TARGET_FPU        = ""
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    = "master:**09aaad16be178bd675750aa6cfe7a3**
>>> 73d7c9a8a6"
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> ERROR: Function failed: do_rootfs (see
>>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>>> for further information)
>>> ERROR: Logfile of failure stored in:
>>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>>> Log data follows:
>>> | DEBUG: Executing shell function do_rootfs
>>> | Generating solve db for
>>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/qemux86...
>>> | Generating solve db for
>>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/i586...
>>> | Generating solve db for
>>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
>>> | Generating solve db for
>>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
>>> | Processing packagegroup-core-tools-**profile...
>>> | Processing packagegroup-core-boot...
>>> | Processing packagegroup-core-tools-**testapps...
>>> | Processing packagegroup-core-tools-debug.**..
>>> | error: Failed dependencies:
>>> |       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
>>> |       libffi.so.5 is needed by
>>> clutter-box2d-0.12.1+git1+**de5452e56b537a11fd7f9453d048ff**
>>> 4b4793b5a2-r1.qemux86
>>> |       libffi.so.5 is needed by
>>> libowl-av0-0.1+git1+**03030c41ea578cfa74a2ffceb87567**5b248318ae-r3.i586
>>> |       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.**i586
>>> | ERROR: Function failed: do_rootfs (see
>>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>>> for further information)
>>> ERROR: Task 7
>>> (/data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
>>> core-image-minimal.bb <http://core-image-minimal.bb>
>>> <http://core-image-minimal.bb>**, do_rootfs) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need to
>>> be rerun and 1 failed.
>>> No currently running tasks (3890 of 3892)
>>>
>>>  The number of tasks and including lttng-viewer and clutter seems to be
>> lartger than core-image-minimal, do you have anything in the local.conf?
>>
>> Sau!
>>
>>  Summary: 1 task failed:
>>>
>>> /data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
>>> core-image-minimal.bb <http://core-image-minimal.bb>
>>> <http://core-image-minimal.bb>**, do_rootfs
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>>
>>>
>>>
>>> ______________________________**_________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--14dae9340de37e466304cb361452
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">There were some issues with libffi while updating the packag=
e. Maybe some bumps were missed. So:<br>
1. This is not new build. In this case a pull on master should fix it. I th=
ink I saw some pr bumps sent as patch.<br>
2. If 1. won&#39;t work, recompile libowl si libclutter as a workaround. </=
p>
<p dir=3D"ltr">ag<br>
</p>
<div class=3D"gmail_quote">On Oct 4, 2012 4:40 AM, &quot;Rudolf Streif&quot=
; &lt;<a href=3D"mailto:rudolf.streif@linux.com">rudolf.streif@linux.com</a=
>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<p>No, nothing extra. But you are right about the number of tasks. I checke=
d out master a while ago, built successfully back then, now pulled the late=
st today, and reused the build environment. I will try again with a fresh e=
nvironment.</p>


<p>:rjs</p>
<div class=3D"gmail_quote">On Oct 3, 2012 6:35 PM, &quot;Saul Wold&quot; &l=
t;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.=
com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

On 10/03/2012 04:21 PM, Rudolf Streif wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I checked out Poky from Master and tried to build core-image-minimal.<br>
do_rootfs failed on the libffi dependency [1]. Is that known/expected?<br>
<br>
</blockquote>
This is interesting, I just tried it also, and it is working, see below.<br=
>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
:rjs<br>
<br>
--------<br>
<br>
[1]<br>
<br>
bitbake core-image-minimal<br>
Loading cache: 100%<br>
|#############################<u></u>##############################<u></u>#=
####################|<br>
ETA: =A000:00:00<br>
Loaded 1131 entries from dependency cache.<br>
<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;i586&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;qemux86&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.2+snapshot-20121003&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;m32 i586&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;master:<u></u>09aaad16be178bd675750aa6cfe7a=
3<u></u>73d7c9a8a6&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: Function failed: do_rootfs (see<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/work/qemux86-poky-<u></u>linux/c=
ore-image-minimal-1.0-<u></u>r0/temp/log.do_rootfs.29559<br>
for further information)<br>
ERROR: Logfile of failure stored in:<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/work/qemux86-poky-<u></u>linux/c=
ore-image-minimal-1.0-<u></u>r0/temp/log.do_rootfs.29559<br>
Log data follows:<br>
| DEBUG: Executing shell function do_rootfs<br>
| Generating solve db for<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/deploy/rpm/qemux86...<br>
| Generating solve db for<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/deploy/rpm/i586...<br>
| Generating solve db for<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/deploy/rpm/all...<br>
| Generating solve db for<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/deploy/rpm/all...<br>
| Processing packagegroup-core-tools-<u></u>profile...<br>
| Processing packagegroup-core-boot...<br>
| Processing packagegroup-core-tools-<u></u>testapps...<br>
| Processing packagegroup-core-tools-debug.<u></u>..<br>
| error: Failed dependencies:<br>
| =A0 =A0 =A0 libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586<br>
| =A0 =A0 =A0 libffi.so.5 is needed by<br>
clutter-box2d-0.12.1+git1+<u></u>de5452e56b537a11fd7f9453d048ff<u></u>4b479=
3b5a2-r1.qemux86<br>
| =A0 =A0 =A0 libffi.so.5 is needed by<br>
libowl-av0-0.1+git1+<u></u>03030c41ea578cfa74a2ffceb87567<u></u>5b248318ae-=
r3.i586<br>
| =A0 =A0 =A0 libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.<u></u=
>i586<br>
| ERROR: Function failed: do_rootfs (see<br>
/data/Develop/yocto-develop/<u></u>x86/tmp/work/qemux86-poky-<u></u>linux/c=
ore-image-minimal-1.0-<u></u>r0/temp/log.do_rootfs.29559<br>
for further information)<br>
ERROR: Task 7<br>
(/data/Develop/yocto-develop/<u></u>poky/meta/recipes-core/images/<a href=
=3D"http://core-image-minimal.bb" target=3D"_blank"><u></u>core-image-minim=
al.bb</a><br>
&lt;<a href=3D"http://core-image-minimal.bb" target=3D"_blank">http://core-=
image-minimal.bb</a>&gt;<u></u>, do_rootfs) failed with exit code &#39;1&#3=
9;<br>
NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
No currently running tasks (3890 of 3892)<br>
<br>
</blockquote>
The number of tasks and including lttng-viewer and clutter seems to be lart=
ger than core-image-minimal, do you have anything in the local.conf?<br>
<br>
Sau!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Summary: 1 task failed:<br>
<br>
/data/Develop/yocto-develop/<u></u>poky/meta/recipes-core/images/<a href=3D=
"http://core-image-minimal.bb" target=3D"_blank"><u></u>core-image-minimal.=
bb</a><br>
&lt;<a href=3D"http://core-image-minimal.bb" target=3D"_blank">http://core-=
image-minimal.bb</a>&gt;<u></u>, do_rootfs<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
</blockquote></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--14dae9340de37e466304cb361452--
