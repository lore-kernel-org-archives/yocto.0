Return-Path: <hugo.saldanha@aker.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32F4BE00924; Fri, 27 Mar 2015 13:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 605 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Mar 2015 13:57:29 PDT
Received: from asmg.aker.com.br (asmg.aker.com.br [177.159.144.67])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 693D6E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 13:57:29 -0700 (PDT)
Received: from mail.aker.com.br (bat.bsb.aker.com.br [10.0.0.20])
	by asmg.aker.com.br [10.0.1.3]; Fri, 27 Mar 2015 17:57:13 -0300
	(envelope-from hugo.saldanha@aker.com.br)
Received: from saldanha.aker.com.br (10.4.3.1) by mail.aker.com.br (10.0.0.20)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 27 Mar 2015 17:47:05 -0300
From: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
To: <yocto@yoctoproject.org>
Date: Fri, 27 Mar 2015 17:49:40 -0300
Message-ID: <1427489380-16202-1-git-send-email-hugo.saldanha@aker.com.br>
X-Mailer: git-send-email 2.3.3
MIME-Version: 1.0
X-AkerSMTPGW-ServerID: d3ca878c259c98dab9711b092908c214d1fd543e
X-AkerSMTPGW-MessageID: d6e4126872cffd39458fee570a20fb310b60abae-10o
Subject: [meta-security][PATCH] libmspack: update to version 0.5
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
X-List-Received-Date: Fri, 27 Mar 2015 20:57:37 -0000
Content-Type: text/plain

SRC_URI to version 0.4 was broken.

Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
---
 recipes-security/libmspack/{libmspack_0.4.bb => libmspack_0.5.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/libmspack/{libmspack_0.4.bb => libmspack_0.5.bb} (72%)

diff --git a/recipes-security/libmspack/libmspack_0.4.bb b/recipes-security/libmspack/libmspack_0.5.bb
similarity index 72%
rename from recipes-security/libmspack/libmspack_0.4.bb
rename to recipes-security/libmspack/libmspack_0.5.bb
index 5d2061d..80db23c 100644
--- a/recipes-security/libmspack/libmspack_0.4.bb
+++ b/recipes-security/libmspack/libmspack_0.5.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b
 
 SRC_URI = "${DEBIAN_MIRROR}/main/libm/${BPN}/${BPN}_${PV}.orig.tar.gz\
 "
-SRC_URI[md5sum] = "1ab10b507259993c74b4c41a88103b59"
-SRC_URI[sha256sum] = "b7958983f60cbec40d48ef87520210f9d8e2672a57a5ce0a2187b3d4fb2f5c68"
+SRC_URI[md5sum] = "3aa3f6b9ef101463270c085478fda1da"
+SRC_URI[sha256sum] = "8967f275525f5067b364cee43b73e44d0433668c39f9376dfff19f653d1c8110"
 
 inherit autotools
 
-- 
2.3.3



