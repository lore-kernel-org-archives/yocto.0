Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3970.1584582809853544095
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rodMBO3c;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B31DDE01845; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
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
	*      [209.85.216.49 listed in list.dnswl.org]
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 959A8E01844
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
Received: by mail-pj1-f49.google.com with SMTP id bo3so257174pjb.5
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TvnHyz724iyilgSRhqgqh1hRgOJAYMeaWlKGrUmx8sU=;
        b=rodMBO3c1hKNMKBZk2nmVeYttjjHrlrFbzd0W2bYAJirWxuhuKHvAuBuwiXRXGW9o4
         RRfTx1mbwCbtGteFSTTw+x9tOXzH+8JaUJ8FNvAxtr0FlUaScM0+bIVgSH4Gs+qkqhlP
         vhKR6A5U3qLgwTGDigLf4EY1hCQghfwT7qOJBQcgHi9Tt3NhlYBY/9Qd4E9C/On4z6M1
         htVKiRq35IDC2x5GTTtHQC0MYaKqeFMY+EaO7dZlnyhaPetvxxvuuia6Gvy1ZH9kXTx6
         0NxbrZsPu3GM2sMz6Ms8osKdzqcdrPGXdci6GlmlAksQGPxeDBBWtALE2UHAtkV8Tg4c
         4eaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=TvnHyz724iyilgSRhqgqh1hRgOJAYMeaWlKGrUmx8sU=;
        b=ifcm23wFlRfXnLwsxQQG/EbOBgxCSNAJFMPeVu0gDM0nlNAFji9dLaiSzI35efIKf8
         KA5ft9cUE31wuT0n3QhdO2K0VlaDa6EZQaNyqzXYmx6/5QNbyvn+cFH0pXET2inxsjk0
         iRzpvpMnOg2TByhUuzFwOu/hsyTRp7cBlou5/vBOM0RYNe7sWydku2EZyPtl/SxnDTdF
         zIgcHjmtuW5ypHosYyQKr9etLSGGR0TQLeWONC8cAuwVsun4VvdCLKkJa3aKVgmJZyyF
         V1Bv08r6OnLi606cjNcbCAgn6EdUnoKJnxIvTLq2ZFvcj4RCP8Z/WFu0vqXTCZHuhz/Z
         Bf5Q==
X-Gm-Message-State: ANhLgQ2fVUFEZ6VQdDj+3Qi6geITgs9gKL6CnVvgG2nZrcMxWuosOQX1
	2aeS1NuMv4EBQWHv5VGPOS4=
X-Google-Smtp-Source: ADFU+vvOZGOBoUK5KtMs/itm7HH6TXnjrV/2jJ2QGGwwFXK++HD7jVbFgWohr9SaNkRu/HDEzQi/5w==
X-Received: by 2002:a17:902:9a86:: with SMTP id w6mr969370plp.37.1584582807834;
        Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
Received: from workhorse.localdomain ([2600:1700:4c90:60a0:56be:f7ff:fe12:d0bd])
        by smtp.gmail.com with ESMTPSA id d188sm278234pfa.7.2020.03.18.18.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 06E602A09AF; Wed, 18 Mar 2020 18:53:25 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 03/20] crmsh: fix parse errors due to python2 removal
Date: Wed, 18 Mar 2020 18:53:04 -0700
Message-Id: <20200319015321.15525-3-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
index 040b4d3..6d2902c 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
@@ -20,7 +20,7 @@ SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=crmsh-3.0 \
 
 SRCREV = "41845ca5511b844593cf25ae4eb7f307aa78c5be"
 
-inherit autotools-brokensep distutils-base
+inherit autotools-brokensep distutils3-base
 
 export HOST_SYS
 export BUILD_SYS
-- 
2.13.3

