Return-Path: <francis.meyvis@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32FA64C80120
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 14:44:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxh3 with SMTP id 3so6527734vxh.35
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 12:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8JQUYXNFdvQsYLuw8Ams5EpRwqT2XEzGKb26CAcaSUo=;
	b=ZTOlPjQRn1mpLMxTmMPD5UozXOy5aRau6PRYeke/Z1W+UMbpbrSgGZ0pUcynLgs+oq
	92/WdsBNbSg7cC4u5HSz+Xr8TMKPfA7a4Ynb2X9MncgIBez7uNXxdH6cRd/QwsKznPcX
	B8ZNkMI77SeAIzv0qPJEeVCFGwLUCtI0VJf2Q=
MIME-Version: 1.0
Received: by 10.52.76.169 with SMTP id l9mr3391354vdw.35.1312141488288; Sun,
	31 Jul 2011 12:44:48 -0700 (PDT)
Received: by 10.52.106.170 with HTTP; Sun, 31 Jul 2011 12:44:48 -0700 (PDT)
Date: Sun, 31 Jul 2011 21:44:48 +0200
Message-ID: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>
From: Francis Meyvis <francis.meyvis@gmail.com>
To: yocto@yoctoproject.org
Subject: kernel panic - not syncing: No init found
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
X-List-Received-Date: Sun, 31 Jul 2011 19:44:50 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I probably miss something trivial.
I cloned the git://git.yoctoproject.org/poky.git
I build on a 64 bit machine a qemux86-64
(. ./oe-init-build-env qemux86-64 and changing the conf/local.conf)
I build the core-image-sato & core-image-minimal.
Then I try to run with
runqemu qemux86-64 core-image-sato ext3

But both sato and minimal give me this message:
Kernel panic - not syncing: No init found.

As runqemu showed me the full command line I tried to add the --append
command line option
init=/sbin/init and /sbin/init.sysvinit
But that did not help (there's a message saying Failed to execute
/sbin/init. Attempting defaults...)
I verified by mounting these ext3 images on a loop device that there's
really a /sbin/init present.

Can somebody tell what I'm doing wrong?

BTW is there any way to not have to run qemu with root permissions?
I ran the android emulator and it does not require me to be root.
Should I configure something on my Ubuntu machine to get qemu to function?

Thanks,
francis

