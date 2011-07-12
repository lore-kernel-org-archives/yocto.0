Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A22644C80332
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 19:22:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6C0MgAF007407
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 17:22:42 -0700 (PDT)
Received: from localhost (128.224.162.153) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 11 Jul 2011 17:22:41 -0700
Message-ID: <cover.1310094637.git.jingdong.lu@windriver.com>
Old-Date: Fri, 8 Jul 2011 11:10:37 +0800
Date: Tue, 12 Jul 2011 08:22:37 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.153]
Subject: [PATCH 0/1]meta/routerstationpro: remove some conflicted configurations
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
X-List-Received-Date: Tue, 12 Jul 2011 00:22:43 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Some kernel options were redefined by routerstationpro.cfg and
it will cause some bugs. So remove some configurations which have
been defined in base.cfg or standard.cfg from routerstationpro.cfg.

Fix bug [YOCTO #1161]
Fix bug [YOCTO #773]

Jingdong Lu (1):
  meta/routerstationpro: remove some conflicted configurations

 .../bsp/routerstationpro/routerstationpro.cfg      |   45 --------------------
 1 files changed, 0 insertions(+), 45 deletions(-)


