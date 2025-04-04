Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0D1C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 08:55:02 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.6910.1743756893302309185
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 01:54:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JfQ91OAI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-391342fc1f6so1524081f8f.1
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 01:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1743756891; x=1744361691; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNu0aFuuEIIfYgRTNZ/znJ4/jWXF7skbb+jXEBj649U=;
        b=JfQ91OAIVsQZLDx+okbn3qd5hriETdNXblYCyiQZKXMARMd/D9che/mQyTKr3GNG1H
         DHel8nbpNIu11gNvO6ribJ1O8Oj4t8nMsuEooRx/UadT48HVJx7XP6uLX2nCaxZy7ZfV
         G5CnDL70BHZEriHxeTI5x1kj+hEMgEKB5xtMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743756891; x=1744361691;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZNu0aFuuEIIfYgRTNZ/znJ4/jWXF7skbb+jXEBj649U=;
        b=j5aCboOhz0ZQjLzpgZqJUZmhguhX26qBGu/LghL2Uu9txAbOYpymeTyNFe3Wt9RUNf
         4R9vGuKdQXQGr0MBMaVku3QMMtshnHr9l10g8Q6LXDzE1OtAy+MAbLZt6RAIEtAjuy6B
         hRr64s8YFGW1W5dXIs86V7DAR80wh0wFzc8i310Ad/9idZ42+OIZb7APvofpPtJLBr4w
         SBoB+OIl7qwnuTb8ck0pv+PpmftgWBB9q9FIBKn/9d3ziqV4ArVeRtHezYNApXpyYMmq
         L4cz5/z0ONs+kmu6JPwuKr0msFq4T0chU/K6AeUw37z9HvqBmcOizSVah9Kgt35uU4ES
         2ECA==
X-Forwarded-Encrypted: i=1; AJvYcCW0SOY9PAR5NSNI7BHHDjDU+usy4F40jX74Qi8TmjW9JdbZq2WsDR10JxwUdWNgEKzqdcGF+g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz42Gde8IwlFrzbstlBwyBA9pwPx1u22Hqq1SGJauxBXkt5p67m
	GRsMehT6M8ko/6pOsY1ex47uXk5h0bhDv5jKv/dtibPFLjAufUyMJeOMgWyiU24=
X-Gm-Gg: ASbGnctT2fwOC44Hk76pESgXaNJXCgQjS8MbGAKPWXv+QiSewK2cGluQbKeHU4vG0AU
	ghaddBL9x1KA8kMZAoO4bCSH2e1Dy339duGzXeEagl0uNlEsEKVVt5eMggngEAayIFQ9bXl+hs/
	xeMUg7QIRdO5bSKl4YPqZ1tIClKGnvve0GaikC62U3MB2E3KpIAeDCs4TRG5jAKb5ii9Vr/pK18
	c3WIooULPYeTCiI9nokd0YpS72TogsvjiRaTCzI3KiNwL89mC9qnEIrpqXtoxmu9TKRUAUQ7qIa
	ptA2FGSu0OrpCkngT1/FIbKF/P6lDcQB3k3ImqEv0LKOWLL/DwuVVrF79EGxQ3rrsuqZFVuONrB
	XXuqSecxBKnjbw4zB3RXhg9Ff27974uy0wvRS7mMhtMIv
X-Google-Smtp-Source: AGHT+IHOFJRszTZSsxlA3Dfkx1agShJdbaN50l6mnTWX0w9JeDBvIUZD5AzcArx+hFCOFHgPJGVKTw==
X-Received: by 2002:a05:6000:1886:b0:38f:2ddd:a1bb with SMTP id ffacd0b85a97d-39d0864b966mr1369496f8f.8.1743756891239;
        Fri, 04 Apr 2025 01:54:51 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9913:7de7:e825:95a6? ([2001:8b0:aba:5f3c:9913:7de7:e825:95a6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c3020d62fsm3868704f8f.79.2025.04.04.01.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 01:54:50 -0700 (PDT)
Message-ID: <c5e17b00e17da6787a5b88f54df63e22a1589700.camel@linuxfoundation.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lee, Chee Yang" <chee.yang.lee@intel.com>, 
 "yocto@lists.yoctoproject.org"	 <yocto@lists.yoctoproject.org>,
 "yoann.congal@smile.fr" <yoann.congal@smile.fr>
Date: Fri, 04 Apr 2025 09:54:49 +0100
In-Reply-To: <BL4PR11MB8797BD6E2B3B2ECDE9088CA6B9A92@BL4PR11MB8797.namprd11.prod.outlook.com>
References: 
	<BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2@BL4PR11MB8797.namprd11.prod.outlook.com>
	 <CAMSfU+6MVEpORbaTvnxQMJQ55mW1F4ZwaYPDBzGvtzrt0KJeMA@mail.gmail.com>
	 <BL4PR11MB8797BD6E2B3B2ECDE9088CA6B9A92@BL4PR11MB8797.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 08:55:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65099

On Fri, 2025-04-04 at 03:20 +0000, Lee, Chee Yang wrote:
> i can add the codename in title. I don=E2=80=99t think there is strict fo=
rmat
> for the title format.

That sounds good to me too, thanks!

Cheers,

Richard

