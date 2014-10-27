Return-Path: <Jian.Liu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB19BE00902; Mon, 27 Oct 2014 02:37:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE24E0084A
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 02:37:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s9R9b9Ip011380
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Oct 2014 02:37:09 -0700 (PDT)
Received: from [128.224.163.134] (128.224.163.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 27 Oct 2014 02:37:08 -0700
Message-ID: <544E11CF.6010701@windriver.com>
Date: Mon, 27 Oct 2014 17:35:11 +0800
From: Liu Jian <jian.liu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <opkg-devel@googlegroups.com>, <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 28 Oct 2014 08:08:08 -0700
Subject: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Mon, 27 Oct 2014 09:37:17 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 7bit

Building a small filesystem with busybox gives the following error lines:
sed: -e expression #1, char 41: unterminated address regex
sed: -e expression #1, char 42: unterminated address regex
This is caused by the script update-alternatives.
"[" can not be used directly in sed expression.

Signed-off-by: Jian Liu <jian.liu@windriver.com>
---
...andle-leftbracket-for-update-alternatives.patch | 25
++++++++++++++++++++++
meta/recipes-devtools/opkg-utils/opkg-utils_git.bb | 4 +++-
2 files changed, 28 insertions(+), 1 deletion(-)
create mode 100644
meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch

diff --git
a/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
b/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
new file mode 100644
index 0000000..0cdc4e2
--- /dev/null
+++
b/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
@@ -0,0 +1,25 @@
+"[" should be escaped in sed expression. This patch is suitable for
opkg-0.2.2
+
+diff -Nur utils.orig/update-alternatives utils/update-alternatives
+--- utils.orig/update-alternatives 2013-08-16 04:22:29.000000000 +0800
++++ utils/update-alternatives 2014-09-19 10:55:22.238159317 +0800
+@@ -68,6 +68,10 @@
+ sed -e 's/\//\\\//g'
+ }
+
++protect_special_character() {
++ sed -e 's/\[/\\\[/g'
++}
++
+ remove_alt() {
+ [ $# -lt 2 ] && return 1
+ local name="$1"
+@@ -75,7 +79,7 @@
+
+ [ ! -f $ad/$name ] && return 0
+
+- path=`echo $path | protect_slashes`
++ path=`echo $path | protect_slashes | protect_special_character`
+ sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
+ mv $ad/$name.new $ad/$name
+ }
diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
index 693c216..04412d1 100644
--- a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
+++ b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
@@ -10,7 +10,9 @@ PROVIDES += "virtual/update-alternatives"
SRCREV = "eae0d8fa44e8594aa90eadf06e5f4fbeef314509"
PV = "0.1.8+git${SRCPV}"

-SRC_URI = "git://git.yoctoproject.org/opkg-utils"
+SRC_URI = "git://git.yoctoproject.org/opkg-utils \
+ file://handle-leftbracket-for-update-alternatives.patch \
+"

S = "${WORKDIR}/git"

-- 
1.8.5.2.233.g932f7e4

-- 
Jian Liu
Email: jian.liu@windriver.com
Office Phone: 86-10-84778539


