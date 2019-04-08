Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91102E00C43; Mon,  8 Apr 2019 00:35:36 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427E4E00BB7
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 00:35:35 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id 85so6807759pgc.3
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 00:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=zm/oG9atswEfWdziOFJLkaN/Nly5uGRjyRZp3idll4c=;
	b=oy3I4Ukf93EwGl1hpa7m+lIxV6sJMVoUG+9SBYEWdO9BSWH8lvlx3KueCUiilAO79x
	TeD/mLehiVWWlY/Bv2qfp/Af40BLplXex0aRfjLPhInKqkwcJR+/Spe7IVQWZuAnc2ET
	qOtHQeHuZrs/XJ6XC9/T+lAX9rrXtntgfQWEWjC5anDMl3ZcA57dlO4O4FXJ1vCArhhS
	ri91n7feP0UlrAHQJNCv1CJAqFk85Y1rpVGJM+28UP62a12i75zBp/PWZn66v4TJ28f/
	3bKj0POrG4ExxgU8DL0j9/GLirQOEy3Ym0z/NhLEYoGxSkfEmA8Lmv2m1bDS9OA1EhNh
	aABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=zm/oG9atswEfWdziOFJLkaN/Nly5uGRjyRZp3idll4c=;
	b=tv9fSb7CcodyTUJ4+I7+45Stfx+ibqL1jxb1viIPcpkK8aIAaSOtiM99QRCKH0I8xD
	WJ7q0W4Jgi7OR71m5D5jB2qgRCLFBNqK2i7VzxO5irL4fGjDPceBoVN8uqIdpkf7K5Rj
	YPfmsgMKFgryJrCkmliIfB3yyGMxZUy90ZGZBKfz468yUzC9s8NHTJQA0Tq3mDQcb72N
	4cuAbZJxW/s5mBKKncGzUgRVw08FunY7iW2/W4MOknvCV4c6dQB2PmtxkabxmI+ZP5Zv
	3yripv1JqTbpYjrhLwEgFETb0wPfnQAxDsqvMATBnJeGDJHgNQri3aRPwDrJsUiCHyuu
	GdNQ==
X-Gm-Message-State: APjAAAW+kyQ85U7BnER4auEYxNW3OtdS+JxOWA9hOsrwLoOhX9aFYKFj
	w95TPjSfErE+vRUtSXapsJJPEvwvDos=
X-Google-Smtp-Source: APXvYqymKb29wVm6luB61K4QVyH3U3yTrO/mUo6AxJuXEQuImNTtb1sqppl2tRvkQQZnETVBZjSLig==
X-Received: by 2002:a62:75cd:: with SMTP id q196mr19314577pfc.70.1554708935038;
	Mon, 08 Apr 2019 00:35:35 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f71sm31513285pfc.109.2019.04.08.00.35.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Apr 2019 00:35:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Apr 2019 00:35:32 -0700
Message-Id: <20190408073532.31980-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] clamav: runtime fix local routing
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
X-List-Received-Date: Mon, 08 Apr 2019 07:35:36 -0000

This addes the localhost to resolve.conf to fix:

ERROR: Can't get information about database.clamav.net: Temporary failure in name resolution
ERROR: Can't download main.cvd from database.clamav.net
Giving up on database.clamav.net...

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/clamav.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/oeqa/runtime/cases/clamav.py b/lib/oeqa/runtime/cases/clamav.py
index 647861c..d0bc645 100644
--- a/lib/oeqa/runtime/cases/clamav.py
+++ b/lib/oeqa/runtime/cases/clamav.py
@@ -19,6 +19,8 @@ class ClamavTest(OERuntimeTestCase):
             f.write(os.linesep)
             f.write("nameserver 8.8.4.4")
             f.write(os.linesep)
+            f.write("nameserver 127.0.0.1")
+            f.write(os.linesep)
 
     @classmethod
     def tearDownClass(cls):
-- 
2.17.1


