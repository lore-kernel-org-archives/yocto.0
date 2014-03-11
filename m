Return-Path: <Chong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B065E008FA
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 19:13:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2B2DOTM001996
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 19:13:24 -0700 (PDT)
Received: from pek-hostel-vm06.wrs.com (128.224.153.176) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 10 Mar 2014 19:13:24 -0700
From: Chong Lu <Chong.Lu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 11 Mar 2014 10:13:21 +0800
Message-ID: <cover.1394503849.git.Chong.Lu@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] checkpolicy: Don't link against libfl
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
X-List-Received-Date: Tue, 11 Mar 2014 02:13:26 -0000
Content-Type: text/plain

The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:

  refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib chonglu/checkpolicy
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=chonglu/checkpolicy

Chong Lu (1):
  checkpolicy: Don't link against libfl

 recipes-security/selinux/checkpolicy.inc           |  2 +
 .../checkpolicy-Do-not-link-against-libfl.patch    | 44 ++++++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 recipes-security/selinux/checkpolicy/checkpolicy-Do-not-link-against-libfl.patch

-- 
1.8.1.2


