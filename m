Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web09.3663.1620851535343886790
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 13:32:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L1Bc7aWN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id p14-20020a05600c358eb029015c01f207d7so3652680wmq.5
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 13:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=+VMrVzlLCpqefNwjrf+VtoDfKs58EoaWsRXwl4CIhxA=;
        b=L1Bc7aWNFIMrON7E8TnlcCKPMqpnZ6PlT5mZFad7gOwzTmKb7L3xcqTxxryNSK7cK8
         ksmubLPLIN3IfFuQs/LT/bn2wTm2cwbrcbuPicsBN+dqmwm9yZpJp77Qbs/XAMDFqQz5
         bX6P2hLV5wbr4IRW1kxW7K/oJaTwkcVyhSoB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+VMrVzlLCpqefNwjrf+VtoDfKs58EoaWsRXwl4CIhxA=;
        b=s7+8tpsthcCVZw0HopNdTNdb2J9OOS/6CLBFQ7nu+UxasUhXajYYYRNPo9DrM5/uom
         9C67hqm8wUtstJF4S/GwSEyudLHo5a+iyB7fhifnnAwJZFF72zcu3vFNTq6Z0Sf5DPzv
         18L+jOV5ZeshaXjP9PoCuS3h8gNQVx0F4odDDRLDKcX6wBPD+PvtoOzt0pjHhldnazn5
         9bVMIlcQMCpMTzM8vB4lJSeqpT9+5AjlecJ3+Uj6yjAfU1PFmAw3JTVSDw3Cv7OuyCYh
         AvJtAabYe+NGpymUo6HFjFCjx60Z2celaM4Cmn8FrP+Mhg5OWcMhc5OxuPUccCiNBoFs
         pxiQ==
X-Gm-Message-State: AOAM532ALxPiA3ixLtlV2gHVioGl6Dl37y4FjI0U6a2zdNCwNzx9eedQ
	E+2KjCRYR7/2ZBFFhX7IEZAynQ==
X-Google-Smtp-Source: ABdhPJxNdiTKCayO05LaAK94r+x2m1ZgklZLdnXHBpZxn9tVTxbp3sWJWg9ZxhaNbCW11WgGYyd9Hw==
X-Received: by 2002:a1c:dd46:: with SMTP id u67mr40935176wmg.73.1620851533900;
        Wed, 12 May 2021 13:32:13 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:5feb:6ce7:ad36:99e2? ([2001:8b0:aba:5f3c:5feb:6ce7:ad36:99e2])
        by smtp.gmail.com with ESMTPSA id e10sm801772wrw.20.2021.05.12.13.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:32:13 -0700 (PDT)
Message-ID: <f8c2fa9ccecfa4852f26311dceb8b24163986428.camel@linuxfoundation.org>
Subject: Re: [yocto] FW: Yocto Distro Testing Plan
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Kraft, George" <George.Kraft@Dell.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 12 May 2021 21:32:10 +0100
In-Reply-To: <DM5PR19MB097158BF13A3CC6221C6F0C59C529@DM5PR19MB0971.namprd19.prod.outlook.com>
References: 
	<DM5PR19MB09712B955360C0F22468EE999C529@DM5PR19MB0971.namprd19.prod.outlook.com>
	 <DM5PR19MB097158BF13A3CC6221C6F0C59C529@DM5PR19MB0971.namprd19.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-05-12 at 18:48 +0000, Kraft, George wrote:
> Could someone point me to a wiki on how yocto testing/QA/conformance is done?
> The Distro Testing Plan wiki seems outdated, and my inquiry to Jose bounced.

The wiki is a bit out of date, sorry. We have been working on 
documenting our testing in a manual:

http://docs.yoctoproject.org/test-manual/index.html

Short summary is you can see builds here:

https://autobuilder.yoctoproject.org/typhoon/#/

and an example release test report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/testreport.txt

Cheers,

Richard

