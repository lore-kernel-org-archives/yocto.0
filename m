Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web09.7817.1579172815445421690
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 03:06:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@holoplot-com.20150623.gappssmtp.com header.s=20150623 header.b=d2Wbqpaj;
 spf=pass (domain: holoplot.com, ip: 209.85.128.51, mailfrom: morgan.hill@holoplot.com)
Received: by mail-wm1-f51.google.com with SMTP id p17so3349916wmb.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 03:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=holoplot-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=UH73ryoXAx2z8pVuVShjFE+ln1DTDsyUwYr/Z2qrF/k=;
        b=d2WbqpajKqQ0qsn8Zu47CNzMiqKVRgeHPTJF77/ifg9+PFpuRyayRkjU49aMnjkR1H
         sAnkA7BDxFxu1HsD+DBUy105eFQK+smQyDkGZ/ct8wMkF3VIxw3IOWkIefEnled3mKLH
         1LJOTglgq6Lsd2cbBwDqnjE/y24YLeW8oEm12y/TwDp2qhgl+siUoJ02fRZGTLKhgjKi
         1Zz0Y8uiwHf4T4M2wJsKzKSvqPCEYy1KnjkUEJKV+S0uPcBUoNa/UK9quHmBF3LUBzHk
         9+1cyGHP6Sz+SnhI2oZNmysxH4Zbp4XO0qlDzGG2W5Afw/x5tqn+0/tlWJHgwGVjkyde
         VwYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=UH73ryoXAx2z8pVuVShjFE+ln1DTDsyUwYr/Z2qrF/k=;
        b=JcSFWv54q+ZgJ77xDKbUW0uF/cZwrAsSb3pb09CwWWuJb/qPanzFC/xmTMTkWunQL1
         vcVtfnfhkKGH/Q205h1C4la8n9mnVAYvhS8zbPLRJi7EoWyw863yKBYHOjGORrWkOXOh
         9a6b0oEH7S5zk/YylNpQuXNO4B2onTq+5qCwyjZXM9rp4OluyfNs1VFBuE/lFOsXJZTn
         BLsOgm//09WgZPdWxLQ09XLzZSEpIuR9B0HjznLbyQH8AXREEZ98cyGMmDMhzXsT14ke
         pom/tECW+N8/jY7OX87WVahPzcQVW0AJGJWSjpjoTnwsyUFGe/jPWctfqBuhHwdZpWH4
         VJDg==
X-Gm-Message-State: APjAAAV7SGjmIH/tDXFBemQwfvbtm1BfKI5gkkWGirOwpxdGIHroPYkh
	1pXZ1yBbS7AeUEfwiaxQvFX5C4txJ1WpYQ==
X-Google-Smtp-Source: APXvYqwYUwgd2vkBUZm77X7bJqvg3J1F+ddG+p6nZ8nsp/N4OL7wdAHyDKrAUwrtS8GuZS6nYiwa2g==
X-Received: by 2002:a1c:5f06:: with SMTP id t6mr5629544wmb.32.1579172813536;
        Thu, 16 Jan 2020 03:06:53 -0800 (PST)
Return-Path: <morgan.hill@holoplot.com>
Received: from localhost.localdomain ([194.162.236.226])
        by smtp.gmail.com with ESMTPSA id v83sm4194338wmg.16.2020.01.16.03.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 03:06:53 -0800 (PST)
Message-ID: <e21d1fc2e892869a61c70f269a349161a903ded3.camel@holoplot.com>
Subject: Re: [yocto] Building multipartition images
From: morgan.hill@holoplot.com
To: yocto@lists.yoctoproject.org
Cc: "pascal.huerst@gmail.com" <pascal.huerst@gmail.com>
Date: Thu, 16 Jan 2020 12:06:51 +0100
In-Reply-To: <15fe80e0-597e-a62a-bc7c-99121c86f8d7@3mdeb.com>
References: <0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com>
	 <15fe80e0-597e-a62a-bc7c-99121c86f8d7@3mdeb.com>
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

>  Using wic you can exclude one directory from the partition and
> install
> it into another partition. Example I've used some time ago:
> https://github.com/3mdeb/meta-rte/blob/master/wic/sunxi-mmc-spl.wks#L4
Thanks, it looks like the rootfs-dir and exclude-path option is exactly
what I need.

