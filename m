Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web12.6480.1599511846634925824
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gLvVvJDP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id a9so15225994wmm.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9F6HBS6DKUGQyQLH360xftPGw9Kpo2OQP66shO9Om2k=;
        b=gLvVvJDPmM/ZtRL17v9A/DhAnLD1hX1wxMm0dYYdPsh4orfuFki3Sc2AyJGbsZIjWx
         52CzKMscyb2MGee5e2tVeuilKtZQNHJgHzpPv1FrSxHny0HqnGuqGhc+gx9fwcer1HJ6
         8MyTMFZ+Ds7XTxAJJ94uhm1rkEds1bzt7UBUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9F6HBS6DKUGQyQLH360xftPGw9Kpo2OQP66shO9Om2k=;
        b=IHbuRR2v0gn7Jw8YxtAhKcJt8LlvMzVeRAzS4/g9aGB+iF25T2ocWKb4Ii7kfOWaRh
         jjRJmVZVb1vRoVozjNOgi90nokqWtSbBL7EEHV4c0ZTXVvhkLUc9rxuiijqTWFJVYEzK
         yRNSm160LiwXDg1Kd/znJDJ1UZp97nXcSCppDEZga6YrMkBsuoN81LwA/X3RLy13nmkp
         DtgOF7CbbRvLURZaAQRc/4xa6Ovo5Xs3ATkAeVnJdXJUO1u58/XVlcAx0dM7jwaaufre
         rIk2u2VLN3SHcFnFMzMHbqWl9at1K28MTmz8HZaQMcfyHZbwXmIThjVsbJ4DiBQNVpdn
         o3CA==
X-Gm-Message-State: AOAM530ZfcmCAWgoBo/H+/cvirgXdDw0nXLdQH0X9JKbqw8kpX3cy9Gl
	kGZWfhc7TogpTzWt3c8VUPQSyphDh9OAag==
X-Google-Smtp-Source: ABdhPJwl5nu0CbH5SIKGTWt0wjJAW2ZRrcm/EfFBS+qCK1CYC8oq04rkft4Fg5BSNi9AF07/h5S7AA==
X-Received: by 2002:a7b:c2aa:: with SMTP id c10mr1037608wmk.86.1599511844921;
        Mon, 07 Sep 2020 13:50:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:44 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 11/32] run-config: Fix lockfile loop handling
Date: Mon,  7 Sep 2020 21:50:13 +0100
Message-Id: <20200907205034.1941516-12-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index ed13ca0..2ad38e2 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -122,6 +122,7 @@ if bttarball:
                         else:
                             subprocess.check_call(["wget", "-O", btdlpath, bttarball])
                         os.chmod(btdlpath, 0o775)
+                break
             except OSError:
                 # We raced with someone else, try again
                 pass
-- 
2.25.1

