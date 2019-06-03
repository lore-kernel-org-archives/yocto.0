Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBD2E00D44; Mon,  3 Jun 2019 11:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC39E00B33
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 11:39:47 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id e6so7517409pgd.9
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 11:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=kk1rEbh/TxU6/fHms84tW3/6tenRWfIkaJaRPC8CbIs=;
	b=kSBI9o+BwKzwcuS73mbz6OJmePo3NMREkcOqt2BrPFf1YuUqBrzxNmGmwfDBNTCTdr
	zUw/6PYoS5qKKHCwcpQApKHAxP6pLU2AnglNN8cS2JWVGDJAlZW6P0at6RAvf8cC9ebi
	Qa7F7BKR8iHk+nsTrjZuwMRu73IJv+RAoc0cO0/FVHjba4ge2tJ7kJ0lMbDHADYwsvPk
	1RxwbAq8OsbGNdMpoQyOdZqzg7VZf9IaT6kZ/e7sNnKd6V7dlqszMz6CR1CrnCulP6r5
	3/ChPK0fGuA0k01dd7SHrE8gsVF427IBcnVO72Fk+oRcqB1j/q8qfkh1MSeaASAW67Hg
	zQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=kk1rEbh/TxU6/fHms84tW3/6tenRWfIkaJaRPC8CbIs=;
	b=GnQm/H53ozdsrbQ/xOmMXgMUtpvYfxaZP80L4In9yvRuumJNPIJ7sgP3Zq3wau4ARM
	gV00Nc7LxddhdzZX0TxeV89/Jm/tCFHk2hG2Ujq0bPIlY8oMHTKvnh+xZC9Fx9Wshyay
	ctXtufMwBuaikSCWnWDk8VB8XjOz/pmbEdNL9WcWRM54vDFaLXpChySZw4WLi1Wbw8Ky
	p1ApYU/7aPxxgaWbOXvGSaf8GSgbvWUIbVQpqCEv+pNYNRpzYmGdvhA6BpYWY52rNlf9
	njsx8rIcGMpfIU5fxLLz6GxaSfpn/rNSJCiZG0JuGx1n2j6voucSnQ1GO0sy5+F+oksL
	6H1A==
X-Gm-Message-State: APjAAAUrmnsfeAOifqJFYOaRGKKi7nIP4W+62FUy4B64nCTUxsYbdop0
	hEKCTbTqkrwtJtX1pW0Pzd2LXLKTVLg=
X-Google-Smtp-Source: APXvYqyT9/hRJNcGfqqnc5eq6UJKyo6VxmGNQ9nV2xOI9gSL6pHTs6sYBbkNXp/Ly/Q8OTrUh1VzkQ==
X-Received: by 2002:a63:1f11:: with SMTP id f17mr24798438pgf.311.1559587187070;
	Mon, 03 Jun 2019 11:39:47 -0700 (PDT)
Received: from blackbox.Home ([200.68.141.43])
	by smtp.gmail.com with ESMTPSA id
	w1sm23847414pfg.51.2019.06.03.11.39.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jun 2019 11:39:46 -0700 (PDT)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2019 13:39:58 -0500
Message-Id: <20190603183958.14830-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [ptest-runner][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later to source files
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
X-List-Received-Date: Mon, 03 Jun 2019 18:39:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 main.c             | 2 ++
 ptest_list.c       | 2 ++
 ptest_list.h       | 2 ++
 tests/main.c       | 2 ++
 tests/ptest_list.c | 2 ++
 tests/utils.c      | 2 ++
 utils.c            | 2 ++
 utils.h            | 2 ++
 8 files changed, 16 insertions(+)

diff --git a/main.c b/main.c
index e963efe..83cd8f2 100644
--- a/main.c
+++ b/main.c
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/ptest_list.c b/ptest_list.c
index 3e393d5..d48349f 100644
--- a/ptest_list.c
+++ b/ptest_list.c
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/ptest_list.h b/ptest_list.h
index 03d7539..b4b1ac6 100644
--- a/ptest_list.h
+++ b/ptest_list.h
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/tests/main.c b/tests/main.c
index cceda7d..c3b4da5 100644
--- a/tests/main.c
+++ b/tests/main.c
@@ -15,6 +15,8 @@
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
+* SPDX-License-Identifier: GPL-2.0-or-later
+*
 * AUTHORS
 * 	Aníbal Limón <anibal.limon@intel.com>
 */
diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 5c0036d..e0ec276 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/tests/utils.c b/tests/utils.c
index 2ccb1c0..3ba64d6 100644
--- a/tests/utils.c
+++ b/tests/utils.c
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/utils.c b/utils.c
index 05c2bfe..6e453a1 100644
--- a/utils.c
+++ b/utils.c
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
diff --git a/utils.h b/utils.h
index 5a3f44a..6175ed1 100644
--- a/utils.h
+++ b/utils.h
@@ -15,6 +15,8 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
  *
+ * SPDX-License-Identifier: GPL-2.0-or-later
+ *
  * AUTHORS
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
-- 
2.20.1


