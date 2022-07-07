Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A5AC433EF
	for <webhook@archiver.kernel.org>; Thu,  7 Jul 2022 15:26:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web08.6843.1657207584638616770
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 08:26:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f9T+0USZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id a5so12140114wrx.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 08:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=O3ooMVNe2wLXd7Y8ytEKrcHtoMbiMrr66a5y2YZ7MYU=;
        b=f9T+0USZ8hcGB3D+mOFHj7vzmNVqIxQYZK/lo/yOPnEidDaXD+PktIzIAqLR/g740K
         m4vyfooeBklHb4f6a9GBcdQ+sGoPZ0rH1hQSEBmCw+SfPRGdDHsKqF1WSMnuUY9kVV3S
         UXHK46tkrus6P+H2jESSFJ0iP/g33PFWz0q2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=O3ooMVNe2wLXd7Y8ytEKrcHtoMbiMrr66a5y2YZ7MYU=;
        b=TrMlTZAYR2spikeJYCCsnIdyX0OaN9qgBmumJm/pAOzQNYwZIUFPOGuY6BR+lSERZq
         0TFX0yPqykmnU7ykRIRtZaKqwnzvfdB46abXAlPIFAzXmZhXXQEvBOnqM3wNz4NBhwhV
         xjnmH63LoSwq/nUJHGkItlH/DmFDE5fZrfRChg7pEO0naMDtCf6ZtzoE1hd9vhe37Neu
         1iWxIYwsFqLK6zkdn5k42SClFNIgRVArKItCCUfuxOpZX1IwB3aOprr8E3t2NHJ/q77s
         sHrnXele2vOFeCrncmeYR/3YcetPrncA2Y7+VYIC/ZSmt8GfW7IPTVRWgVTcXBhVXduU
         Gz+w==
X-Gm-Message-State: AJIora9Axl0/BIDveUhT6TXza0viPAUjSbhFcP8/dKRnTq3XncG9YQu4
	w7+xzgq+TA68fLc1kHhgsQHiUQ==
X-Google-Smtp-Source: 
 AGRyM1tVZNdcKRYEVb2QhjGvouFhBZiKQ3h0wCPvgS/q5g/ByokMqH6cDbmJxlsOoDEmcZqB5AcePQ==
X-Received: by 2002:a05:6000:1d97:b0:210:25d6:e125 with SMTP id
 bk23-20020a0560001d9700b0021025d6e125mr41947930wrb.464.1657207583207;
        Thu, 07 Jul 2022 08:26:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d855:200b:b1b2:5d8c?
 ([2001:8b0:aba:5f3c:d855:200b:b1b2:5d8c])
        by smtp.gmail.com with ESMTPSA id
 r19-20020a05600c35d300b003a2d45472b6sm1008552wmq.28.2022.07.07.08.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 08:26:22 -0700 (PDT)
Message-ID: 
 <b1780c1312e946218911e73adac5716cc24d8f41.camel@linuxfoundation.org>
Subject: Re: [yocto] Installing gfortran into native sysroot for libgfortran
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gregory Anders <greg@gpanders.com>, yocto@lists.yoctoproject.org
Date: Thu, 07 Jul 2022 16:26:21 +0100
In-Reply-To: <3678.1657201166691715156@lists.yoctoproject.org>
References: <AWI7.1657141765119571734.Ou9q@lists.yoctoproject.org>
	 <3678.1657201166691715156@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Jul 2022 15:26:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57475

On Thu, 2022-07-07 at 06:39 -0700, Gregory Anders wrote:
> Problem solved: the issue was actually that I was using a network
> sstate cache,
> and the cached output of gcc-cross did not contain gfortran.
> Disabling the
> sstate cache for gcc-cross causes gfortran to be included in the
> sysroot and
> now all is working as expected.

You shouldn't have to disable the sstate cache but glad you got it
working. Which release series is that with?

It does sound like there is a bug to fix somewhere in there.

Cheers,

Richard


