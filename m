Return-Path: <mac@mcrowe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7768E00B92; Thu,  4 Oct 2018 09:56:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.159.14.17 listed in list.dnswl.org]
X-Greylist: delayed 180 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Oct 2018 09:56:42 PDT
Received: from avasout02.plus.net (avasout02.plus.net [212.159.14.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3239E00519
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 09:56:42 -0700 (PDT)
Received: from deneb ([80.229.24.9]) by smtp with ESMTP
	id 86scgot2g714a86sdgvM51; Thu, 04 Oct 2018 17:53:41 +0100
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=QtFwI26d c=1 sm=1 tr=0
	a=E/9URZZQ5L3bK/voZ0g0HQ==:117 a=E/9URZZQ5L3bK/voZ0g0HQ==:17
	a=smKx5t2vBNcA:10 a=YzhLYHfkAAAA:8 a=-An2I_7KAAAA:8
	a=6U4SaZwTqqiMbh7Px1AA:9
	a=6iqyyUokzKIM7e-RUlh-:22 a=Sq34B_EcNBM9_nrAYB9S:22
Received: from mac by deneb with local (Exim 4.89)
	(envelope-from <mac@mcrowe.com>)
	id 1g86sb-0001GM-Co; Thu, 04 Oct 2018 17:53:37 +0100
From: Mike Crowe <mac@mcrowe.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Thu,  4 Oct 2018 17:53:30 +0100
Message-Id: <20181004165330.26732-1-mac@mcrowe.com>
X-Mailer: git-send-email 2.11.0
X-CMAE-Envelope: MS4wfIPEeOqqaKH0VnkYehuPM+Yitj2bDkur/8ahEBzD7UsWyIu0q92OH+pdEqRx1kyr8D3fOkddf5HtoPVFR/f0TghJDcl5cKrVNN0VAopgfhbCjqhk8yv1
	aKL69tfjx2wi+r/cGRRGLE7lfOCrUTcC3iA=
X-Mailman-Approved-At: Thu, 04 Oct 2018 10:11:26 -0700
Cc: Mike Crowe <mcrowe@brightsign.biz>, Mike Crowe <mac@mcrowe.com>
Subject: [opkg-utils PATCH] opkg-build: Add support for explicit pigz
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
X-List-Received-Date: Thu, 04 Oct 2018 16:56:43 -0000

From: Mike Crowe <mcrowe@brightsign.biz>

oe-core has stopped[1] installing pigz as gzip. This means that in order to
persuade opkg-build to use pigz it must be specified explicitly. Let's
teach opkg-build to deal with being passed pigz as a compressor. We can't
combine the check for whether -T is required because opkg-build calls both
$compressor and gzip explicitly.

Signed-off-by: Mike Crowe <mac@mcrowe.com>
---
 opkg-build | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/opkg-build b/opkg-build
index 0050c2b..d5f5b8f 100755
--- a/opkg-build
+++ b/opkg-build
@@ -170,7 +170,7 @@ fi
 
 compressor_ext() {
     case $1 in
-	gzip)
+	gzip|pigz)
 	    echo gz
 	    ;;
 	bzip2)
@@ -230,6 +230,10 @@ if gzip --help 2>&1 | grep -- "-T" > /dev/null; then
 fi
 if [ $compressor = "gzip" ] ; then
 	compressorargs=$zipargs
+elif [ $compressor = "pigz" ] ; then
+	if $compressor --help 2>&1 | grep -- "-T" > /dev/null; then
+		compressorargs="-9nT"
+	fi
 fi
 
 tsortargs=
-- 
2.11.0


