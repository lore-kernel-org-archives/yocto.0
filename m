Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 090E9EB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 10:49:05 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.5388.1688035743969081937
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 03:49:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=OBhuEXfT;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so783279e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 03:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688035742; x=1690627742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3uQiBjNanLDRihavO1Q6FIBxyVaOX+TLEuvQfg33nPE=;
        b=OBhuEXfTp0ONTvJdUi5smzb+2jbj0NO8jR4MFaEjFjJA5Ejzzi3jySXA7JZ7d4irm5
         hRxKdHKJlUTI13aE0fsjnyEY1X+sRxZ4P293HMda/hozyWtgMDrmzevZVG2MMGBoCLgK
         KGHMlfbAoUhOzaST5H9xN3haQ/iSaK7q4G8dgKsVX1/Psb5edqS9yhznQb3znoUo/yGy
         uX8nvZcQEnjaAiDJbYURexe5DA21DOqpF44+X9O1ykV6vcldy0CX7EH1LUh6ZzeUd6VF
         HfVmbb6bAbIk8iQ575kMchzxVNGo8YmxU0pjN1A1HpF8DiXhtAJm0uSvpCDRuTQsa6pW
         HVhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688035742; x=1690627742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3uQiBjNanLDRihavO1Q6FIBxyVaOX+TLEuvQfg33nPE=;
        b=OEAOemBeFM3+BgJ+vsBEE7d+dPZ7RvOUDu1NeGns1aYhI78aGCEYp8NShyaGeNIaWJ
         tL5RvdNBivpXXWGJTWo0rayI67LUgOZ7zoWB8c4sqal8VKeQibh+7CAx+j0p3fbCG0tt
         gKxcEY2chBjKb25XcVBs1dFnuVlw8kr6m2HJvl69+ymLnoHkeSKvizP9avgY0gMByVjo
         vK6sqZRCsAWjwROMEouU8pjJxc8P8tu0DbEKXHtBUWFlxxv8HIImeH05YYMKaEj4KSYM
         Zjqhpyug/Wm0ICwzl6oJCcDAfkCvqEJBbrvEa4MhkhTLQQhq9ny54Rmv+xCEyiSJha9J
         g+dQ==
X-Gm-Message-State: AC+VfDwSGGC32AvTo1BGROlm0fLv5wJZ9jc5Fnlpoh15vLZz44CGot1i
	DEGsmT3//D0ru69eSVwIQ0kiVA==
X-Google-Smtp-Source: ACHHUZ6fpTZYKPd8MplewsjGU7MgueUdzY+nBY0NzqBaplmV4OPqzaX6BfD8laPA0CM6GRtW61FCUQ==
X-Received: by 2002:a05:6512:33c8:b0:4fb:889a:b410 with SMTP id d8-20020a05651233c800b004fb889ab410mr6309248lfg.65.1688035742189;
        Thu, 29 Jun 2023 03:49:02 -0700 (PDT)
Received: from nuoska (85-76-5-86-nat.elisa-mobile.fi. [85.76.5.86])
        by smtp.gmail.com with ESMTPSA id j22-20020a19f516000000b004fb8ff1f531sm635454lfb.70.2023.06.29.03.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 03:49:01 -0700 (PDT)
Date: Thu, 29 Jun 2023 13:48:59 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
Message-ID: <ZJ1hm7IYoh4Hap1r@nuoska>
References: <20230628125609.1327477-1-akuster808@gmail.com>
 <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
 <176D1B62EFBE2E3C.12483@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <176D1B62EFBE2E3C.12483@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 10:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60475

Hi,

On Thu, Jun 29, 2023 at 01:45:41PM +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> Currently these belong logically to machine config but what about generic
> machine targets. Could an image config define how much memory is needed
> to run the image on qemu?

Done already in Message-Id: <20230628192752.3209428-1-akuster808@gmail.com>,
sorry for the noise...

Cheers,

-Mikko

