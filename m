Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3F13E0122C
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 01:12:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P8C4vN004707
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 01:12:04 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 01:12:03 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 15:55:34 +0800
Message-ID: <1314258935-32230-1-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 0/1] mips/rt: convert cascade interrupt to no threaded
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
X-List-Received-Date: Thu, 25 Aug 2011 08:12:05 -0000
Content-Type: text/plain

This patch fixes yocto bug:
[Bug 1392] qemumips: linux-yocto-rt_3.0 panics at boot

Liming Wang (1):
      mips/rt: convert cascade interrupt to no threaded

 arch/mips/kernel/i8259.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


