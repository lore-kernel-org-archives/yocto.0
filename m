Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA4FE00546; Wed, 18 Feb 2015 22:13:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F3EE00345
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 22:13:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 292DC3E7106
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:43:28 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id BD2D2xJNE9nY; Thu, 19 Feb 2015 11:43:27 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id CE0683E7104;
	Thu, 19 Feb 2015 11:43:27 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id rnigaYGxjR4Z; Thu, 19 Feb 2015 11:43:27 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id B95EA3E7103
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:43:27 +0530 (IST)
Date: Thu, 19 Feb 2015 11:43:27 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: yocto@yoctoproject.org
Message-ID: <2313626.76.1424326407786.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <21582822.75.1424326318941.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Issue while building the meta-oic layer for my bsp
Thread-Index: 4RxA9hy4LbGMxEVDyxAfeod4G68DWw==
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Subject: Issue while building the meta-oic layer for my bsp
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
X-List-Received-Date: Thu, 19 Feb 2015 06:13:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I need to build meta-oic layer on yocto for my machine which is a mips32 processor core.

While i am building i got following errors. Could you please help me for resolve this issue.

Errors are like following:

ERROR: Function failed: do_install (log file is located at /home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-r0/temp/log.do_install.11175)
ERROR: Logfile of failure stored in: /home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-r0/temp/log.do_install.11175
Log data follows:
| DEBUG: Executing shell function do_install
| install: cannot stat `/home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-r0/iotivity-0.9.0/out/yocto//release/libcoap.so': No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at /home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-r0/temp/log.do_install.11175)
ERROR: Task 2 (/home/testuser/poky/meta-oic/recipes-core/iotivity/iotivity_0.9.0.bb, do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 657 tasks of which 632 didn't need to be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Thanks & Regards,
Raghavendra K.


