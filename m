Return-Path: <scott@jumpnowtek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23505E00BFB; Sun, 13 Jan 2019 08:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [146.20.161.110 listed in list.dnswl.org]
X-Greylist: delayed 543 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Jan 2019 08:06:47 PST
Received: from smtp110.iad3b.emailsrvr.com (smtp110.iad3b.emailsrvr.com
	[146.20.161.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E84E00B92
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 08:06:47 -0800 (PST)
Received: from smtp14.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
	by smtp14.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id
	5520EE01DB
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 10:57:44 -0500 (EST)
X-Auth-ID: scott@jumpnowtek.com
Received: by smtp14.relay.iad3b.emailsrvr.com (Authenticated sender:
	scott-AT-jumpnowtek.com) with ESMTPSA id 329B0E01C1
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2019 10:57:44 -0500 (EST)
X-Sender-Id: scott@jumpnowtek.com
Received: from [192.168.10.4] (c-73-234-253-132.hsd1.me.comcast.net
	[73.234.253.132]) (using TLSv1.2 with cipher AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12); Sun, 13 Jan 2019 10:57:44 -0500
To: yocto@yoctoproject.org
From: Scott Ellis <scott@jumpnowtek.com>
Message-ID: <734bb578-a1f7-c6bf-445b-56313ac4292a@jumpnowtek.com>
Date: Sun, 13 Jan 2019 10:57:45 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
Subject: [meta-security][python3-scapy] scapy script is broken
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
X-List-Received-Date: Sun, 13 Jan 2019 16:06:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

The shebang line in /usr/bin/scapy and /usr/bin/UTscapy is always set
for python not python3 and so doesn't work with the python3 scapy install.

This problem existed in the 2.4.0 version as well.

I am currently using this patch in my local repo to fix python3-scapy
builds.

diff --git a/recipes-security/scapy/python-scapy.inc
b/recipes-security/scapy/python-scapy.inc
index d5a70fe..97036e0 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -15,6 +15,20 @@ do_install_ptest() {
     sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
 }

+do_install_append() {
+    if [ "${PYTHON_BASEVERSION}" != "2.7" ]; then
+        bbwarn "Fixing shebang line for scapy and UTscapy"
+
+        if [ -e ${D}${bindir}/scapy ]; then
+           sed -i -e 's/python/python3/' ${D}${bindir}/scapy
+        fi
+
+        if [ -e ${D}${bindir}/UTscapy ]; then
+           sed -i -e 's/python/python3/' ${D}${bindir}/UTscapy
+        fi
+    fi
+}
+
...

scapy is just a small wrapper script to launch an interactive scrapy
session.

Adding the do_install_append() to the python3-scapy.bb doesn't work
(never gets called) so I had to add the PYTHON_BASEVERSION check and put
it in the *.inc

Open to suggestions on a better fix.





