Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.160.1620162059622290728
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 14:00:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sge7cZyK;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 795E738C05B5
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 21:00:58 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id 197so9787666qkl.12
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 14:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=knuWC3472C2BBM4WjtIWemOJ+KZ+WeQx7fVfK4iyq7Y=;
        b=Sge7cZyKMImY+fExhMfWhbxZ3xoFvukH62Ne/tTqYGrixtDPARIlCUUVl8WNbaDjAs
         TN5oTT2t5R0HJ2MW/VxL8j4Q4LnUrk1KAmhuLF40aPoNjspS+99otMbRsUN8C1DU7I2o
         +RMO0Xs165DXZGPhNEhgprD19gHaEQ1Y7PgfQp4b4byPGIuFwbDqUrKitjD/uaeYLyNe
         5tE159F+HT4aUJSKp5dYXl9AVqbrzlkRQl8neU2SNxSIZFMURDJxWJoGcFgtXnVuCadq
         vNWJ9iJppBdah+yMG23rGxXkwpQZof1E8WjR9kD/I/0GSRE2WcXWQHCLMHYQnfMRHnFs
         Tw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=knuWC3472C2BBM4WjtIWemOJ+KZ+WeQx7fVfK4iyq7Y=;
        b=d8oNgN7OkISA/80HSLIc5mlFzglDupO7Uxpgyn0VgEjBxjVCvd/f0zDbWfWw/IGJry
         VVXxotB5ANBotxAPFxVqqJ3b8pAmAQgrGHpjWiXEE23INE84Rv6ZNB6b/mwZ+0rACOw7
         hUMWgA3zEzGO/PIdGqAXi0O21eY8dEDw7aUmhnOCgMZdN+A6dNGzkd0cNGUUaoAOELHF
         CIvBowaq2Y1Kg0D4Hfqo/MIrN0TCDQyhq2q9ctNf9oxfVWzpDr23N69edYsnDrsBMy5A
         n4DrdLJmNKSq4nFUPn+rd7fyAnkXmO/tunf49hOA3HBC0YTTdn8uGAXhYSsLSFx8R9T7
         jp4g==
X-Gm-Message-State: AOAM531U/LSH8LACH/NutEkJe1msl6Gl834dPjVHFO6CthCERlsZQxaO
	M50vYkptlLl9msDiTnuVVhk=
X-Google-Smtp-Source: ABdhPJxNuSKmMryGEQqVKPIceKPgx0ofPs8OrE7GzsTZtEmRC9kOPo35ItOzEaXUMzeVCYk4kogldw==
X-Received: by 2002:a37:7944:: with SMTP id u65mr26409831qkc.29.1620162057478;
        Tue, 04 May 2021 14:00:57 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 7sm3812870qtu.38.2021.05.04.14.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 14:00:55 -0700 (PDT)
Date: Tue, 4 May 2021 17:00:53 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yann.dirson@blade-group.com
Cc: yocto@yoctoproject.org, Yann Dirson <yann@blade-group.com>
Subject: Re: [meta-rockchip][PATCH v4 1/3] NanoPi-M4: let all variants use the same KMACHINE type
Message-ID: <20210504210053.GA1096@localhost>
References: <20210426145810.718821-1-yann@blade-group.com>
 <20210426145810.718821-2-yann@blade-group.com>
MIME-Version: 1.0
In-Reply-To: <20210426145810.718821-2-yann@blade-group.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-04-26 @ 04:58:08 PM, yann.dirson@blade-group.com wrote:
> From: Yann Dirson <yann@blade-group.com>
> 
> This will allow us to define a single set of kernel BSP for all
> variants of the board (which only need to differ in u-boot dts).
> 
> Signed-off-by: Yann Dirson <yann@blade-group.com>

applied to master, thanks!
