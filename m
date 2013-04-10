Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88D93E01496
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 00:24:14 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id kp14so160962pab.36
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 00:24:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=/+mh+NQ1m0uYXLd8WyXlFoaeft0525t2kHG9hjYJeng=;
	b=FLqtRQKIcYA2NvuiOmWQhLRWnK9xnYUzdscCGIculalicoBAdkfN4v5UQ5EEv3gxdQ
	b3acXxOwlg09qcPy6er5bPtLQ/3njhSxhumHC/CWcDoXlOJ7lxR4uW2tdRKI2fIq9Zbu
	SqbjLmG5wnITQpKH+7cofSq7/ghc04Q47jdOHVSbqeEVzAHOdu1nP1RVazF1rdlFVyHU
	UpA7IOXuC7o5T+z7hB1FOOyNNjd8R4CMyfqdPvQHivZcB+CMS2TlV4VCbAQ0DhNcWQw4
	TQSKrc7U0pTJ2U0scU/dBxx9q1wFcEspbhwmX0Z+ew+9/SJtLgIydXyqrbegcZuTGCu0
	QCdw==
X-Received: by 10.67.10.133 with SMTP id ea5mr1892435pad.135.1365578654291;
	Wed, 10 Apr 2013 00:24:14 -0700 (PDT)
Received: from avartita.hsd1.or.comcast.net.
	(c-24-21-207-18.hsd1.or.comcast.net. [24.21.207.18])
	by mx.google.com with ESMTPS id xz4sm5393251pbb.18.2013.04.10.00.24.13
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 00:24:13 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Apr 2013 00:23:31 -0700
Message-Id: <cover.1365578515.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQl9+fhuwNF0fFz1pUjSiFeZIocOlndLT/eGLPAcP9nwR3JHSSoYnj1lpk6sZheeWlw1sGzB
Subject: [PATCH 0/1] Dylan distro variable changes
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
X-List-Received-Date: Wed, 10 Apr 2013 07:24:14 -0000

These are only for when the dylan branch is created and should be
pulled prior to generation of the next release candidate

The following changes since commit 307e860860badd4420a01ed781c6c845fc9bf603:

  udev: fix init script for the location of udevd (2013-04-09 18:09:14 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib eflanagan/1.4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=eflanagan/1.4

Elizabeth Flanagan (1):
  poky.conf: Flipping vars for dylan release

 meta-yocto/conf/distro/poky.conf |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
1.7.9.5


