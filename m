Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8E184C80052
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 02:03:19 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5O73JWR020899
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2011 00:03:19 -0700 (PDT)
Received: from localhost (128.224.162.209) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 24 Jun 2011 00:03:18 -0700
Message-ID: <cover.1308898789.git.jingdong.lu@windriver.com>
Old-Date: Fri, 24 Jun 2011 14:59:49 +0800
Date: Fri, 24 Jun 2011 15:02:28 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.209]
Subject: [PATCH 0/1] routerstationpro: Enable IPC config
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
X-List-Received-Date: Fri, 24 Jun 2011 07:03:20 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Enable IPC and related configurations for routerstation.
Fixes bug [YOCTO #1161]

Jingdong Lu (1):
  routerstationpro: IPC config

 .../bsp/routerstationpro/routerstationpro.cfg      |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)


