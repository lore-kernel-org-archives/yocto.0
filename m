Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AE0AE008E5; Fri, 21 Nov 2014 02:11:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13534E0085D
	for <yocto@yoctoproject.org>; Fri, 21 Nov 2014 02:11:27 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sALABLP2007700
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Fri, 21 Nov 2014 02:11:21 -0800 (PST)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.226) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Fri, 21 Nov 2014 02:11:20 -0800
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>, <opkg-devel@googlegroups.com>
Date: Fri, 21 Nov 2014 18:11:26 +0800
Message-ID: <1416564686-25157-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [opkg-utils PATCH] update-alternatives: avoid double slash problem
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
X-List-Received-Date: Fri, 21 Nov 2014 10:11:31 -0000
Content-Type: text/plain

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 update-alternatives | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/update-alternatives b/update-alternatives
index 8916cbd..ca01d5d 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -97,7 +97,7 @@ find_best_alt() {
 	[ $# -lt 1 ] && return 1
 	[ ! -f $ad/$name ] && return 0
 
-	link=$OPKG_OFFLINE_ROOT/`head -n 1 $ad/$name`
+	link=$OPKG_OFFLINE_ROOT`head -n 1 $ad/$name`
 
 	prio=`sed -ne "1!p" $ad/$name | sed -e "s/\(.*\) \(.*\)/\2 \1/g" | sort -nr | head -n 1 | sed 's/ [^ ]*$//'`
 	if [ -z "$prio" ]; then
-- 
1.9.1


