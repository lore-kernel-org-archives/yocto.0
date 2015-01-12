Return-Path: <vincent2014@startigen.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3215E0086F; Mon, 12 Jan 2015 05:57:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 869 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Jan 2015 05:57:02 PST
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54AF0E0048B
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 05:57:02 -0800 (PST)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 7B42947BBE1
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 14:42:32 +0100 (CET)
Received: from mfilter11-d.gandi.net (mfilter11-d.gandi.net [217.70.178.131])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 6BC01A80EB;
	Mon, 12 Jan 2015 14:42:26 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter11-d.gandi.net
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by mfilter11-d.gandi.net (mfilter11-d.gandi.net [10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 9kxg1oGeNA91; Mon, 12 Jan 2015 14:42:25 +0100 (CET)
X-Originating-IP: 109.190.72.19
Received: from localhost.localdomain (19-72-190-109.dsl.ovh.fr [109.190.72.19])
	(Authenticated sender: vincent.genieux@startigen.fr)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D7E68A80AA;
	Mon, 12 Jan 2015 14:42:24 +0100 (CET)
From: =?UTF-8?q?Vincent=20G=C3=A9nieux?= <vincent2014@startigen.fr>
To: yocto@yoctoproject.org
Date: Mon, 12 Jan 2015 14:42:17 +0100
Message-Id: <1421070137-22024-1-git-send-email-vincent2014@startigen.fr>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [OE-core] fix '[[: not found' error message using dash
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
X-List-Received-Date: Mon, 12 Jan 2015 13:57:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is a fix for https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D711=
2
bash specific syntax '[[ test ]]' replaced with '[ test ]'.

Signed-off-by: Vincent G=C3=A9nieux <vincent2014@startigen.fr>
---
 meta/classes/kernel.bbclass |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 70ed95b..2a6ec34 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -403,7 +403,7 @@ do_strip() {
 			  gawk '{print $1}'`
=20
 		for str in ${KERNEL_IMAGE_STRIP_EXTRA_SECTIONS}; do {
-			if [[ "$headers" !=3D *"$str"* ]]; then
+			if [ "$headers" !=3D *"$str"* ]; then
 				bbwarn "Section not found: $str";
 			fi
=20
--=20
1.7.10.4


