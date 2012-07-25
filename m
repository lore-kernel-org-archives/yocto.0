Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8AA9E00283
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:14:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6P9Dw0W021037
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Jul 2012 02:13:58 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 25 Jul 2012 02:13:58 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <saul.wold@intel.com>
Date: Wed, 25 Jul 2012 17:13:51 +0800
Message-ID: <cover.1343207401.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/2] update packages' maintainer
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
X-List-Received-Date: Wed, 25 Jul 2012 09:14:00 -0000
Content-Type: text/plain

Hi Saul,

I take over the packages belongs to Xiaofeng Yan. 
Update ltp qmmp and liburi-perl, and mingetty check date too.

Regards,
Kai

The following changes since commit 0ffb02eec2beaea27ff0ec9d3d31b0a09e675a4c:

  documentation: Updated the h6 style to use a larger font (2012-07-24 10:35:34 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/update-maintainer
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/update-maintainer

Kang Kai (2):
  maintainers.inc: update some packages' maintainer info
  upstream_tracking.inc: update some packages

 meta-yocto/conf/distro/include/maintainers.inc     |   18 +++++++++---------
 .../conf/distro/include/upstream_tracking.inc      |   15 ++++++++-------
 2 files changed, 17 insertions(+), 16 deletions(-)

-- 
1.7.5.4


