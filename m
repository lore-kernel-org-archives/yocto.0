Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21369C6379F
	for <webhook@archiver.kernel.org>; Tue, 14 Feb 2023 08:09:03 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.1890.1676362135617233161
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 00:08:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=r7qxyGG8;
 spf=pass (domain: thing.com, ip: 209.85.128.52, mailfrom: maciek@thing.com)
Received: by mail-wm1-f52.google.com with SMTP id z13so10381138wmp.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 00:08:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9f+z3DkOHUeSEOSul06p9NBzNyXIaYrxgcmm/YuNr80=;
        b=r7qxyGG86qmfFPyCjw0UwnCQUId/RK/UW1QQEn0IfEJt2nN+GvrOsNTbyrSIX0+QWq
         +lnHBhYQreucOF1PpanaqxgPaq6Uoy5FZv5frbleCYN/NAHFi15qxatrRXp7+68UJgPe
         HN7Hd6HJxtTJ7ezi063efdnHjru/aMxs01JsXQXeDbuO4SrLjcgwPTr7rkQIy1SnaOpQ
         e27lr6ODBnAwSUd04FJEkuXnGNWGUyA8zOfXfvs8uVq6I42NJlfhwIK5NhWNvAo6V0Sw
         +bsqg4FiwL70OgL9DCRPG195tong0bDeZYJwcEAezzRzt/xPS1hJ7IAEb1wCRYNG70Dg
         Tang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9f+z3DkOHUeSEOSul06p9NBzNyXIaYrxgcmm/YuNr80=;
        b=q0ARNRsO+4bSurPNJZqo/KCPvoLoCnrdupl7AtDpw6qgtQDAjEO3hHSspNdp4dROzS
         txLw7aNWDqsCrd2Vxz7Twlkf3L3YzsVSFCFTqJnjXN5I1aSs73E9VXQhwTH1RZ4McVDA
         GM7f0SLDiqDHgQsNFIEscX1BT5TpO76/A2vH6TyfkcC2Uan+oWxN89+q0SREef0NYWH0
         oKXD2JfGLIPi71cyL7DmEidiLIHY0keAuRxRMzIVFDFFEg2PWIylZW6WyRdPHGYrJCiL
         4X7AnoKJxaF7yJI6OVkDgPA97RLtvcz4gU/1HsBwNal7tYRnz1EUZsb8VD36R3of4spz
         JfSQ==
X-Gm-Message-State: AO0yUKUld2Ullr/ARJiT31tP4GmhXZlWweoLl6MSKHEbswRVRcHbQHnP
	0YB7whacC00Iq9fjbG7AYOH0gvrBWfvrRQ0Z
X-Google-Smtp-Source: AK7set9oaUkKAf40lnAfjIsHKIJg9sw3HIw7cPkj1xvUUVnFnCk0qZ9TYMwCAlNffsXaMikP/nQVhQ==
X-Received: by 2002:a05:600c:3ca5:b0:3da:f5d1:c677 with SMTP id bg37-20020a05600c3ca500b003daf5d1c677mr1226448wmb.35.1676362133788;
        Tue, 14 Feb 2023 00:08:53 -0800 (PST)
Received: from localhost.localdomain (178-36-27-238.adsl.inetia.pl. [178.36.27.238])
        by smtp.gmail.com with ESMTPSA id m24-20020a05600c3b1800b003dc41a9836esm18089488wms.43.2023.02.14.00.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 00:08:53 -0800 (PST)
From: Maciek Borzecki <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: Maciek Borzecki <maciek@thing.com>
Subject: [kirkstone][meta-security][PATCH 0/2] dm-verity-img support for squashfs and erofs
Date: Tue, 14 Feb 2023 09:08:29 +0100
Message-Id: <cover.1676361829.git.maciek@thing.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Feb 2023 08:09:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59224

A cherry pick of patches adding support for EROFS and squashfs in dm-verity-img.

Josh Harley (1):
  Add EROFS support to dm-verity-img class

Maciej Borzęcki (1):
  dm-verity-img.bbclass: add squashfs images

 classes/dm-verity-img.bbclass | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
2.39.1


