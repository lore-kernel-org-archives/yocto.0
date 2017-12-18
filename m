Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F149E00D03; Mon, 18 Dec 2017 14:08:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721E3E00CE2
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:28 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id l24so10265655pfj.6
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=uPOIFNY2ovHA8yLJDW6D9dCzExVazwmj8v6wVXTjdZA=;
	b=NlolV9psTvkCZum147vdqejYn7PnSANDcIKK0HcjH1PSG8zDnlp7Wiecq03fJxqkVa
	Ha2uZ14S2C87/vNdt+2hMkqoYU+cqF8f2NPizxsfHpi5FKQMBmRrr4hv22A4pZKSAcNA
	S8C2H3z4YLU+GBzKowbJ+mEssqfYC8ImSMW71hVyE3fWg4YzVQ3ULAO2jqujHlOs3ZSo
	VW+a2hlnXM1ViI9jIjYUCqsdMuFPfSFnXB1Nr9Yab2AHxO7gq4dT9vEDmyLbBX/iuXCT
	UANKhE4gLv1QnDEdkawPpO+7/xxk5ZZPjvOKLqSaYskRrKeTW0fRwICaK2r+6vTCdY+i
	sITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uPOIFNY2ovHA8yLJDW6D9dCzExVazwmj8v6wVXTjdZA=;
	b=IB1XFS0JJb9G2UO6LcDV6wst7Yje1ovDSzYas0xlgcZQ8GVBJif8r+ENi7iud7SlpQ
	0BIMKrndIZLfQrCOfN7/r3UJ089RdxerMsb9XNGVvZCrfxYfb+Ok5WznPlWj6BymFMEB
	3+6W5PtKEZpW6QhiKFsL8wUQdA2rLzaS56F9uV2EQwJ9+BwAKM3eelCJegs4XzJQiwOh
	FVrrRmT+hDL4yi69mJ/6JTiJJ8bdbb2U9jBjpWwBOGEcN4JjmBs6c3LB4FyGjpY7ypbU
	qoYQ7we8A1I8e3MFGZesF8o1v0Vq2N1g6O7FdU+0DJDWy0CUIgJ4PoaRDpNEfNCjQjjO
	vVhA==
X-Gm-Message-State: AKGB3mLfIbIBjoDH0LnDXbF6vh84E+pGs7b4jNLQFhuuLe5w45DUfLXv
	naVeB7Jk8Ol4k8YPKpKcPoV0/g==
X-Google-Smtp-Source: ACJfBovuA8AksLcQCPeQEEY4JI1MHlKaMoBEh8fK7e+4k5QiACZE1i1Cbd8/F9FKjz7Pe8q+4OZyDg==
X-Received: by 10.99.113.7 with SMTP id m7mr972793pgc.293.1513634907410;
	Mon, 18 Dec 2017 14:08:27 -0800 (PST)
Received: from e6520.cablelabs.com ([4.16.80.121])
	by smtp.gmail.com with ESMTPSA id
	f7sm25602904pfa.133.2017.12.18.14.08.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Dec 2017 14:08:25 -0800 (PST)
From: Andre McCurdy <armccurdy@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Dec 2017 14:08:05 -0800
Message-Id: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-gplv2][PATCH 0/3] Consolidated re-send of previously submitted patches
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
X-List-Received-Date: Mon, 18 Dec 2017 22:08:29 -0000

Andre McCurdy (2):
  gnutls: update 3.3.27 -> 3.3.28
  elfutils_0.148: musl build fixes

Phong Tran (1):
  gettext: fix compilation with securityflags enabled

 ...grep-fix-compile-error-Werror-format-secu.patch |  88 ++++++++++++++
 recipes-core/gettext/gettext_0.16.1.bb             |   1 +
 .../musl-support-for-elfutils-0.148.patch          | 133 +++++++++++++++++++++
 recipes-devtools/elfutils/elfutils_0.148.bb        |   9 +-
 recipes-support/gnutls/gnutls.inc                  |   9 +-
 recipes-support/gnutls/gnutls_3.3.27.bb            |  17 ---
 recipes-support/gnutls/gnutls_3.3.28.bb            |   8 ++
 7 files changed, 241 insertions(+), 24 deletions(-)
 create mode 100644 recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch
 create mode 100644 recipes-devtools/elfutils/elfutils-0.148/musl-support-for-elfutils-0.148.patch
 delete mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
 create mode 100644 recipes-support/gnutls/gnutls_3.3.28.bb

-- 
1.9.1


