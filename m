Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72886E94113
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:48 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.3931.1696622379507200557
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Beo3VuNF;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-277550774e5so1898526a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622379; x=1697227179; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+fDKbVD4e/P7S6WrtM+OGomVBbJv4wZKE7Vrv5ikP2A=;
        b=Beo3VuNFHH98RdPCQzbMpalo5FNvX87bMl/GxC9Q4Zvo3hd/QaccfAEk+0LyT0mqVZ
         8nJif0VW+6U+4WG14oamELLaybuocFWt3kul3+khX++AgzmxZ4L4m4ljBLkqOwdifbpt
         ZtvITEmeHqZBD9INbJ+04/ocucI+kWRvSF1ndFNnl8BNMDVaCjJe32JBGWce1JX6/5SK
         Kr+cA/lXPTxViaG6KbpkzYFDYpESiVdKFoP1tV/JjzJfugTzJIJOikygXfHDVuPzjMW+
         +r/uyDaRKC54mqjrrjDLnxhYSMqGlWKtHxbQMiXxCqRAfVLdIWM7oC7X3DPSmhSL+KFp
         8uFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622379; x=1697227179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+fDKbVD4e/P7S6WrtM+OGomVBbJv4wZKE7Vrv5ikP2A=;
        b=IAQBUgYLa3LbMogLrbkX0B7elIm3/5bP5tt1OBz5iXcu0GdJRQ+ncQApC90PRm0XP8
         EWtrqQeqPmnPN5t+WisbeR0vFpIvvhBdWpS2WlLd9Ro0+2r6ROEuGbqFYo6jIJhB1GA6
         5/Eam60ziyqdvClDmAK6nwCpexZbM3SqkQt53+gOJTVi1JgKkqd2ijxt3l7Hhcz0alGa
         GaMiB72HiQrla0W2uNSRL+CRW+DVzBG5BK3p2Pom2gk9LL474cam9xPnrkTYUKtDVLGe
         cMl6fH3dY6tKmiAwIrTNSNMzRAo/bfPJQn877wLIiJrZl8cK1DiSh2JvTXqMFIKma7kR
         eTMA==
X-Gm-Message-State: AOJu0YwRLcdWQALQz9xChEhNapb+Qs0185hShE01aqJgYO3EGO5/TyWP
	Ae3qfZDq4o3UQEUHdAS0wV3soBt14os=
X-Google-Smtp-Source: AGHT+IHBVwUm7QERImBHNUkA7tEAtHZYVvWPoSnX9KcZDfmB/YlPfWVLemki2nAiDUKH6wb8NEszEg==
X-Received: by 2002:a17:90a:1309:b0:279:310e:33fd with SMTP id h9-20020a17090a130900b00279310e33fdmr8185371pja.22.1696622378680;
        Fri, 06 Oct 2023 12:59:38 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:38 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 08/10] requirements.txt: update dependencies
Date: Fri,  6 Oct 2023 12:59:11 -0700
Message-Id: <7989e61fae9d09d851b5eab43d61cdbf674ebb39.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61272

Use results of:
pipenv install
pipenv update
pip freeze > requirements-freeze.txt

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/requirements.txt b/requirements.txt
index 612e9cc..62b3f7b 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,8 +1,14 @@
 amqp==5.1.1
+asgiref==3.7.2
 beautifulsoup4==4.12.2
 billiard==4.1.0
 celery==5.3.4
+click==8.1.7
+click-didyoumean==0.3.0
+click-plugins==1.1.1
+click-repl==0.3.0
 confusable-homoglyphs==3.2.0
+diff-match-patch==20230430
 Django>=4.2,<4.3
 django-appconf==1.0.5
 django-axes==6.1.0
@@ -19,8 +25,14 @@ GitPython==3.1.37
 kombu==5.3.2
 mysqlclient==2.1.1
 Pillow==10.0.1
+prompt-toolkit==3.0.39
+python-dateutil==2.8.2
 pytz==2023.3
 six==1.16.0
 smmap==5.0.0
 soupsieve==2.4.1
+sqlparse==0.4.4
+typing_extensions==4.8.0
+tzdata==2023.3
 vine==5.0.0
+wcwidth==0.2.8
-- 
2.34.1


