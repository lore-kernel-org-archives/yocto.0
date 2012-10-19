Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D16E003D7
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 05:48:27 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id gb22so426006vcb.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 05:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bm9p11ApsqqHq3mpjBjVyszsSJ0pM3ghlT09gBkWJtg=;
	b=lX9b0CrVfTuRGgttDUHA/+vjd3MpD7HEAbMOlkuzDegNHsurVlbR7thOrZcKiJrtBm
	57H5B9mohz/yGGtpqjG49NVAlNPFamxfk7XNeRR0G4cLpEEs3W7j5PKmy9myWBszqh57
	x9s6rZR79PNIuC3TJJIXsIfnnnH+L39nt04Tf2xHFWjWlLoG388Fvq7qGRaf+ODQC8Mi
	IwdI3/6zr5cOjAsf4FU73dh+qWjpydAwY86SNu/6azyTLcB7EoNrRdaINg/YrtbiYWH2
	ABPMRgKjYEOSMNG5sO5W7xwNTQupb9PYNV8cnA9jHxYmTr4fAfIwTLO7OQU6N0p1bsbr
	GZIQ==
MIME-Version: 1.0
Received: by 10.52.95.234 with SMTP id dn10mr1130798vdb.28.1350650906043; Fri,
	19 Oct 2012 05:48:26 -0700 (PDT)
Received: by 10.58.116.196 with HTTP; Fri, 19 Oct 2012 05:48:26 -0700 (PDT)
Date: Fri, 19 Oct 2012 08:48:26 -0400
Message-ID: <CAE8H0+Xuk6kZaBNTBA9ZBBZGOs4AADf8zF88WYecDMnD8wyFpg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: yocto@yoctoproject.org
Subject: Crownbay .hddimg partition is corrupt...but works?
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
X-List-Received-Date: Fri, 19 Oct 2012 12:48:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've been following with interest the thread on creating multiple
partitions, but before I get there, I seem to have a stumbling block.

I've been using dd to copy the .hddimg onto an SDCard and booting from
there.  It works fine.  The core-image-minimal image is about 32MB,
copied onto a 16GB card.  When 'boot' is mounted under Ubuntu 12.04, I
see the 5 files totaling about 31 MB with about 1 MB free.

But when I run 'parted' on /dev/mmcblk0, I see one 16GB partition
using the fat16 file system.  'parted check' warns me that Partition 1
is 16.0GB, but the file system is 32.2MB.  GParted basically throws up
its hands in frustration and gives up.

It seems to me that before I start trying to get a class created that
will create the partitions automatically, I ought to first figure out
how to create the partitions by hand, but I'm not convinced that the
.hddimg is giving me a solid foundation to start with.

Can anyone give me clues to the why/wherefore of the partition that
the build system is creating?  If I create my own partitions on the
card first, won't the 'dd' operation simply wipe that out and replace
it with the current situation?

I'm using the Crownbay emgd layer, Denzil 7.0.1.

John

