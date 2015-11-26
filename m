Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 173FAE00BCC; Thu, 26 Nov 2015 00:01:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70307E00B5D
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 00:01:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tAQ817WJ011028
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 00:01:07 -0800
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Thu, 26 Nov 2015 00:01:07 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 26 Nov 2015 15:50:07 +0800
Message-ID: <1448524207-15246-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][yocto-kernel-cache] base.cfg: enable TMPFS_POSIX_ACL and TMPFS_XATTR
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
X-List-Received-Date: Thu, 26 Nov 2015 08:01:11 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

enable Tmpfs POSIX Access Control Lists and Tmpfs extended attributes
this will remove the error when systemd apply the ACL to tmpfs:

    systemd-udevd[335]: Failed to apply ACL on /dev/dri/card0: Operation not supported
    systemd-udevd[552]: Failed to apply ACL on /dev/adsp: Operation not supported

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 ktypes/base/base.cfg | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/ktypes/base/base.cfg b/ktypes/base/base.cfg
index 3b8ccd2..28a0d83 100644
--- a/ktypes/base/base.cfg
+++ b/ktypes/base/base.cfg
@@ -933,6 +933,8 @@ CONFIG_PROC_FS=y
 CONFIG_PROC_KCORE=y
 CONFIG_SYSFS=y
 CONFIG_TMPFS=y
+CONFIG_TMPFS_POSIX_ACL=y
+CONFIG_TMPFS_XATTR=y
 # CONFIG_HUGETLB_PAGE is not set
 
 #
-- 
1.9.1


