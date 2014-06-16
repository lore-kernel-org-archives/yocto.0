Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4E38E00AEC; Sun, 15 Jun 2014 18:38:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A269E00AEC
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:38:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5G1cgII001055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 18:38:42 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Sun, 15 Jun 2014 18:38:42 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <Xin.Ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 15 Jun 2014 21:38:38 -0400
Message-ID: <1402882718-31154-2-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1402882718-31154-1-git-send-email-wenzong.fan@windriver.com>
References: <1402882718-31154-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] dhcp/init-server: restorecon for dhcpd*.leases
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
X-List-Received-Date: Mon, 16 Jun 2014 01:38:43 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

dhcp-server fails to start with avc denied error:

  avc: denied { read } for pid=571 comm="dhcpd" \
  name="dhcpd.leases" dev="hda" ino=63911 \
  scontext=system_u:system_r:dhcpd_t:s0-s15:c0.c1023 \
  tcontext=system_u:object_r:dhcp_state_t:s0 tclass=file

The type for dhcpd.leases is not correct, just fix it before dhcp-
server started.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-connectivity/dhcp/files/init-server |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
index 34c2085..1d03d7e 100644
--- a/recipes-connectivity/dhcp/files/init-server
+++ b/recipes-connectivity/dhcp/files/init-server
@@ -15,11 +15,19 @@ fi
 # should listen on.)
 . /etc/default/dhcp-server
 
+# Restorecon for /var/lib/dhcp/{dhcpd.leases,dhcpd6.leases}
+restorecon_dhcpd_leases(){
+	test ! -x /sbin/restorecon || for x in dhcpd.leases dhcpd6.leases; do
+		[ -f /var/lib/dhcp/$x ] && /sbin/restorecon -F /var/lib/dhcp/$x
+	done
+}
+
 case "$1" in
 	start)
 		echo -n "Starting DHCP server: "
 		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
 		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
+		restorecon_dhcpd_leases
 		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES
 		echo "."
 		;;
-- 
1.7.9.5


