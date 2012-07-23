Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87986E0027D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 10:43:40 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so6228013vbj.35
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 10:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Aj3nk03HeD4SXIv39oPWzeE06tk9sYieWjcUYohh2zA=;
	b=YBp1J7bQThAjTb+bqASXKvdNxmH+isX5LSP7uCysdtsfFeQ45wQSs28FmQCZ1OXiJg
	+jWSkw7lIiUsxr5HXjMwNAA5Ne0cAXF+mJxyjSXlZYPuieUrwhqWJCa8q5cYnQtfbdK1
	3eWrDqN+CBLTB3Nevhe8IVWRuaQz7abbrsN6c4iPHhBQweAhAtGxEKlKpxjJqxj/tRx8
	qpgi1BIWHL1N3vq5Rc9KegD12glFUUQaLTHuznTLNAvwSNo7hRKL1rMc16/RZJ6wmjok
	MW636+l01ESrIozGmnPDNCP6B5+FJEr/5K0IT/QGUO7cJPbcUt/uxqc6sFByszRuzVh7
	TDng==
MIME-Version: 1.0
Received: by 10.52.72.44 with SMTP id a12mr11578179vdv.124.1343065419666; Mon,
	23 Jul 2012 10:43:39 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Mon, 23 Jul 2012 10:43:39 -0700 (PDT)
In-Reply-To: <CAE9DZUTW7NajfX=vgsRY5b7FiLnx6fsYibv01x=WyAVD0xU2BA@mail.gmail.com>
References: <CAE9DZUTW7NajfX=vgsRY5b7FiLnx6fsYibv01x=WyAVD0xU2BA@mail.gmail.com>
Date: Mon, 23 Jul 2012 12:43:39 -0500
Message-ID: <CAE9DZUQfoNaz-N-r8V7vJEWMQg+p0dKEUkTUwbU_Z3Z7vRcJeQ@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: do_rootfs fails, dpkg host dependency
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
X-List-Received-Date: Mon, 23 Jul 2012 17:43:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

Pls disregard.   Something got wonked in my build dir.  I blew it away
and rebuilt everything.  It finished without errors.

On Mon, Jul 23, 2012 at 11:15 AM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
> do_rootfs is failing when I try to build core-image-minimal on a
> debian squeeze box.  I am surprised it is trying to do something that
> requires root privilege on the host.  Any ideas on how to get past
> this?
>
> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
> ERROR: Function failed: do_rootfs (see
> /development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
> for further information)
> ERROR: Logfile of failure stored in:
> /development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
> Log data follows:
> | ERROR: Function failed: do_rootfs (see
> /development/dallasc/yocto/poky/build/tmp/work/qemuarmada_xp-marvell-linux-gnueabi/core-image-minimal-1.0-r0/temp/log.do_rootfs.9196
> for further information)
> | dpkg-scanpackages: info: Wrote 7 entries to output Packages file.
> | dpkg-scanpackages: info: Wrote 1306 entries to output Packages file.
> | dpkg-scanpackages: info: Wrote 21 entries to output Packages file.
> | dpkg-scanpackages: info: Wrote 7 entries to output Packages file.
> | cat: /development/dallasc/yocto/poky/build/tmp/sysroots/x86_64-linux/etc/apt/apt.conf.sample:
> No such file or directory
> | E: Could not open lock file /var/lib/apt/lists/lock - open (13
> Permission denied)
> | E: Unable to lock the list directory
> | E: Could not open lock file /var/lib/dpkg/lock - open (13 Permission denied)
> | E: Unable to lock the administration directory (/var/lib/dpkg/), are you root?
> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
> ERROR: Task 8 (/home/dallasc/development/yocto/poky/meta/recipes-core/images/core-image-minimal.bb,
> do_rootfs) failed with exit code '1'

