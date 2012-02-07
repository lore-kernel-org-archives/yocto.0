Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85CAE01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 07:12:21 -0800 (PST)
Received: by dadp13 with SMTP id p13so7138865dad.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 07:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HZ1qzxxO+uEEhxCoc87MOnzlQU8YeFXbEsgYN/oo9ro=;
	b=Hjyo1xzdkO1pvfw1mLKiQUd0vofW7T3zk8+cHyMyQADEepysAt/DRQvhmFnO2yX4uF
	h/iY7I5WplWgOFvK5stkVDfYvtHF/LPkNzEVZ6U9v2lCA64E0Q5JuE5zHMGT87Vla3ad
	DzY3r2CWC5bP4xS377Ug3gnY22Zc1UIHtO1Eo=
MIME-Version: 1.0
Received: by 10.68.232.202 with SMTP id tq10mr58790216pbc.68.1328627541389;
	Tue, 07 Feb 2012 07:12:21 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Tue, 7 Feb 2012 07:12:21 -0800 (PST)
Date: Tue, 7 Feb 2012 10:12:21 -0500
Message-ID: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Unable to fetch file://lib for package emgd in yoctyo 1.2 (aka M2)
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
X-List-Received-Date: Tue, 07 Feb 2012 15:12:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am bitbaking core image sato for machine corwnbay (with the emgd
driver) and the emgd-driver-bin recipe seems to fail.

Here is the error. I searched the archives, but could not find anything.

Please advise.

Here is the output for bitbake -b
/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb

NOTE: Running task 1 of 12 (ID: 4,
/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
do_fetch)
NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Started
ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
fetch URL file://lib from any source.' failed
ERROR: Logfile of failure stored in:
/ssd/autif/M2/crb/tmp/work/core2-poky-linux/emgd-driver-bin-1.8-r8/temp/log.do_fetch.31621
Log data follows:
| DEBUG: Trying PREMIRRORS
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['bzr',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['cvs',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['git',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['hg',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['osc',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['p4',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svk',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svn',
'.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
'/sources/', '', '', {}]
| DEBUG: Trying Upstream
| ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
fetch URL file://lib from any source.' failed
NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Failed
ERROR: Task 4 (/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
do_fetch) failed with exit code '1'
ERROR: '/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb'
failed

