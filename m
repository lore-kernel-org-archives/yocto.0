Return-Path: <mr.scada@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DAE6E0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 12:53:56 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id u16so1417590iet.23
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 12:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CDi2HmGRFB651koydrQ3QXkGmxdkFOBk+RJfI06Z12E=;
	b=dQkv06r9aAFkIaWYVgIdFenGGdpXECwltmN++9dPsnnoLAsFnSE5sE5up7HYOBOTzu
	p3+GR+3fnMf/hIF9wwFJJtEzDGmcqL8PXkmaAwqtKpDmqh7ME9dcQ2WeCOcDWv3GvnVp
	ECZ0TONjF7off7v83hlxNA0TwnDp9Qp0iAq3y3rwBJRuNl2iW/sQrXSsavyUCg6Z/prx
	YNREDE3mkk7OXsMS8lW6z/K2xLL97eZEaoOcruifBMx3a61AlnkAYwjbWG8c0Ls6Oplm
	7Ld2KemwjcAQFZUEoI2ysNaQCDy/QnCAs8E41RXcFLJABWvY33bOo6zvRBNubJLkIQ4W
	9krg==
MIME-Version: 1.0
X-Received: by 10.50.67.111 with SMTP id m15mr1534687igt.54.1372881236318;
	Wed, 03 Jul 2013 12:53:56 -0700 (PDT)
Received: by 10.64.137.196 with HTTP; Wed, 3 Jul 2013 12:53:56 -0700 (PDT)
Date: Wed, 3 Jul 2013 12:53:56 -0700
Message-ID: <CAFrvcArXENnQJtqmHNdRHcB0kms56emmC7LYMH5FRyG_+evRQg@mail.gmail.com>
From: Barry G <mr.scada@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Build Auditing
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
X-List-Received-Date: Wed, 03 Jul 2013 19:53:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I was curious if anyone has created any sort of build auditing software
for Yocto builds.  Our company has an extensive software quality assurance
program and we are trying to figure out the best methods to audit our
builds.

In the past we have used clearaudit type software.  The current
home-grown version of our build system on Linux uses inotify
to track files touched in our build repositories.  We generally
try to have file-based audit records that record the file path/version
that can be traced to individual releases.  We are currently using
Mercurial as our revision control system.

Right now it seems like the best solution to this issue would be
to create a wrapper that would fetch our software from Mercurial,
create a tar file out of it, hand those tar files to Yocto,
start an inotify process to watch the build directories Yocto uses,
bitbake our image, collect the list of files touched by yocto,
"join" those files with the files that went into the tar
files, and then "join" those records against the Mercurial checkout
records to obtain changeset information/approval metadata.

It would certainly be easier to resolve the revision of the Mercurial
repository without individual files-touched information, but knowing
which files are actually compiled has been highly useful information in
the past.  For example, when a CVE is released against package foo
for a vulnerability in bar.c, it is reassuring to know that our releases
didn't even compile bar.c.

We do peer code reviews/UT along with static code analysis on many version
of each file in our repositories.  When we release a product build we have
to show to management that each file that went into our released image
underwent our QA process.  It is definitely a lot of work, but it
is necessary for audit/compliance.

Anyone else out there challenged with these type of requirements?
How are other companies handling this?  Any better methods/solutions people
can recommend?

Thanks for your help!

Barry

