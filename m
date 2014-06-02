Return-Path: <tom@ewsting.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D8A3E00B6C; Mon,  2 Jun 2014 03:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D86CE00A2F
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:50:54 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id z12so4962933wgg.24
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:50:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=w0jcTiZncTLfTENLZnCoVk3/se3FJURWQQ0MH6eGGzY=;
	b=JTAZIRdUg64nZDg+jaNQAoCj4LhRREO0X7Q0WR1tueDrJTT3B1IJrze/tmyO6l7NKC
	I4iEhBdffArTEpt1rQj1q4IjsuPPACsFpP0mJ5oEAw1Sj2wX+jB7inglAqkHiMCWL19h
	2Aqh6TksxGoZ6sPbn8BCJXlAUpa8km2btXkiQeovaxH+RzGL23aEVX8Ub9f7HU0ioGWN
	+JgtRi2PRljsVAGLoQyYw2sXNm4JlhDBMJ6zSE6FbJEt+onguSmoFWlk4s546W43pD2P
	pA5OltF8rFmigmi8/Q111KDQiXxXvYW5Xf6FqH8Hw5Or/f4Ta6zAFkc5aaqMHltMTt/C
	hI3Q==
X-Gm-Message-State: ALoCoQmRaxKwPmz3+xbo0bOusA2lvNt0A/DAVZtLx72ZsXKCuyfsj6MQBbebNCUlDws8HvvNpL/0
X-Received: by 10.195.12.134 with SMTP id eq6mr48409091wjd.14.1401706253760;
	Mon, 02 Jun 2014 03:50:53 -0700 (PDT)
Received: from localhost.localdomain
	(cpc9-rdng24-2-0-cust272.15-3.cable.virginm.net. [81.99.113.17])
	by mx.google.com with ESMTPSA id
	gd5sm34465656wjb.40.2014.06.02.03.50.52 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jun 2014 03:50:53 -0700 (PDT)
From: tom@ewsting.org
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Mon,  2 Jun 2014 11:50:47 +0100
Message-Id: <1401706248-32605-1-git-send-email-tom@ewsting.org>
X-Mailer: git-send-email 1.9.2
X-Mailman-Approved-At: Mon, 02 Jun 2014 08:17:01 -0700
Cc: brendan.le.foll@intel.com, paul.eggleton@linux.intel.com,
	Thomas Ingleby <thomas.c.ingleby@intel.com>
Subject: [opkg-utils PATCH] detect ability to use --format=gnu with tar
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
X-List-Received-Date: Mon, 02 Jun 2014 10:50:58 -0000

From: Thomas Ingleby <thomas.c.ingleby@intel.com>

If opkg-build is being used on a platform not using GNU tar, format=gnu will necessarily work.

Thomas Ingleby (1):
  opkg-build: add detection if using GNU tar.

 opkg-build | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

-- 
1.9.2


