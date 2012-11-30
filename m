Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28954E011AB
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 00:59:58 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 74E2940283;
	Fri, 30 Nov 2012 09:24:47 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Fri, 30 Nov 2012 09:59:50 +0100
Message-Id: <cbb0d896f530f708d0e1eaba6d5290b4fba96dc3.1354264975.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <efcbd5cbaf5084b61ed150a475859d60495874fa.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
	<ae85de5617553768dab8adfb8e33682d6f496f98.1354264975.git.timo.mueller@bmw-carit.de>
	<0ef502fd88b1e7806abb8d93ebd53cd89769a1db.1354264975.git.timo.mueller@bmw-carit.de>
	<f1b31f8514fc06af68ab00b9920498a2ba3271f6.1354264975.git.timo.mueller@bmw-carit.de>
	<14c72e38f8845ff1c42e0b5bc5e01c76d45dbe57.1354264975.git.timo.mueller@bmw-carit.de>
	<d9bf052b5f144b5188dfcde7b1384a843c8c81b5.1354264975.git.timo.mueller@bmw-carit.de>
	<abc49ebf76d55dbb646b05fb451b08b780a921ab.1354264975.git.timo.mueller@bmw-carit.de>
	<0e3b5ea52a5229679c6abc875652bf7e9b64f323.1354264975.git.timo.mueller@bmw-carit.de>
	<b44f86f7f3af703ff4528a35eb82c7108586330e.1354264975.git.timo.mueller@bmw-carit.de>
	<7893fff34faec13f7073016ca5221a342d92df61.1354264975.git.timo.mueller@bmw-carit.de>
	<d9192a08f1bb84cd8ef7ab924d41eb0e81aefbea.1354264975.git.timo.mueller@bmw-carit.de>
	<899749cce559d9c6894343fae844873c337fd5b5.1354264975.git.timo.mueller@bmw-carit.de>
	<4b5d06565d52a010678c1f3edb3710b4d5d62cec.1354264975.git.timo.mueller@bmw-carit.de>
	<1b85154631995b29bc8f94810ce7cfb896a1e787.1354264975.git.timo.mueller@bmw-carit.de>
	<546e4a349f627d25977a11979ddd580ef063c3bd.1354264975.git.timo.mueller@bmw-carit.de>
	<17a025a8342a76eff141c6c2944a964c8b496570.1354264975.git.timo.mueller@bmw-carit.de>
	<25ee5bb08586d9954a0076cf515ed950a58fd60c.1354264975.git.timo.mueller@bmw-carit.de>
	<81b9e274d332ceceb284ec4005a33ed60245a7eb.1354264975.git.timo.mueller@bmw-carit.de>
	<43f2e8cd6873988c4c8754ece92dca2fbd422a7a.1354264975.git.timo.mueller@bmw-carit.de>
	<ee277b63802c121e09d5e88c2550e3d704e6d01e.1354264975.git.timo.mueller@bmw-carit.de>
	<7421276098498ddf72890a1b05295731ba3ceee3.1354264975.git.timo.mueller@bmw-carit.de>
	<c1b021e920ec33fcd1d539390ea303a2f88172d6.1354264975.git.timo.mueller@bmw-carit.de>
	<db4770c87a1a39b9c91b492b30a22bb8db422c28.1354264975.git.timo.mueller@bmw-carit.de>
	<95b9fea5defa34b2ad0c4038e241875befe228e5.1354264975.git.timo.mueller@bmw-carit.de>
	<4dd48c21f559de6707c1f495baef5d0b3a15f942.1354264975.git.timo.mueller@bmw-carit.de>
	<4b7712db0dd4d80de3a7ff26c0a4f519096a085d.1354264975.git.timo.mueller@bmw-carit.de>
	<1e9ffd7f81737c7e0f12cd77a4af95f6ad98155a.1354264975.git.timo.mueller@bmw-carit.de>
	<015503ec1086044d1cf25d2f4d7f32cf7453e402.1354264975.git.timo.mueller@bmw-carit.de>
	<26d705041746b459eca6b3ba9165804fdcaaab2a.1354264975.git.timo.mueller@bmw-carit.de>
	<1c4d96f5304be20126eae15b1cb5f748a3f30373.1354264975.git.timo.mueller@bmw-carit.de>
	<c29a575e409921bd66f5a1c828c01cfac0ee5cfe.1354264975.git.timo.mueller@bmw-carit.de>
	<4d18289e9aa11650af27aac54930b447d720eaaf.1354264975.git.timo.mueller@bmw-carit.de>
	<efcbd5cbaf5084b61ed150a475859d60495874fa.1354264975.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354264975.git.timo.mueller@bmw-carit.de>
References: <cover.1354264975.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 33/35] documentation/tools/eclipse-help.sed: Processes external links for eclipse html files
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
X-List-Received-Date: Fri, 30 Nov 2012 08:59:59 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The file is used when creating eclipse help html files. It processes
all html files and converts links so that the user can navigate
between different docuementation parts without leaving the eclipse
help center.
---
 documentation/tools/eclipse-help.sed |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 documentation/tools/eclipse-help.sed

diff --git a/documentation/tools/eclipse-help.sed b/documentation/tools/eclipse-help.sed
new file mode 100644
index 0000000..71d3395
--- /dev/null
+++ b/documentation/tools/eclipse-help.sed
@@ -0,0 +1,18 @@
+# Processes poky-ref-manual and yocto-project-qs manual (<word>-<word>-<word> style)
+# For example:
+#   "ulink" href="http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#faq" 
+#   -> "link" href="../poky-ref-manual/faq.html"
+s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*-[a-z]*\)\/[a-z]*-[a-z]*-[a-z]*.html#\([^\"]*\)\"/\"link\" href=\"\.\.\/\1\/\2.html\"/g
+
+# Processes all other manuals (<word>-<word> style)
+# For example:
+#   "ulink" href="http://www.yoctoproject.org/docs/1.3/kernel-manual/kernel-manual.html#faq" 
+#   -> "link" href="../kernel-manual/faq.html"
+s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*\)\/[a-z]*-[a-z]*.html#\([^\"]*\)\"/\"link\" href=\"\.\.\/\1\/\2.html\"/g
+
+# Process cases where just an external manual is referenced without an id anchor
+# For example:
+#   "ulink" href="http://www.yoctoproject.org/docs/1.3/kernel-manual/kernel-manual.html
+#   -> "link" href="../kernel-manual/index.html"
+s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*-[a-z]*\)\/[a-z]*-[a-z]*-[a-z]*.html\"/\"link\" href=\"\.\.\/\1\/index.html\"/g
+s/\"ulink\" href=\"http:\/\/www.yoctoproject.org\/docs\/[^\/]*\/\([a-z]*-[a-z]*\)\/[a-z]*-[a-z]*.html\"/\"link\" href=\"\.\.\/\1\/index.html\"/g
-- 
1.7.7.6


