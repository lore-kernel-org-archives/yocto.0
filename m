Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 586BAE00E2F; Tue,  6 Feb 2018 07:43:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C4E9E00E82
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:43:54 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id o1so1233614pgn.4
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Pk64X1uv6DIoDE956U0h1d+TmFM7mYMRq1QdJenBTAE=;
	b=hXSY29eDX+hdMg3F0U6ehfqwDzEyLFZSQwBknrCHhFBQqpnp4m20EH3E/rnsnIZai+
	Vm4BzwDNXemmH/Ov6SnYch6FxwbZwhKdUm+vCIBGUpzmZ8WaJIjcDEaUiUkkUVuy03xM
	e/X4s/McSJwepR+BHJxzcAJcyZNpFnpjnRRBYoud4dvOJvnTIZtm7ocY2hkaTBwXtcjU
	rOuNdGi0XJOaa9MA9ibqXBWT4uK6lMUx3JOB3bl4zGHo3z+S/WHygUbZJV99NFwJwAIg
	P5QFg2Ox5pQD9Xgpi/kLAJIQlzcjWveShxhI1ZxLjkIxo5maVbg+66OdzgYbXGlEg/kQ
	TWwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Pk64X1uv6DIoDE956U0h1d+TmFM7mYMRq1QdJenBTAE=;
	b=XPyjq00PAUDwcSMGvLv7N5KNsiiSNy2cU2T59PBd9T+wWlRqiDOAHZ27gYRt/8/jnE
	A5oKIJD5yRCtpw0aoy8vMxQ06WYDIT7NlAJ3um3iIfYNEs37N/4G1pxa1k7WdxqIj741
	h+V1CHo/wJb2SdmGHA6pTa2PyzdFCRJtrAmpv5SNvevgvRTHj9XDz/iUrIWS4wdfxHWB
	SrTuEwuz7zTSwOilRDHhuq8qzQNC4LsceB+GrwOgQLR1J8yO+zx7IFOWFgN9aWJihfY9
	Wb9c2Veqw2yomdxOlP+TPvAJGDC4uKUVsfNIZaOe6QyZyXExO8bXGH8pYTfgwlfqFn/2
	GsmQ==
X-Gm-Message-State: APf1xPDbrDBwXrPhlIjvbDrdDLiu7XPM0kUxvC1RMjirHOpvuPLri0aJ
	BvZ4ifN8t9rLf680OIYk558=
X-Google-Smtp-Source: AH8x225qgMukPLFLjB63AGRRX4tsKoEXsHcDFzrh1j80pNULxD+/Bp02JEVaS5ZFrWCUlo0oDga2Bg==
X-Received: by 10.101.69.141 with SMTP id o13mr2342458pgq.204.1517931834468;
	Tue, 06 Feb 2018 07:43:54 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.43.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:43:54 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:28 +0530
Message-Id: <1517931813-13010-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/12] xmlsec1: Update to 1.2.25
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
X-List-Received-Date: Tue, 06 Feb 2018 15:43:57 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/xmlsec1/{xmlsec1_1.2.24.bb => xmlsec1_1.2.25.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/xmlsec1/{xmlsec1_1.2.24.bb => xmlsec1_1.2.25.bb} (91%)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
similarity index 91%
rename from recipes-security/xmlsec1/xmlsec1_1.2.24.bb
rename to recipes-security/xmlsec1/xmlsec1_1.2.25.bb
index a34539b..d351dd2 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
@@ -20,8 +20,8 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
     file://run-ptest \
     "
 
-SRC_URI[md5sum] = "2f4944356b69ea14c18814d9248fbbd8"
-SRC_URI[sha256sum] = "99a8643f118bb1261a72162f83e2deba0f4f690893b4b90e1be4f708e8d481cc"
+SRC_URI[md5sum] = "dbbef1efc69e61bc4629650205a05b41"
+SRC_URI[sha256sum] = "967ca83edf25ccb5b48a3c4a09ad3405a63365576503bf34290a42de1b92fcd2"
 
 inherit autotools-brokensep ptest pkgconfig
 
-- 
2.7.4


