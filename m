Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.6769.1581763488227682622
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 02:44:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Lv6jRSYv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id c84so13562727wme.4
        for <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2020 02:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=pEyLfn3VuBKgZ3vZA415iP2mMNK4HBGA/hQGQNf5hpw=;
        b=Lv6jRSYvRGTNcWYtzwWr6OhfarSBhqKexIMtbEWQmaM3VOnGZ/X82a0zW8NttRrubi
         hrkbgmZgRue4xA5qdSCYLCt7TFyaIDYbz1TySe2qRmimzBDY1hY79gBT8/AwMEUC9ORJ
         gQFMGZNCZqe8+v4oPgZ/Gd65AjAeMw4aXgcYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=pEyLfn3VuBKgZ3vZA415iP2mMNK4HBGA/hQGQNf5hpw=;
        b=OSVhJr8fVdqxQZpbPBPNCLk9pm+fgW1NZxCL4YdcjcPkdfGGnz2OTrxhGYRudyhbPr
         bgJoWxelxspf/cnj5Rh2bcLkYSf9lL5JpTLjYu8FtRy1NwbSEdNkODI/zS/kBv+5n9VN
         7kxpcAkAKy7QSkvH3haoBIWCILQoiEmpm40ql8D1IgyVQO19p4kRRKpvDfwAn36JvkEI
         X8X1+AmYqLzZxp2y4+VRVx0wxvxWQUf5IOt2DGfUSP/XjaU16LccsSZNF9xVJrutCsFm
         wUzKtqrq7pLMcfZ/zt7d0jTH909zq7bwbcMZtmHgmtLCCrKheiEJZnpYCDEwkOiWHHNH
         3HkQ==
X-Gm-Message-State: APjAAAUv3hRG5y5reoDkJxJ5kMQo334PaLz9MS56YTNEpebND9Vr8S6E
	0+75e8JpFAOa4d2HR9qubT6WWg==
X-Google-Smtp-Source: APXvYqwkwDCo59AF+QCSsRoOA3OTnbhKkDaGfdVUribIVmwuh4O66zDPBXLMblCPfpZ7L6U4K+vfQg==
X-Received: by 2002:a1c:8151:: with SMTP id c78mr9940310wmd.29.1581763485563;
        Sat, 15 Feb 2020 02:44:45 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id w7sm10460512wmi.9.2020.02.15.02.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2020 02:44:45 -0800 (PST)
Message-ID: <18b267a0b9ca83560766ef1c3cd8d1db77744128.camel@linuxfoundation.org>
Subject: Re: master/master-next missing from poky repo?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sat, 15 Feb 2020 10:44:43 +0000
In-Reply-To: <CANNYZj8ux3H3-17eb1MFGFhG_vQDThxV+_gn4BEFH-PRjWUdsA@mail.gmail.com>
References: 
	<CANNYZj8ux3H3-17eb1MFGFhG_vQDThxV+_gn4BEFH-PRjWUdsA@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-02-15 at 11:41 +0100, Alexander Kanavin wrote:
> Something is wrong, as master and master-next are missing here?
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/

There is something wrong with the http caching on the git server. The
branches are there, they're just not appearing immediately in the web
protocol. I know Michael is aware and has been working on it.

You can access them using the git protocol if that helps.

Cheers,

Richard

