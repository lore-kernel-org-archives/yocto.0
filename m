Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58525E009C2; Mon, 30 Jan 2017 23:48:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0241EE0082A
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:35 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id j18so125760013ioe.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0uhuJR6W3XeJrt3Le6bfNQfZzBUXICf18cjF98jeANY=;
	b=NsKbblasMz54R1+1X03YpWTKsikpIlW55A0jzuibwYDgv/Lkp1dPYRBLVXo0GWUDhQ
	yoUkC51j7WtIxxanpYJuhySfOYqvJoHKQl5Y9aRiwiwrTNMzHcpxWz7JGHARMFFNsZZ7
	7lIHXd0CrTuzGveKmQnUfCGizlYsGbdSw5ir1igE+/VbWNB5RQV4WXvWp+IMA/HlUTkD
	fweaFHy6B2SM69ktg4UOJZz97t3cQ7NluK5Zq8rEzQb9d5cQ3dJAzUaxdBXN2u+WB35S
	koFfSx29LvheoMCIPH8wKy28BfwlEnioByUhre5mXL3yg/nJmYi/xw2t3Pi9KDcfDf4T
	enEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0uhuJR6W3XeJrt3Le6bfNQfZzBUXICf18cjF98jeANY=;
	b=n8w3xqe0wT8FFtTBinkOrAT99EWt/0wgmUBG3DMp3WrbOBTatKgKfWH6LPVqeB37Tp
	vStndUYOdLayx1O9VxL09ICyHAjxdTpD9S1DpKEwiPKiXs9kFLxnfwtxiq2xiBhjTUl+
	FCAF+VN8d+GaTisfl3o15zC1KtDDMswvp69tQNskhg1HUKssXLYA9/NgkBKj6YvAJWMB
	8iyi3lS+pO0AK3H+4zne+knqDoU0gIJqPHUf5CbTvAZ3Klbi4czC4p/7MEyVohMyPqs9
	ioOFxFI5kZeNiar+74tIL4K9qwGQWLeN8TJDGCaSOqyD9ZgU56nELuI0owk4iSKdS4t5
	8Eyw==
X-Gm-Message-State: AIkVDXLn0vXozdNo9hEnLVHomr9NwFXon4E0wBrttm8dSi5L64SYRcJ7qzgfjk5V0vT0sTT5
X-Received: by 10.107.3.18 with SMTP id 18mr21276628iod.234.1485848915223;
	Mon, 30 Jan 2017 23:48:35 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:34 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:06 +0100
Message-Id: <bc68d94f51b6c9e75ebf29e0b23af57763e88d8a.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 7/8] swtpm: cuse packageconfig
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:36 -0000

The CUSE support in swtpm does not depend on selinux. It is needed
for simulating a virtual TPM, one of the use cases for swtpm-native, so
enable it by default.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 5283f5d..0733adc 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -25,12 +25,12 @@ PARALLEL_MAKE = ""
 TSS_USER="tss"
 TSS_GROUP="tss"
 
-PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG ?= "openssl cuse"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
-PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, libselinux"
+PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
-- 
git-series 0.9.1

