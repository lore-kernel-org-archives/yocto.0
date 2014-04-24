Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16933E006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 00:02:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3O72u9n023339
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 00:02:56 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Thu, 24 Apr 2014 00:02:56 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Thu, 24 Apr 2014 03:02:51 -0400
Message-ID: <cover.1398322678.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: add setrans.conf for mcs/mls policy
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
X-List-Received-Date: Thu, 24 Apr 2014 07:02:59 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Add initial version for setrans.conf:
    - setrans-mls.conf: copied from \
      policycoreutils/mcstrans/share/examples/default/setrans.conf
    - setrans-mcs.conf: copied from radhat policy.
    
This fixes below issue:
    $ chcat -L
    IOError: No such file or directory: \
      '/etc/selinux/$POLICY_NAME/setrans.conf'

The following changes since commit 0362287928bc0a58b755488ebd74441c28eeeee2:

  audit: Fix lack of a default audit.rules (2014-04-07 09:55:49 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/setrans
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/setrans

Wenzong Fan (1):
  refpolicy: add setrans.conf for mcs/mls policy

 recipes-security/refpolicy/files/setrans-mcs.conf |   17 +++++++
 recipes-security/refpolicy/files/setrans-mls.conf |   52 +++++++++++++++++++++
 recipes-security/refpolicy/refpolicy_common.inc   |    8 ++++
 3 files changed, 77 insertions(+)
 create mode 100644 recipes-security/refpolicy/files/setrans-mcs.conf
 create mode 100644 recipes-security/refpolicy/files/setrans-mls.conf

-- 
1.7.9.5


