Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5890.1613823526126203399
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 04:18:46 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=BXXUgO9w;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0D70A38C08A4
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:18:46 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id g1so34242363ljj.13
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 04:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3DnzxjEq/vjEo+GhztveKSGlp/oOS/N+MNtAPvGTGHs=;
        b=BXXUgO9wyE7U+LoZGN4EXRwlBW/d1hcPTfM9gR/XOM1pP7e4rmLsYt4PfWdGvePhr5
         94OjMIe1CPSgahaLU4OIfO/l8RN1I/9kBebMEFXO1uqFnH311KA7P2eXTFelijewxvKc
         f+f5V2S9F7h+5LgvuI+XhhKmUTkYrEPaqdu8fv6qATRHcu153DzPSKNaXp8ZvCZ90u/A
         tQdpxvKreQoLZHC40yNCSgPHYfYJ4Gu7vzxxrwH7s0k+XVpVjHkuPOZIvHvRK3iL+dX3
         uz1M9d1nlXSSQfhbVzqxc7nt99NiSu7HXWCAktULtkBAgklUfNTV7mEcBMjYc6RbZiqb
         3u/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3DnzxjEq/vjEo+GhztveKSGlp/oOS/N+MNtAPvGTGHs=;
        b=tTn9MSMFIHOT2MtaBXyr31l8jJjIbnXI7NNOtLFv0LcB+u/Hny/Nbr9gcrGNp+mDwo
         ABw5Z+cJ2zkNzNpRmvvcwrAH1JniEM7FveCs14FjCDyFnmGyTBLjWf6uOaHr43DgcGSg
         JnL8gQA250bnZe7cQfewFGLZ1Jd6yUz+6C2zKfiNer4iIt+wPnmgTEKEdy9OLRSZm/Su
         CAdbHb8lXl9q/X7tMKFUb+/kKPlOSK4UwEOLPPeYBa8FvtCmJfDZCU3mpfDFTQfFxfYb
         Yy63L1iJC5EgiW32HqAAC8EzIBfQ9e0ZMMOqnTBTppNSJxAfDW7NZlTmtQN0vwzR1rXx
         ORDw==
X-Gm-Message-State: AOAM530UuXFdu70tIhEuwQQb1Lei+mm31VCBkTAleIX0/ymZ5rPghdNr
	CIAYmS8QJcTXyUP+Iiggq23sKLIPj7xCew==
X-Google-Smtp-Source: ABdhPJwR8VD58+a4pmSS4tATpH+6IKnnnEwr0go0wg/SVFeb29wSXdTB3mj1u87fAveYCshEgkKCNg==
X-Received: by 2002:a2e:9992:: with SMTP id w18mr8916298lji.301.1613823524397;
        Sat, 20 Feb 2021 04:18:44 -0800 (PST)
Received: from peterliu-Precision-7530.lan (c-3ffb72d5.022-417-73746f13.bbcust.telenor.se. [213.114.251.63])
        by smtp.gmail.com with ESMTPSA id b1sm1234163lfq.187.2021.02.20.04.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 04:18:44 -0800 (PST)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: sergio.prado@toradex.com,
	akuster808@gmail.com,
	dbaryshkov@gmail.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [PATCH V2 1/8] ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
Date: Sat, 20 Feb 2021 13:18:15 +0100
Message-Id: <20210220121822.1873572-2-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

'ima' does not have to be in native DISTRO_FEATURES, unset it to avoid
sanity check for ima-evm-utils-native.

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_=
git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.=
bb
index 7f649c2..bd85583 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -26,6 +26,7 @@ S =3D "${WORKDIR}/git"
 inherit pkgconfig autotools features_check
=20
 REQUIRED_DISTRO_FEATURES =3D "ima"
+REQUIRED_DISTRO_FEATURES_class-native =3D ""
=20
 EXTRA_OECONF_append_class-target =3D " --with-kernel-headers=3D${STAGING=
_KERNEL_BUILDDIR}"
=20
--=20
2.29.0

