Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30D674C80332
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 19:22:47 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6C0Mkl8007427
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 17:22:46 -0700 (PDT)
Received: from localhost (128.224.162.153) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 11 Jul 2011 17:22:45 -0700
Message-ID: <25dc3e34eb6c5bbbc98805d8f34ff6b650fb9662.1310094637.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1310094637.git.jingdong.lu@windriver.com>
References: <cover.1310094637.git.jingdong.lu@windriver.com>
Old-Date: Fri, 8 Jul 2011 10:57:57 +0800
Date: Tue, 12 Jul 2011 08:22:42 +0800
To: <yocto@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.153]
Subject: [PATCH 1/1] meta/routerstationpro: remove some conflicted configurations
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
X-List-Received-Date: Tue, 12 Jul 2011 00:22:47 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Some kernel options were redefined by routerstationpro.cfg and
it will cause some bugs. So remove some configurations which have
been defined in base.cfg or standard.cfg from routerstationpro.cfg.
1) Gerneral setup:
	remove CONFIG_EXPERIMENTAL, CONFIG_SYSVIPC, CONFIG_POSIX_MQUEUE
2) Native Language Support:
	remove all related options

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../bsp/routerstationpro/routerstationpro.cfg      |   45 --------------------
 1 files changed, 0 insertions(+), 45 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
index f58dfe8..1ac2c31 100644
--- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
+++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
@@ -209,14 +209,11 @@ CONFIG_CONSTRUCTORS=y
 #
 # General setup
 #
-# CONFIG_EXPERIMENTAL is not set
 CONFIG_BROKEN_ON_SMP=y
 CONFIG_INIT_ENV_ARG_LIMIT=32
 CONFIG_LOCALVERSION=""
 CONFIG_LOCALVERSION_AUTO=y
 CONFIG_SWAP=y
-# CONFIG_SYSVIPC is not set
-# CONFIG_BSD_PROCESS_ACCT is not set
 # CONFIG_TASKSTATS is not set
 # CONFIG_AUDIT is not set
 
@@ -1461,48 +1458,6 @@ CONFIG_SUNRPC=y
 #
 # Partition Types
 #
-# CONFIG_PARTITION_ADVANCED is not set
-CONFIG_MSDOS_PARTITION=y
-CONFIG_NLS=y
-CONFIG_NLS_DEFAULT="iso8859-1"
-CONFIG_NLS_CODEPAGE_437=y
-# CONFIG_NLS_CODEPAGE_737 is not set
-# CONFIG_NLS_CODEPAGE_775 is not set
-# CONFIG_NLS_CODEPAGE_850 is not set
-# CONFIG_NLS_CODEPAGE_852 is not set
-# CONFIG_NLS_CODEPAGE_855 is not set
-# CONFIG_NLS_CODEPAGE_857 is not set
-# CONFIG_NLS_CODEPAGE_860 is not set
-# CONFIG_NLS_CODEPAGE_861 is not set
-# CONFIG_NLS_CODEPAGE_862 is not set
-# CONFIG_NLS_CODEPAGE_863 is not set
-# CONFIG_NLS_CODEPAGE_864 is not set
-# CONFIG_NLS_CODEPAGE_865 is not set
-# CONFIG_NLS_CODEPAGE_866 is not set
-# CONFIG_NLS_CODEPAGE_869 is not set
-# CONFIG_NLS_CODEPAGE_936 is not set
-# CONFIG_NLS_CODEPAGE_950 is not set
-# CONFIG_NLS_CODEPAGE_932 is not set
-# CONFIG_NLS_CODEPAGE_949 is not set
-# CONFIG_NLS_CODEPAGE_874 is not set
-# CONFIG_NLS_ISO8859_8 is not set
-# CONFIG_NLS_CODEPAGE_1250 is not set
-# CONFIG_NLS_CODEPAGE_1251 is not set
-# CONFIG_NLS_ASCII is not set
-# CONFIG_NLS_ISO8859_1 is not set
-# CONFIG_NLS_ISO8859_2 is not set
-# CONFIG_NLS_ISO8859_3 is not set
-# CONFIG_NLS_ISO8859_4 is not set
-# CONFIG_NLS_ISO8859_5 is not set
-# CONFIG_NLS_ISO8859_6 is not set
-# CONFIG_NLS_ISO8859_7 is not set
-# CONFIG_NLS_ISO8859_9 is not set
-# CONFIG_NLS_ISO8859_13 is not set
-# CONFIG_NLS_ISO8859_14 is not set
-# CONFIG_NLS_ISO8859_15 is not set
-# CONFIG_NLS_KOI8_R is not set
-# CONFIG_NLS_KOI8_U is not set
-CONFIG_NLS_UTF8=y
 
 #
 # Kernel hacking
-- 
1.7.0.4


