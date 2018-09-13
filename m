Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B72B1E006AF; Thu, 13 Sep 2018 00:26:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40CDBE0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 00:26:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8D7QA7A022039
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 13 Sep 2018 00:26:31 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 13 Sep 2018 00:26:14 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 13 Sep 2018 15:19:41 +0800
Message-ID: <20180913071941.79838-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH yocto-docs] ref-manual: Introduce the --use-label partition parameter for wic
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
X-List-Received-Date: Thu, 13 Sep 2018 07:26:58 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 documentation/ref-manual/ref-kickstart.xml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/documentation/ref-manual/ref-kickstart.xml b/documentation/ref-manual/ref-kickstart.xml
index a58f9d7c9602..dd97dd7206c7 100644
--- a/documentation/ref-manual/ref-kickstart.xml
+++ b/documentation/ref-manual/ref-kickstart.xml
@@ -198,6 +198,16 @@
                     If the given label is already in use by another filesystem,
                     a new label is created for the partition.
                     </para></listitem>
+                <listitem><para>
+                    <emphasis><filename>--use-label</filename>:</emphasis>
+                    Makes wic to use the label in /etc/fstab to specify a
+                    partition. If the --use-label and --use-uuid are used at
+                    the same time, we prefer the uuid because it is less likely
+                    to cause name confliction. We don't support using this
+                    parameter on the root partition since it requires an
+                    initramfs to parse this value and we do not currently
+                    support that.
+                    </para></listitem>
                 <listitem><para>
                     <emphasis><filename>--active</filename>:</emphasis>
                     Marks the partition as active.
-- 
2.14.4


