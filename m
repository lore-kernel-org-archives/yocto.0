Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF37E01238
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 00:28:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P7S2ea026792
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 00:28:02 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 00:28:01 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 15:11:29 +0800
Message-ID: <1314256289-22050-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314256289-22050-1-git-send-email-liming.wang@windriver.com>
References: <1314256289-22050-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 1/1] mips/rt: convert timer interrupt handler to no threaded
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
X-List-Received-Date: Thu, 25 Aug 2011 07:28:03 -0000
Content-Type: text/plain

It's a known issue that preempt_rt kernel must convert the
main timer interrupt handler to no threaded, otherwise kernel
can't work well.

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


