Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76939E007B6; Wed,  6 May 2015 12:56:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B23E00306
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 12:56:10 -0700 (PDT)
Received: by pdbqd1 with SMTP id qd1so19074896pdb.2
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 12:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=rOkO5QdUHm7fReNjWnM2C0mpoCYtV2cx/ZxT6WjbIQ4=;
	b=Qj23dmjYtEmTgGUeKpcrfnZZFtHIamCFXwYeCzO9Nw1iZ9FSdlun0iL3Km121WTsXj
	+vE7QF7EA0GZ32tqOx4nphZ3EHXt1jAz5XsF3tI0/+5z1ZZEmMKcIKPQsP3lzaauZrk/
	6fmSbISC+ZRlOUWUAKbKpdK0wd3+wZH+TXzNt2Agu/HivA3zDI61aaQWGQcc6LPS/5/L
	tpM+sjOynJy1Xe9l7xHDnSrc+xrwXtQrXpPSV0p77JIaqm4tGKJGpdVboKw+UfZ0FcYv
	+oHChhEkp0yAl0vYbaK/TKQqaC7SJmmhejRtOvUbJnyVXVnIqQl2qMubdzA5qOJ8AV3O
	DUxg==
X-Received: by 10.70.134.231 with SMTP id pn7mr599399pdb.97.1430942170378;
	Wed, 06 May 2015 12:56:10 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id u8sm2666570pdj.46.2015.05.06.12.56.08
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 06 May 2015 12:56:09 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 May 2015 12:56:06 -0700
Message-Id: <1430942166-22772-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] libewf: GCC5.x build fix
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
X-List-Received-Date: Wed, 06 May 2015 19:56:13 -0000

Fix the following errors.
| ../libsmraw/.libs/libsmraw.a(libuna_utf8_string.o): In function `libuna_utf8_string_compare_with_utf32_stream':

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/libewf/libewf_20130416.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-forensic/libewf/libewf_20130416.bb b/recipes-forensic/libewf/libewf_20130416.bb
index c070b80..e9877c9 100644
--- a/recipes-forensic/libewf/libewf_20130416.bb
+++ b/recipes-forensic/libewf/libewf_20130416.bb
@@ -23,4 +23,7 @@ PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
 
 EXTRA_OECONF += "--with-gnu-ld --disable-rpath"
 
+#Needed for gcc 5
+CPPFLAGS += " -std=gnu89"
+
 RDEPENDS_${PN} += " util-linux-libuuid"
-- 
2.3.5


