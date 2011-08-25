Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C0EE0122C
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 02:01:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7P91P5X011268
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2011 02:01:25 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 25 Aug 2011 02:01:24 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Thu, 25 Aug 2011 16:44:50 +0800
Message-ID: <1314261891-5311-1-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 0/1] scripts/runqemu: disable unfs boot mode for qemuppc
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
X-List-Received-Date: Thu, 25 Aug 2011 09:01:26 -0000
Content-Type: text/plain

It's a workaround to fix yocto bug:
[Bug 414][PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS

Liming Wang (1):
      scripts/runqemu: disable unfs boot mode for qemuppc

 scripts/runqemu |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)


