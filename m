Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF41E006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:02 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2284515pbb.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=HOAe0YOdQ4oP6uZO+ZKaMVG05slvGC+pdmNNW8AFJHQ=;
	b=GI5CVQGHTsCLLehNzbsYW840D49swCcDPcVTNTYAU5bsEKQNmr9MBJor1zIqtWqevK
	CX3AS+A8qH40q7xxJJpCDHbxePqeigpSKVnrjm+dKyFKbdfhCvk8AA5syXONvP9ZH8MN
	vuTRUp/Z87KkPUF1MAZlRPDpG4Ob/xk8QEzIY7MCIS2Vwig537ACz8kv98WJJ8PI7Yes
	8V9TwhCmADO955PWgkktYvneJ+Rf3hUUAd8Py3ds96bixDl0ZvasygsnwS2rm1BVPUOp
	ZYeYUVuv8oDegMVC+NTHYokn97CmTC4Uga0yfIVnImjazwXhvG/XgeknCgJgWDM38E6S
	aKpA==
Received: by 10.68.225.101 with SMTP id rj5mr2218916pbc.2.1338487502009;
	Thu, 31 May 2012 11:05:02 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ua6sm4887313pbc.20.2012.05.31.11.05.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 May 2012 11:05:01 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu, 31 May 2012 11:04:57 -0700
Message-Id: <cover.1338487192.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQkMNQxUZRpArQcAAdBPt1hC5xkZwXha7eOnhBIrncucnJM77hKuRJtNWR0TsbdfqyP+3qZG
Subject: [PATCH 0/2][linux-yocto-3.2] fri2 serial port fixes for preempt-rt
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
X-List-Received-Date: Thu, 31 May 2012 18:05:02 -0000

These patches address are lockup when attempting login over serial on the fri2
when running the preempt-rt kernel. I have sent the first patch out for review,
but have not yet heard back. The serial port works and appears fairly stable.
However, I would prefer to keep these patches in yocto/preempt-rt/fri2 until
they are merged upstream in their final form. Please apply to a new branch:

    yocto/preempt-rt/fri2


The following changes since commit c004dd798ce68af4d7677939426b083575523db5:

  pch_uart: Add eg20t_port lock field, avoid recursive spinlock on port->lock (2012-05-30 23:22:37 -0700)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/standard/preempt-rt/fri2
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/standard/preempt-rt/fri2

Darren Hart (2):
  pch_uart: Add eg20t_port lock field, avoid recursive spinlocks
  [RT] pch_uart: Correct spin_lock and irqsave usage in pch_console_write

 drivers/tty/serial/pch_uart.c |   26 ++++++++++++++++++--------
 1 files changed, 18 insertions(+), 8 deletions(-)

-- 
1.7.5.4


