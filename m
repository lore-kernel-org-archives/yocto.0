Return-Path: <tom@ewsting.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04E3EE00B66; Tue,  3 Jun 2014 03:25:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C87E00B0B
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 03:25:42 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id k48so6606994wev.3
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 03:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7BbhgZFc8lRY5JJhST7S8clM8JIN7oHYUJVTXkuDi+g=;
	b=GD4PgdcsudmOrmjuDQfjNm4JlfYeXu/VX5B3SMlrNIE0tigRDhEidVqCgYspBL//g3
	gXI57HeFwOzkuNSrjb7c1ChB8ZVPITrnWl91EvogbT/H2mh/oLuX4U5+/688yHQAw8qK
	JOXdLtLeZhjO+YOcme94sYHlm5nDmXUQO6ijz+NKkUtk3XCczuU6VPcD/5HgEpyKTXWs
	AjTvoV1VX5Tut7C9zN4+TKDrAHfC7iBr+W2dA2JWwx9njTaINn33JVKtRmVbz1ZHvttp
	tLVi1SN4utP+Sz1H8b7sBiJjy8HzaOtAm/wLf8G/K6wws/kuGsLq+vB+y1MmJ48mITev
	3Jzw==
X-Gm-Message-State: ALoCoQlfO332aYdzBVj+gikfzj4aUVB5AQlzHebEGUMFC5Dvq3HCO87AJYOYwg73L+/PHH+lPWPg
X-Received: by 10.194.8.229 with SMTP id u5mr58974817wja.65.1401791140477;
	Tue, 03 Jun 2014 03:25:40 -0700 (PDT)
Received: from localhost.localdomain
	(cpc9-rdng24-2-0-cust272.15-3.cable.virginm.net. [81.99.113.17])
	by mx.google.com with ESMTPSA id ho2sm1694170wib.15.2014.06.03.03.25.39
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 03 Jun 2014 03:25:39 -0700 (PDT)
From: tom@ewsting.org
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Tue,  3 Jun 2014 11:25:35 +0100
Message-Id: <1401791135-11672-1-git-send-email-tom@ewsting.org>
X-Mailer: git-send-email 1.9.2
Cc: brendan.le.foll@intel.com, paul.eggleton@linux.intel.com,
	Thomas Ingleby <thomas.c.ingleby@intel.com>
Subject: [PATCH V2] opkg-build: add detection if using GNU tar.
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
X-List-Received-Date: Tue, 03 Jun 2014 10:25:48 -0000

From: Thomas Ingleby <thomas.c.ingleby@intel.com>

* Some options of GNU tar do not exist on other implementations

Signed-off-by: Thomas Ingleby <thomas.c.ingleby@intel.com>
---
 opkg-build | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/opkg-build b/opkg-build
index e314712..ed1c93b 100755
--- a/opkg-build
+++ b/opkg-build
@@ -159,6 +159,13 @@ ogargs=""
 outer=ar
 noclean=0
 opkext=0
+
+tarformat=""
+if tar --help 2>&1 | grep -- "--format" > /dev/null;
+then
+    tarformat="--format=gnu"
+fi
+
 usage="Usage: $0 [-c] [-C] [-O] [-o owner] [-g group] <pkg_directory> [<destination_directory>]"
 while getopts "cCg:ho:vO" opt; do
     case $opt in
@@ -233,8 +240,8 @@ tmp_dir=$dest_dir/IPKG_BUILD.$$
 mkdir $tmp_dir
 
 echo $CONTROL > $tmp_dir/tarX
-( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz --format=gnu -f $tmp_dir/data.tar.gz . )
-( cd $pkg_dir/$CONTROL && tar $ogargs -cz --format=gnu -f $tmp_dir/control.tar.gz . )
+( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -cz $tarformat -f $tmp_dir/data.tar.gz . )
+( cd $pkg_dir/$CONTROL && tar $ogargs -cz $tarformat -f $tmp_dir/control.tar.gz . )
 rm $tmp_dir/tarX
 
 echo "2.0" > $tmp_dir/debian-binary
@@ -249,7 +256,7 @@ rm -f $pkg_file
 if [ "$outer" = "ar" ] ; then
   ( cd $tmp_dir && ar -crf $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
 else
-  ( cd $tmp_dir && tar -cz --format=gnu -f $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
+  ( cd $tmp_dir && tar -cz $tarformat -f $pkg_file ./debian-binary ./control.tar.gz ./data.tar.gz )
 fi
 
 rm $tmp_dir/debian-binary $tmp_dir/data.tar.gz $tmp_dir/control.tar.gz
-- 
1.9.2


