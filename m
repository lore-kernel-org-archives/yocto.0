Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web10.5369.1588676491915971749
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 04:01:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JbxpdXJ/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id u127so1840827wmg.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 04:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jbSeG5lqTOOtdS4oa4QGygV21yobFX/VIl5iyojdqmM=;
        b=JbxpdXJ/IApd/2+IY3Ew4XyyZWVxLdRVBTW65YmDhchTztx7/mJ39Q7s8Fou5MYWQo
         zFlIpCMx/Yt0/xvRxwes4zxboKHhd2+vz47RwAcEAcL2cso5wt6WcyZWo3bX+eApNWjD
         KxsHM5HRuLr2fOIyWMumY93rwCxbyVBkKBsnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jbSeG5lqTOOtdS4oa4QGygV21yobFX/VIl5iyojdqmM=;
        b=fcW0ksOmoPHDTsKmo3rSw1REoyLKNlK3js3H9Bj3sS1TjdLUxRu3dCjh3WRmmrGLDJ
         AWg5JdUaqLD4G/rAPlAZzfDY0mYsKRbOcY1quT0RLYOavoAaOoRWqdgf5lXB9Zaa1Yp4
         /STR5FqhjLqeFIptKbksAgNFIem9hWGeccBXwH6mVCPRKkCTYcL5VWys2HsGJI3lCB4g
         2sqpJoRi0UsbkWZvRfzl7XWGXy7ZwelIMYFiABvPxJbT/g/YpK4gf93fKd+St23vJHfp
         vjdTHZ92mNEHZR2gxielOpWUdvmXCBujccN4cNUlBKE/SgNZocsnwk4bMg0EGKWxB+ls
         SE0A==
X-Gm-Message-State: AGi0PuZ5Bo8umda39++xvxvyZJW3pHfFvMqV0le0XOQyGJ/syUo4KFYc
	zSX0iXEkKntZdsxaoINzoqtb9k8lR7c=
X-Google-Smtp-Source: APiQypIJ6pc0KYHJFFVKDg/T02d4nQryo7FCXsVeQY8z/7VPN9EdT+MQkvBAQuaZksiWJVbqerS4Uw==
X-Received: by 2002:a1c:9ad4:: with SMTP id c203mr2623800wme.126.1588676490279;
        Tue, 05 May 2020 04:01:30 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u127sm3356933wme.8.2020.05.05.04.01.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 04:01:29 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 3/3] README: Document how to configure repo for sending patches
Date: Tue,  5 May 2020 12:01:25 +0100
Message-Id: <20200505110125.3692309-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
References: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README b/README
index 4558a99..6a61331 100644
--- a/README
+++ b/README
@@ -27,3 +27,8 @@ intended target branch of the Git repository.
 
     Git repository: http://git.yoctoproject.org/cgit.cgi/meta-gplv2/
     Mailing list: yocto@yoctoproject.org
+
+This can be confiured within the repository with the commands:
+
+git config sendemail.to yocto@lists.yoctoproject.org
+git config format.subjectprefix "meta-gplv2] [PATCH"
-- 
2.25.1

