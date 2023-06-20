Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDEDEB64D7
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 14:09:46 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.11250.1687270176879300986
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 07:09:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=DxzlLUM2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f64fb05a8aso6392453e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 07:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687270175; x=1689862175;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cGkvJk4cWDoTS76vQULdDNhgUau7mPebB7uqQyQwgfg=;
        b=DxzlLUM25pd0CWwqSMhzfj7CKKsInfQ2pmRKWY0m+rrKMzXeVaZyhdspKckoFZm1TX
         xGLw+aqz+R1Vwv4uA95Wi2AzQfRf6eCAnIllz0CBjUi2XpxGeAxHTIus2AbWuWCGAB3l
         cMHrNwjkPBeJrn41/5iKnBYH6aVjW7TIUPSqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687270175; x=1689862175;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cGkvJk4cWDoTS76vQULdDNhgUau7mPebB7uqQyQwgfg=;
        b=VNcl31iFhGfRUPEWkSV3JpkJ1AIF3cNK3HT2eqRBkB24xOLKGugtJNK3qDeJveG/RM
         Jo2Gxm+Lgj/qyfVF8HFZVN3h1Tz4WsoxYPJ0MFpHHSOPI3keVjL7ZrFhjqxSIfDITTUt
         ilNh2gss6Iz8CvDcLxr+0zsAKzs35YRVcqtAFMvDJW8ifaUKF32J5jEgEIG+Ff0nsTIo
         vRtJRUPpMg3jFsnmbiW86WWLacvH+bb19xu0n5aWI/eCylLSNFaoUqINRfYKQQTlp8aX
         7RZUlPggz8e6gCo2ZCJri6BGTz4Vmw9jAIMvCdWkrxXdXhn9wexJVuLIUJxZQmjpQYIq
         sJSA==
X-Gm-Message-State: AC+VfDxvnTohkPsFtZMkIX0HBKBMAWJL6AqKwkQ4BNBWfZsCsjFbHA28
	bIk7R3K4lrxOBV8TBMoFWy8awd41/DtJqaGnq5E=
X-Google-Smtp-Source: ACHHUZ694nZqBReE8WlWkMEugyOhctzzPRwussneBfy4Tu7j5bxARHuD3XtSCkOJelk/Dk/58ZX5VQ==
X-Received: by 2002:a19:6409:0:b0:4f8:7781:9875 with SMTP id y9-20020a196409000000b004f877819875mr2346053lfb.60.1687270174257;
        Tue, 20 Jun 2023 07:09:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:dcd0:3b81:1cae:b795? ([2001:8b0:aba:5f3c:dcd0:3b81:1cae:b795])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003f18b942338sm2464709wml.3.2023.06.20.07.09.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 07:09:33 -0700 (PDT)
Message-ID: <68e0809f98346a5c4d56e3ceb69fcefeaa791009.camel@linuxfoundation.org>
Subject: Request for Quotations for development work
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Tue, 20 Jun 2023 15:09:33 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 14:09:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60365

Hi All,

The project has some exciting plans in progress and I'm happy to say
we're now in the fortunate position that we're able to seek quotations
for some development work.=C2=A0For more details please see this page on
website:

https://www.yoctoproject.org/community/yocto-project-engineering-request-fo=
r-quotation/

Please feel free to reach out to me or the Yocto Project TSC if there
are any questions.

Regards,

Richard


