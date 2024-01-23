Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 861A1C47DDB
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:16:15 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.4237.1705983367796244647
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:16:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MHMh7BG1;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: ticotimo@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6e0af93fdaaso3547245a34.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983367; x=1706588167; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=oR9fMNsxr3mhqJPooMshZv9lDw14a6ZsawL2BlvJxCg=;
        b=MHMh7BG1XtUXDJ6faB1gphLD9AK7Tuzbqdv46DgxRAKW7RKYFiTE6zraZRHkLn+3wU
         jZXr0Oab8SIM/KHughwqDpBpoo2rKJpqmapZbJyzS3tgzvbDt0DVpoQQuVVpqIKoMhGK
         bKPx8CMVxI+xj+sT4aiGeZbLQWCR9Td4NcA8PNv65d7x5zTsCiFzuhG6hLwvm/v4g9ny
         kQPOvYBX0wkttYiRmifoA/5H19ooqYm5JWUCoBHNRTEpFxae0i/JHf6EM/TaedIrfvaS
         945BJIWepdwSjV6uQ6vX9Bsk2IBQw78lMhMk8jKZufhBfPwvNrfG2jnud20Lv5TxLOPw
         bMZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983367; x=1706588167;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oR9fMNsxr3mhqJPooMshZv9lDw14a6ZsawL2BlvJxCg=;
        b=kfgKcoMrXGAJMmlGHlB9k9vKRknUIUVWXnJzbkpYx0x++7o3xHoqDVI5SO8FUuQwSR
         HL2wOvKl+r2dsfkyR8V/DyO030w1/oPkGnfaOovuNaia7o0tAE15926CeC1iiZLAOUee
         COPRxOQmO15w3E5HQMu7OIYebcVW8aGjrkmM62zwl19qVQd1XOup54R4plM1PLWAN71f
         pgeKTzzTkOe7vVRo9ooMKLoH8SJMUEmW7D6WjLkTYnukF+QEvVxDG0pCwCCNAFkRDpNS
         9qLxBgZV3jOPh3NlPtrLEP+4H7U+RQAw1T8agEcy2Duefe9IUFPpd62PB9EGrlAC5dxz
         3VYA==
X-Gm-Message-State: AOJu0YzGe4po1+SsXdGYrjcDN3XSWdZZztxPluyTeMKgvaWNh/jEkxLr
	r9Jd4fnutBDj2w31LikZsBqAFzSh5qbtFad7Dlu6E3UXTtA/BN3UXE9qXrJU
X-Google-Smtp-Source: AGHT+IGSS3eK3logRhG8UysJAXuh7MwavE80wiaBFGOfQBPPbg1pvYWh/j5FqxhkWo4ec6cRYP3kEA==
X-Received: by 2002:a05:6808:4189:b0:3bd:5306:cec5 with SMTP id dj9-20020a056808418900b003bd5306cec5mr6507770oib.79.1705983366654;
        Mon, 22 Jan 2024 20:16:06 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.16.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:16:06 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 0/5] Add support for classes-global and classes-recipe
Date: Mon, 22 Jan 2024 20:15:17 -0800
Message-Id: <cover.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:16:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62232

Previously, only the 'classes' path was searched, but we should also be searching
'classes-global' and 'classes-recipe' since:
  bitbake f33ce7e7
    'BBHandler/cooker: Implement recipe and global classes'
and
  oe-core f5c12800
    'classes: Update classes to match new bitbake class scope functionality'

This requires changes not only in models.py, but also in recipeparse.py, update_layer.py
and views.py.

While we are at it, add "Global" and "Recipe" 'badges' next to the class names in the
appropriate class view templates.

[YOCTO #15238]

The following changes since commit 83378f2f9c881505027220a98514bcb933d82682:

  global: deprecated pkg_resources parse_version (2024-01-22 16:08:37 -0800)

are available in the Git repository at:

  https://github.com/moto-timo/layerindex-web timo/classes-global-recipe
  https://github.com/moto-timo/layerindex-web/tree/timo/classes-global-recipe

Tim Orling (5):
  layerindex/models: add BBClassRecipe BBClassGlobal
  layerindex/recipeparse.py: extend bbclass regex
  layerindex/views: add classes-recipe,-global
  templates: add bbclasstype badge
  layerindex/update_layer.py: enable classes-global,-recipe

 ...obal_bbclassrecipe_bbclass_bbclass_type.py | 41 ++++++++++++++++++
 layerindex/models.py                          | 43 ++++++++++++++++++-
 layerindex/recipeparse.py                     |  4 +-
 layerindex/update_layer.py                    | 19 ++++++--
 layerindex/views.py                           |  3 +-
 templates/layerindex/classes.html             |  5 ++-
 templates/layerindex/detail.html              |  5 ++-
 7 files changed, 111 insertions(+), 9 deletions(-)
 create mode 100644 layerindex/migrations/0048_bbclassglobal_bbclassrecipe_bbclass_bbclass_type.py

-- 
2.34.1


