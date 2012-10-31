Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B9D9E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 02:38:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q9V9c6E4027383
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 02:38:06 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.205) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Wed, 31 Oct 2012 02:38:05 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 31 Oct 2012 17:38:35 +0800
Message-ID: <cover.1351676013.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 0/1] update script create-recipe
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
X-List-Received-Date: Wed, 31 Oct 2012 09:38:07 -0000
Content-Type: text/plain

Update create-recipe to fix some small bugs.

The following changes since commit e9e3285e1397cfd2d34f4eb7b5aa59311eea861d:

  openssl: Use ${CFLAGS} not ${FULL_OPTIMIZATION} (2012-10-30 11:06:38 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/update-create-recipe
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/update-create-recipe

Kang Kai (1):
  create-recipe: update re pattern and output

 scripts/create-recipe |   29 +++++++++++++++++++----------
 1 files changed, 19 insertions(+), 10 deletions(-)

-- 
1.7.5.4


