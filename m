Return-Path: <marc.ferland@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E8DA4C80044
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2011 14:58:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so1479981qwj.35
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2011 12:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=DLtWJFW32oZ8mAfeexZzG3WKJh+virY39lLHlc08n5s=;
	b=XjIG+UbRVuNU2XKb8V4y8VkEYgY2TLfg6puRj1vLhTbMOLSUPNY9W/qc48Mu0iheAQ
	IlKI+SbS1ORt05dsbGqLWxk6PnjZBqCuxs8HPMXDk2cQjjVKinl4/zVGDcZ/aXaiYQYJ
	xHhpnEgcZlUmrekCQNl1zRhMvNVX1Foxhq7Ig=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=AN2qQMM8U8t2FSckA9Nm8A4MD3QcIEhi2KdWUtafXKLZU7MsdcScPh6xziDlxs5vBe
	dhutcio8FhV8BPYR/eXuub8t5/jfVO/SDWLhSxUb+nGwKKc4wlGXXwotw/O0HyrWH1be
	msSHgAJT+k2c3bbR5EOGHOWydCRMhC75BgA5c=
MIME-Version: 1.0
Received: by 10.229.102.92 with SMTP id f28mr19635qco.124.1302119898146; Wed,
	06 Apr 2011 12:58:18 -0700 (PDT)
Received: by 10.229.96.68 with HTTP; Wed, 6 Apr 2011 12:58:18 -0700 (PDT)
Date: Wed, 6 Apr 2011 15:58:18 -0400
Message-ID: <BANLkTimAgHQEURtfo7jC0HrPDbb8ErgXtg@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: libboost has wrong architecture
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
X-List-Received-Date: Wed, 06 Apr 2011 19:58:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to build an image for the meta-intel/meta-crownbay machine
on ubuntu 10.10 (x86_64) and I'm getting a QA error with libboost:


wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_filesystem.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_graph.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_date_time.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_iostreams.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_unit_test_framework.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_regex.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_signals.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_prg_exec_monitor.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_program_options.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_system.so.1.44.0
wrong architecture,
boost-dbg,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_thread.so.1.44.0
wrong architecture,
boost-date-time,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-date-time/usr/lib/libboost_date_time.so.1.44.0
wrong architecture,
boost-filesystem,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-filesystem/usr/lib/libboost_filesystem.so.1.44.0
wrong architecture,
boost-graph,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-graph/usr/lib/libboost_graph.so.1.44.0
wrong architecture,
boost-iostreams,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-iostreams/usr/lib/libboost_iostreams.so.1.44.0
wrong architecture,
boost-program-options,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-program-options/usr/lib/libboost_program_options.so.1.44.0
wrong architecture,
boost-regex,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-regex/usr/lib/libboost_regex.so.1.44.0
wrong architecture,
boost-signals,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-signals/usr/lib/libboost_signals.so.1.44.0
wrong architecture,
boost-system,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-system/usr/lib/libboost_system.so.1.44.0
wrong architecture,
boost-test,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-test/usr/lib/libboost_unit_test_framework.so.1.44.0
wrong architecture,
boost-test,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-test/usr/lib/libboost_prg_exec_monitor.so.1.44.0
wrong architecture,
boost-thread,/work/atom-poky-linux/boost-1.44.0-r0/packages-split/boost-thread/usr/lib/libboost_thread.so.1.44.0

The build then continues and fails when libzypp tries to link with this library:
....
/home/marc/g3/yocto/buildo/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
skipping incompatible
/home/marc/g3/yocto/buildo/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so
when searching for -lboost_signals-mt
/home/marc/g3/yocto/buildo/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
skipping incompatible
/home/marc/g3/yocto/buildo/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a
when searching for -lboost_signals-mt
/home/marc/g3/yocto/buildo/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
skipping incompatible
/home/marc/g3/yocto/buildo/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.so
when searching for -lboost_signals-mt
/home/marc/g3/yocto/buildo/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
skipping incompatible
/home/marc/g3/yocto/buildo/tmp/sysroots/crownbay/usr/lib/libboost_signals-mt.a
when searching for -lboost_signals-mt
/home/marc/g3/yocto/buildo/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
cannot find -lboost_signals-mt collect2: ld returned 1 exit status
make[2]: *** [zypp/libzypp.so.810.1.0] Error 1
make[2]: Leaving directory
`/home/marc/g3/yocto/buildo/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433-r9/git'
make[1]: *** [zypp/CMakeFiles/zypp.dir/all] Error 2
make[1]: Leaving directory
`/home/marc/g3/yocto/buildo/tmp/work/crownbay-poky-linux/libzypp-0.0-git1+15b6c52260bbc52b3d8e585e271b67e10cc7c433-r9/git'
make: *** [all] Error 2
FATAL: oe_runmake failed

Any idea how to resolve this?

Regards,

Marc

