Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73E6EE01239
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 01:12:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P8C62t004712
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 01:12:06 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 01:12:06 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 15:55:35 +0800
Message-ID: <1314258935-32230-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314258935-32230-1-git-send-email-liming.wang@windriver.com>
References: <1314258935-32230-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 1/1] mips/rt: convert cascade interrupt to no threaded
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
X-List-Received-Date: Thu, 25 Aug 2011 08:12:07 -0000
Content-Type: text/plain

preempt_rt kernel forces all irq interrupts to be threaded except some
special interrupts. This cascade interrupt belongs to the exceptions.

Because irq2 is initialized more early than "kthreadd" task,
which converts irq interrupt to threaded.

If this irq is threaded, kernel calls "try_to_wake_up" function
to wake up "kthreadd" task, but at that moment, "kthreadd" task hasn't been
initialized well, so try_to_wake_up wakes up a NULL task.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 arch/mips/kernel/i8259.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/mips/kernel/i8259.c b/arch/mips/kernel/i8259.c
index 5c74eb7..fb338db 100644
--- a/arch/mips/kernel/i8259.c
+++ b/arch/mips/kernel/i8259.c
@@ -295,6 +295,7 @@ static void init_8259A(int auto_eoi)
 static struct irqaction irq2 = {
 	.handler = no_action,
 	.name = "cascade",
+	.flags = IRQF_NO_THREAD,
 };
 
 static struct resource pic1_io_resource = {
-- 
1.7.0.4


