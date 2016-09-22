Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9296E00A48; Thu, 22 Sep 2016 00:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC90BE006B3
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:03:38 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8M73bNB010975
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:03:37 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Sep 2016 00:03:36 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Sep 2016 03:03:35 -0400
Message-ID: <1474527815-221704-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] dhcp: sync init-server with oe-core
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
X-List-Received-Date: Thu, 22 Sep 2016 07:03:41 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

oe-core commit:

  a162416119ec9deee9fef53455d1281abe573681
  dhcpd: create dhcpd user for dhcp dameon

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-connectivity/dhcp/files/init-server | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
index 1d03d7e..a0e901a 100644
--- a/recipes-connectivity/dhcp/files/init-server
+++ b/recipes-connectivity/dhcp/files/init-server
@@ -28,7 +28,7 @@ case "$1" in
 		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
 		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
 		restorecon_dhcpd_leases
-		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES
+		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES -user dhcp -group dhcp
 		echo "."
 		;;
 	stop)
-- 
2.8.1


