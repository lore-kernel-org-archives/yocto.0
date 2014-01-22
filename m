Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E9C2E0089B
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 00:02:41 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0M82fVr005936
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 00:02:41 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Wed, 22 Jan 2014 00:02:40 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Wed, 22 Jan 2014 03:02:37 -0500
Message-ID: <cover.1390377478.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [meta-selinux][PATCH 0/1] libsemanage: fix DEPENDS override issue
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
X-List-Received-Date: Wed, 22 Jan 2014 08:02:45 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Don't override DEPENDS for target build, the "audit" should be appended to it.

The following changes since commit de0afbc8f434b235156e17234b72027840a821af:

  libsemanage-native: remove audit-native dependency (2014-01-20 18:28:11 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/fix-depends
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-depends

Wenzong Fan (1):
  libsemanage: fix DEPENDS override issue

 recipes-security/selinux/libsemanage.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.7.9.5


