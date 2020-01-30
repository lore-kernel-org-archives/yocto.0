Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1838.1580426930269679968
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 15:28:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=PZksj74q;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 253E0E01549; Thu, 30 Jan 2020 15:28:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5546EE013AE
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 15:28:48 -0800 (PST)
Received: by mail-pl1-f176.google.com with SMTP id j7so1957193plt.1
        for <yocto@yoctoproject.org>; Thu, 30 Jan 2020 15:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mMTPVtRCe3DyZidpBArGUlYmqOJoj4vmFV1EE8Z0tYU=;
        b=PZksj74qfkjJCrztQtQbFWBHAo6Tg2rbeqXSSurEKkwftv2HknaXEEcWkFzWIFvcb1
         sGmgpmYXmtH89bcGRgd+qYsokp5TGQgzh+UsR1MsIGC/0MQul3MvIPXSY1Z6/NYKcW1i
         3qTJ5bpTzVYTLlJoPejWXSr/LYQCqGARJ+wkWX0T+Y1bvYadCpi4bIEXzwTORKPDddzx
         UNV137lauU5bDhnuVnuY8NlainE1DhnowqymZJv8jVgSOwxlPODqZd+jThQzPlpYPQti
         q4hNXEiacxczyONnMK6kIVPg+QXtFkkVt+P733BecMl1+QgJYZqC5cxA5h5KlSPs2y1B
         VfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=mMTPVtRCe3DyZidpBArGUlYmqOJoj4vmFV1EE8Z0tYU=;
        b=ODYY4MW8dckaTBCJErR/cpO7PmmqTWfrl697eE7sEauspxMCguty+4WOv+DoQgDqL9
         OPKZ/AIVZndIFrJCLswVF4jYjSb3xHmqXg5rHIOfMZGnc6GjHlksaUJmvgw6N1QuDClu
         Z4lduhwZuRBve2NlBidXortI0z1tAhpPucUWie3L+gMSUV/JW++AFwwGTbFiCTTwiVZ2
         QUAo6v9IMLkf+d3SEGfJ1MYLFI6G7fMX9C+F5BrXRL3S3HRZz5CocV3IJ5CbVBjeIZAG
         1PGI+zegKoMH0/O/8C6GBanwBqJMIrGqdyY0oN4+Fb2TC+tk7/ZvrT4ww4L6nkWyE+Sh
         rNzg==
X-Gm-Message-State: APjAAAUs1CfSzZ9aA5aYVi0gV8VLcBsjNHZkP/wFk57whbgRBzM2Lxha
	825N52XktEncEN8EF3wwnH4=
X-Google-Smtp-Source: APXvYqymiV+kevWABWHYLg4SFga3wMk1jAH02y4bWkmT+pmNnmOOP7Hl8IsJRrxtIxOCy5lYXFt9ng==
X-Received: by 2002:a17:90a:608:: with SMTP id j8mr2674991pjj.85.1580426927828;
        Thu, 30 Jan 2020 15:28:47 -0800 (PST)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id k10sm7201014pjq.14.2020.01.30.15.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 15:28:47 -0800 (PST)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 5FC012A042C; Thu, 30 Jan 2020 15:28:46 -0800 (PST)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-selinux][PATCH 2/2] findutils: make append generic
Date: Thu, 30 Jan 2020 15:28:41 -0800
Message-Id: <20200130232841.6706-2-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130232841.6706-1-jpuhlman@mvista.com>
References: <20200130232841.6706-1-jpuhlman@mvista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 .../findutils/{findutils_4.6.%.bbappend =3D> findutils_%.bbappend}  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-extended/findutils/{findutils_4.6.%.bbappend =3D> finduti=
ls_%.bbappend} (100%)

diff --git a/recipes-extended/findutils/findutils_4.6.%.bbappend b/recipe=
s-extended/findutils/findutils_%.bbappend
similarity index 100%
rename from recipes-extended/findutils/findutils_4.6.%.bbappend
rename to recipes-extended/findutils/findutils_%.bbappend
--=20
2.20.1

