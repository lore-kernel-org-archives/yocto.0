Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF48CE00D89; Wed, 31 Jul 2019 06:30:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C00E00CD5
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 06:29:59 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45zDn24rY6z1n;
	Wed, 31 Jul 2019 15:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1564579799;
	bh=MtQ3k3tEoBpCQzhEs2Ll6ivVGJo1zma8vh1MbOuSnuo=;
	h=From:To:Cc:Subject:Date:From;
	b=CA/CrbaVqcg598L63lr4FuKpXw8zKD/nFTpmwymh+6z+qZhQW5On/hZoIyox6izDW
	Gid8Kfs4Pdmzk10o8mH+zf6qHYLMeKrIpvvd6P55yhZ4F5pZ1Jpm1+OmIT1UQBP3ZT
	MyOoZyz+0jYv0oVkadSA3+CBJA4hwsbJJAKIWpmIddeJtv+K4pWnRFAkO6XWAaI1uQ
	8XNTVNWlB1wXe0BxVOzEbJ/LRZ8Jc7xAJY0XBtlc2GQIA+Kif58ew+KHRjqHSZEQ5i
	CEXXvbUE2jsDsAUgUqsniPKLjyzG8Y1tb+2h0rEhZd/0PGaVvjoSjsofEFM3ZPElTt
	4ODela7w/4oLtQ+0+UvEmEcJUT3RBGK3TkbCLt/w0ZLKsvNBOC/zBTL9721Oz8FS42
	PeBaF0664e4KTRZr9/Mzq+TdOOlBD5oCn6uR5k2Lc/zAoXLSa8NWj+DJVz30mA0iSJ
	AQlCZuR2abvzNY5I+IhDlRXvhdepkGWRZ0DynGivlOl6clVLnzvDIawtHzW+FpTlZ4
	AA83sZv9AeVFYujOWmz7xedB/Tlf4C9XhIrWLc8XsDhmYTtQI/fJCcimAoiVhz/wJl
	7vwwZByPYxETfaa/JUsE7zMY8pqBvbgf5hilphheL2uHaOluqXfpWf1d13Q1jhe89h
	H/LUy5tK9CyCTN/Zb9N08BMc=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 31 Jul 2019 16:29:57 +0300
Message-Id: <20190731132957.4782-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-docs][PATCH] ref-manual: Remove documentation for the removed gnome class
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
X-List-Received-Date: Wed, 31 Jul 2019 13:30:00 -0000

When removed all it did was
  inherit gnomebase gtk-icon-cache gconf mime
which would also be the most trivial replacement.

Most of the time not all of these classes were needed,
and it is recommended to use only the ones actually required.

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 documentation/ref-manual/ref-classes.xml | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 37619e382d..5403f20b6f 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -920,21 +920,6 @@
     </para>
 </section>
 
-<section id='ref-classes-gnome'>
-    <title><filename>gnome.bbclass</filename></title>
-
-    <para>
-        The <filename>gnome</filename> class supports recipes that
-        build software from the GNOME stack.
-        This class inherits the
-        <link linkend='ref-classes-gnomebase'><filename>gnomebase</filename></link>,
-        <link linkend='ref-classes-gtk-icon-cache'><filename>gtk-icon-cache</filename></link>,
-        <link linkend='ref-classes-gconf'><filename>gconf</filename></link> and
-        <link linkend='ref-classes-mime'><filename>mime</filename></link> classes.
-        The class also disables GObject introspection where applicable.
-    </para>
-</section>
-
 <section id='ref-classes-gnomebase'>
     <title><filename>gnomebase.bbclass</filename></title>
 
-- 
2.17.1


