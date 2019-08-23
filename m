Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C878DE00DE2; Fri, 23 Aug 2019 08:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF92EE00C25
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 08:06:44 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46FPr21khXz3P;
	Fri, 23 Aug 2019 17:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1566572803;
	bh=YV5eN4y8HHDPCtCGG1N6htTZT9HRqxk9VksU2LwKMYA=;
	h=From:To:Cc:Subject:Date:From;
	b=uT0dSWrcxOBEW3V4Zc4/tQBLeCDndGxQzNgQbvF+YzNt2nGU/vJFBa+l+K/ID30cm
	dnuGr+HJVo/PjQWvRFfkHFYPvSXzYMO/OfUiIcrPpdAEPW5sppJ4M1hbnZMW4h6pPc
	L4Eg+xkxh8EIzQ8XZmbc4HQBRsh6O0yafG6T+11xa5BQP7jcF4vuaQh5vTpdNN0wdL
	t2yeG0zVef4tLqcCDk6X1J6TK9Sf8DoPMy7OlIM5T+lcVkTR4oLW+xDfvDr+bCu31A
	Q13bLRDqa6N/NrytqEhl5DWGSDs58EtlggIRJ17sQnu/TfZ1FbxCQNk1lVpeKyHYnR
	uIfAeMfBJKnmHzdLlYk5MQQ2HwboT/iY7QAhRQhiqYHT1ZBAGy7fTVy08GEo7iy/gr
	Sg55JfYqQq5+E2lxU2IslG7uR3Uww2FmngyqpDBHWb+v0eESoFlZd/uLT5cfIdfFWN
	lvXyXkSwHwzLXpMrKtQs/OCBFugzKkh4fkLiBmD8EOey8Mo/k//eGJPyGnUYpkZXPr
	5kNot5yBWon67S7Ire11CfQ6iBKVW6kL88ao/9jQ+7NgdikOM6cls5Jzp3wGk7tXDt
	LNLgTWTJZG5KbXttFERluljgkT7Yo6IODPZiMuR7x5nNnBTMSnlUxg5a6pen9go6wm
	mY92dIBk4ih9OLvKtkNkGwts=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Fri, 23 Aug 2019 18:06:40 +0300
Message-Id: <20190823150640.6132-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Cc: srifenbark@gmail.com
Subject: [yocto-docs][PATCH] ref-manual: Correct the requirements for KERNEL_DEVICETREE
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
X-List-Received-Date: Fri, 23 Aug 2019 15:06:45 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 documentation/ref-manual/ref-variables.xml | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 0080364e4f..33afaa5f45 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7580,15 +7580,9 @@
                         However, providing just the <filename>.dtb</filename>
                         file is preferred.
                     </note>
-                    In order to use this variable, you must have the include
-                    files in your kernel recipe:
-                    <literallayout class='monospaced'>
-     require recipes-kernel/linux/linux-dtb.inc
-                    </literallayout>
-                    or
-                    <literallayout class='monospaced'>
-     require recipes-kernel/linux/linux-yocto.inc
-                    </literallayout>
+                    In order to use this variable, the
+                    <link linkend='ref-classes-kernel-devicetree'><filename>kernel-devicetree</filename></link>
+                    class must be inherited.
                 </para>
             </glossdef>
         </glossentry>
-- 
2.17.1


