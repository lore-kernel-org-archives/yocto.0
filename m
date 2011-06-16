Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 529A24C800B3
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 01:06:44 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5G66hlI014605
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 23:06:43 -0700 (PDT)
Received: from localhost (128.224.162.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 15 Jun 2011 23:06:43 -0700
Message-ID: <cover.1308204165.git.jingdong.lu@windriver.com>
Old-Date: Thu, 16 Jun 2011 14:02:45 +0800
Date: Thu, 16 Jun 2011 14:07:11 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.215]
Subject: [PATCH 0/1] RTC: Ensure msecure is mux'd to be able to set RTC for beagleboard
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
X-List-Received-Date: Thu, 16 Jun 2011 06:06:44 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Ensure msecure is mux'd to be able to set the RTC for beagleboard.
Fixes bug [YOCTO #767]

Jingdong Lu (1):
  RTC: Ensure msecure is mux'd to be able to set RTC

 arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)


