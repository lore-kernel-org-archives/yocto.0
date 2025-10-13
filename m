Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81EC7CCD18F
	for <webhook@archiver.kernel.org>; Mon, 13 Oct 2025 19:00:41 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.53084.1760382032195763807
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 12:00:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=uofpwj43;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.214.182, mailfrom: jester@theyoctojester.info)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-273a0aeed57so67854585ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 12:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1760382031; x=1760986831; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B406qVbW/Di84q48SP0jRnMNywVBf6H98g8cIAf0inY=;
        b=uofpwj43R7Wbq7s2GxrcPHaB2OmgJ20Jwd3fGM4+GcN/zlt4+1RCD1j6hApY8Edjxx
         qVfTo1n6tUG6bwBmT4pYVwxO1pDC+xj5gnn5JyRrV3u9s5sRObAdG2Pt9YXFyL3EDFrt
         62ak4cZ9qcuvhnSuiAciGLEzL4fXyuI3Q8ehWk07Dzrxk6Giv/DmaZCYP2DZHmL0IThJ
         5uXqpwlQsYCPnMCEpUsPBfw0+W0rLUnrR18vcmZpEowLclvYIfiVSfrBD5pMpJBZQKi7
         XaV7+bYsp7fXMJhtF652gYiwhP0jVWoqVMGBeyS4aDsAc44I/8RMfqcpPF/b1fdClQt6
         7bbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760382031; x=1760986831;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B406qVbW/Di84q48SP0jRnMNywVBf6H98g8cIAf0inY=;
        b=P9L6ho/R5D8sluwnab1bQLmlORFcsOVMEqs3qw3LuZgAvryLtsUmx+kbgFDnZZsI0m
         tj9O3ZJLDrJ0LhAnsmV4ILhxjWSBdQ0EEKC1lEPgTWyuPhw8iM16jDlYpTgniTHe8AO1
         4prtj2oI80i9TYlCTF55txfXAchGi/nUuoV/ZZdGkBOaonb1fssl+8VMFM3gzQjIZQEl
         80V3piHQrfWMP2P+4DfOlPyOioE2dgeGsHW7B4FuCviTmnGsfWxfqtik+59kMEzbrXlt
         ZeJxvzn1heEqLe6UnC22bmAHt9cRAvIrUBUjlpJ5qurmM/LPcfudcQU8EcrZa7SmD9hj
         V31A==
X-Forwarded-Encrypted: i=1; AJvYcCUx2/thHkjD7zarcQrtvZJ1EPj2fBGI9u2e0hpgnsnASPCPSFY47voLcd2cVQnoIYlKhxDQRA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw3ZBEV3YPZmOat0WhBWcKUvDhiY4cQ1JnAvH1yq5saj2RlwoWf
	57arawymvev0atZcv2LUz84+lcS2AqOGz86ovMYXL3/8pGX38H5z2Y5YhAkh+9WQ4neZrNTEo6N
	w7131yICG1WHVksIWncHHYkulrlAfR1UNkCC/a+D4Gg==
X-Gm-Gg: ASbGncvzSXTXymTxNSF1RvhcCY6MwCRDSPxinBvckHaiNNS9IWDJ/ZEoS/MLAp1IWHS
	DJBlf8xIOpzKyGud16QpGcmyJDIgLjK14PbNkqLfcFt+EY3f19/b5MOjh/4Gib/v2YOBne5h+f8
	eM7afsKYhpGaMd3n+YyVNsi/gL5+HXHddhCKjUpJ7BpVM+KpKUgpofYV9zly7TDyJakp+FmkLvs
	Td1l4v8w+4ba7yHIh6YHtT388BtDT9vKIB3eU/PTa2d73PURniY2ycPbsFGQPIuJSt0GQ==
X-Google-Smtp-Source: AGHT+IGwpr5HxxsMDrw1kRLbewyUoegpFAtLdTBgykRSSjhQg9uayI9WJtj2geYJH0B6YxelyQQ3+45qlZw23tKEvMk=
X-Received: by 2002:a17:903:3d10:b0:283:f19a:bffe with SMTP id
 d9443c01a7336-29027e734acmr282414455ad.7.1760382030293; Mon, 13 Oct 2025
 12:00:30 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 13 Oct 2025 21:00:04 +0200
X-Gm-Features: AS18NWCMdN3SjIn28o2bWZF1tkG4xMEYQ8uLxmGTdFKLREWp3JU3fZUWiR4kg4w
Message-ID: <CAEt6Nwq7EGH06tGA8q=+4RLBLfOuuidDh-LRrE3g4MXoPxwuqQ@mail.gmail.com>
Subject: OE Workshop Brussels 2026
To: members@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 19:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65921

Some people don't like them Mondays. But we say, the Monday after
FOSDEM is the best time to gather for a day full of networking and
discussions around OpenEmbedded.

So here it is, the CFP and registration for the OE Workshop 2026, on
February 2nd in Brussels.
https://pretalx.com/openembedded-workshop-2026-2025/

We will spare you the rambling about all the nice people, cool
presentations, ways to convince your boss... in the end its easy: sign
up, show up, and if you have something to share then please submit.

See you there!

Josef
on behalf of the usual suspects who run all the events.

