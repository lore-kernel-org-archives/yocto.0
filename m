Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web12.6060.1602739599421906172
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 22:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gU5O7IdL;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id l4so1839756ota.7
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2020 22:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=SFJiGxe+BdmpKenj+TL/tLKDPsA9X1OIhiut0mlT0jQ=;
        b=gU5O7IdLl13oLFaCyGI2wD1ei5VgrmNTmihR9TrdUooVCBrXlNZc8Nf89IV/phuQ9Q
         y7GoRAMyld13ub9eQ5wHtXZt/b1v+37640Qz4nf0GdjFSz2DiHTRZBOHvH/5frjbWIwn
         XYNd2Q9nbC+rZY+XskIttWdwpQ5jVY7Uj4/qUciAQB7hAdmx8cUBMG/x55/2OyoSSuPu
         725i6YN6G8tmWqnansLrN1K16mMlc83h3qs7B32Ib2ym3tLU1eUGqZ1te6vndWtaLO3r
         AJk3QbflaSr0cpj9Y5bzJMKOntJ6jWBD0jJlR4xlr6jMPnD/6Du1UlGypbqPBHBzMLH3
         ayqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=SFJiGxe+BdmpKenj+TL/tLKDPsA9X1OIhiut0mlT0jQ=;
        b=CPR6rThMj1L+cmodPMLDk8q/RJYFEprm5hqmro3KuHHcPu9PiHg92nN/XZvQpvyHJw
         T1AhBP5HuBy8WaGrMlcTFq0z/8cmV80w4QBF9a3KEXDu+fvjdto7G4bZJt1bCMQwa+yy
         sQ5mWdyV/FKPaZinXr8MISW+juUD+m7ipnyXr9fWWI3o0R0BkY7RcoLOZ8L1Ijyr5H2b
         Gl0FMp4Q7fj2U81BGXoBoHMqpn8pqpQjBgFij99DIYHtMt7u/74k8BQZV5CrjeynBXU0
         XCueeaHOUkhfKuVd4WI/GprXbaVtBmKFu3OURr62jFl3b2NRZ+g/hOjN4fwd0nnbCeWu
         XXDg==
X-Gm-Message-State: AOAM530WiGj7W0dGC2fj8OZr3jyNuWxVDdNS8ZNeCl/4B+nLyT1SWfPE
	pzKWAwqmru0R9H0agNiH99Za6+raL2U=
X-Google-Smtp-Source: ABdhPJzzzPMohG968tpxpPp7WqQvv+4OqkVZnPN3y1+tDZnkEJaQWV14tY7kDaqDqJyoN6dOI8M5Xw==
X-Received: by 2002:a9d:32e:: with SMTP id 43mr1610727otv.144.1602739598547;
        Wed, 14 Oct 2020 22:26:38 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20b4:de17:4e9:6126])
        by smtp.gmail.com with ESMTPSA id l3sm679049oth.36.2020.10.14.22.26.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 22:26:38 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] tpm2-abrmd: update to 2.3.3
Date: Wed, 14 Oct 2020 22:26:32 -0700
Message-Id: <20201015052634.23810-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201015052634.23810-1-akuster808@gmail.com>
References: <20201015052634.23810-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.3.0.bb => tpm2-abrmd_2.3.3.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.3.0.bb => tpm2-abrmd_2.3.3.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb
index 991364a..d2a1c47 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb
@@ -18,7 +18,7 @@ SRC_URI = "\
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "ac82192df1158cb58eac02777cf15c965b02cfbc"
+SRCREV = "4cdda466010a3699ebe967d990ac715ae3de7d35"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

