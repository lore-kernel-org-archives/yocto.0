Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471D2E00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 13:48:45 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so7547105vcb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 13:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OQixvYDen5RbUGaeTApVoL8jOo0nv9x/5TRW2kK7x8w=;
	b=Jr8SNEASyoRRrlbxhCKzOaWbl5X99rz1EYXx/NKjOBv3NJjDt2HZGXNJ1pmQB13hnp
	KhiXHyG6A7TkXSYwCtxrkjROx6C5aiulQWDgsUKxT2EtPSSiBlvE5qUHnZzq7b0IZSK4
	WZGxUZh1yl1sWaFPabw3f7m994FO98O1Cj8gIAHQAX5mp5+dmvgRNBaPc4zv1Cyu6cc7
	DwwSzomEuQCKeMA1CMsws/losfhV3wQxU6w2LyqKMgcSgqRvxjc4h9rXc33rXVkdgrgq
	NzuPP01d6brJLH7jSbI3ZpXzWTJgfB+0W+z6h8N0eamI32DoTMaif7uvxzVMQ9Q0wzgI
	k97w==
MIME-Version: 1.0
Received: by 10.52.240.228 with SMTP id wd4mr1411251vdc.95.1343162924633; Tue,
	24 Jul 2012 13:48:44 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Tue, 24 Jul 2012 13:48:44 -0700 (PDT)
Date: Tue, 24 Jul 2012 15:48:44 -0500
Message-ID: <CAE9DZUT2PQ4pnzVuJmBfMbQaaHegb+xNN_kCoFpXuesw+fjBHw@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: busybox-static how to?
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
X-List-Received-Date: Tue, 24 Jul 2012 20:48:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to get the core-image-minimal distro to boot in qemu for an
ARM Cortex A9 system.  It boots the kernel fine, but croaks when it
tries to run init.

kjournald starting.  Commit interval 5 seconds
EXT3-fs (sda): using internal journal
EXT3-fs (sda): recovery complete
EXT3-fs (sda): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 8:0.
devtmpfs: mounted
Freeing init memory: 216K
Kernel panic - not syncing: Attempted to kill init!
[<c0015b34>] (unwind_backtrace+0x0/0x100) from [<c04343dc>]
(dump_stack+0x20/0x24)
[<c04343dc>] (dump_stack+0x20/0x24) from [<c0434450>] (panic+0x70/0x1a8)
[<c0434450>] (panic+0x70/0x1a8) from [<c002fbb8>] (do_exit+0x6a0/0x7b8)
[<c002fbb8>] (do_exit+0x6a0/0x7b8) from [<c002fd28>] (do_group_exit+0x58/0xe0)
[<c002fd28>] (do_group_exit+0x58/0xe0) from [<c0040d40>]
(get_signal_to_deliver+0x230/0x61c)
[<c0040d40>] (get_signal_to_deliver+0x230/0x61c) from [<c001135c>]
(do_signal+0xa0/0x5b8)
[<c001135c>] (do_signal+0xa0/0x5b8) from [<c00118e4>]
(do_notify_resume+0x70/0x7c)
[<c00118e4>] (do_notify_resume+0x70/0x7c) from [<c000e894>]
(work_pending+0x24/0x28)

I'd like to configure core-image-minimal to use a statically built
busybox so that I can determine if this is a shared lib problem.
However, I'm not sure how to do this with yocto.  Unfortunately I'm
unable to use hob on my system either.  Is there a config file I can
edit to choose busybox-static for core-image-minimal?

Thanks

