Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71BB7C43219
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:51:59 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.769.1650575035245801464
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 14:03:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iCZgyP8C;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id c10so8337419wrb.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 14:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DHI2oZSxh59zjnNfCaOQa2KQYkKO0FgHT78QYYpU4Z4=;
        b=iCZgyP8C81G5fpaFH83QgP7kYAwOPdLvGG1IuJqZxAgUW2vqKfs7Q+T6iD9W1i0neD
         bgCA4/xg57eR9XMO7l80PSrE33YmzAwagMQdCC7ZOKAlknoFzUUXe9qF2HW+PzzNbFwv
         OpW1ezT6l4QOcv/wMm4u70TCqxVpesLVZGBRS6sf3nfqlLVWP45Sl6IHmi6AIAH3QVx1
         4hpTIjJWuRsCORfhznSK7o0Bk1okZyEdqOfUoayOrvZncK/U2eEhFLnfTg9fg688nDnZ
         in0xAzR/E7qrgWDHvGzwJmmGkIE70pY+iMbo/sXI0hyvnOwMwANpN7rYRqMGnE/UNP3t
         Yacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DHI2oZSxh59zjnNfCaOQa2KQYkKO0FgHT78QYYpU4Z4=;
        b=fY9aNdCeafJY7LCsW+8bMCHr249kgR1+QfVTK7AiKMB8KLWjn3VbGD0jAhjmyZ7Go6
         Oc5oTIft41fFhmmdkznLqe7wpRiqoeu/Fn7E4SBGtl4CrRe6rMwZvKoov7mxvXL26ZQy
         BFTvCgW8ukjkFlewnQTBXPfRof0FjAjf3oyMgK69k4lRvtui13eq/IQZw6BayPQ9bZ/E
         aMMrJ5iesk/nemTehf2UWLrtQ4rqjT3U3BZQ/K5h3PbJvYHsIC1VJ+NhHB37g71W+RzW
         u4+Uz8voXYDwzrzyHfRdCazOD76gQIhzy1G2Nkn2wpdOkwYn4o40md2ydxnvVCji77PV
         yWpg==
X-Gm-Message-State: AOAM530fEWTy7JxTfdB1ccg00NWAJyqOgDG522BeNma6pNa43haXHY/U
	RtMQ6dA1tR4LVaatg51zY0VVkb3B3iC+Wg==
X-Google-Smtp-Source: 
 ABdhPJzputs39noKYbnNE79h9oVi15chv1oZTkLqVlQneEJ6HvbQ4f5/CJC9pnJyA22SJczJ4pk0wQ==
X-Received: by 2002:a05:6000:1547:b0:20a:79dd:28bf with SMTP id
 7-20020a056000154700b0020a79dd28bfmr1059157wry.505.1650575033288;
        Thu, 21 Apr 2022 14:03:53 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.155])
        by smtp.gmail.com with ESMTPSA id
 x9-20020adfdd89000000b0020a839cdab1sm95938wrl.52.2022.04.21.14.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 14:03:52 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] Sourced warning banner scripts to
 $outputdir
Date: Thu, 21 Apr 2022 22:02:35 +0100
Message-Id: <20220421210234.26707-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:51:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56836

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 run-docs-build | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/run-docs-build b/run-docs-build
index db790dc..b6744ee 100755
--- a/run-docs-build
+++ b/run-docs-build
@@ -37,6 +37,12 @@ cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+cp '/home/abongwa/Documents/auto-builder/stylescript.py' $outputdir
+cp '/home/abongwa/Documents/auto-builder/htmlscript.py' $outputdir
+python3 $outputdir/htmlscript.py
+python3 $outputdir/stylescript.py
+
+
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


