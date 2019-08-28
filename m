Return-Path: <mcfrisk@kapsi.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35D85E00DE2; Wed, 28 Aug 2019 09:10:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FCDCE00D11
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 09:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CYSSC3jp84v8pYagiA75vYXjWuzx69QOXNexq+D/vr4=;
	b=v+p4EA0sV7Ba0DHh3q3EFJvYPf
	DqxAefYFjOckF+cUIT2z5cD/sjqYYageCZR7toaBIQOm07aRe6AI4RJBtYgb7EM2p0Gc6VQrfuPN8
	wPXfA13N6A7Uat1/E0au7k4d4l9n+myM+26OQ1Izfs/547M6YPXMicKXFcTDtUAA2QaoWeQ4zTYHl
	F9AeJLCqpcaHtxvQO+M2+0IiTh1D9pTV7XVhaAUWPI2vsjTCyxeBHTeleK87obD2LNXZDIB250QSq
	ftrum/g6kNhl6w9oh8Rt1BoO8pcW8T5Tgkua+m0qHL8L2ef9CPY1vIXKOjth3GcKXf86jsF/Dr8vJ
	jVIqYPQw==;
Received: from kapsi.fi ([91.232.154.11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89) (envelope-from <mcfrisk@kapsi.fi>)
	id 1i2zuE-0003wG-IE; Wed, 28 Aug 2019 18:30:42 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.84_2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1i2zu4-0007wf-Dq; Wed, 28 Aug 2019 18:30:32 +0300
From: Mikko Rapeli <mikko.rapeli@bmw.de>
To: yocto@yoctoproject.org
Date: Wed, 28 Aug 2019 18:30:21 +0300
Message-Id: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
X-Mailer: git-send-email 2.1.4
X-Rspam-Score: 1.2 (+)
X-Rspam-Report: Action: no action Symbol: ARC_NA(0.00)
	Symbol: DMARC_POLICY_SOFTFAIL(0.10) Symbol: R_SPF_NEUTRAL(0.00)
	Symbol: FROM_HAS_DN(0.00) Symbol: TO_DN_SOME(0.00)
	Symbol: TO_MATCH_ENVRCPT_ALL(0.00) Symbol: MIME_GOOD(-0.10)
	Symbol: RCVD_TLS_LAST(0.00) Symbol: NEURAL_SPAM(0.00)
	Symbol: IP_SCORE(-0.10) Symbol: RCPT_COUNT_TWO(0.00)
	Symbol: MID_CONTAINS_FROM(1.00) Symbol: FORGED_SENDER(0.30)
	Symbol: R_DKIM_NA(0.00) Symbol: MIME_TRACE(0.00)
	Symbol: ASN(0.00) Symbol: FROM_NEQ_ENVFROM(0.00)
	Symbol: RCVD_COUNT_TWO(0.00) Message: (SPF): spf neutral
	Message-ID: 1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de
X-Rspam-Bar: +
X-SA-Exim-Connect-IP: 91.232.154.11
X-SA-Exim-Mail-From: mcfrisk@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix meson flags for glib-2.0-native
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
X-List-Received-Date: Wed, 28 Aug 2019 16:10:27 -0000

With latest poky master, glib-2.0-native fails to compile:

| meson.build:1:0: ERROR: Value "false" for combo option is not one of the choices. Possible choices are: "enabled",
 "disabled", "auto".

Thus use enabled and disabled when enabling and disabling flags
with meson. Now glib-2.0-native compiles again.

Signed-off-by: Mikko Rapeli <mikko.rapeli@bmw.de>
---
 classes/meson-selinux.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbclass
index 77a763a..91c2a2b 100644
--- a/classes/meson-selinux.bbclass
+++ b/classes/meson-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
 PACKAGECONFIG_append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux,"
+PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
-- 
1.9.1


