Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB13AE00A38; Thu, 17 May 2018 06:12:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871A7E007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:12:35 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id y123-v6so1304625ywa.5
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=uX7cNaluu0MWmTnzS34P+djrjwV8EyQ4lssXgTLZC1o=;
	b=SdX032+mJNu6gYrsGAoTEkWVGovlNQP8oAn5phg+yWcfnb3wTYBaG62H6gSULsMl0g
	m1MMPwP4OBD9oNHO3mLmxtcEMuLlnLhDiwWqrRp/DamddJVKtV3oArVfiYvrPhnE8SYz
	qst/sVl1HzdWpiYMRDbPPaT4scxPTBPJWxOx7oooOXAzEEsN7R+JFnbu7g8q3Eal9LCN
	NxFbluRry87NKrbudmisc+qiY0/J8ZtJ2nbA+ENbpcgLifaZE0qy0yZLmJDD4wVh1ULk
	EXH7cBesPwZ6J3j7/VBwQ97UJMp4c88qJnNIegjut7QzVcjyAyK4SNV8H5jSiE9XQo0D
	hYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=uX7cNaluu0MWmTnzS34P+djrjwV8EyQ4lssXgTLZC1o=;
	b=Pn7lNK54IJjn6Bvr9g2W1BOyIwCRJI7hwytBCJvtXDPApiPMLDF0I0QgtDhST7z3eZ
	0F5GPkAfGobV5S99XrsHqgyXth36lAOqtJuB/n39vAINtRwo8TfH53CYJilQjU4Qqg4i
	9Xklinwem8gTQTruP87epKoCN+EouimS2GDHlgymeMe79MoIZfFZWXmWW2AQGnIXeJJI
	hB6VnkFXmZJ9Np1HMGFxc0/1J6kYtIaUlej2T+kKRw34TO7gajIZXmc2zuOd3RnOReQI
	CXIwVpGfO7Rgzj7xOTsLplI8PsXdI/O7egGdNaWp8kitTbwzSiP9EDLQXeNI9tTv7GGj
	EMlg==
X-Gm-Message-State: ALKqPwfyXpPYFyhESSMs9Sbts0mRmT2Zm6xJCltCYP5rcixtU5R0iX3m
	dEuTIyX7ZvRZaemLcvfIwdiblSHi+0U=
X-Google-Smtp-Source: AB8JxZpvZnrr/UYacju/WICrawNsB/c5HZX2w1N/0UMmtNR7IIwlmRgnoK/CUCyF2fwlYcJsISyI2w==
X-Received: by 2002:a81:148f:: with SMTP id
	137-v6mr2555519ywu.12.1526562755037; 
	Thu, 17 May 2018 06:12:35 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	k22-v6sm2129114ywe.60.2018.05.17.06.12.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 May 2018 06:12:33 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 17 May 2018 09:12:32 -0400
Message-Id: <4A9B6860-E1EC-4FD4-B911-386AA7E02AE0@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] raspberrypi3 at head of sumo has broken console
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
X-List-Received-Date: Thu, 17 May 2018 13:12:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I just built raspberrypi3 at head of sumo.   The attached keyboard and =
mouse don=E2=80=99t work in the console, although a window and the =
prompt is displayed.  The mouse and keyboard work fine when booting =
Raspbian or other raspberrypi3 images I=E2=80=99ve built in other =
branches in the past.

Build info below:

parallels@ubuntu:/data/development/lfs/yocto/build/spark/raspberrypi3$ =
bitbake core-image-minimal
Parsing recipes: 100% =
|#########################################################################=
#############################| Time: 0:01:15
Parsing of 1935 .bb files complete (0 cached, 1935 parsed). 2790 =
targets, 120 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.37.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-16.04"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "raspberrypi3"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.5"
TUNE_FEATURES        =3D "arm armv7ve vfp thumb neon vfpv4 =
callconvention-hard cortexa7"
TARGET_FPU           =3D "hard"
meta                =20
meta-poky           =20
meta-yocto-bsp       =3D "sumo:f0ec7c8b2dc1797ba22c45653a5f182b63354092"
meta-oe             =20
meta-python         =20
meta-multimedia      =3D "sumo:a19aa29f7fa336cd075b72c496fe1102e6e5422b"
meta-raspberrypi     =3D "sumo:f2e2a4376e84dec6e5efeabaa86a4406fddf7dcd"

NOTE: Fetching uninative binary shim from =
http://downloads.yoctoproject.org/releases/uninative/1.9/x86_64-nativesdk-=
libc.tar.bz2;sha256sum=3Dc26622a1f27dbf5b25de986b11584b5c5b2f322d9eb367f70=
5a744f58a5561ec
Initialising tasks: 100% =
|#########################################################################=
##########################| Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: libdaemon-0.14-r0 do_fetch: Failed to fetch URL =
http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz, =
attempting MIRRORS if available
WARNING: libnss-mdns-0.10-r7 do_fetch: Failed to fetch URL =
http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-0.10.tar.gz, =
attempting MIRRORS if available
WARNING: apt-1.2.24-r0 do_fetch: Failed to fetch URL =
http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.24.tar.xz, =
attempting MIRRORS if available
NOTE: Tasks Summary: Attempted 5203 tasks of which 5 didn't need to be =
rerun and all succeeded.

Summary: There were 3 WARNING messages shown.

- Steve Pavao
Korg R&D



