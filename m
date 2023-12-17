Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE91FC3DA6E
	for <webhook@archiver.kernel.org>; Sun, 17 Dec 2023 09:51:16 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.16307.1702806676347231859
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Dec 2023 01:51:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HVh01naR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40c236624edso23139405e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 01:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1702806674; x=1703411474; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=32BxvOzpoJsWV534ntHNjT/BFs614rGQ5HgfQKvJy+s=;
        b=HVh01naRuiL4L7GW4JDxwz9lsMPXNiau9+fOEZhaGjX/YnyFvn575Tmky94f5WhTAZ
         H+ewSmmTBuXCCLP1QY5jf199IoscgmJqKLRZWBOm/a+kDZrel2o9RJzzjF0/rHNxjtiu
         VIM8Fap8jqEUZbzzw6OCigy8Wd0rJBmt541M4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702806674; x=1703411474;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32BxvOzpoJsWV534ntHNjT/BFs614rGQ5HgfQKvJy+s=;
        b=ecXH/kd6YVJ0EZv3CID1BSBAXG/Fv+oWuG7wLtTXmTUXwe86uFt6udAwgzt7GGeD0w
         1/wrLoPeNjlSR20Of3fJ2vbld53n/tuqQeDJhaTzkPqwJpG3Y78vtOpNgVK90hIpxfIM
         NDLK0Qq/M8tz7v/G0QrpMByxGe99GT+YMQUsMMRscK/efy+vVyR4js1ByzWoqQ7UcL+m
         KJYdQQg2QYsjsGUnJsNLllqQe4H710WaLwqIKXW5x8P9e+Ozq79nov8Q4bwQHNKeLPTI
         fYnC3/O2sDKheAu01+orSgG/osXpPq5VFN9iDb9DmMfLXNLr9G9Sn7bRAEZT1OOrslRi
         FTpw==
X-Gm-Message-State: AOJu0Yx1IRLBFwd6vZN075gUjD/8a0WvUo0oRlZf/Tu3IK1SeBcC/y0k
	llzcZQyNDKV4SfJY4nJ/9/6/kjqvU55XHwwNbnc=
X-Google-Smtp-Source: AGHT+IHGbbRIYal9K6rz7D1WSBtq0QIPvQoKU5Tuc3CGPjRgCGBs4Izwo8mEKObJfac4cvGUraKFBw==
X-Received: by 2002:a05:600c:1715:b0:40c:2bb5:f86 with SMTP id c21-20020a05600c171500b0040c2bb50f86mr7376425wmn.74.1702806674363;
        Sun, 17 Dec 2023 01:51:14 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c690:9059:96b:687e? ([2001:8b0:aba:5f3c:c690:9059:96b:687e])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c35cb00b0040d128e9c62sm4570601wmq.18.2023.12.17.01.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 01:51:13 -0800 (PST)
Message-ID: <6cb2a1002183fb0bd44144af17f049b670c50732.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-5.0_M1.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org
Date: Sun, 17 Dec 2023 09:51:11 +0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Dec 2023 09:51:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61943

    A build flagged for QA (yocto-5.0_M1.rc1) was completed on the autobuil=
der and is available at:


        https://autobuilder.yocto.io/pub/releases/yocto-5.0_M1.rc1


    Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/b=
uilds/6338

    Build hash information:=20

bitbake: eb417e27be5717a259f27e98dbd73255b1a42fc9
meta-agl: 0e41f2f4671866c110fc8c8b5c10a38b4aeb7b96
meta-arm: e6e7ac4d99f103d26a0ffefd6d0a5d2deef5b17c
meta-aws: 7915e6bafd876ab3d654a26629dbf501479caae0
meta-intel: 5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f
meta-mingw: e01d47d183945caeaf3c5c086539af0a925ddc32
meta-openembedded: 0a0ea87b8dda01a2887a525cef78eb6c3f4c2c32
meta-virtualization: caa14c63f158fdd13382ccf1ff4e20a8ba6ad667
oecore: 7ebd5247f6e040234ca4c8b3b1239843386bb79b
poky: 5815ccc1f6fd93690a684f7ff0f8a0a19758fdaa


   =20
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


[RP: I'm sending the QA manually as the final step of the build failed
with a reporting problem. The regression report was not generated.
There was also a single build failure with the CDN tests. Given this is
a known issue being worked upon, I believe we should proceed with QA.
Both issues will be investigated. Sorry the build has been as delayed,
I had hoped to have several fixes for intermittent issues but things
are proving tricky to resolve.]


