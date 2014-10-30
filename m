Return-Path: <Jian.Liu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 632C4E008C1; Wed, 29 Oct 2014 22:42:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5043E008BC
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 22:42:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s9U5gWJS011825
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Oct 2014 22:42:32 -0700 (PDT)
Received: from [128.224.163.134] (128.224.163.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 29 Oct 2014 22:42:32 -0700
Message-ID: <5451CF50.9060501@windriver.com>
Date: Thu, 30 Oct 2014 13:40:32 +0800
From: Liu Jian <jian.liu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: opkg-devel <opkg-devel@googlegroups.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Subject: [opkg-utils PATCH] update-alternatives: Installing fails for "["
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
X-List-Received-Date: Thu, 30 Oct 2014 05:42:53 -0000
X-Groupsio-MsgNum: 21985
Content-Type: multipart/mixed; boundary="------------000502090001010900080803"

--------------000502090001010900080803
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 7bit



--------------000502090001010900080803
Content-Type: text/x-patch;
	name="opkg-utils-update-alternatives-fails-for-lbracket.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="opkg-utils-update-alternatives-fails-for-lbracket.patch"

From 6431466b7c3f5fe76720372593fc785b572db84c Mon Sep 17 00:00:00 2001
From: Jian Liu <jian.liu@windriver.com>
Date: Wed, 29 Oct 2014 09:58:14 +0800
Subject: [opkg-utils PATCH] update-alternatives: Installing fails for "["

Insalling packages using update-alternatives will give the following error lines:
sed: -e expression #1, char 41: unterminated address regex
sed: -e expression #1, char 42: unterminated address regex
This is caused by the script update-alternatives.
"[" can not be used directly in sed expression, which should be escaped
in sed expression.

Signed-off-by: Jian Liu <jian.liu@windriver.com>
---
 update-alternatives |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/update-alternatives b/update-alternatives
index c332309..8916cbd 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -68,6 +68,10 @@ protect_slashes() {
 	sed -e 's/\//\\\//g'
 }
 
+protect_special_character() {
+	sed -e 's/\[/\\\[/g'
+}
+
 remove_alt() {
 	[ $# -lt 2 ] && return 1
 	local name="$1"
@@ -75,7 +79,7 @@ remove_alt() {
 
 	[ ! -f $ad/$name ] && return 0
 
-	path=`echo $path | protect_slashes`
+	path=`echo $path | protect_slashes | protect_special_character`
 	sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
 	mv $ad/$name.new $ad/$name
 }
-- 
1.7.0.5


--------------000502090001010900080803--
