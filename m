Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.21.1582148694607883439
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JO2Gk2NG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7C91E01734; Mon, 17 Feb 2020 23:55:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.44 listed in list.dnswl.org]
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74329E00782
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 23:55:33 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id m13so23733219edb.6
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 23:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Sxj7diSiUE73ZsWYb2mnHLNYiWbOzHQlQXGgkr8dLYE=;
        b=JO2Gk2NGcZOFnjcndocd9/qbNWLdsZk2ShG6i1NkDIxia+Al0PIVyBc6aBtX2da6v2
         2o1eMJBawYBeShXAhlpBWXOvvUQm01WH9VGUmOxkskukvkiorQdNYcCU3tDb8IbXnWcI
         U7739vgtwPHLi6XysIcBVHxqSDF1W6iU+UqChdNVk0YQD10QG5MSnXhlv75L2GM/qQ3k
         yxp57zKdXk+aGqpMHqTn9PWaj8RGYxjJv4xtJo+TwYEV7m5rk77qS+zcRGjOcfuOETv5
         p9ka8fV4ipZqEwz5zCGQtvbNpBvgo7sKpwZPFrl/Oylyvyk+HE/Pg2cwu1IOwJP+8EY1
         UWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Sxj7diSiUE73ZsWYb2mnHLNYiWbOzHQlQXGgkr8dLYE=;
        b=k2YidA4OH9MyMkz7e/vGDP1pmLmIQf76AYBGpuYAu0KLmOuDx65ik2dWbXiiD+l/PE
         OLS86q0r4yjwMMaOIW4aqljyaTUNqc7aFu/VLFlz5hZyGwE7Zfp/2DmcEX9kvyN1HQke
         4IsY3hYVXYvE9Hyj1Ow2iYOxYXs0kyHHTWT4/RuqltD4UZ7q3o2ArQm+luMqkAJvQrQS
         WhWjGuhuEBWB7f+/MMCV7h1pdUIBx8VEeuREBL9XUVMR68VCit6isKiNjIsZcQzbSGY0
         RLdGf+19xRiEfdDaHXhz55MYclkKXmyDvG7lANadtO2q4E3yu0PK5aor5h2+Om3GvoVi
         azcQ==
X-Gm-Message-State: APjAAAUrm+lJ5aK65xZ/zGrsPRrTNx/DaO4zE0sLGAIUryRHLDQdYwZb
	t7KSL8ZsrXL2JxRH7QNxTH2PNBeDSDkVLhhr2oFc1T8gdto=
X-Google-Smtp-Source: APXvYqzYLZ8Kv4ggYVIO56A5bWZBNMEZ2KSqw/P2QRvRIZQIp0eQO8rpPXb/LbbzkmGZeDj98JxQ8TcrMefjTvldVcA=
X-Received: by 2002:a50:ae41:: with SMTP id c59mr17445808edd.30.1582012532407;
 Mon, 17 Feb 2020 23:55:32 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 18 Feb 2020 08:55:21 +0100
Message-ID: <CAAfyv37jKciEwgCZ362VgHK5r7poixgu3tqONxopJ8rWsJYvyA@mail.gmail.com>
Subject: do_rootfs task took long time to finish
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm debugging strange issue that do_rootfs task took ~50 minutes. I
enabled buildstats and from that I learned it's quite long. Any ideas
how to debug this issue? My idea was to add timestamp to do_rootfs
tasks but I'm not sure if it's even possible. Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
