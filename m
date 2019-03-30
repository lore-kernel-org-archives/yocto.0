Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 059F4E00D24; Fri, 29 Mar 2019 17:14:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 977ACE00D00
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:14:57 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id b3so1790107pfd.1
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 17:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=tbN6CgDoLldCLEWTN0x3/5PckqX5XKSiF8l0lq5HKbk=;
	b=YFp+UQ/XQZH0xy9+2/zJJgYpGy/Ld9M5jHTGAbbocVWaSWELX2do0hhjXjYf66QDz5
	+2RKWVDHS+v43h8lY680uWNBTMM+XLeGhrx4Cjn9lo5X1IeSojAH4HWSaPbhqCjVx+qa
	TdNm410A7WsFhlCsGZe9LmlPZvrISH9xWiDZUOwuLslI0h8TpMHJsKYMzvMHXM+QJjPg
	6iahzdGeZVXDAilK6KkMGaYRmrnhLTxKXZo/rsnDti3zG3QSUdY3IQOzpdaZh4GZyeRG
	G+TywnmWlJZqX9OLyJMYyKDtkKmTV5z6fHuKvT1LgCaqzJi8Puwd3192U1LITnS8GpMT
	NDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=tbN6CgDoLldCLEWTN0x3/5PckqX5XKSiF8l0lq5HKbk=;
	b=gupl0zHTXttAgpvhKsaIQTVYBSuebiEFskphd15Wm/LobZyzbyrjsVHvA0/MnI1ALK
	6Zt66ldRg4YjVFuKQsJAH9STWhrEcUs2drQBjbdpOVqgROOWJESUpK3OA4mmYCJNM7jN
	/bosGvNqcg0ScgMjhCkjvQesCvt0luyxmoTyfazD5FHWU7ZogCwrah/CotjwD9zKFNlZ
	ADZURVpcksNij3watUn95S8db4AwcCr9XwsS9E3ZIEPiN9xLEleNdcVSSAviMtPUdSI9
	5CNoZED4/KSizyM4hN16WYJTqsL3O+4r28Xa8FXjLenaxiS/BFkj9B/qYlTC5Mil1pWU
	HyXg==
X-Gm-Message-State: APjAAAU5frqqgGFl4e4QLEqs3jtvQaUakG/vKgsyd0dpbffyuma/lWsG
	QY8hptPYZEskvLM9TA+2sCXGZnRN
X-Google-Smtp-Source: APXvYqxdqLpcpPVGjTRC4jFBMoPWzEYOCt5wc5DNsL+YiYFPz8LB1aN7l5wpXa7u9PernuELhPpZkg==
X-Received: by 2002:a63:2208:: with SMTP id i8mr32464248pgi.223.1553904897035; 
	Fri, 29 Mar 2019 17:14:57 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c189sm1953909pfg.24.2019.03.29.17.14.56 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 17:14:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 17:14:54 -0700
Message-Id: <20190330001454.9884-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330001454.9884-1-akuster808@gmail.com>
References: <20190330001454.9884-1-akuster808@gmail.com>
Subject: [meta-security][v2][PATCH 2/2] sssd: update to 1.16.4
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
X-List-Received-Date: Sat, 30 Mar 2019 00:14:59 -0000

Add systemd pkgconf via DISTRO_FEATURE

Fix uid/gid of sssd.conf

[v2]
drop non update related changes

also, this includes CVE-2019-3811

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/{sssd_1.16.3.bb => sssd_1.16.4.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/sssd/{sssd_1.16.3.bb => sssd_1.16.4.bb} (95%)

diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.4.bb
similarity index 95%
rename from recipes-security/sssd/sssd_1.16.3.bb
rename to recipes-security/sssd/sssd_1.16.4.bb
index e996a61..34bc8c8 100644
--- a/recipes-security/sssd/sssd_1.16.3.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -11,8 +11,8 @@ DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-SRC_URI[md5sum] = "af4288c9d1f9953e3b3b6e0b165a5ece"
-SRC_URI[sha256sum] = "ee5d17a0c663c09819cbab9364085b9e57faeca02406cc30efe14cc0cfc04ec4"
+SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
+SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
 
 inherit autotools pkgconfig gettext python-dir distro_features_check
 
-- 
2.17.1


