Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.592.1580661636838174102
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 08:40:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OWbRR313;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id p14so6237335pfn.4
        for <yocto@lists.yoctoproject.org>; Sun, 02 Feb 2020 08:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=NZulmRvFueyrJATkOqCkCYdL/2DmmKtgwwEKyqeMSkw=;
        b=OWbRR3130BM1TTXUs8AEWZ1PosBd/uAt7APViU66y4DKzOcROWqIFWedW1kpcM3zy5
         RTzLdrxBmdZX7zpKIrM41f+5ctnbk1lC7Oky/p3td0bwn7B+AYQfPfk4DvcbYHL+NUOg
         saWa9z7KvXlxaJ15vZ+LHxcO3w1zzliSpVc3UhpIxj7sg1koi3yZORCTSpMDb4vU5gw+
         2hBwBmCMcYbwwbXc9jmjk3jx4SXgpiAjMcsYNKv7SzWMghY/WJb2P8/u+BLfSp8kJm4H
         /1lNwbsaYZaRDcmCgnT/Y0mTx8OkfAcaLCSC3ig18eUBKLx1n98OwKoEi1YXRfHgN6ij
         lqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=NZulmRvFueyrJATkOqCkCYdL/2DmmKtgwwEKyqeMSkw=;
        b=UgQBWdTM8yBqA/CTTnATwBmZvbV9camwpDssp6y/Pwo2PK5I2tTTzwP6hJYRyHim4K
         KaoNftE2Kl4c0tewp3TSwz24o8auEGwiddGnLy0cUD/QAuhiNRQsMx46dF65hGV8SSWV
         LN68HL+dBqFOaVaXoI8hJWeGJXEoYZc8jHWrvh9joRiBCe2FUCd4bwkP7m+23mCIgYR6
         wj3drIJuEllw4V4zfjaFyxMVyRNtQUsShY7oAuBtKHlAZt2vNlBXT3QbKznca5ZpVuS8
         nUW/e6782y9s0Hb5DpObpnILPODpdOwXcZ1M1YnYhfDC7mC6drjPzCwjcFderyuED4tA
         KDVA==
X-Gm-Message-State: APjAAAURXiv/D0BSWemjzfQVn1geY6/FQlQa4uY7C2vIWkennJ3hoe0K
	XzlaGcnoLNHmQyVXAWR4DxZHNJQa
X-Google-Smtp-Source: APXvYqw1Z0jL4KldLHRhU6kqzLBd+yuCioDGscHWrJbMOu/4P/j+l6rV67Hmb3leiwR4dfvhEufLLA==
X-Received: by 2002:a62:ac03:: with SMTP id v3mr20427977pfe.17.1580661635966;
        Sun, 02 Feb 2020 08:40:35 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id v4sm18174562pgo.63.2020.02.02.08.40.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2020 08:40:35 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] swtpm: fix configure error
Date: Sun,  2 Feb 2020 08:40:32 -0800
Message-Id: <20200202164033.14722-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

checking for whether to build with seccomp profile... configure: error: "Is libseccomp-devel installed? -- could not get cflags for libseccomp"

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
index f3a53dd..35c77c8 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.2.0.bb
@@ -31,6 +31,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
 PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
+PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
-- 
2.17.1

