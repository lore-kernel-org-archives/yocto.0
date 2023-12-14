Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C1B0C4167D
	for <webhook@archiver.kernel.org>; Thu, 14 Dec 2023 16:19:50 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.26776.1702570783405354817
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 08:19:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZgNc55zC;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50c222a022dso9180069e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 08:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702570781; x=1703175581; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mAz0HXSuOcSvSiCtW36G0DRI5pmBDTj3FOcuNmolRwk=;
        b=ZgNc55zCx5+KiFoKeeXk0yDku52ULFWZoqgpx39pJ4/GC0yT3QS0iI2fnDmSQoXY2B
         fROSRa0Fiizl1Y+OuDnhNOMuxhZLoSJ653P14PxaW5Yix6sFDAiZSd6yRm8PYSf6Y2wZ
         H5RMGyqfuPHzph68kKLBsKdWDTJ5r1Noc/785x6TmG5qe1kagyMQvej36Jvrtsw4Y2R6
         I1SBMj8c/Ezst9xPYgZoyLB8cWwDJiVsMGpTbr5xjL9L6fQLBq6uVIAJjmcaXvKLbsoa
         HHJEoxipwm0AtL2fp2DD/jNAgDkVhi7S4Qq7Hak4DPLFVXIccy2GeTwADEwnVfGdB64I
         v/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702570781; x=1703175581;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mAz0HXSuOcSvSiCtW36G0DRI5pmBDTj3FOcuNmolRwk=;
        b=mggl2E1vSZX+ILQyNr+vr3TNx/j7jN/sK1qEZoe8hr4kbFMH3b3nGQxOgJi1OWW4DK
         INB2RWzIQv+2x3MnkAE5cohDvPx26BtUiNdJ3Hl/dyV1VN+GXoemRACfXo0xGD4qIJ5p
         J+bgikWUUO0ayyk99CcwnpXIwWApYY8SeZ4K4wG/qlFIVcTnsQgABftwBJmxNjX8jvQn
         DItJ+t4JGjoBrRJZAG2oUpel/O1zMH1abmA0hqXgbGwGzHNSbBa9TrywHoyS4d2r/kMS
         o8/z8sjKxDdgunnCIQ4ph22Qc0FSKrrO/UyFEsaaaAo3aAWpZ4/fP/eCyRK1N0OGq8p4
         vl0Q==
X-Gm-Message-State: AOJu0YxhaNBtada1jmGPAyGz2QKj8L8W0CnKOYULuoUAIVbB5SP+ULgU
	6l9thi+7folUIWxEtVqR/jV+Sopvgv0=
X-Google-Smtp-Source: AGHT+IHN5GBU1qb1pD/nul0sAjCcvmOZfJ7A9EEl15LRCKoWzuB6AzWWTE7HWgi/n5P+N0a74coYXg==
X-Received: by 2002:a19:4f0a:0:b0:50d:bac:6634 with SMTP id d10-20020a194f0a000000b0050d0bac6634mr3976333lfb.67.1702570781123;
        Thu, 14 Dec 2023 08:19:41 -0800 (PST)
Received: from [100.64.0.1] ([165.225.94.223])
        by smtp.gmail.com with ESMTPSA id tg9-20020a1709078dc900b00a22f4736312sm3028398ejc.129.2023.12.14.08.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 08:19:40 -0800 (PST)
Message-ID: <f7f884cdae35192c1f4cf0f23657b62d813c178e.camel@gmail.com>
Subject: Re: [yocto] do_populate_sdk_ext failed
From: adrian.freihofer@gmail.com
To: yocto@lists.yoctoproject.org, sjhan@ambarella.com
Date: Thu, 14 Dec 2023 17:19:39 +0100
In-Reply-To: <ZAxV.1702550217800962003.77Gz@lists.yoctoproject.org>
References: <ZAxV.1702550217800962003.77Gz@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 16:19:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61890

It depends on your use case, but might be
that=C2=A0https://docs.yoctoproject.org/sdk-manual/extensible.html#setting-=
up-the-extensible-sdk-environment-directly-in-a-yocto-build
could work for you. With recent Yocto versions populate_sdk_ext is no
longer needed to get the eSDK environment.

