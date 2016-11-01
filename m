Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F37E00444; Tue,  1 Nov 2016 08:56:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5411E00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:56:05 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id i88so665498pfk.2
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 08:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=yaIeaDshzkvmbK5KfTkRT7qPJO+5Tg//biscle2dnJ8=;
	b=zPOfTx+Va4itOOuNvEWfrFDAxUDC0cyyHTUl+yMpgbgAoYwnaa51urqWHRs+bgCIFA
	xNXgN6V+zw+14TfUNZjUaiuHhCTpCM0RNrCXhH6VtWITNhp5lmupKX8ZtxC8U/IXveXC
	4Wn2qTD5jn2T0ue4+ExzQL8c1IbipsTC1J8iC1vQktj8ybfgEsPWqmoSJWsvwF/b5y6/
	tQb2eO7/RTpPjUX/PUtc94HwesdOQVAjR8mSZ2HJaF/uuh6vMQCKH4uw9Amvzop7PLHl
	LpUesKBahgh6mZe4KvE+pmC1FrBZHx4fuB+lE7x7Y5h0GyrR6Ek99/6/IWIt2diVPmmr
	I6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=yaIeaDshzkvmbK5KfTkRT7qPJO+5Tg//biscle2dnJ8=;
	b=JZNoqBJrcxuQfmx7niULdn/hmN0iwmG9tIwAhAEtb3HLGLSiyAxaBXPTlPOqStBzIv
	OmHajKwBwEhJrPhICpwvxRuw7qzSoTb3hsGdhGEQ+YuJV5IjIiMEokZcDwizPpVxnjXg
	0l1cVzXGPpwqmSy7Qk8ihwFFw+yzj4tZyiYJwZctS4HdV+eL2jLRDwBYpcqMEExMJBIt
	7WrAyHAhueeyl3UXpC1eBcEhOP8ya7Rr154ZDz+Muup3MOnLRBmLG5MbxZmIFizVw5ly
	f4XuFH/+Kou5Hp/c/4Yqs+Sow2sTtra5sTbNyNZD43FSpFXiZAvprGCDImRIdwqG6WRL
	PN3Q==
X-Gm-Message-State: ABUngve3xVQPKrsRRVJmCJBEq66hYMPNO35C0IvBqci+KXwwamjvuJFMCdUm+5cpwLJGUw==
X-Received: by 10.99.147.75 with SMTP id w11mr7692557pgm.139.1478015764685;
	Tue, 01 Nov 2016 08:56:04 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:bddd:dc37:37:9aa])
	by smtp.gmail.com with ESMTPSA id
	z189sm22551786pfb.2.2016.11.01.08.56.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 01 Nov 2016 08:56:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Nov 2016 08:56:02 -0700
Message-Id: <1478015762-30170-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] suricata: update package to 3.1.3
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
X-List-Received-Date: Tue, 01 Nov 2016 15:56:08 -0000

*Changes*

Bug #1861: Suricata with multi tenancy does not start in 3.1/3.1.1
Bug #1889: Suricata doesn't error on missing semicolon
Bug #1910: libhtp 0.5.23 (3.1.x)
Bug #1912: http.memcap reached condition can lead to dead lock
Bug #1913: af-packet fanout detection broken on Debian Jessie
Bug #1933: unix-command socket created with last character missing (3.1.x)
Bug #1934: make install-full does not install tls-events.rules (3.1.x)
Bug #1941: Can't set fast_pattern on tls_sni content (3.1.x)
Bug #1942: dns - back to back requests results in loss of response (3.1.x)
Bug #1943: Check redis reply in non pipeline mode (3.1.x)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{libhtp_0.5.20.bb => libhtp_0.5.23.bb}   | 0
 recipes-security/suricata/suricata.inc                             | 6 +++---
 recipes-security/suricata/{suricata_3.1.2.bb => suricata_3.1.3.bb} | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.20.bb => libhtp_0.5.23.bb} (100%)
 rename recipes-security/suricata/{suricata_3.1.2.bb => suricata_3.1.3.bb} (100%)

diff --git a/recipes-security/suricata/libhtp_0.5.20.bb b/recipes-security/suricata/libhtp_0.5.23.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.20.bb
rename to recipes-security/suricata/libhtp_0.5.23.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 5bd9286..bf3e6ad 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.1.2"
+VER = "3.1.3"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "c58e8ef56918c83ecf292d73f4b0c051"
-SRC_URI[sha256sum] = "f9e7742580849f202254e75d9fc245ba53f4d7490f47a6d30f02a7b10aacc512"
+SRC_URI[md5sum] = "7242f9b2cb96d27d5e9f8ff085c5029e"
+SRC_URI[sha256sum] = "bd89c269e29b03a8898ccabccfb7fcab11c1aa036444772e117705f3b37b4174"
diff --git a/recipes-security/suricata/suricata_3.1.2.bb b/recipes-security/suricata/suricata_3.1.3.bb
similarity index 100%
rename from recipes-security/suricata/suricata_3.1.2.bb
rename to recipes-security/suricata/suricata_3.1.3.bb
-- 
2.7.4


