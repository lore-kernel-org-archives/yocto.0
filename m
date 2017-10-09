Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25DF7E00D39; Sun,  8 Oct 2017 19:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0886E00D2A
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 19:24:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v992ORgH022961
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Sun, 8 Oct 2017 19:24:28 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Sun, 8 Oct 2017 19:24:27 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sun, 8 Oct 2017 22:24:26 -0400
Message-ID: <1507515866-185145-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-security][PATCH V2] keynote: update the SRC_URI
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
X-List-Received-Date: Mon, 09 Oct 2017 02:24:30 -0000
Content-Type: text/plain

The old URL can't be available, give the new URL to keynote.
The project already moved to:

    https://sourceforge.net/projects/keynote-2-3/

The different between old and new tarball was:

    the old tarball contains doc directory, source codes were same.

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 recipes-security/keynote/keynote_2.3.bb | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
index b1df880..e692485 100644
--- a/recipes-security/keynote/keynote_2.3.bb
+++ b/recipes-security/keynote/keynote_2.3.bb
@@ -9,16 +9,19 @@ SECTION = "security"
 LICENSE = "ISC"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3a265095c549c1808686a676f2699c98"
 
-SRC_URI = "http://www.cs.columbia.edu/~angelos/Code/${BPN}.tar.gz \
+MAIN_ID = "${@d.getVar('PV').split('.')[0]}"
+MINOR_ID = "${@d.getVar('PV').split('.')[1]}"
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}-${MAIN_ID}-${MINOR_ID}/${BPN}_${PV}.tar.gz \
        file://configure-remove-hardcode-path.patch \
        file://makefile-add-ldflags.patch \
        file://run-ptest \
 "
+S = "${WORKDIR}/${BPN}-${PV}+dfsg.orig"
 
 inherit autotools-brokensep ptest
 
-SRC_URI[md5sum] = "ba58a0297c421dc6aa671e6b753ef695"
-SRC_URI[sha256sum] = "62f7a9d57ceb6bcdd47b604b637a7ac8ed337cef0ab02f1fa28b7e61c9b15821"
+SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
+SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"
 
 DEPENDS = "flex openssl"
 
-- 
2.8.1


