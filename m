Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BDD4E00CC4; Thu, 14 Sep 2017 05:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63CBAE00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 05:10:14 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id n64so1603695wrb.2
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 05:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=FYadapOnfxFUxCz69bmJPjmtckdfIOO1YTyoP0f6YJM=;
	b=HwMX8rEQburOrFPV8kze/SxOEy0sjHcDd3RLDJE9w+S0sxAbCq12uWBE3lPdsADCL8
	wK7HdrfwDAz/5EBl55VZ7qDg3rUPheSk2yGaGACqxQxvGdqL0gxw3VJz45Ri4rDIc/6p
	7bQFCcznzBN0IItlRKROY2VhOEnxX2alHKEIwfpiLAA5D3eLcQjzKQ2oleh9dER0BDre
	P4nxWkyq+3aAFbkfEsYM7io+qg+SjHx+9nZBKEYW0NAME6o3BV/PnBACeUpQTBtKFZKk
	T44oWHiCQPzu2klMWIvxG5hQHi+g+/9FKqCtLVaOmtrim/Oy76CeUnfJnukCwW0+/P1E
	5GkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FYadapOnfxFUxCz69bmJPjmtckdfIOO1YTyoP0f6YJM=;
	b=qnmJzlL28lkbOS3Lw4PNP3Z+dp9CJkgAlam3Tbuaj/pisUZIXxxOTxfM6tKOQy7buL
	xlAHlSJpXDf7vb6NbDi14F0kX8e1mJv68OOWCTQmh5kYmG3uWRxUPOCWOvlYCEOQMq74
	q4vc03jdp/A4VDYp89qZMGUWK1u0bXzr3Vl3zTkTKVpCPBfLr/PQ9P3ef/vHd2K/S+m7
	dpozYIOF1ZGtVJF1NbTaIB/c+FZh0nhucd7mRAik44268T9f7ilTWTVOChLJYpAgUp4J
	cq5+bdC5o75z/Ng3nZe5sJ9+Ir91oSxErN7tfMw4Lps2ihck+WjsQRCQ2+NPEYGRCUCa
	QrgA==
X-Gm-Message-State: AHPjjUitafpcP4T85JwRm1nJ8FT3J9BNozcgwcYLQsOavZhZqnrekobd
	Aiu+q8E3PR9jr2Uh
X-Google-Smtp-Source: ADKCNb5okgjeN44Qyin8oRj9/pHZCmiTz59ItRRsaC049RePnTgH8ACOQZNFMvtFuhqfHK7J19oFFQ==
X-Received: by 10.223.142.73 with SMTP id n67mr17167547wrb.278.1505391013902; 
	Thu, 14 Sep 2017 05:10:13 -0700 (PDT)
Received: from linuxdev.toradex.int ([46.140.72.82])
	by smtp.gmail.com with ESMTPSA id
	55sm23308523wrw.60.2017.09.14.05.10.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Sep 2017 05:10:12 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Sep 2017 14:09:23 +0200
Message-Id: <20170914120924.1935-1-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.9.4
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [meta-qt4][PATCH 1/2] qt4-4.8.7.inc: use a supported builtin type for Uchar
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
X-List-Received-Date: Thu, 14 Sep 2017 12:10:16 -0000

cope with icu 59's changed use of uchar.
http://site.icu-project.org/download/59#TOC-ICU4C-char16_t

4.8.7-r0/recipe-sysroot/usr/include/unicode/umachine.h:347:13: error: 'char16_t' does not name a type; did you mean 'wchar_t'?
     typedef char16_t UChar;
             ^~~~~~~~
             wchar_t
...
4.8.7-r0/recipe-sysroot/usr/include/unicode/uversion.h:167:55: error: 'UChar' does not name a type; did you mean 'UChar32'?
 u_versionFromUString(UVersionInfo versionArray, const UChar *versionString);

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 4bade85..7720463 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -46,7 +46,7 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
 # workaround for class std::auto_ptr' is deprecated with gcc-6
-CXXFLAGS += "-std=gnu++98 -Wno-deprecated"
+CXXFLAGS += "-std=gnu++98 -Wno-deprecated -DUCHAR_TYPE=wchar_t"
 
 # disable webkit for mips64 n32 temporarily that fails to compile,
 # qt upstream defect:
-- 
2.9.4


