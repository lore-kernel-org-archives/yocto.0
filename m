Return-Path: <tranmanphong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49616E00D74; Thu,  7 Dec 2017 17:18:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tranmanphong[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C99AE00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:18:43 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id o2so5724074pgc.8
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 17:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Dc7wj3vfmQ4A5CNviXK357sf707sYNzcl/OPSW7s09I=;
	b=fL7ndISfTIzL2x+P7uX5lFiEqgUr2UHzE+j7kH1iNoG95sZ/J0xSd79AB0oywuMYzw
	QprP7ZNTPwFSNVDO+hZ35MiRPRMsbgfEwURXa3Ki9JX+iVTDNvOubfqPE22ZIr/yP3Rq
	oDIm4PJ7RbMWHY6WgPvm/9GUitBJBrststS7fSR7qur6WK5qQUcbA9Jniv7/cheHiQqO
	nFAaadRUUS5pRTwXCAlvyRh0B8AEqEEm5t+FrSjdesJduI0GAXKHRRXc7R23PsOk97lG
	T4A53MhsFZN7OUkSOmk61eE7stkAlbSIB7rC+hleOt7ETknWjXYGju3MbdXLUl0ahqVx
	acww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Dc7wj3vfmQ4A5CNviXK357sf707sYNzcl/OPSW7s09I=;
	b=TKayyqsWF4Bah/VIWt/3EBEjZP5HFXec4yJbAzDp44u9iGpV2kq2nlf1ocba3vYgf4
	0S2tD8mE67YZthmyxJu7spEiXSYhrZjRIkxkVM0Zo1QByI6lgiGFTo5ZAwoZOvAcf9f+
	BwNZzF6KqTIqWchQ2g5EF8Bp/IYwOw1UINmCRLCuzKDzLerXAvEPR2PdMYlb8tKrd2D3
	ijApGkHjVaeWv8iNksXy1uFeOOKg4ZUSkCqU8W8FwCl9AjEGIGEtsqZlAXe9PllknMWw
	F957CtEakUqhpahVpwuiBqvYGf3pqyDuqRhamo4zX8XuSFdH2a9S/KPL5LsuAgTr/n0H
	2xGw==
X-Gm-Message-State: AKGB3mL9y5lnR2d038abgC98jvRKkucpYK44TpyMdInHpXpT2GRZe8Ic
	nsCaTrAQXEVrTEkcWr8//RE=
X-Google-Smtp-Source: AGs4zMaXnCk2EfPxHgAyZnvWAPW1gPMnTuIu//sKyw/TLxZGPO+JlShPpLxaUiOHXQB4dr0YLFLrXA==
X-Received: by 10.84.133.103 with SMTP id 94mr17820097plf.167.1512695923244;
	Thu, 07 Dec 2017 17:18:43 -0800 (PST)
Received: from phongtran-ThinkPad-T430s.net.fpt ([1.52.33.90])
	by smtp.gmail.com with ESMTPSA id
	77sm11696782pfh.43.2017.12.07.17.18.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Dec 2017 17:18:41 -0800 (PST)
From: Phong Tran <tranmanphong@gmail.com>
To: ross.burton@intel.com,
	yocto@yoctoproject.org
Date: Fri,  8 Dec 2017 08:18:23 +0700
Message-Id: <1512695904-5238-1-git-send-email-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: Phong Tran <tranmanphong@gmail.com>
Subject: [meta-gplv2][PATCH] gettext with -Werror=format-security -Wall
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
X-List-Received-Date: Fri, 08 Dec 2017 01:18:45 -0000

Hi Ross,

Please apply this for master, pyro, rocko.
Thanks

Phong Tran (1):
  gettext: fix compilation with securityflags enabled

 ...grep-fix-compile-error-Werror-format-secu.patch | 88 ++++++++++++++++++++++
 recipes-core/gettext/gettext_0.16.1.bb             |  1 +
 2 files changed, 89 insertions(+)
 create mode 100644 recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch

-- 
2.7.4


