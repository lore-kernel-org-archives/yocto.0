Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7030DE0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 12:09:12 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so2149270iea.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 12:09:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=aRLJX6SmZcwnD5rWx07gQ5wCUj64LwY+nw+A07y2p9I=;
	b=OefUNPr7z4W2BmG6d98dK8KfcPjRUBnpv02HMzpmmpodGxGDJAyIeK+G5kRQ9xHRkw
	viDHldBluwaXw/I7M6yxvZUQhCjCjJr5Hnr6cWJZvOixD9bQ76tttXGwQHZaz0oKNNes
	tKYMqfhd6a/WGkWjT+F5BTZiZkilVpS1FKZaqxeRUEQ8oyh08ZD8Ul3gP/PrGixLOUWV
	GH3I+AscVmzUr+bkKrX6FRzbrARKKqJtKDLWBA3dWDFrr8NqeSN2XGKU3t+lp9S8aIIP
	BIozLbEXW2M26l3LjAc65p40oBKn45aAoFvqkpi2rle1XCmA4nYw2ANXUXkNa7Q3TJUy
	TcUQ==
MIME-Version: 1.0
Received: by 10.50.51.225 with SMTP id n1mr6430867igo.7.1349377745247; Thu, 04
	Oct 2012 12:09:05 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.27.197 with HTTP; Thu, 4 Oct 2012 12:09:05 -0700 (PDT)
In-Reply-To: <20121004082230.GB3005@jama.jama.net>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
	<CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
	<CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
	<20121004082230.GB3005@jama.jama.net>
Date: Thu, 4 Oct 2012 12:09:05 -0700
X-Google-Sender-Auth: Cehm7bgAQ4cKGz1vtu68ueUbloM
Message-ID: <CA+gsK-qgQOEbBaoaqSkfOoX6zH14AcTspjFdEC2Y6QLURQEHEw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQnYVYK0ZmSr9rAr8qXwvt9eXpOWvk0VpV6e7aPrv0Us6pwy17lMULAidAtF1Z1W5CnqX5Ah
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
X-List-Received-Date: Thu, 04 Oct 2012 19:09:12 -0000
Content-Type: multipart/alternative; boundary=14dae93408cf2c5dec04cb407dd4

--14dae93408cf2c5dec04cb407dd4
Content-Type: text/plain; charset=ISO-8859-1

I eventually had to clean out the sstate-cache to make it work. Not a big
deal and not probably not worth any further investigation. Thanks for
helping.

:rjs

On Thu, Oct 4, 2012 at 1:22 AM, Martin Jansa <martin.jansa@gmail.com> wrote:

> On Thu, Oct 04, 2012 at 09:43:58AM +0300, Andrei Gherzan wrote:
> > There were some issues with libffi while updating the package. Maybe some
> > bumps were missed. So:
>
> > 1. This is not new build. In this case a pull on master should fix it. I
> > think I saw some pr bumps sent as patch.
>
> Yes but I did PR bumps only of packages in my feed
>
> http://lists.linuxtogo.org/pipermail/openembedded-core/2012-September/029759.html
>
> > 2. If 1. won't work, recompile libowl si libclutter as a workaround.
>
> wont fix it on target
>
> Cheers,
>
> >
> > ag
> >  On Oct 4, 2012 4:40 AM, "Rudolf Streif" <rudolf.streif@linux.com>
> wrote:
> >
> > > No, nothing extra. But you are right about the number of tasks. I
> checked
> > > out master a while ago, built successfully back then, now pulled the
> latest
> > > today, and reused the build environment. I will try again with a fresh
> > > environment.
> > >
> > > :rjs
> > > On Oct 3, 2012 6:35 PM, "Saul Wold" <sgw@linux.intel.com> wrote:
> > >
> > >> On 10/03/2012 04:21 PM, Rudolf Streif wrote:
> > >>
> > >>> I checked out Poky from Master and tried to build core-image-minimal.
> > >>> do_rootfs failed on the libffi dependency [1]. Is that
> known/expected?
> > >>>
> > >>>  This is interesting, I just tried it also, and it is working, see
> below.
> > >>
> > >>
> > >>  :rjs
> > >>>
> > >>> --------
> > >>>
> > >>> [1]
> > >>>
> > >>> bitbake core-image-minimal
> > >>> Loading cache: 100%
> > >>> |#############################**##############################**
> > >>> #####################|
> > >>> ETA:  00:00:00
> > >>> Loaded 1131 entries from dependency cache.
> > >>>
> > >>> Build Configuration:
> > >>> BB_VERSION        = "1.16.0"
> > >>> TARGET_ARCH       = "i586"
> > >>> TARGET_OS         = "linux"
> > >>> MACHINE           = "qemux86"
> > >>> DISTRO            = "poky"
> > >>> DISTRO_VERSION    = "1.2+snapshot-20121003"
> > >>> TUNE_FEATURES     = "m32 i586"
> > >>> TARGET_FPU        = ""
> > >>> meta
> > >>> meta-yocto
> > >>> meta-yocto-bsp    = "master:**09aaad16be178bd675750aa6cfe7a3**
> > >>> 73d7c9a8a6"
> > >>>
> > >>> NOTE: Resolving any missing task queue dependencies
> > >>> NOTE: Preparing runqueue
> > >>> NOTE: Executing SetScene Tasks
> > >>> NOTE: Executing RunQueue Tasks
> > >>> ERROR: Function failed: do_rootfs (see
> > >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> > >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> > >>> for further information)
> > >>> ERROR: Logfile of failure stored in:
> > >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> > >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> > >>> Log data follows:
> > >>> | DEBUG: Executing shell function do_rootfs
> > >>> | Generating solve db for
> > >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/qemux86...
> > >>> | Generating solve db for
> > >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/i586...
> > >>> | Generating solve db for
> > >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
> > >>> | Generating solve db for
> > >>> /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...
> > >>> | Processing packagegroup-core-tools-**profile...
> > >>> | Processing packagegroup-core-boot...
> > >>> | Processing packagegroup-core-tools-**testapps...
> > >>> | Processing packagegroup-core-tools-debug.**..
> > >>> | error: Failed dependencies:
> > >>> |       libffi.so.5 is needed by lttng-viewer-0.12.38-r3.i586
> > >>> |       libffi.so.5 is needed by
> > >>> clutter-box2d-0.12.1+git1+**de5452e56b537a11fd7f9453d048ff**
> > >>> 4b4793b5a2-r1.qemux86
> > >>> |       libffi.so.5 is needed by
> > >>>
> libowl-av0-0.1+git1+**03030c41ea578cfa74a2ffceb87567**5b248318ae-r3.i586
> > >>> |       libffi.so.5 is needed by libclutter-glx-1.0-0-1.8.4-r2.**i586
> > >>> | ERROR: Function failed: do_rootfs (see
> > >>> /data/Develop/yocto-develop/**x86/tmp/work/qemux86-poky-**
> > >>> linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.29559
> > >>> for further information)
> > >>> ERROR: Task 7
> > >>> (/data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
> > >>> core-image-minimal.bb <http://core-image-minimal.bb>
> > >>> <http://core-image-minimal.bb>**, do_rootfs) failed with exit code
> '1'
> > >>> NOTE: Tasks Summary: Attempted 3891 tasks of which 3890 didn't need
> to
> > >>> be rerun and 1 failed.
> > >>> No currently running tasks (3890 of 3892)
> > >>>
> > >>>  The number of tasks and including lttng-viewer and clutter seems to
> be
> > >> lartger than core-image-minimal, do you have anything in the
> local.conf?
> > >>
> > >> Sau!
> > >>
> > >>  Summary: 1 task failed:
> > >>>
> > >>> /data/Develop/yocto-develop/**poky/meta/recipes-core/images/**
> > >>> core-image-minimal.bb <http://core-image-minimal.bb>
> > >>> <http://core-image-minimal.bb>**, do_rootfs
> > >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> > >>>
> > >>>
> > >>>
> > >>> ______________________________**_________________
> > >>> yocto mailing list
> > >>> yocto@yoctoproject.org
> > >>> https://lists.yoctoproject.**org/listinfo/yocto<
> https://lists.yoctoproject.org/listinfo/yocto>
> > >>>
> > >>>
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
>
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--14dae93408cf2c5dec04cb407dd4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I eventually had to clean out the sstate-cache to make it work. Not a big d=
eal and not probably not worth any further investigation. Thanks for helpin=
g.<div><br></div><div>:rjs<br><br><div class=3D"gmail_quote">On Thu, Oct 4,=
 2012 at 1:22 AM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:mart=
in.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thu, Oct 04, 2012 at 09=
:43:58AM +0300, Andrei Gherzan wrote:<br>
&gt; There were some issues with libffi while updating the package. Maybe s=
ome<br>
&gt; bumps were missed. So:<br>
<br>
&gt; 1. This is not new build. In this case a pull on master should fix it.=
 I<br>
&gt; think I saw some pr bumps sent as patch.<br>
<br>
</div>Yes but I did PR bumps only of packages in my feed<br>
<a href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2012-Sept=
ember/029759.html" target=3D"_blank">http://lists.linuxtogo.org/pipermail/o=
penembedded-core/2012-September/029759.html</a><br>
<div class=3D"im"><br>
&gt; 2. If 1. won&#39;t work, recompile libowl si libclutter as a workaroun=
d.<br>
<br>
</div>wont fix it on target<br>
<br>
Cheers,<br>
<div class=3D"im"><br>
&gt;<br>
&gt; ag<br>
&gt; =A0On Oct 4, 2012 4:40 AM, &quot;Rudolf Streif&quot; &lt;<a href=3D"ma=
ilto:rudolf.streif@linux.com">rudolf.streif@linux.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; No, nothing extra. But you are right about the number of tasks. I=
 checked<br>
&gt; &gt; out master a while ago, built successfully back then, now pulled =
the latest<br>
&gt; &gt; today, and reused the build environment. I will try again with a =
fresh<br>
&gt; &gt; environment.<br>
&gt; &gt;<br>
&gt; &gt; :rjs<br>
&gt; &gt; On Oct 3, 2012 6:35 PM, &quot;Saul Wold&quot; &lt;<a href=3D"mail=
to:sgw@linux.intel.com">sgw@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; On 10/03/2012 04:21 PM, Rudolf Streif wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt; I checked out Poky from Master and tried to build core-im=
age-minimal.<br>
&gt; &gt;&gt;&gt; do_rootfs failed on the libffi dependency [1]. Is that kn=
own/expected?<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; =A0This is interesting, I just tried it also, and it is w=
orking, see below.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0:rjs<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; --------<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; [1]<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; bitbake core-image-minimal<br>
&gt; &gt;&gt;&gt; Loading cache: 100%<br>
</div>&gt; &gt;&gt;&gt; |#############################**###################=
###########**<br>
<div class=3D"im">&gt; &gt;&gt;&gt; #####################|<br>
&gt; &gt;&gt;&gt; ETA: =A000:00:00<br>
&gt; &gt;&gt;&gt; Loaded 1131 entries from dependency cache.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Build Configuration:<br>
&gt; &gt;&gt;&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
&gt; &gt;&gt;&gt; TARGET_ARCH =A0 =A0 =A0 =3D &quot;i586&quot;<br>
&gt; &gt;&gt;&gt; TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux&quot;<br>
&gt; &gt;&gt;&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;qemux86&quot;<br>
&gt; &gt;&gt;&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; &gt;&gt;&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.2+snapshot-20121003&quo=
t;<br>
&gt; &gt;&gt;&gt; TUNE_FEATURES =A0 =A0 =3D &quot;m32 i586&quot;<br>
&gt; &gt;&gt;&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;&quot;<br>
&gt; &gt;&gt;&gt; meta<br>
&gt; &gt;&gt;&gt; meta-yocto<br>
</div>&gt; &gt;&gt;&gt; meta-yocto-bsp =A0 =A0=3D &quot;master:**09aaad16be=
178bd675750aa6cfe7a3**<br>
<div class=3D"im">&gt; &gt;&gt;&gt; 73d7c9a8a6&quot;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; &gt;&gt;&gt; NOTE: Preparing runqueue<br>
&gt; &gt;&gt;&gt; NOTE: Executing SetScene Tasks<br>
&gt; &gt;&gt;&gt; NOTE: Executing RunQueue Tasks<br>
&gt; &gt;&gt;&gt; ERROR: Function failed: do_rootfs (see<br>
</div>&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/work/qemux86-=
poky-**<br>
&gt; &gt;&gt;&gt; linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.2955=
9<br>
<div class=3D"im">&gt; &gt;&gt;&gt; for further information)<br>
&gt; &gt;&gt;&gt; ERROR: Logfile of failure stored in:<br>
</div>&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/work/qemux86-=
poky-**<br>
&gt; &gt;&gt;&gt; linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.2955=
9<br>
<div class=3D"im">&gt; &gt;&gt;&gt; Log data follows:<br>
&gt; &gt;&gt;&gt; | DEBUG: Executing shell function do_rootfs<br>
&gt; &gt;&gt;&gt; | Generating solve db for<br>
</div>&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/qe=
mux86...<br>
&gt; &gt;&gt;&gt; | Generating solve db for<br>
&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/i586...<=
br>
&gt; &gt;&gt;&gt; | Generating solve db for<br>
&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...<b=
r>
&gt; &gt;&gt;&gt; | Generating solve db for<br>
&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/deploy/rpm/all...<b=
r>
&gt; &gt;&gt;&gt; | Processing packagegroup-core-tools-**profile...<br>
&gt; &gt;&gt;&gt; | Processing packagegroup-core-boot...<br>
&gt; &gt;&gt;&gt; | Processing packagegroup-core-tools-**testapps...<br>
&gt; &gt;&gt;&gt; | Processing packagegroup-core-tools-debug.**..<br>
<div class=3D"im">&gt; &gt;&gt;&gt; | error: Failed dependencies:<br>
&gt; &gt;&gt;&gt; | =A0 =A0 =A0 libffi.so.5 is needed by lttng-viewer-0.12.=
38-r3.i586<br>
&gt; &gt;&gt;&gt; | =A0 =A0 =A0 libffi.so.5 is needed by<br>
</div>&gt; &gt;&gt;&gt; clutter-box2d-0.12.1+git1+**de5452e56b537a11fd7f945=
3d048ff**<br>
&gt; &gt;&gt;&gt; 4b4793b5a2-r1.qemux86<br>
&gt; &gt;&gt;&gt; | =A0 =A0 =A0 libffi.so.5 is needed by<br>
&gt; &gt;&gt;&gt; libowl-av0-0.1+git1+**03030c41ea578cfa74a2ffceb87567**5b2=
48318ae-r3.i586<br>
&gt; &gt;&gt;&gt; | =A0 =A0 =A0 libffi.so.5 is needed by libclutter-glx-1.0=
-0-1.8.4-r2.**i586<br>
<div class=3D"im">&gt; &gt;&gt;&gt; | ERROR: Function failed: do_rootfs (se=
e<br>
</div>&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**x86/tmp/work/qemux86-=
poky-**<br>
&gt; &gt;&gt;&gt; linux/core-image-minimal-1.0-**r0/temp/log.do_rootfs.2955=
9<br>
<div class=3D"im">&gt; &gt;&gt;&gt; for further information)<br>
&gt; &gt;&gt;&gt; ERROR: Task 7<br>
</div>&gt; &gt;&gt;&gt; (/data/Develop/yocto-develop/**poky/meta/recipes-co=
re/images/**<br>
&gt; &gt;&gt;&gt; <a href=3D"http://core-image-minimal.bb" target=3D"_blank=
">core-image-minimal.bb</a> &lt;<a href=3D"http://core-image-minimal.bb" ta=
rget=3D"_blank">http://core-image-minimal.bb</a>&gt;<br>
&gt; &gt;&gt;&gt; &lt;<a href=3D"http://core-image-minimal.bb" target=3D"_b=
lank">http://core-image-minimal.bb</a>&gt;**, do_rootfs) failed with exit c=
ode &#39;1&#39;<br>
<div class=3D"im">&gt; &gt;&gt;&gt; NOTE: Tasks Summary: Attempted 3891 tas=
ks of which 3890 didn&#39;t need to<br>
&gt; &gt;&gt;&gt; be rerun and 1 failed.<br>
&gt; &gt;&gt;&gt; No currently running tasks (3890 of 3892)<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; =A0The number of tasks and including lttng-viewer and clu=
tter seems to be<br>
&gt; &gt;&gt; lartger than core-image-minimal, do you have anything in the =
local.conf?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Sau!<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; =A0Summary: 1 task failed:<br>
&gt; &gt;&gt;&gt;<br>
</div>&gt; &gt;&gt;&gt; /data/Develop/yocto-develop/**poky/meta/recipes-cor=
e/images/**<br>
&gt; &gt;&gt;&gt; <a href=3D"http://core-image-minimal.bb" target=3D"_blank=
">core-image-minimal.bb</a> &lt;<a href=3D"http://core-image-minimal.bb" ta=
rget=3D"_blank">http://core-image-minimal.bb</a>&gt;<br>
&gt; &gt;&gt;&gt; &lt;<a href=3D"http://core-image-minimal.bb" target=3D"_b=
lank">http://core-image-minimal.bb</a>&gt;**, do_rootfs<br>
<div class=3D"im">&gt; &gt;&gt;&gt; Summary: There was 1 ERROR message show=
n, returning a non-zero exit code.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
</div>&gt; &gt;&gt;&gt; ______________________________**_________________<b=
r>
&gt; &gt;&gt;&gt; yocto mailing list<br>
&gt; &gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt; &gt;&gt;&gt; <a href=3D"https://lists.yoctoproject." target=3D"_blank"=
>https://lists.yoctoproject.</a>**org/listinfo/yocto&lt;<a href=3D"https://=
lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoct=
oproject.org/listinfo/yocto</a>&gt;<br>

<div class=3D"HOEnZb"><div class=3D"h5">&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--14dae93408cf2c5dec04cb407dd4--
