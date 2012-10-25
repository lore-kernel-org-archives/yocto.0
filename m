Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50401E0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 21:46:53 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id z8so602303dad.35
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 21:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=2YThc/etjfkGcS5JyC/6ErtwmV9xWGHBKaZVwCIh2rk=;
	b=DnHRspZN2KRe/ZXW9cCq0zmAXalfG/SAc84RDPfdlyGYJ7SafbhwOnyMgsDyartEx3
	FvXoT13Yq5Kwxt6kjSJXfOo9zs7cgRx5UcxcdCfTvonvb/0IP2xXgXBfbVzvoQu3FIb5
	qTNHVTmbZ8623B9BxM11OEqdpbbbSbCfMRGw98yw3LecGSwjNlcm9Ss2fWxsVXeIOLNb
	IvCNKd5hAAj58sqIdTTHneKemOUkmIXwUOyPpa8ZPydcadz3pRendWG+mRCdq8vhXhZX
	5ghflVQ2BBDK/99WfrglGsXm4e+AUqFLVMejKWBa36FXvQoFZt9Zapy2bBu4q0AwrhBs
	/Vfg==
Received: by 10.68.83.68 with SMTP id o4mr57261904pby.25.1351140413137;
	Wed, 24 Oct 2012 21:46:53 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.133.177])
	by mx.google.com with ESMTPS id wg3sm10564385pbc.28.2012.10.24.21.46.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 24 Oct 2012 21:46:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
Date: Thu, 25 Oct 2012 08:46:47 +0400
Message-Id: <84DC245A-6BF5-441B-9D4A-4F82F4F012B0@gmail.com>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
	<37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
	<CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
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
X-List-Received-Date: Thu, 25 Oct 2012 04:46:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On Oct 23, 2012, at 11:53 PM, "Burton, Ross" <ross.burton@intel.com> =
wrote:

> On 23 October 2012 19:35, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>> the following entry works for the /etc/fstab for moving the /tmp file =
to RAM
>> none    /tmp    tmpfs    defaults,noatime,nodiratime    0    0
>=20
> tmpfs is in virtual memory, so potentially swap.  Have you benchmarked
> a build with the build on SSD verses in tmpfs to see what the
> improvement is?

There was no difference in build times with the /tmp folder in RAM or =
SSD

Both these scenarios took around 22 minutes for commit id=20
a3d5e9e6b7729319c518dcaf25bbe0643bfb25db

I think the optimisation is only useful to improve the life of the SSD=20=

drive, by moving the /tmp folder to RAM. I've also moved the
fire-fox browser cache to RAM, to avoid hitting the SSD as far as
possible.

> An alternative (and less intrusive) is to increase the commit timeout
> on the build partition, which means more data is buffered in RAM
> before the disk is used.  I haven't benchmarked that either though. :)


I modified /etc/sysctl.conf as follows, to improve desktop performance.
One of the parameters vm.swappiness, controls swap to disk. With
a setting of 10, and 16GB of RAM, it hardly ever swaps to disk=20
throughout the entire build process.

Here are my /etc/sysctl.conf settings:

###################################################################
# Additional settings - these setting can increase desktop performance

# Configure vm.mmap_min_addr
vm.mmap_min_addr =3D 0
vm.vdso_enabled =3D 0

# Optimize swap usage to increase desktop performance
vm.swappiness=3D10
vm.vfs_cache_pressure=3D1000
vm.dirty_background_ratio=3D10
vm.dirty_ratio=3D30


Best regards,

Elvis Dowson


