Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AAF0E0074B; Thu, 10 Jul 2014 07:31:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6E5DE00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:45 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id y10so10755069pdj.8
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=w4uRXM2NkxI0psUOJXYrDtuz0WU2QaOj7YVxwocyS9M=;
	b=FMAuf0SljbmIbnWMFsQSNfMZA47aEpLxAOUJYl5A8Oh237ztUNGPzQvScdv1q+pzrI
	ZbNxI8Ws/qML4OCsBBU1XV4yeCC3LxG/fJvsoMfp3+kX86gH+e9JzMv6sGOxS3NlX0tI
	7fXxzSSMpYs8YHMExmW+eb719oj0VtPfbDOVn+5pi4ieq6x/M8ENLelaoDu2qa0l8+Mi
	cIw3ZEkKrSxMr2KTEJtk41p9Gf6IwomhSUgoiaglDz6aj3ZJE+ty7jwbjVXWwluM+h6h
	KqegWJA4f2tvBrXUzh19sstiBEFKRWG1boEP9b+3jB1jxV39QSa6CEuUweuDFa+MoIGt
	ibSA==
X-Gm-Message-State: ALoCoQkpx9ffdSbrHp78Hlz1Lv7UQh4yCoIqnE6Cwd3iUZBTAi0bkD9kXno1iWkaUuhlAYsjw7qu
X-Received: by 10.68.253.73 with SMTP id zy9mr22239557pbc.114.1405002644750;
	Thu, 10 Jul 2014 07:30:44 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	ek2sm62152507pbd.30.2014.07.10.07.30.43 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 10 Jul 2014 07:30:44 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Jul 2014 07:30:30 -0700
Message-Id: <1405002633-2125-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 0/3] Add image, packagegroups and ditro
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
X-List-Received-Date: Thu, 10 Jul 2014 14:31:00 -0000

To aid in testing I have create an image and packagegroups.

By setting "DISTRO=poky-security"  in the local.conf,
the security_flag.inc will be included.

This was varified by checksec utility.

Armin Kuster (3):
  packagegroup: Add initial set of package groups
  images: Add initial image
  distro: Add distro

 conf/distro/poky-security.conf                     |  4 ++
 recipes-security/images/core-image-security.bb     | 19 +++++++++
 .../packagegroup/packagegroup-core-security.bb     | 45 ++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 conf/distro/poky-security.conf
 create mode 100644 recipes-security/images/core-image-security.bb
 create mode 100644 recipes-security/packagegroup/packagegroup-core-security.bb

-- 
1.9.1


