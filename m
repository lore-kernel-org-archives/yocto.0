Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6326BE00CCD; Wed, 25 May 2016 00:11:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D261E00C8F
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 00:11:47 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id yl2so4305204pac.1
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 00:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=XliJqHu3dzywOEpR7daJg5Ev4uCommb0yf5CWA4kTJw=;
	b=Db3rQol3CQh/D4jlcA6oPDNCKCDbw9k7TczW9mA8V8zjkL1kX0QwAtVd479EgWdchh
	qqzusvotkkrDeT1FpV1eIAQNRDr8s6SfFF0BdR8n8mWxduOhpSsMpcFraqm4V5Hytwj+
	SZ3KSXP67Up+2NlNU1fSwm5j1HZ5CgljocvkjpPZ6PC9aJLBDadaMXyFez4VV5V5QnyY
	waZPNhi4jpMdpvaLlMvW4hLUnu4rxlyStyLtZGWO6MGlvN1UQsec1a1/EcmS8c9snbD4
	paNuS2c1ZJLSepZE0U6sIlF/mm616Rpy5I+NyuDoDIw7Q23R1fMSGyLzLGWe5s24X2dI
	pBNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=XliJqHu3dzywOEpR7daJg5Ev4uCommb0yf5CWA4kTJw=;
	b=YTWGRWPW476KOgrKryGAPCzRhDSyjhvYN07T4QQ11Egm2Uk9g3eNRtfVUUmNafVS0/
	DRnf+gHSfRRaT40WXj8aSCW2ZUlUuLI/aggfw/HxbYoIoxYllU2aGu2XZD/jISR0Nplv
	k1RVPjC1uRjfIf4WBQP/yexOrhHS+WkJW+5F8Ca2BCyIKboPnwZUh4VOBwtKLfAdGuKn
	+HxYpg18fcoB6JKzHK3AyhrSobFlpYBxg5M67kWxkfpY3AH4zVnVZ+s68vfctrZMwIlp
	3cdkqqZCu7ulZLokLzkyb31LPni6t/Kyit9/bvM3oST4oj3sWXIQvkEpiY6iPK8X6BX8
	gf7A==
X-Gm-Message-State: ALyK8tLtiYhYN58IXuUP0/7+Bmp7up6bZqAOb2dzZh7zHEYza3Jf5y6Vq0CQ7/FNUZrQNQ==
X-Received: by 10.66.159.102 with SMTP id xb6mr3390120pab.73.1464160306856;
	Wed, 25 May 2016 00:11:46 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	i29sm8194891pfi.18.2016.05.25.00.11.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 May 2016 00:11:46 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 12:41:36 +0530
Message-Id: <1464160296-28577-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/2] refpolicy_common.inc: enable conditional systemd support
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
X-List-Received-Date: Wed, 25 May 2016 07:11:48 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

refpolicy now introduced systemd support using POLICY_SYSTEMD variable,
with systemd enabled setup we need the refpolicy with systemd support, so
enable systemd support based on DISTRO_FEATURES.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 6112c28..1d3b93f 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -40,7 +40,7 @@ POLICY_DISTRO ?= "redhat"
 POLICY_UBAC ?= "n"
 POLICY_UNK_PERMS ?= "allow"
 POLICY_DIRECT_INITRC ?= "n"
-POLICY_SYSTEMD ?= "n"
+POLICY_SYSTEMD ?= "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'y', 'n', d)}"
 POLICY_MONOLITHIC ?= "n"
 POLICY_CUSTOM_BUILDOPT ?= ""
 POLICY_QUIET ?= "y"
-- 
1.9.1


