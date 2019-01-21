Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A4ECE00CCC; Mon, 21 Jan 2019 01:10:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D98FCE00CCC
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0L9ADvu025113
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:43 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Mon, 21 Jan 2019 01:10:03 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 17:09:37 +0800
Message-ID: <1548061778-253354-3-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
References: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2 2/2] ref-variables.xml: update manual page for update-rc.d
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
X-List-Received-Date: Mon, 21 Jan 2019 09:10:58 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Currently, yocto doc refer link http://www.tin.org/bin/man.cgi?
section=8&topic=update-rc.d. as man page of update-rc.d, but lastest
debian udpate-rc.d have big difference with yocto, they need insserv
and all the initscripts support LSB comment header.

change to new link which is more similar to yocto

[Yocto #12955]

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 documentation/ref-manual/ref-variables.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 9e51b75..dc5fc6d 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7198,7 +7198,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     to the <filename>update-rc.d</filename> command.
                     For more information on valid parameters, please see the
                     <filename>update-rc.d</filename> manual page at
-                    <ulink url='http://www.tin.org/bin/man.cgi?section=8&amp;topic=update-rc.d'></ulink>.
+                    <ulink url='https://manpages.debian.org/wheezy/sysv-rc/update-rc.d.8.en.html'></ulink>.
                 </para>
             </glossdef>
         </glossentry>
-- 
2.7.4


