Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
 by mx.groups.io with SMTP id smtpd.web12.3251.1593056645717864288
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 20:44:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KrDiwc1x;
 spf=pass (domain: gmail.com, ip: 209.85.219.67, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f67.google.com with SMTP id a14so2175602qvq.6
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2020 20:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=uagL1ZAlGhP/zGujbkn63GHSia56IxgTp8lEh6YZtxM=;
        b=KrDiwc1xTBetw30bAm9i+pGkEIWLGP3NBXv9g6JQTM7wzaY2skaQeiRtXDmtOhwPc3
         SmONVY2QW1/ToShrINJlor5HjdH1+0XHCpmkAznpw2R4kLDu012Ipvt3FERzYFxnlYEX
         IHNjBbuHb6Yt/JaVZKlfzRVI92zEPDVaF6hwUM+5yUQvBh60V1w8bbPKFrqOxvMrcgq7
         Q9zjlr3qk2x7oPdWARvCLWbeztoW2fC80rXIYwmZxLqjLDpSOJu/JvzlWCrPwZWfqm3I
         O0XAkgE489PRte0OCIQz/S+jP+5azZS1CJ8ZOzGlJbMqPWw1xPIWmejmrmGgK83U40TQ
         IoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=uagL1ZAlGhP/zGujbkn63GHSia56IxgTp8lEh6YZtxM=;
        b=rbiEivLkpYd3F2/IhPh/BSRBT7MRhFQ5Z2dMtTIK4euQ2yluhUH+17MYHnZHiuGs66
         eDfZw8/Ehwol5fAfUKEplydii90oq6EMxiU/vrHfR8z2cZNKQnWGAgzCwzinrTnXXOJU
         cAkiIHL8cBy9z7imXz82oRDupUGz1EQdxnpR5bOTJtNHAvToWDdYv1lZKkThjfWtV9DO
         GOujSU0F/UsKjxVv9KddAvsSBDgPAFF+8+M59TaAIcWyEdJ/aK9+xkiPmZpWn/lZDDfm
         WbYFiFd1v5oBvIhApPrOwa/tcDCV4e5nYP8YSlGl2WbqhFjzn8/oNF2jCw2CDOCvoper
         lnPQ==
X-Gm-Message-State: AOAM5304FaD8Oq5Ooypwr4O/9P/jdMzgg4rGhgFuENUtZXYpb88GokIu
	EmdsaP/a66mOkHqJx+PcLCM=
X-Google-Smtp-Source: ABdhPJzm3zNACs5poH4aQT1Y7OE6INvLe+xc5i/Pl8WhLE/KwzYarumNLGOWw1aynzHEmy09Kj5R8g==
X-Received: by 2002:a0c:8d8c:: with SMTP id t12mr20399506qvb.234.1593056644938;
        Wed, 24 Jun 2020 20:44:04 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id i10sm6075674qkn.126.2020.06.24.20.44.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 20:44:04 -0700 (PDT)
Date: Wed, 24 Jun 2020 23:44:01 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] Use TF-A recipe from meta-arm
Message-ID: <20200625034401.GA21929@linux-uys3>
References: <20200612173823.7749-1-JPEWhacker@gmail.com>
 <20200625033057.GA21029@linux-uys3>
MIME-Version: 1.0
In-Reply-To: <20200625033057.GA21029@linux-uys3>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2020-06-24 @ 11:30:57 PM, Trevor Woerner wrote:
> On Fri 2020-06-12 @ 12:38:23 PM, Joshua Watt wrote:
> > diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> > index 401d649..042507d 100644
> > --- a/recipes-bsp/u-boot/u-boot%.bbappend
> > +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> > @@ -7,8 +7,8 @@ do_compile_append_rock2-square () {
> >  
> >  ATF_DEPENDS ??= ""
> >  
> > -EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31.elf"
> > -ATF_DEPENDS_rk3399 = "virtual/atf:do_deploy"
> > +EXTRA_OEMAKE_append_rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> 
> The space you've included at the start of the following string makes me stop
> and double-check... did you mean to add an "_append" in the following symbol?
> 
> > +ATF_DEPENDS_rk3399 = " virtual/trusted-firmware-a:do_deploy"

Ah… I should have read the next line before replying. I see you switched from
+= to .= and hence the space. A bit curious, though?
