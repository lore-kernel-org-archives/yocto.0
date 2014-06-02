Return-Path: <tom@ewsting.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7851AE00B78; Mon,  2 Jun 2014 03:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D52DDE00B6C
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:51:04 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id l18so4933250wgh.35
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=P2WxgTT7wE9jMXp9MzOKaBgibIJdHUb555VSBm0tHfM=;
	b=fMuv/2sxAzBK1y5vAwe40kb/AsM+/yKnZGD5EwN68t8XlFkVQraMlzEfYqDv0kosz4
	1cx5i3xgzMtlS1mINDkjYlDLvYr7mUfBm3jBJRxvLIEqcKoNAGQ/59m88NPjCLlPLRzX
	H0wPE4f/jsKfK38UI9HfdJfe5wniLt5WhmRbh4EqO+2VkGJz0WpYn+toEgU9lUq2MkeE
	U3uvTAwtwohb2uW79DUMjexvZOUjpZHNgVn3SYndixqUJIKOvbQGgGUaWeHmUlrTr15P
	dlYnBNCnMsPS5gBNvTKpjQA/WvXlgcxSIMF3m17RvVD2BIVAznmu7aOC8Sfu4itVzsTd
	c9QQ==
X-Gm-Message-State: ALoCoQmOTt3TfzgBefcr08yyE/mnUAKFWeJ7jbPe2FChd2u25gNTRXl1OjSRquFFG8TtXAGD+P5h
X-Received: by 10.180.98.163 with SMTP id ej3mr21232491wib.9.1401706263309;
	Mon, 02 Jun 2014 03:51:03 -0700 (PDT)
Received: from localhost.localdomain
	(cpc9-rdng24-2-0-cust272.15-3.cable.virginm.net. [81.99.113.17])
	by mx.google.com with ESMTPSA id
	gd5sm34465656wjb.40.2014.06.02.03.51.01 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jun 2014 03:51:02 -0700 (PDT)
From: tom@ewsting.org
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Mon,  2 Jun 2014 11:50:48 +0100
Message-Id: <1401706248-32605-2-git-send-email-tom@ewsting.org>
X-Mailer: git-send-email 1.9.2
In-Reply-To: <1401706248-32605-1-git-send-email-tom@ewsting.org>
References: <1401706248-32605-1-git-send-email-tom@ewsting.org>
X-Mailman-Approved-At: Mon, 02 Jun 2014 08:17:01 -0700
Cc: brendan.le.foll@intel.com, paul.eggleton@linux.intel.com,
	Thomas Ingleby <thomas.c.ingleby@intel.com>
Subject: [opkg-utils PATCH] opkg-build: add detection if using GNU tar.
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
X-List-Received-Date: Mon, 02 Jun 2014 10:51:05 -0000

From: Thomas Ingleby <thomas.c.ingleby@intel.com>

* Some options of GNU tar do not exist on other implementations

Signed-off-by: Thomas Ingleby <thomas.c.ingleby@intel.com>
---
 opkg-build | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/opkg-build b/opkg-build
index e314712..8abc14d 100755
--- a/opkg-build
+++ b/opkg-build
@@ -159,6 +159,17 @@ ogargs=""
 outer=ar
 noclean=0
 opkext=0
+
+tarformat=""
+#Probably not the best way to detect if running on a system without full GNU tar
+set +e
+tar --help | grep "format" &> /dev/null
+if [ $? -eq 0 ]
+then
+    tarformat="--format=gnu"
+fi
+set -e
+
 usage="Usage: $0 [-c] [-C] [-O] [-o owner] [-g group] <pkg_directory> [<destination_directory>]"
 while getopts "cCg:ho:vO" opt; do
     case $opt in
@@ -233,8 +244,8 @@ tmp_dir=$dest_dir/IPKG_BUILD.$$
 mkdir $tmp_dir
 
 echo $CONTROL > $tmp_dir/tarX
-( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz --format=gnu -f $tmp_dir/data.tar.gz . )
-( cd $pkg_dir/$CONTROL && tar $ogargs -cz --format=gnu -f $tmp_dir/control.tar.gz . )
+( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz $tarformat -f $tmp_dir/data.tar.gz . )
+( cd $pkg_dir/$CONTROL && tar $ogargs -cz $tarformat -f $tmp_dir/control.tar.gz . )
 rm $tmp_dir/tarX
 
 echo "2.0" > $tmp_dir/debian-binary
@@ -249,7 +260,7 @@ rm -f $pkg_file
 if [ "$outer" = "ar" ] ; then
   ( cd $tmp_dir && ar -crf $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
 else
-  ( cd $tmp_dir && tar -cz --format=gnu -f $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
+  ( cd $tmp_dir && tar -cz $tarformat -f $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
 fi
 
 rm $tmp_dir/debian-binary $tmp_dir/data.tar.gz $tmp_dir/control.tar.gz
-- 
1.9.2


