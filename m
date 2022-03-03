Return-Path: <daniel.ammann@bytesatwork.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014E0C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 18:06:58 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web08.14210.1646330813754417725
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 10:06:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bytesatwork-ch.20210112.gappssmtp.com header.s=20210112
 header.b=Kh82td/7;
 spf=pass (domain: bytesatwork.ch, ip: 209.85.218.46,
 mailfrom: daniel.ammann@bytesatwork.ch)
Received: by mail-ej1-f46.google.com with SMTP id yy13so3550009ejb.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 10:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytesatwork-ch.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:content-language:from
         :subject:content-transfer-encoding;
        bh=bccdIVozx/fBiJ3BOA9z75lOTDWhFX9fQ5XeSunwJ9g=;
        b=Kh82td/7qnlbVtRX85g8ipqtVlShNhu85DigT3anwSIVevlUIAGXLBhlUjLffuiS/5
         kjTqTWC1u61UO6Ql31XPzFwstqyAz0A35F0quD6lGv15Rc9SRuIjdU8XkhfRY8mSpBsW
         EIcDHP54SCZWDS16mwRwl47knMlEnu+2LqDN5CcfP1XMDPsMFi/5dJTjKywBLFcLhSVg
         d2sjCCqxVgaG+Zm9hLHWUu8+s+pWM3LnQah4vo6wz4lq3YDu7bgRzDaz/K7llRKmxjI1
         8MimeLbjIatOx1e0lMVhv61SRmas7tnK8fn9lME6aH46b1Q7TnN6UpA1JkguqzuMjevo
         ctzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to
         :content-language:from:subject:content-transfer-encoding;
        bh=bccdIVozx/fBiJ3BOA9z75lOTDWhFX9fQ5XeSunwJ9g=;
        b=SA7kZHvor2EIm6/yGEyHs0KjJ85zJqATFgMdCsCGf/a1TzEJqcqJStYXj7s7Xl70i4
         Mjk11sYEvStBNKI21zuZi6Q5UZKNpdECUc0NxuriYdVCec32CiMdmG84nrNrwdavy5sA
         VfVlp3MW2Xtk81vgygx8IM+tIVZcMwJObUqDUL9Ziuyzi4zNI8h6Y/ETOOVp7UBFTd3O
         H/3+KWf+XScUAfd2uDDMPYKVvgdYoXdrrxApXniLAEOeVWWocYl8kdEyp2VjPrxz7DOq
         DgjBoipJcq086MF9b0wD27j/G++bctHPjR7HbkG6mHQEUiS7H64pYSFJJT5hA9Zxv/jk
         OfKg==
X-Gm-Message-State: AOAM532DP2wc0GWMIW5DSOO20otWo+RObx461fJVV3DUo7/rk3IVlb1e
	9Xbsr2a07XPCizStKLC71Y62R+aH7Ctqd6O1
X-Google-Smtp-Source: 
 ABdhPJy/YtIMrkQUNiRR+K+cirJmTu4uOBHVSrlpFGD1XwatoUqlCVu3Nf9qB2jEv8N5/jLdVrXBNQ==
X-Received: by 2002:a17:906:7315:b0:6da:820d:4e02 with SMTP id
 di21-20020a170906731500b006da820d4e02mr5476350ejc.65.1646330810842;
        Thu, 03 Mar 2022 10:06:50 -0800 (PST)
Received: from [192.168.2.42] (162.40.150.83.ftth.as8758.net. [83.150.40.162])
        by smtp.gmail.com with ESMTPSA id
 lk10-20020a170906cb0a00b006da92317793sm834206ejb.131.2022.03.03.10.06.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 10:06:50 -0800 (PST)
Message-ID: <e1372f3c-6576-3ad3-1c21-f1aa872fc84f@bytesatwork.ch>
Date: Thu, 3 Mar 2022 19:06:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Daniel Ammann <daniel.ammann@bytesatwork.ch>
Subject: Honister on Ubuntu 14.04
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 18:06:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56358

Hi,

I'm trying to build honister on Ubuntu 14.04. This is meant as a temporary
solution until the build server can be upgraded to something recent.
For now, I got it running with extended buildtools from poky, but the build of
libnsl2-native fails. It appears that the pkgconfig step is not executed
properly since do_compile fails with a header not found error.

Has anybody done a successful build of honister on Ubuntu 14.04? Is it even
possible?

Kind regards

Daniel

-- 
bytes at work
Technoparkstrasse 7
CH-8406 Winterthur
Switzerland

phone: +41 52 550 50 67

