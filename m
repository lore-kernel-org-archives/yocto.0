Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BADD14C80A8F
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 16:29:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so2309130pve.35
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=XGPeWzPFgXuxtrb1z4RMx+kcI/Z4rWYyUvA2ZUVdmQg=;
	b=JtnAdiKNOIV6asmKzks5mjquzxDYgTsGyXaqj6InWE2Tv6n6louJfdxYs2r8GcVZmu
	nJo/rI43g2Ky6HPPxEyc/7WWY5ZzPKnsLr/F29hzwYB2Un7KO8o1shql76quQPdD2N8G
	RJlMlNfZOtYLWygq3ZXmxqk3QMahjUUP2NjjM=
Received: by 10.68.33.200 with SMTP id t8mr4536760pbi.144.1310765378151; Fri,
	15 Jul 2011 14:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Fri, 15 Jul 2011 14:29:08 -0700 (PDT)
In-Reply-To: <2CA74704-73F9-4900-82C0-68A64AA6ED35@kernel.crashing.org>
References: <2CA74704-73F9-4900-82C0-68A64AA6ED35@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2011 14:29:08 -0700
Message-ID: <CAMKF1sqpLHzFZrheWXiNzKRZuqfRA9Wbn760tRTomsxHt=LrqA@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: TARGET_OS issues with linux-gnuspe
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
X-List-Received-Date: Fri, 15 Jul 2011 21:29:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 2:10 PM, Kumar Gala <galak@kernel.crashing.org> wro=
te:
> In my attempts to get an e500v2/gnuspe toolchain working I was able to ge=
t core-image-minimal working. =C2=A0However when I try the 'meta-toolchain'=
 I run into the following below. =C2=A0I believe this is because of TARGET_=
OS being 'linux-gnuspe'.
>
> Any ideas ?
>
> - k
>
> [kumar@right build-p2020]$ bitbake meta-toolchain
>
> OE Build Configuration:
> BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.13.2"
> TARGET_ARCH =C2=A0 =C2=A0 =C2=A0 =3D "powerpc"
> TARGET_OS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "linux-gnuspe"
> MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "p2020-ds"
> DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
> DISTRO_VERSION =C2=A0 =C2=A0=3D "1.0+snapshot-20110715"
> TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "spe"
> meta
> meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:068839698fe192d8846c0ed=
4db65861448e8e524"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'virtual/powerpc-poky-linux-libc-for-gcc'

here is the problem. This should have been called
virtual/powerpc-poky-linux-gnuspe-libc-for-gcc

so TARGET_PREFIX is not being set correctly which means TARGET_SYS is
not being set correctly

and

TARGET_SYS =3D "${TARGET_ARCH}${TARGET_VENDOR}${@['-' +
bb.data.getVar('TARGET_OS', d, 1), ''][bb.data.getVar('TARGET_OS', d,
1) =3D=3D ('' or 'custom')]}"

so it should be ok if TARGET_OS is set

can you pastebin output of

bitbake -e meta-toolchain

somewhere


> NOTE: Runtime target 'gcc-cross-canadian-powerpc' is unbuildable, removin=
g...
> Missing or unbuildable dependency chain was: ['gcc-cross-canadian-powerpc=
', 'virtual/powerpc-poky-linux-libc-for-gcc']
> NOTE: Runtime target 'task-cross-canadian-powerpc' is unbuildable, removi=
ng...
> Missing or unbuildable dependency chain was: ['task-cross-canadian-powerp=
c', 'gcc-cross-canadian-powerpc', 'virtual/powerpc-poky-linux-libc-for-gcc'=
]
> ERROR: Required build target 'meta-toolchain' has no buildable providers.
> Missing or unbuildable dependency chain was: ['meta-toolchain', 'task-cro=
ss-canadian-powerpc', 'gcc-cross-canadian-powerpc', 'virtual/powerpc-poky-l=
inux-libc-for-gcc']
> ERROR: Command execution failed: Traceback (most recent call last):
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/command.py", line 1=
02, in runAsyncCommand
> =C2=A0 =C2=A0commandmethod(self.cmds_async, self, options)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/command.py", line 2=
00, in buildTargets
> =C2=A0 =C2=A0command.cooker.buildTargets(pkgs_to_build, task)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/cooker.py", line 99=
6, in buildTargets
> =C2=A0 =C2=A0taskdata.add_unresolved(localdata, self.status)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
534, in add_unresolved
> =C2=A0 =C2=A0self.remove_buildtarget(targetid)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
491, in remove_buildtarget
> =C2=A0 =C2=A0self.fail_fnid(fnid, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
476, in fail_fnid
> =C2=A0 =C2=A0self.remove_runtarget(target, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
517, in remove_runtarget
> =C2=A0 =C2=A0self.fail_fnid(fnid, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
476, in fail_fnid
> =C2=A0 =C2=A0self.remove_runtarget(target, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
517, in remove_runtarget
> =C2=A0 =C2=A0self.fail_fnid(fnid, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
471, in fail_fnid
> =C2=A0 =C2=A0self.remove_buildtarget(target, missing_list)
> =C2=A0File "/local/home/kumar/git/poky/bitbake/lib/bb/taskdata.py", line =
501, in remove_buildtarget
> =C2=A0 =C2=A0raise bb.providers.NoProvider(target)
> NoProvider: meta-toolchain
>
>
>

