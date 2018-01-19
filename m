Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0719E00EC0; Thu, 18 Jan 2018 18:56:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62B27E00D6A
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 18:56:38 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w0J2ubA4017111
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 18:56:38 -0800
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 18 Jan 2018 18:56:36 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Jan 2018 10:54:13 +0800
Message-ID: <20180119025413.553-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [opkg-utils PATCH] update-alternatives: fix the sed pattern in remove_alt
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
X-List-Received-Date: Fri, 19 Jan 2018 02:56:40 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

'\>' is to matches the end of a word, but the executable is
not always a 'word', e.g. /usr/lib64/busybox/usr/bin/[

then such alternatives can not be removed.

So change to use '\s' in the pattern since the following
character of the $path is whitespace.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 update-alternatives | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/update-alternatives b/update-alternatives
index ffad853..ce7d66c 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -80,7 +80,7 @@ remove_alt() {
 	[ ! -f $ad/$name ] && return 0
 
 	path=`echo $path | protect_slashes | protect_special_character`
-	sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
+	sed -ne "/^$path\s.*/!p" $ad/$name > $ad/$name.new
 	mv $ad/$name.new $ad/$name
 }
 
-- 
2.7.4


