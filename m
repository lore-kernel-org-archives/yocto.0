Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72A99E00C01; Fri, 29 Sep 2017 18:55:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 590B0E00B53
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 18:55:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8U1tNZA023667
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 18:55:23 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 29 Sep 2017 18:55:21 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 21:55:21 -0400
Message-ID: <1506736521-34304-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-security][PATCH] keynote: update the SRC_URI
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
X-List-Received-Date: Sat, 30 Sep 2017 01:55:25 -0000
Content-Type: text/plain

The old URL can't be available, give the new URL to keynote.
The project already moved to:

    https://sourceforge.net/projects/keynote-2-3/

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 recipes-security/keynote/keynote_2.3.bb | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
index b1df880..23e75e4 100644
--- a/recipes-security/keynote/keynote_2.3.bb
+++ b/recipes-security/keynote/keynote_2.3.bb
@@ -9,16 +9,19 @@ SECTION = "security"
 LICENSE = "ISC"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3a265095c549c1808686a676f2699c98"
 
-SRC_URI = "http://www.cs.columbia.edu/~angelos/Code/${BPN}.tar.gz \
+MAIN_ID = "${@d.getVar('PV').split('.')[0]}"
+MINOR_ID = "${@d.getVar('PV').split('.')[1]}"
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/${PN}-${MAIN_ID}-${MINOR_ID}/${PN}_${PV}.tar.gz \
        file://configure-remove-hardcode-path.patch \
        file://makefile-add-ldflags.patch \
        file://run-ptest \
 "
+S = "${WORKDIR}/${PN}-${PV}+dfsg.orig"
 
 inherit autotools-brokensep ptest
 
-SRC_URI[md5sum] = "ba58a0297c421dc6aa671e6b753ef695"
-SRC_URI[sha256sum] = "62f7a9d57ceb6bcdd47b604b637a7ac8ed337cef0ab02f1fa28b7e61c9b15821"
+SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
+SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"
 
 DEPENDS = "flex openssl"
 
-- 
2.8.1


