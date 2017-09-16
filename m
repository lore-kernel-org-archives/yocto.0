Return-Path: <will.page@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC53FE00C31; Fri, 15 Sep 2017 20:23:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2984 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Sep 2017 20:23:41 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC60E00A9C
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 20:23:41 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v8G2UgYM029055; Fri, 15 Sep 2017 21:33:55 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2d0k2u9bqp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 15 Sep 2017 21:33:55 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com
	(us-aus-exhub1.ni.corp.natinst.com [130.164.68.41])
	by us-aus-skprod3.natinst.com (8.16.0.21/8.16.0.21) with ESMTPS id
	v8G2XsUI027754
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 15 Sep 2017 21:33:54 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 15 Sep 2017 21:33:54 -0500
Received: from canismajor (130.164.49.7) by us-aus-exhub1.ni.corp.natinst.com
	(130.164.68.41) with Microsoft SMTP Server id 15.0.1156.6 via
	Frontend Transport; Fri, 15 Sep 2017 21:33:53 -0500
Date: Fri, 15 Sep 2017 19:33:53 -0700
From: Will Page <will.page@ni.com>
To: <yocto@yoctoproject.org>
Message-ID: <20170916023353.GA16344@canismajor>
MIME-Version: 1.0
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-09-15_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=4 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1709160035
Cc: Seebs <seebs@seebs.net>
Subject: [pseudo][PATCH] Fix to fcntl guts to ignore flags that can be ORed into cmd
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
X-List-Received-Date: Sat, 16 Sep 2017 03:23:42 -0000
X-Groupsio-MsgNum: 37926
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

I previously submitted this patch to the OE-core mailing list, and was
directed over here.

--bg08WKrSYDhXBjb5
Content-Type: text/x-diff; charset="us-ascii"
Content-Disposition: attachment;
	filename="0001-Fix-to-fcntl-guts-to-ignore-flags-that-can-be-ORed-i.patch"

From c29b7aecfe671013897119b1dee2731900439285 Mon Sep 17 00:00:00 2001
From: Will Page <Will.Page@ni.com>
Date: Fri, 15 Sep 2017 13:07:44 -0700
Subject: [pseudo][PATCH] Fix to fcntl guts to ignore flags that can be ORed
 into cmd

The fcntl guts switch on "cmd" parameter to identify the fcntl
command being issued, but isn't aware of the file creation flags that
can be ORed in.

This change masks out the flags from the command only for the switch
statement so that it can correctly determine whether it needs to pass
"lock" or "arg".  When real_fcntl() is called, the original value is
still passed on. This corrects an issue observed using pseudo on modern
linux desktops resulting in "pseudo: unknown fcntl argument 1030,
assuming long argument." diagnostics in the output.  Decimal 1030 is
0x0406, which translates to O_NOCTTY | F_SETLK, and should call
"rc = real_fcntl(fd, cmd, lock);", but instead falls through to the
default case instead calling "rc = real_fcntl(fd, cmd, arg);".

Tested the change using perftest - without this patch, the issue is
trivially reproducible on my Ubuntu Xenial system, and after patching it
emitted no "unknown fcntl argument" diagnostics.

Signed-off-by: Will Page <Will.Page@ni.com>
---
 ports/linux/guts/fcntl.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/ports/linux/guts/fcntl.c b/ports/linux/guts/fcntl.c
index 639fd24..d278a8c 100644
--- a/ports/linux/guts/fcntl.c
+++ b/ports/linux/guts/fcntl.c
@@ -8,6 +8,10 @@
  */
  	long arg;
 	int save_errno;
+	/* some bits can be ORed into the cmd should be explicitly ignored
+	 * see fcntl documentation on F_SETFL */
+	int o_mode_mask = (O_RDONLY | O_WRONLY | O_RDWR) |
+		(O_CREAT | O_EXCL | O_NOCTTY | O_TRUNC);
 
 	/* we don't know whether we need lock or arg; grab both, which
 	 * should be safe enough on Linuxy systems. */
@@ -15,7 +19,7 @@
 	arg = va_arg(ap, long);
 	va_end(ap);
 
-	switch (cmd) {
+	switch (cmd & ~(o_mode_mask)) {
 	case F_DUPFD:
 #ifdef F_DUPFD_CLOEXEC
 	case F_DUPFD_CLOEXEC:
-- 
2.7.4


--bg08WKrSYDhXBjb5--
