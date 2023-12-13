Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57D2C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 01:32:17 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.13637.1702431133880957109
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 17:32:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=o9rRekXV;
 spf=pass (domain: mistywest.com, ip: 209.85.214.174, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d075392ff6so50532405ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 17:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1702431133; x=1703035933; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5020acnqKyO0wTTwyagj3wf4edTwNqOEo67+Qo5Gph4=;
        b=o9rRekXVlKGLek7Kw9GQD9jqWVLwq4cbYrpXfyRokMSUuJl1rtiWr24CmZv7WSxYu0
         lbDpjPKmAeuH5t1LXGpo/6UaQ9lBiAe8ZPb/OaXA6UmV4kjJjDjp9UgZVe3hpMu02bCp
         LJoDHZvajpEOYOSQ//CKT/2TTfA1AEfp7uF1aDWJcjRkXxfMegDFUjSD/+7IKPPp8SkQ
         dEgajSQLSSu7MkKoMOSi23isOYncW3ncDFGKsGFmOjwOIQMbIgNsfR8WCSb/yq1E0rAC
         lhTodBQegoMRAMp/7LJ0+ymLvXtCbwoeqLYiOAN+rjhzIeynX0dc14MePlwvpreHkx+O
         wVxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702431133; x=1703035933;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5020acnqKyO0wTTwyagj3wf4edTwNqOEo67+Qo5Gph4=;
        b=tKzlO9TdlM8Dm45G9UZIXbjxauUfcrrUOSQ5i1sVKXduwTqJpVBlF+ePYpfMK0Q7BD
         aUWD3t1HDZ7f02VMMItMGsIkVYi0quG7M69grrcGHHOAVmrdLW7Uuvx5WvXz7QZtUX0u
         AaDj0nGrwPdHPzPHfZBxFh3NRH4VdvPWNbJ/TC4Ch5n9YASGlY7d0snPTwCrnsXBL7VH
         YzZVS0hQvgv4tbESCNNVHXru6CkIPK62F4ssTwZ/yv8Kl3hStY6BH/QoBYT/5QJ+hZbi
         BwHlofu6cwxH4t3k6C8mNV3yfl6MS75K9tgt7pxi1h1nTSre9lxQOaK+L9gu50a4BzSZ
         yIHw==
X-Gm-Message-State: AOJu0YwsYGYp85Iu6tXJz52lKtzZww2xKF/6u9ui7cKfBjhz2uJA52s1
	pQ9eFwFd2qy6tBAzJtecmzp8hOjfHj5+sSP3nyuVpQ==
X-Google-Smtp-Source: AGHT+IFCZxW5xkkLQVO4bhO5t14YkLHQdCIYGKaE4D2WdhngDakSrGmrovbK8gmw90UB7B0zqKymVw==
X-Received: by 2002:a17:903:32c8:b0:1bc:edd:e891 with SMTP id i8-20020a17090332c800b001bc0edde891mr10100219plr.1.1702431133063;
        Tue, 12 Dec 2023 17:32:13 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id ja17-20020a170902efd100b001bf8779e051sm9218046plb.289.2023.12.12.17.32.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 17:32:12 -0800 (PST)
Message-ID: <065ce852-27e3-4df2-b53c-d3a5ceb207ff@mistywest.com>
Date: Tue, 12 Dec 2023 17:32:12 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: unable to resolve libtss2 dependency
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 01:32:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61871

Hi,

I need to add the meta-iotedge layer to my project: 
https://github.com/Azure/meta-iotedge/tree/dunfell as I need the 
aziot-edged package.

Upon adding the layer and resolving its dependency on meta-rust, it needs:
libtss2
libtss2-mu
libtss2-tcti-device
And I'm not sure how I can resolve these dependencies.  I can't seem to 
find the sources for it but only packages for all different 
distributions. Can someone help me out, here?

-- 
mistyron

