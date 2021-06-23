Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web10.127.1624477501111149239
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 12:45:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UkeZBjWf;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id r20so3043192qtp.3
        for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 12:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CdskWLaicGTkGp7IR9jPHGJnQG3swxzxk9hVwpv1FQU=;
        b=UkeZBjWfxxUONtNyoYZcPIkL7fSrR67iNg9zKwkPqO9HqWqt7Td5UcJHFmfWGtLqek
         7d6Ih0n/AYbnA/EgdTuZIf24lkTlj9+97aTagkyiHcBTzZ1zVDVms/w0R3Oio5vBIMs3
         ExsRfooyBIX5dEDlnnvXaGgiEMzeo/zAA90QA6vI9mlj+aPL4bfCJEfhtPcdMpxDGgl/
         IoY/IKPeuVnmdJpd1uQjoBNydQqn6bGGzaMVuzgG+wMywHMekvmXJ5ZKOqYCpCbu/hZ8
         0Z0VVDQmx0vY0On5XMWvFAZ1oFLgge7pgwCbftKMKbY/mBdugvF2QuvulWhaQ7obt4zj
         l1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CdskWLaicGTkGp7IR9jPHGJnQG3swxzxk9hVwpv1FQU=;
        b=d7QqL3ERSMwRsYtVbYu754wlgkiOH0fLgpSf8K0cAuzw06oaOmhj6v7GMLhAtjfXnK
         aQL/ymuVAIpyEPb92Cs557QfMsE1KhWiCJNeM0KezNZRaTHcystmLPK/9wQHXIipC6PY
         mSv7Qrcog7h7YFP+DfRBpx182xlA4lNhYTTbZ0GZL/+DN1AO3muaDQtqIju+Nd0ojm5Z
         V2+4TrtQmt9u1o/ZBVhY4+cCeFdipFTXF6xW/XANOrrE1s0HdZ46UMyfZIcbmKDwYF1V
         fCpWs2ezgYWLjHD+V7CHjjx8SBb2KtUwqk7gqwJ+EcHXSNT041HoHhzvi1BFOlqcRckz
         MYuw==
X-Gm-Message-State: AOAM531V5ajDbgbNDPPL9UcuBp/fjxHJ/S1djL3fj9c5D5WafCOZBqd7
	nXJQC019y9MaRgRMonO222k=
X-Google-Smtp-Source: ABdhPJxsiE0gPazl0A/MPM5A5o4t1Fh2wCja7jGuXlSbqrmyBCTBt3a1iRr/69vr6SdPYZ8eqS7teA==
X-Received: by 2002:ac8:51ce:: with SMTP id d14mr1436953qtn.171.1624477500257;
        Wed, 23 Jun 2021 12:45:00 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l23sm657740qtp.28.2021.06.23.12.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 12:44:59 -0700 (PDT)
Date: Wed, 23 Jun 2021 15:44:57 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] qtbase: Add needed bbappend for rk3399 SOCs
Message-ID: <20210623194457.GA12665@localhost>
References: <20210615015114.4002699-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210615015114.4002699-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Applied to meta-rockchip master. Thanks!
