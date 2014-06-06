Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DB1E00BEA; Fri,  6 Jun 2014 03:00:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A75DEE00B94
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 03:00:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s56A0avt006436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 6 Jun 2014 03:00:36 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Fri, 6 Jun 2014 03:00:36 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Fri, 6 Jun 2014 06:00:32 -0400
Message-ID: <cover.1402048081.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/2] dhcp: restorecon for dhcpd*.leases from initscript
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
X-List-Received-Date: Fri, 06 Jun 2014 10:00:48 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

dhcp-server fails to start since /var/lib/dhcpd.leases has incorrect
contexts: dhcp_state_t, it should be: dhcpd_state_t.

* make a local copy of init-server
* update init-server to restorecon for dhcpd*.lesses before starting dhcp server.

The following changes since commit 7984856ca2c6ef7a1c8d5bee3f8ec3e8031ee971:

  setools: Add bison-native and flex-native to DEPENDS (2014-06-02 09:16:33 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/dhcp
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/dhcp

Wenzong Fan (2):
  dhcp: make a copy of init-server
  dhcp/init-server: restorecon for dhcpd*.leases

 recipes-connectivity/dhcp/dhcp_4.2.5-P1.bbappend |    3 ++
 recipes-connectivity/dhcp/files/init-server      |   52 ++++++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 recipes-connectivity/dhcp/dhcp_4.2.5-P1.bbappend
 create mode 100644 recipes-connectivity/dhcp/files/init-server

-- 
1.7.9.5


