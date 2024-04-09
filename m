Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B204FC67861
	for <webhook@archiver.kernel.org>; Tue,  9 Apr 2024 23:56:34 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
 by mx.groups.io with SMTP id smtpd.web11.154118.1712706989685618629
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Apr 2024 16:56:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=PN4yTqjN;
 spf=pass (domain: konsulko.com, ip: 209.85.210.66, mailfrom: tim.orling@konsulko.com)
Received: by mail-ot1-f66.google.com with SMTP id 46e09a7af769-6ea1a55b0c0so1367819a34.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 16:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712706988; x=1713311788; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWHi+mN+MBl34g8OpGXm6sjOyFzPl07C17fnKXIe/oI=;
        b=PN4yTqjNzr46AZcwxEOqER+GR3ERvWjaGOv/qWXayz7nlPiO/WkPmmymrncLYr7Q46
         pEE5NeMdFkEdaeRISGZ0JxvUXDpHq+tCPT26DM3DcqGhu/qybrkX5qnw2ZMFb+G13d+G
         HjhRSaAFWPL26eQxPwP2l1KR7ZbYk6RfNFJas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712706988; x=1713311788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWHi+mN+MBl34g8OpGXm6sjOyFzPl07C17fnKXIe/oI=;
        b=LVCWqocyJuNstwqa+gWncsYocG9S3UH2p4yyTQ+8Ilt/8tKYNVkrboJStZGqMlnqeZ
         o12GEsCfI7S3b3359nqHa9E79sOyi/xlc6AYDQwfYpOTD+9UGUZZlnabDHih04LAg/yu
         TWczmVlwneAodnEJ1zI+Xv2ZtThS4Byo2ov3JpE1NVHjWq1LqPTXVuy22HZnJO6T23X5
         vxpZCc8pAs5Kbcce389Ty2NWvFBiN/FSR8ZSuUiDo5q3CthCGpaBHG5AjxU+sIoZwvn1
         +ke4si47ZjYr4C0LHoRgsn6TejlANTUnDQJ814XzpqkCtMwMkkEUOBm9ku/Hb0pCGhSz
         asDQ==
X-Gm-Message-State: AOJu0Yzppr1IBXfU3AYgMIcVW7mlYsQlhtZyn1oMkNPdk51U/iZEKZQv
	VsBx3Q0a729mr1pCEzXpM6OnjaU1qGx3eSCtj84S+/WNPb9R9b+E0seTAOhMgDedJjcq8IDhPx4
	EFJoXnjuu
X-Google-Smtp-Source: AGHT+IFVeLNPFyU0wTud7rWYW/0VoLwOF56NbskCB5w/3CA3MMuCOtoBizvm/nNHjVj1D9tAMMKypQ==
X-Received: by 2002:a05:6870:d6a9:b0:22e:92b1:5697 with SMTP id z41-20020a056870d6a900b0022e92b15697mr1258657oap.6.1712706988634;
        Tue, 09 Apr 2024 16:56:28 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:e542:5f69:39ab:4604])
        by smtp.gmail.com with ESMTPSA id z18-20020aa79912000000b006eaa21301a7sm8924930pff.162.2024.04.09.16.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 16:56:28 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 3/3] README: update to new yocto-patches mailing list
Date: Tue,  9 Apr 2024 16:55:45 -0700
Message-ID: <20240409235602.3362257-3-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409235602.3362257-1-tim.orling@konsulko.com>
References: <20240409235602.3362257-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 23:56:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62909

Change the canonical, definitive place to send patches to
the new yocto-patches@lists.yoctoproject.org list.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 README | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 6fc4591..89dbd5b 100644
--- a/README
+++ b/README
@@ -431,7 +431,8 @@ The latest version of the code can always be found here:
   http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/
 
 Contributions are welcome. Please send patches / pull requests to
-yocto@lists.yoctoproject.org with '[layerindex-web]' in the subject.
+yocto-patches@lists.yoctoproject.org with '[layerindex-web]' in the
+subject.
 
 
 
-- 
2.43.2


