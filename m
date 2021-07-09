Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web08.17027.1625864190632709113
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 13:56:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 169KuUoa019108
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:30 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 13:56:29 -0700
Received: from localhost.localdomain (128.224.72.142) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Fri, 9 Jul 2021 13:56:28 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 2/4] collect-results: collect all host_stats files
Date: Fri, 9 Jul 2021 16:56:07 -0400
Message-ID: <20210709205609.233487-2-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210709205609.233487-1-sakib.sajal@windriver.com>
References: <20210709205609.233487-1-sakib.sajal@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

data collection on failure is enabled by default.
Collect all host stats files created.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 scripts/collect-results | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/scripts/collect-results b/scripts/collect-results
index 7178380..93834d6 100755
--- a/scripts/collect-results
+++ b/scripts/collect-results
@@ -18,21 +18,27 @@ if [ -e $WORKDIR/buildhistory ]; then
     fi
 fi
 
-HSFILE=$WORKDIR/tmp/buildstats/*/host_stats
+HSFILE=$WORKDIR/tmp/buildstats/*/host_stats*
 d="intermittent_failure_host_data"
 
 mkdir -p $DEST/$target/$d
 
-step=0
+step_i=1
+step_f=1
 for f in $HSFILE; do
 	if [ -e $f ]; then
 	    cp $f $DEST/$target/$d
+        if [[ "$f" == *"failure"* ]] ; then
+            mv $DEST/$target/$d/`basename $f` $DEST/$target/$d/`basename $f`_${step_f}.txt
+            step_f=$((step_f+1))
+            continue
+        fi
 	    grep -m 1 "^top -" $f
 	    if [ $? -eq 0 ]; then
-		    mv $DEST/$target/$d/`basename $f` $DEST/$target/$d/`basename $f`_${step}_top.txt
+		    mv $DEST/$target/$d/`basename $f` $DEST/$target/$d/`basename $f`_${step_i}_top.txt
 	    else
-		    mv $DEST/$target/$d/`basename $f` $DEST/$target/$d/`basename $f`_${step}.txt
+		    mv $DEST/$target/$d/`basename $f` $DEST/$target/$d/`basename $f`_${step_i}.txt
 	    fi
-	    step=$((step+1))
+	    step_i=$((step_i+1))
 	fi
 done
-- 
2.25.1

