Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.9006.1616074945332753455
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 06:42:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ufAKZ7qU;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3C40338C069A
	for <yocto@yoctoproject.org>; Thu, 18 Mar 2021 13:42:24 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id l132so1959603qke.7
        for <yocto@yoctoproject.org>; Thu, 18 Mar 2021 06:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7nsv50c6CxPpQCkAYYrtH9fzn02kkag6wtSxfqoDeNU=;
        b=ufAKZ7qUYAlGqQFEZngDPg8MZ/NJWY3cmkjK63MyI66vq9sKHB2pg6BBobS2wxGvnR
         thRHgO3erIs/I79qLIK6JvHJz4C1xwQhwqW5NpW0Jxcs45lEf3w2FCWa+sLY3pva/IGh
         bsCtJoYa0mubPnCVrnrosaA37DXKe7FEgrdOmqPPgNpP5/ATtPJLKQF0mmVb8NidJU/0
         9NjyKDagzdCi++Nk+eiz8/GmmY+vAijpsRDQ44A4cCYXb3cSq6JCu1PFl1dkuDEXm1sM
         mFZ6TRGH40OyVIZ06DI7He4ExeaUNbXnNTe2x1EgMCGffDaxWKwyLVqod4rjQ99JTdPG
         Zu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7nsv50c6CxPpQCkAYYrtH9fzn02kkag6wtSxfqoDeNU=;
        b=C34oW6dzOwLvoHmd4yet68qufwyjZcQ9MufFIiYFZbVeUYLdwEiRnKPZLZrsH8CWTA
         M1Du0ai3A+OAd2qi2OTcB4RO2sKbVbUoPMSYgii1akIxkg/d6FmqRDmt246QVK7yTkvD
         t3LLWjzCt1LGvzx29n+zi0N7mf8H4G1BwMHq3BJ9HeZBN9hMpHC19xX7j+vIMnG5KNio
         bbFxi24eXe4yC+XUKbAa84dqkE1En+V0wGXaGKFaMKvAPai792gA3iGciMPT3y/H4KoE
         LNBrHKrjH14Xh1Za/czsUUdTYDRtz0ZXhrpcgpuh1hYSCmlpqwOgIhb59sJrrKMF+4b6
         7xYA==
X-Gm-Message-State: AOAM530MMfVNr8PrM+m2zufBjoRDAwmi+iuY6JBj7UDV2WDJ9gvW1lln
	dNLiwqLA3P4TE/HInZWiEBg=
X-Google-Smtp-Source: ABdhPJxCm9fDI/nEkQGT/YkyPPACFEXxGQhYAR0Dq7EGaizmJp5zOYGzlMY0QOQfIvUpLjEM5fStPA==
X-Received: by 2002:ae9:f706:: with SMTP id s6mr4440030qkg.163.1616074943283;
        Thu, 18 Mar 2021 06:42:23 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id v2sm1451539qti.94.2021.03.18.06.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 06:42:22 -0700 (PDT)
Date: Thu, 18 Mar 2021 09:42:20 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] layer.conf: Add hardknott to compatible release branches
Message-ID: <20210318134220.GA15259@localhost>
References: <20210318061536.1556104-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210318061536.1556104-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied. Thank you! :-)
