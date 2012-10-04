Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF308E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 18:40:00 -0700 (PDT)
Received: by qcon41 with SMTP id n41so7968632qco.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 18:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=fZsIKg5/wein9sn0SINqQdD4LLd5awvyR2WVipT6/Ds=;
	b=Eh/L6BfmG0dySdE36HjMsRHr7sq38l8BSKEFM759hQMTedPEz0ji6l8FbHSH7ylPoP
	HDtBJvOAMbYCJLonFGjPuxFqNY4HA1nrd0pvnPN8gqT//eN753aONrTodBx0mheYfupk
	n1KkW0zhR7vV2OP9OmSLx70z/a5v8eIIVbT5CvfTcuzNWbgVTrsVJgBlYirjRu2/vLqA
	ylb7Rl8ycOevp0iLSrgi92NWANXKml5voNRY6zyZjBc+jJLRKVMDCXRr4R62tx/p9emf
	0vfJWxErmIEWoXFFYJNJHWUkIqJbnny9H/cfAV8WnbCkI777RSZYVxN/v6dd5ZMBynab
	1pGQ==
MIME-Version: 1.0
Received: by 10.224.78.81 with SMTP id j17mr10321699qak.56.1349314800123; Wed,
	03 Oct 2012 18:40:00 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Wed, 3 Oct 2012 18:39:59 -0700 (PDT)
Received: by 10.49.54.197 with HTTP; Wed, 3 Oct 2012 18:39:59 -0700 (PDT)
In-Reply-To: <506CE7CF.6000500@linux.intel.com>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
Date: Wed, 3 Oct 2012 18:39:59 -0700
X-Google-Sender-Auth: DLlNqF04EnOM3ogPfTVZbjQwDvc
Message-ID: <CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Saul Wold <sgw@linux.intel.com>
X-Gm-Message-State: ALoCoQkykcqM6bw/bCGksWJTVcSUNAH/gZXWzO2DodXyRrQmaRMsZDri1vAJErYZktW/MecGdeOa
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 04 Oct 2012 01:40:01 -0000
Content-Type: multipart/alternative; boundary=20cf3071d14e5a009804cb31d57d

--20cf3071d14e5a009804cb31d57d
Content-Type: text/plain; charset=ISO-8859-1

No, nothing extra. But you are right about the number of tasks. I checked
out master a while ago, built successfully back then, now pulled the latest
today, and reused the build environment. I will try again with a fresh
environment.

:rjs
On Oct 3, 2012 6:35 PM, "Saul Wold" <sgw@linux.intel.com> wrote:

> On 10/03/2012 04:21 PM, Rudolf Streif wrote:
>
>> I checked out Poky from Master and tried to build core-image-minimal.
>> do_rootfs failed on the libffi dependency [1]. Is that known/expected?
>>
>>  This is interesting, I just tried it also, and it is working, see below.
>
>
>  :rjs
>>
>> --------
>>
>> [1]
>>
>> bitbake core-image-minimal
>> Loading cache: 100%
>> |#############################**##############################**
>> #####################|
>> ETA:  00:00:00
>> Loaded 1131 entries from dependency cache.
>>
>> Build Configuration:
>> BB_VERSION        = "1.16.0"
>> TARGET_ARCH       = "i586"
>> TARGET_OS         = "linux"
>> MACHINE           = "qemux86"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.2+snapshot-20121003"
>> TUNE_FEATURES     = "m32 i586"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:**09aaad16be178bd675750aa6cfe7a3**73d7c9a8a6"
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: Function failed: do_rootfs (see
>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>> Log data follows:
>> | DEBUG: Executing shell function do_rootfs
>> | Generating solve db for
>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/qemux86...
>> | Generating solve db for
>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/i586...
>> | Generating solve db for
>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
>> | Generating solve db for
>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
>> | Processing packagegroup-core-tools-**profile...
>> | Processing packagegroup-core-boot...
>> | Processing packagegroup-core-tools-**testapps...
>> | Processing packagegroup-core-tools-debug.**..
>> | error: Failed dependencies:
>> |       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
>> |       libffi.so.5 is needed by
>> clutter-box2d-0.12.1+git1+**de5452e56b537a11fd7f9453d048ff**
>> 4b4793b5a2-r1.qemux86
>> |       libffi.so.5 is needed by
>> libowl-av0-0.1+git1+**03030c41ea578cfa74a2ffceb87567**5b248318ae-r3.i586
>> |       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.**i586
>> | ERROR: Function failed: do_rootfs (see
>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
>> for further information)
>> ERROR: Task 7
>> (/data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
>> core-image-minimal.bb <http://core-image-minimal.bb>
>> <http://core-image-minimal.bb>**, do_rootfs) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need to
>> be rerun and 1 failed.
>> No currently running tasks (3890 of 3892)
>>
>>  The number of tasks and including lttng-viewer and clutter seems to be
> lartger than core-image-minimal, do you have anything in the local.conf?
>
> Sau!
>
>  Summary: 1 task failed:
>>
>> /data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
>> core-image-minimal.bb <http://core-image-minimal.bb>
>> <http://core-image-minimal.bb>**, do_rootfs
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>

--20cf3071d14e5a009804cb31d57d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>No, nothing extra. But you are right about the number of tasks. I checke=
d out master a while ago, built successfully back then, now pulled the late=
st today, and reused the build environment. I will try again with a fresh e=
nvironment.</p>

<p>:rjs</p>
<div class=3D"gmail_quote">On Oct 3, 2012 6:35 PM, &quot;Saul Wold&quot; &l=
t;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel.com</a>&gt; wrote:=
<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
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

--20cf3071d14e5a009804cb31d57d--
