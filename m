Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42339E00D16; Sun,  3 Mar 2019 21:34:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ADA4E00CB9
	for <yocto@yoctoproject.org>; Sun,  3 Mar 2019 21:34:31 -0800 (PST)
Received: by mail-pf1-f177.google.com with SMTP id g6so2135385pfh.13
	for <yocto@yoctoproject.org>; Sun, 03 Mar 2019 21:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=JwYRN1HeldmnM4eis85hJADDHFeMTDx8IuOdkyHQvlQ=;
	b=Pm6SHfRNWicuyOu8ZkypNNN7N3QYHvQ+nvmzI+ko4WD5+NRB9O1zi08D/TKa+fniw7
	iLWKnkVf9VZbEFh1Q9E16fe/DKgP3hfMIxLUhX3CTMARb61MxKnYExFRzE0KX9+OM00d
	21yci7nxEmCCE2iERgn3jtke3ahIZPTBI7eytdGz1jlpbEcrsOo8hLmCb+y9cKMYIqIO
	ZWJWCgVK1Q8dERXxKhSuPzv1tNa/04ZuHarM8xAVLjWjki7z+Nov1fNcaHqx4aURiRRW
	i7l4s2VhWad25OgMzQoER00cE7AdIsy5f/HlSvGFYEd0VI6qn9BaINB39lNu4wSsV//d
	VlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=JwYRN1HeldmnM4eis85hJADDHFeMTDx8IuOdkyHQvlQ=;
	b=BzWXDxsFVI04dRitEXwKQcoOl5hXVdvDp+RFXO8f8BY2ACI4yc2wB9LchXmsrPoyAK
	PwO/uQGOmTn8nKUxWgyer7spXUsFvBAzXJpVKtxwnpFSLea074L+m6UcKqbEhSifSIUY
	RFfUMKqGZEldcYnU6r9SFvSMh4sJ0UxjMCP5HsArPOHsZbpNpvrkiBklPXxxkajG6tZJ
	AoygfKXxjW4hHa9f19ZYxPhsFv/rLMZX97xQHdXH/cLRBhPkzsATPfhsEgSykfX/q5JM
	qThAi4VM+dFffRZ4IZOFGDx5yXe3bO1jPg7OJztsM0X72nX63QVnx+qxHKfbvEsz/MKg
	LTQA==
X-Gm-Message-State: APjAAAXChtLs+5T/O9fe6CWAZyfE9yq6PtXr3zHEuUVgPv+LC9F904Es
	Jp2E2EaRgCFRNG78LTudRQie+S5i
X-Google-Smtp-Source: APXvYqznVLa3v2kum7wGt+4IxYEHsZ6ppHIcol3pTGCZQmHb7p2RrqO52Ge93Si/W3QPcx4gIZ27sQ==
X-Received: by 2002:a63:a510:: with SMTP id n16mr17203481pgf.443.1551677670866;
	Sun, 03 Mar 2019 21:34:30 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j14sm6780474pfn.77.2019.03.03.21.34.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Mar 2019 21:34:30 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  3 Mar 2019 21:34:25 -0800
Message-Id: <20190304053425.13810-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190304053425.13810-1-akuster808@gmail.com>
References: <20190304053425.13810-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/4] python-fail2ban: update 0.10.4.0
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
X-List-Received-Date: Mon, 04 Mar 2019 05:34:33 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python-fail2ban.inc                   | 2 +-
 ...{python-fail2ban_0.10.3.1.bb => python-fail2ban_0.10.4.0.bb} | 0
 ...ython3-fail2ban_0.10.3.1.bb => python3-fail2ban_0.10.4.0.bb} | 0
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/fail2ban/{python-fail2ban_0.10.3.1.bb => python-fail2ban_0.10.4.0.bb} (100%)
 rename recipes-security/fail2ban/{python3-fail2ban_0.10.3.1.bb => python3-fail2ban_0.10.4.0.bb} (100%)

diff --git a/recipes-security/fail2ban/python-fail2ban.inc b/recipes-security/fail2ban/python-fail2ban.inc
index 9245f17..7270ed8 100644
--- a/recipes-security/fail2ban/python-fail2ban.inc
+++ b/recipes-security/fail2ban/python-fail2ban.inc
@@ -9,7 +9,7 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="ac0d441fd68852ffda7b15c71f16b7f4fde1a7ee"
+SRCREV ="aa565eb80ec6043317e8430cabcaf9c3f4e61578"
 SRC_URI = " \
 	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
 	file://initd \
diff --git a/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
similarity index 100%
rename from recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
rename to recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
similarity index 100%
rename from recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
rename to recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
-- 
2.17.1


