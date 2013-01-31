Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FE01E00721
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 19:54:25 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id wc18so2403041obb.8
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 19:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=CwbUi/GbiXZmqVcNUiR5OZkpHgBdxJH7AfgEcggfoc4=;
	b=qxYpd6L1ZmIoVBXKviS9ZpcB5rdesRhK2kUOP8KqxJJ2ct2Kv329evuKQUtDFt1vhj
	KmS/gF/jHSallEYZ7z3k7jCXb/lU1nh+C3t9Agbne0krfQB3Y8XUCemNGfSi97k8ddGC
	ht5r0yKTeWm9uaY5oYSBATjZkYG1a3YkbY093sUR/SjsjkeEox0t7dN6QlmWw425j5rH
	P5K3chjT0PWRstZGnOjBfM3rEh6NGjVFucJIh1u2pEhLDjM+KtqLcwyDhEVFr/tQcTp8
	tu4bD1MAb4V4NpWYUaoIe/br2D2PMLQqrsPoNQyZEIn8CArV1erjg7iAHHsFVMhLsXHK
	cZTA==
MIME-Version: 1.0
X-Received: by 10.60.4.226 with SMTP id n2mr5504830oen.63.1359604465254; Wed,
	30 Jan 2013 19:54:25 -0800 (PST)
Received: by 10.76.27.170 with HTTP; Wed, 30 Jan 2013 19:54:25 -0800 (PST)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DDAE59@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com> <51013BCB.8080208@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DDAE59@ORSMSX101.amr.corp.intel.com>
Date: Thu, 31 Jan 2013 11:54:25 +0800
Message-ID: <CACrgoddAs2DAbqcv3veGQo55LdBPcg=7ffFWf_b0o5ocRxoymg@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Thu, 31 Jan 2013 03:54:26 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c7142fc1bb04d48d95d8

--e89a8ff1c7142fc1bb04d48d95d8
Content-Type: text/plain; charset=ISO-8859-1

Thanks Jessica,

why I tried to use "-c populate-sdk" is because that I can find
"core-image-sato-sdk"  but no "core-image-basic-sdk" available, and my
hardware is a samll jasperforest x86_64 target with 2 serial port and 1
ethernet port only, no display interface.
I'm trying to find if any of following configuration suitable for my kernel
module driver develop/debug:
1. with the x86_64 toolchain sdk installed on my x86_64 host , build my
kernel module driver, then scp ".ko" binary to target for insmod/debugging,
but the problem I have now is the "make" always pointing to /usr/src/3.2.x
kernel source path (my host OS's kernel version), but not the linux-yocto
target kernel (3.4.x) source/header path (and I don't know where's the
proper 3.4.x target kernel header/source files, is it inside tmp/work/...? )
2.build and run the "core-image-basic" on my target, and install the sdk
created with "bitbake core-image-basic -c populate-sdk", but there's no
"/usr/src/.." , "/lib/modules/3.4.x-yocto-stand/build" exist

trying to build the "core-image-sato-sdk to see if that help for target
develop now...

Eddy

2013/1/31 Zhang, Jessica <jessica.zhang@intel.com>

> Hi Eddy,
>
> The SDK is meant to be used on development host for cross development
> instead of target.  Sounds like you need an sdk image which contains the
> development tools and needed development library and kernel sources.
>  Please refer to  core-image-sato-sdk for how to customize your image to
> allow your do development work on target.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Eddy Lai GMail
> Sent: Thursday, January 24, 2013 5:49 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] install and use "bitbake -c populate_sdk"
>
> Hi,
>
> I have build and boot the image from USB flash disk with the .hddimg
> created by "bitbake -k core-image-basic"
> have added ssh server inside and make sure the ethernet works well, then
> use "bitbake -c populate_sdk core-image-basic" to create the
> "poky_eglibc_xx.sh" under "tmp/deploy/sdk" directory, my plan is to install
> the sdk into the target system and compile my kernel module there, but now
> the problem is:
> 1. even I have 8GB USB flash disk, the .hddimg is 420MB only, "df"
> command from target said there's 85MB available only,
>      but the sdk .sh installer image is about 300MB, how can I "extend"
> the target system to use the rest USB disk space? ( it's FAT file system)
>      or how to modify configuration to force build the .hddimg create
> ~"8GB" file system?
> 2. after that SDK installed into my target system, can I copy (scp) my own
> kernel module driver source code into the target system then
>      make/compile and try insmod/debug the .ko there?
>      or should I install the sdk on host system, then copy only the
> compiled .ko into target system for test/debugging?
>
> Eddy
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--e89a8ff1c7142fc1bb04d48d95d8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Jessica,<div><br></div><div>why I tried to use &quot;-c populate-sdk=
&quot; is because that I can find &quot;core-image-sato-sdk&quot; =A0but no=
 &quot;core-image-basic-sdk&quot; available, and my hardware is a samll jas=
perforest x86_64 target with 2 serial port and 1 ethernet port only, no dis=
play interface.</div>
<div>I&#39;m trying to find if any of following configuration suitable for =
my kernel module driver develop/debug:</div><div>1. with the x86_64 toolcha=
in sdk installed on my x86_64 host , build my kernel module driver, then sc=
p &quot;.ko&quot; binary to target for insmod/debugging, but the problem I =
have now is the &quot;make&quot; always pointing to /usr/src/3.2.x kernel s=
ource path (my host OS&#39;s kernel version), but not the linux-yocto targe=
t kernel (3.4.x) source/header path (and I don&#39;t know where&#39;s the p=
roper 3.4.x target kernel header/source files, is it inside tmp/work/...? )=
</div>
<div>2.build and run the &quot;core-image-basic&quot; on my target, and ins=
tall the sdk created with &quot;bitbake core-image-basic -c populate-sdk&qu=
ot;, but there&#39;s no &quot;/usr/src/..&quot; , &quot;/lib/modules/3.4.x-=
yocto-stand/build&quot; exist</div>
<div><br></div><div>trying to build the &quot;core-image-sato-sdk to see if=
 that help for target develop now...</div><div><br></div><div>Eddy</div><di=
v><br><div class=3D"gmail_quote">2013/1/31 Zhang, Jessica <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.z=
hang@intel.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Eddy,<br>
<br>
The SDK is meant to be used on development host for cross development inste=
ad of target. =A0Sounds like you need an sdk image which contains the devel=
opment tools and needed development library and kernel sources. =A0Please r=
efer to =A0core-image-sato-sdk for how to customize your image to allow you=
r do development work on target.<br>

<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Eddy Lai GMail<br>
Sent: Thursday, January 24, 2013 5:49 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] install and use &quot;bitbake -c populate_sdk&quot;<br=
>
<br>
Hi,<br>
<br>
I have build and boot the image from USB flash disk with the .hddimg create=
d by &quot;bitbake -k core-image-basic&quot;<br>
have added ssh server inside and make sure the ethernet works well, then us=
e &quot;bitbake -c populate_sdk core-image-basic&quot; to create the &quot;=
poky_eglibc_xx.sh&quot; under &quot;tmp/deploy/sdk&quot; directory, my plan=
 is to install the sdk into the target system and compile my kernel module =
there, but now the problem is:<br>

1. even I have 8GB USB flash disk, the .hddimg is 420MB only, &quot;df&quot=
;<br>
command from target said there&#39;s 85MB available only,<br>
=A0 =A0 =A0but the sdk .sh installer image is about 300MB, how can I &quot;=
extend&quot;<br>
the target system to use the rest USB disk space? ( it&#39;s FAT file syste=
m)<br>
=A0 =A0 =A0or how to modify configuration to force build the .hddimg create=
 ~&quot;8GB&quot; file system?<br>
2. after that SDK installed into my target system, can I copy (scp) my own =
kernel module driver source code into the target system then<br>
=A0 =A0 =A0make/compile and try insmod/debug the .ko there?<br>
=A0 =A0 =A0or should I install the sdk on host system, then copy only the c=
ompiled .ko into target system for test/debugging?<br>
<br>
Eddy<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--e89a8ff1c7142fc1bb04d48d95d8--
