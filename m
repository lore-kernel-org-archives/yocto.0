Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9928.1576518121684375946
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 09:42:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=PwfnS3W5;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D32E01255; Mon, 16 Dec 2019 09:42:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1E31E01250
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:41:59 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id y11so8354125wrt.6
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=FqgZdTs0GVwJKIUjwdwOc10LzAPlU+3QYx4MY62lWVE=;
        b=PwfnS3W5e9X/IAI4I0+v0t7tUKw5EMgvz6SjUrWxCXJ9oWsodHusERKhv5SBUZ7B4/
         gene40GakkndF0HGEYGDEIEdI5aeVKa54XbOVdzIoNJIQDBqJgKyjY6RTkEc5DChaL6Q
         w0N1B+FzQ4f+NwFGdp4arR+MsuOO9bqbTarJJ9/CKzo4KE+EzpXhCc3jA6xIPPt8mxBq
         pCdBCF+X7nnHXZpS7FuDq3PgBC3SHTJ7DWI4vPBCp5VJPMd+5v61wGdGM8+JgcHO+inp
         atfM4vIYjT0gqj0v53Hhf60Ldo++c0ZHkiZ6vFoJyK97BBgvAvb4v8OWNKG1jitpmFo4
         /15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FqgZdTs0GVwJKIUjwdwOc10LzAPlU+3QYx4MY62lWVE=;
        b=KbgsRf5bgMFsBcuPVEv7V/FpsIwU7r2aF1kLgekaVYkmJTY0XuslN7hNMBadM2rLVy
         QASOlCN599qfLbXoTWhr/MC2vcOgHmGy2+Cs/WBtSSY08aUtxLDTl3z90UeTxEZvoGCH
         3nStz9OhkL34LwsU6S/26FN+uCM2aakFk95J2MbhWxscfDZFq3TteVw4Ki9orZN0SyAY
         jTfwOOHVlZcJlWZcTYwBPi/yh7AbX41RkH0OHIC0IFiEGufuTj3mUSi9ubtzDrp4++9i
         sURkYJowZUOMPYtgDrShsAHmkgLXAym7lD5GLw6sbbPcHG7LaghaRBA7Xk9YjGkHbZjS
         jLwg==
X-Gm-Message-State: APjAAAViq6swNMqPdtZFQQkKN3vvaUQZjXzEpJn3sHbP5tGKrFIcgihf
	4oWyrjL/Bv2ycJs1iAoR49SCftfTGzU=
X-Google-Smtp-Source: APXvYqzlcZ06OlhIFOsNr7DmBusjH4UnLHyYTWUWp/mN43v5q98bpn+hCX5Fj98lC6aa/EAOdDGr3Q==
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr30828793wro.375.1576518118825;
        Mon, 16 Dec 2019 09:41:58 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id t81sm142497wmg.6.2019.12.16.09.41.57
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:41:58 -0800 (PST)
From: "Ross Burton" <ross.burton@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper v2 2/3] README: fix list address
Date: Mon, 16 Dec 2019 17:41:53 +0000
Message-Id: <20191216174154.13996-2-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216174154.13996-1-ross.burton@intel.com>
References: <20191216174154.13996-1-ross.burton@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 2747510..4f2a7f1 100644
--- a/README
+++ b/README
@@ -28,5 +28,5 @@ Authors:
=20
 Contributions:
=20
-Patches for this code should be sent to the yocto@yoctoproject.org maili=
ng list
+Patches for this code should be sent to the yocto@lists.yoctoproject.org=
 mailing list
 with [yocto-autobuilder-helper] in the subject.
--=20
2.20.1

