Return-Path: <josh@mechbits.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6472E00CB9; Wed, 29 May 2019 12:04:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (josh.deweese[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [107.14.166.229 listed in list.dnswl.org]
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 May 2019 12:04:17 PDT
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26DB6E009A0
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 12:04:17 -0700 (PDT)
Received: from snapy.mechbits.com ([98.29.227.47]) by cmsmtp with ESMTP
	id W3qzhYmevf7bkW3r1hPMCa; Wed, 29 May 2019 19:03:16 +0000
Received: from josh by snapy.mechbits.com with local (Exim 4.89)
	(envelope-from <josh@mechbits.com>)
	id 1hW3qy-00042f-Oz; Wed, 29 May 2019 15:03:12 -0400
From: Joshua DeWeese <josh.deweese@gmail.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Date: Wed, 29 May 2019 15:03:11 -0400
Message-Id: <20190529190311.15495-1-josh.deweese@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CMAE-Envelope: MS4wfJw75yD3L0P8dSWHlw92mVZjbH6Nn3S5jbD4V0AbSngNckVHt38FVe+8Gemn1gpapfTX64sXcNwbEYytHTgU4ylUMq07cEEX3idagGtczxq5l+YfZHcO
	0O1ESH2Pp7/kMqteu8sgsiHgNxo/oTAXf3B9j8vfXvSPYimlOppwWQImUsH/pFiO6UUrGsPmivZRYdeB0++OMrCk6awShSCRh+JE5+deuzft2Nz6PcU6Q3Cl
	qK0MELA/FtZvd+wXoLkDrQ==
Cc: Joshua DeWeese <jdeweese@hennypenny.com>
Subject: [opkg-utils PATCH] Makefile: fixed for-loop in install receipe
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
X-List-Received-Date: Wed, 29 May 2019 19:04:17 -0000

From: Joshua DeWeese <jdeweese@hennypenny.com>

The install receipe would have copied all the manpages to each of the
section folders. This change will do what I believe the original
author had intended.

Signed-off-by: Joshua DeWeese <jdeweese@hennypenny.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 69a1c5a..817a8c1 100644
--- a/Makefile
+++ b/Makefile
@@ -23,7 +23,7 @@ install: all
 	for m in $(MANPAGES); \
 	do \
 		install -d $(DESTDIR)$(mandir)/man$${m##*.}; \
-		install -m 644 $(MANPAGES) $(DESTDIR)$(mandir)/man$${m##*.}; \
+		install -m 644 "$$m" $(DESTDIR)$(mandir)/man$${m##*.}; \
 	done
 
 .PHONY: install all
-- 
2.7.4


