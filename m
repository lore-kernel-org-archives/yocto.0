Return-Path: <open.source@oleksandr-kravchuk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98529E00A9B; Wed,  3 Oct 2018 09:17:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D19FE0097D
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 09:16:59 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id h4-v6so5880932edi.6
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2018 09:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oleksandr-kravchuk-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=RpF3RRyudzE9wmN+bh7Cb5spsy+qzRQg5Lx6LFsAs70=;
	b=fmrJfmuOJJKYGrXJAAyr7DroZ09MDVpWsgolSNqYK9SXI44ey1b+jrOPD9uFN7eOJ3
	IoBdWgh0Vn2amvLkd7TfoP00jh/6EV50bPhNv48LcSx8Hv1uYCqjRbm3O5+UvJUWJwi3
	GC/P+D6NETYvo7iCIy+X39wP6C9jKpF0Mw6rDWCiKsy/I3DcYpcrtYQteRqx6lRz1Q6m
	UNy3tiUVJCAm8QZaOLYpv0Ywj20HBAxeOlt3HpEAIPYdtMPWmv7/gIW2bi3eGENzCBon
	tAOEeBryiL/aDMFGJ8nriWx5yK/kAWTXDE7O4blG4wfCiIlS+4F4lk0VFyLhY+BnXTc2
	grHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RpF3RRyudzE9wmN+bh7Cb5spsy+qzRQg5Lx6LFsAs70=;
	b=VZ7j1FS7Wtu0tY1nKoIj85cl+0K0raAjC+HSN6k/06WTrqlvFZ9jV5zHDBdTgKtxtG
	eyrIQZzA1gGqkPo40A6fWjd/iYkCrvcIV4b6f9Stp5NrOfkzp1/uXj/vjXxEODitmZNp
	hsqEewl2rFIocYAIJLed6BVaJUxDT6Ksz7MNSsuRfUYsRySeTX5Z+rbesZbvoepqs7Wd
	tie6dPFDM5NjwngnHJafsFe4Kn8ytUnD9CFrXjkE5qWpOBpqXI85g5PFHR9XBBHucy7E
	oEQAb+C4L64M9a711X60mLwYbOsh1QJ8dRec9U1FBPpFHDn06/kP3amY7Y1hEW6VytEz
	IHjw==
X-Gm-Message-State: ABuFfohXgKf/tgntSnLhNrwTokOO2sAH6X/pNIxMx+UbigBV6sEqP5fI
	lLwRNijPVJmvyB2IGhDEMfO33HICWTc=
X-Google-Smtp-Source: ACcGV6078EOTSco+2Fjn8CMIBm/NjDRYhluGKXB6Z7zVvhxAeS45hKqVudCUbr3iGo1mWnKcHX53CA==
X-Received: by 2002:a50:b2a6:: with SMTP id
	p35-v6mr3230557edd.215.1538583418249; 
	Wed, 03 Oct 2018 09:16:58 -0700 (PDT)
Received: from lund.luxoft.com ([2a04:ae08:1403:ff00:b997:d885:94d1:d275])
	by smtp.gmail.com with ESMTPSA id
	j23-v6sm646295edh.29.2018.10.03.09.16.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Oct 2018 09:16:57 -0700 (PDT)
From: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
X-Google-Original-From: Oleksandr Kravchuk <dev@sashko.rv.ua>
To: yocto@yoctoproject.org
Date: Wed,  3 Oct 2018 18:16:16 +0200
Message-Id: <20181003161616.25047-1-dev@sashko.rv.ua>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 04 Oct 2018 10:10:35 -0700
Cc: Oleksandr Kravchuk <dev@sashko.rv.ua>
Subject: [meta-gplv2] gnutls: use https mirror for SRC_URI instead of ftp
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
X-List-Received-Date: Wed, 03 Oct 2018 16:17:00 -0000

Signed-off-by: Oleksandr Kravchuk <dev@sashko.rv.ua>
---
 recipes-support/gnutls/gnutls.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 4cf375f..0e2c0b7 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -16,7 +16,7 @@ DEPENDS_append_libc-musl = " argp-standalone"
 
 SHRT_VER = "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').split('.')[1]}"
 
-SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
+SRC_URI = "https://www.gnupg.org/ftp/gcrypt/gnutls/vv${SHRT_VER}/gnutls-${PV}.tar.xz"
 
 inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
 
-- 
2.17.1


