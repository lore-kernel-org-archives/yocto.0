Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BCCCE008D9; Sun,  6 Oct 2019 08:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.182 listed in list.dnswl.org]
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ABB1E008C8
	for <yocto@yoctoproject.org>; Sun,  6 Oct 2019 08:40:43 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id p1so4882476pgi.4
	for <yocto@yoctoproject.org>; Sun, 06 Oct 2019 08:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=CYXzRtAPToI5pOTEBvgBnyKqCeONUaZZ9e5PO91SheY=;
	b=l+/ftGQzP5SNh/AcpB/lV0kIAu1Xg69jH8QkyW8/F1OuMC31TyOwdywOuG98/p5DaU
	ZsOYVqJcHYGsQC3M1vZZGl9qEvgV6TvmV1+j58FZDBWxWO9F6dghWUi8b6jhYM8JLv0D
	rRwrjywtrskUCvdCgeJPbmqWRO2lyT3nU3mwlnmDDwMM8YTgWRvxBrF88jallXUmTt8k
	ZS4e+aP7WL9z0X6JnBsS9RCw1WgAL/0qT9hIJZ8W8oOpR9WzCJ3ARCef8ZBmYbARV6S0
	+++RJDz8o8bSXzyssHTTIrpZiKAVOIKVXy9mLNvU4S/bJfOYIx4rH7QY2YesYfEP2Sy2
	scdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=CYXzRtAPToI5pOTEBvgBnyKqCeONUaZZ9e5PO91SheY=;
	b=orOCjrwaeFaytrgo6bAV34Gr9ZsNj3VZqQx+NtB/gxj6KU7TPWnnBg2c92pUSFmIHD
	zHDcLIsgW9jmmr8kTGWV+lshG7lgW/vTsfDdtgM7i+pBjH87e6cQy8d4kbaomWq5Snt/
	S25vEJp3IWzqWIaA2t6UpcE7qittlMbLT8L6l4chRI8AaxViGYYvEtaOKccvYWVBiEaO
	T5MPqXvc36Uf8AFgR2UTOJ6cGY2wMTz/Ns0owEnLHYFhstDO5iK3MwpQDs4gzUDHxngE
	ePZp2CyhMFN10aeR+b5UbCeSZDApCKQm2s43l3dksN3pDxwD33g7hismlyVZl18nH9Ct
	Ow0Q==
X-Gm-Message-State: APjAAAVNptQOEdxRwM70Mj9FNmPiyk6S+ORYwnU1B2fXDm/C4dQ/i1tx
	Ue1VSCzzZ+mez9Kjjo3jpxxJ4+S2EzY=
X-Google-Smtp-Source: APXvYqxi+88cV2XAiNTrUIldxcZeESoUvShz354xtL6o/zYMRrUx7C4gOdRIYp2bJYaaU9gjOHuMRA==
X-Received: by 2002:a63:6c81:: with SMTP id
	h123mr26115335pgc.132.1570376442992; 
	Sun, 06 Oct 2019 08:40:42 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:a5c0:65e8:7322:d189:1d85])
	by smtp.gmail.com with ESMTPSA id
	e4sm12226543pff.22.2019.10.06.08.40.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 06 Oct 2019 08:40:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  6 Oct 2019 08:40:37 -0700
Message-Id: <2fd2aea930253ec6d3bcdde25d02484c89586f79.1570376186.git.akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1570376186.git.akuster808@gmail.com>
References: <cover.1570376186.git.akuster808@gmail.com>
Subject: [warrior 3/3] conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported distributions
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
X-List-Received-Date: Sun, 06 Oct 2019 15:40:44 -0000

From: Ross Burton <ross.burton@intel.com>

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f2df2c1..de744f6 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -56,11 +56,13 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             fedora-28 \n \
             fedora-29 \n \
+            fedora-30 \n \
             centos-7 \n \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             opensuse-42.3 \n \
+            opensuseleap-15.1 \n \
             "
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
-- 
2.7.4


