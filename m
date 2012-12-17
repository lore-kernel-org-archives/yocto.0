Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D309AE00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 10:23:28 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so3873483pbb.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 10:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version:x-mailer;
	bh=VZZkI6cmClEcIPYsjsMk9Nmem5pO4EzI22jdS+JwLX8=;
	b=1Bqu+7XSyu407x5Yd8AksZzDLxsSXiZghvb96HPYwuHRFZE6QzRDTWYPCVRSC4IaZZ
	LWRrJC4YK7uK4vaSDf0RpAjiOWYmwZwbZxsbL1/EL/AAcoNcSnSPcB+Sgqfcg5mrT5EH
	yHW3YiiLmzS8McYJJIVCM9TxPf6EZyYpXGP+2Bl+ZZOGgu8nhR1vJprI8JQNAZ07O7G3
	hubQ8n+eHsUE30AJ5xbCrHCZBOpN2SP412+fFZ+3EhGro0k218vIfTIjvcATNHt9DEjd
	0Kd233jQ6O1fO7eDaVPGWyW5YvTWIi6ygMLcn0Jw1AuAolm4JeyqsFEmrAaMP8+18gvo
	GACw==
Received: by 10.68.132.34 with SMTP id or2mr46102467pbb.133.1355768608683;
	Mon, 17 Dec 2012 10:23:28 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id o1sm8982385paw.0.2012.12.17.10.23.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Dec 2012 10:23:28 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <E4BE722B-09A5-499D-BC18-FE981AED6A19@gmail.com>
Date: Mon, 17 Dec 2012 22:23:22 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: Error: nativesdk-qemu-helper_1.0.bb, do_compile, for gcc-4.5.4 and eglibc-2.13 port against current poky master
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
X-List-Received-Date: Mon, 17 Dec 2012 18:23:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      While attempting to maintain the gcc-4.5.4 and eglibc-2.13 =
recipes, against the current poky master, I ran into the following =
errors, while running bitbake meta-toolchain:

ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-q=
emu-helper/1.0-r9/temp/log.do_compile.16700 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-q=
emu-helper/1.0-r9/temp/log.do_compile.16700
Log data follows:
| DEBUG: Executing shell function do_compile
| tunctl.c:5:19: fatal error: stdio.h: No such file or directory
| compilation terminated.
| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-q=
emu-helper/1.0-r9/temp/log.do_compile.16700 for further information)
ERROR: Task 590 =
(/tool/yocto/poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb,=
 do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1196 tasks of which 1190 didn't need to =
be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  =
/tool/yocto/poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb, =
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.

How can I fix this error?

Best regards,

Elvis Dowson=

