Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FECBE003DB; Tue,  3 Jan 2017 11:38:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78738E0034A
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 11:38:38 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id d9so438112363ioe.0
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2017 11:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=GwDYFHvV+d61FzUeq7jZVxDc31oQMc4lhgulMfhlDHY=;
	b=Jb6j1o94fuYET+mrNVtuOQ1rij9xLvUjs/yyiMJXTnvFVB+OvPuJiwbzOwy1vRUPTi
	q3vM2zRMMD2p8n0AnRBAMfNgC3sm//u5XdGsD056GNlatiNyFAcH4JSDlzFuIpkHdHWS
	IxWLGfjZtLPNHO42CXmJl0t8vW44hklvIDafaxr4uy9TRxm+doGTAVoYS+whaAvW56Ul
	/0fB2s00iAUzWIXLaDT6P/eDMYmyo6yUGB0qxsYVFhYExIsWwcs88el/vSlzILz5TFPY
	KAmWsNqNMD7k+BaFSOK6/+Y1I0qMYWwYn/aQAiMw46tBMPdePgtrU2+lLzrP1bL7amXO
	fHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=GwDYFHvV+d61FzUeq7jZVxDc31oQMc4lhgulMfhlDHY=;
	b=eDZ2csxMBT83db+o4/iq/EiY4B+m016PO9dfP6ZG+wQSBcXlUrvqWJoQ7Jvzr6dPQS
	MXa5QZVvacsc2KtMSU1DqW6gg/cp1W76Xg9d5Z+zbIxMClIIDl3PtBIOwbGt3m97lHVG
	6y/SWQmnDA+KpXzClBhi6AoJ7KrG46GQlIYj5vv8ogJDZQQPo9iarzMyOB2cBt7eu9IN
	co2GabQk1OzQiQZnu2c+QhcI1tGh6/Xpv5DyC/f53qPkLnryVUXwqJHIZdhOO9OQYvqI
	oBeDUd3b2f0CFyUwiCBFz4U8glgBoQdWKKwr2Ynp+ErI9vNIfodXwxFklvUnb+WfpxPK
	ye3A==
X-Gm-Message-State: AIkVDXJps3gw/CfLFK0NhNf+EEg2DCE6fd4GwJ7HJTHWwSzYqQqBQtsfDMZp4PBpqovzSg==
X-Received: by 10.107.173.32 with SMTP id w32mr59027647ioe.136.1483472317550; 
	Tue, 03 Jan 2017 11:38:37 -0800 (PST)
Received: from openSUSE-i7.site ([23.91.155.189])
	by smtp.gmail.com with ESMTPSA id
	i200sm32818687itb.0.2017.01.03.11.38.36 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 03 Jan 2017 11:38:37 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jan 2017 14:38:30 -0500
Message-Id: <20170103193831.16829-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.10.0.129.g35f6318
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi-rt
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
X-List-Received-Date: Tue, 03 Jan 2017 19:38:42 -0000

This patchset adds a new recipe to meta-raspberrypi to give users the option
to choose a full PREEMPT_RT Linux kernel with the full PREEMPT_RT patch
applied. It is based on the linux-raspberrypi 4.4 kernel with the -rt patch
from https://www.kernel.org/pub/linux/kernel/projects/rt/, specifically it is
linux-raspberrypi-4.4.35 with the patch-4.4.32-rt43 -rt patch applied.

To select this kernel for your image, set:

	PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi-rt"

in local.conf or similar.

Normally when using the -rt kernel on the raspberrypi and enabling full
preemption (CONFIG_PREEMPT_RT_FULL=y), the device will become unstable and
be prone to frequent crashing. There are two ways to fix this problem:
1) disable FIQ
2) patch the FIQ handling to avoid the race which causes the crashes

The FIQ can be disabled by appending "dwc_otg.fiq_enable=0
dwc_otg.fiq_fsm_enable=0" to the kernel cmdline. Disabling the FIQ altogether
does fix the problem but increases latencies. The better solution is to patch
the FIQ handling code to avoid the race condition that causes the crash. This
allows the FIQ to be used, and lowers latencies.

This patch implements the 2nd option of patching the kernel code to avoid the
race condition. Thus providing a better -rt experience on this platform.

A full explanation of this issue can be found here:

	https://www.osadl.org/Single-View.111+M5c03315dc57.0.html

This kernel recipe ignores the raspberrypi-specific kernel configuration
mechanisms of the other raspberrypi kernel recipes so that users are free to
modify the base kernel configuration using fragments in the usual Yocto way.
The base defconfig for this kernel is the same as the linux-raspberrypi-4.4
kernel but with full preemption enabled (and whatever else that pulls in).

Trevor Woerner (1):
  linux-raspberrypi-rt: add

 .../0001-fix-dtbo-rules.patch                      |    44 +
 .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
 .../linux/linux-raspberrypi-rt-4.4/defconfig       |  5419 ++++
 .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
 5 files changed, 37231 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb

-- 
2.10.2


