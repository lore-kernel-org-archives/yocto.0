Return-Path: <adraszik@digisoft.tv>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DE68E00A4D; Tue, 28 Jul 2015 01:07:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8062BE00A31
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 01:07:43 -0700 (PDT)
Received: by wibxm9 with SMTP id xm9so145073561wib.0
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 01:07:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding;
	bh=viqC+D1u6fpT3d3jA43T6ireMixpKGIZbEiIEpczl8o=;
	b=ggMTALMhYtIGUYlkIY6R9ORrIjhsp2rxZpL6Va0fhJdCmfPScQ20T5OT+sDQqFGYVt
	og4R30Eci1l6SZNm7nxfudO//xpQAytlsFTViO4Nvh9OT2XighubjUonUDJAprtHT4vD
	Avns0SjWAAHFENMWNJLgX0fuyirvQfWOaEgwyH/K29z0soO20ZxBiX23AFoou9zfEhDQ
	CLUr5AgNStwYs4TKPT20XQgbK7qEgLJ8Vcueq28vfcdD5EpPDiodfKd2NWmPhSkoXPqn
	UXFGJGwPNIhlJGbL8JJ4+h7F8BHA2YapOufdcMZIa7tggZ+wLFqsIHsBIpz1o8KYERlB
	mX5w==
X-Gm-Message-State: ALoCoQl1S6E59BI9k07o77E9g/zw/y+X1clLqL55hZ0YcDvOxEFrd7u2iCVsF+EI7op6x0Z8+5Kp
X-Received: by 10.180.210.234 with SMTP id mx10mr4263271wic.42.1438070862959; 
	Tue, 28 Jul 2015 01:07:42 -0700 (PDT)
Received: from i22.digisoft.tv ([212.17.57.102])
	by smtp.gmail.com with ESMTPSA id
	k12sm25509403wjw.4.2015.07.28.01.07.42
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 28 Jul 2015 01:07:42 -0700 (PDT)
From: adraszik@digisoft.tv
To: yocto@yoctoproject.org
Date: Tue, 28 Jul 2015 09:07:39 +0100
Message-Id: <1438070859-13276-1-git-send-email-adraszik@digisoft.tv>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20150727163405.GE307@jama>
References: <20150727163405.GE307@jama>
MIME-Version: 1.0
Subject: [yocto-docs][PATCH] ref-manual: clarify allarch wrt RDPENDS and TUNE_PKGARCH
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
X-List-Received-Date: Tue, 28 Jul 2015 08:07:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <git@andred.net>

See e.g.
http://permalink.gmane.org/gmane.comp.handhelds.openembedded/64067

Signed-off-by: André Draszik <git@andred.net>
---
 documentation/ref-manual/ref-classes.xml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index d482ca0..a9b2f3c 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -51,6 +51,22 @@
         that produce executable binaries (such as building the cross-compiler
         and a C library as pre-requisites, and splitting out of debug symbols
         during packaging).
+        <note>
+            Unlike e.g. Debian, OpenEmbedded recipes that produce packages
+            which
+            <link linkend='var-RDEPENDS'><filename>RDEPENDS</filename></link>
+            on
+            <link linkend='var-TUNE_PKGARCH'><filename>TUNE_PKGARCH</filename></link>
+            packages should never be made <filename>allarch</filename>, even
+            if they do not produce architecture-specific output. This would
+            cause the do_package_write_* tasks to have different signatures
+            for
+            <link linkend='var-MACHINE'><filename>MACHINE</filename></link>s
+            with different
+            <link linkend='var-TUNE_PKGARCH'><filename>TUNE_PKGARCH</filename></link>,
+            thus unnecessary rebuilds every single time an image for a different
+            MACHINE is built (even without any change to the recipe).
+        </note>
     </para>
 
     <para>
-- 
2.1.4


