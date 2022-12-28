Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49ACC3DA7D
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 15:51:45 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.184287.1672242704035901946
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 07:51:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=RWZifvPt;
 spf=pass (domain: mistywest.com, ip: 209.85.216.43, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f43.google.com with SMTP id o1-20020a17090a678100b00219cf69e5f0so20395865pjj.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 07:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6axyEAjWlcxCBPAS+CcZeqjvqRqtslHTOXiL1W+u5w=;
        b=RWZifvPt3HiktHfM7aTJqa52eB6MuXyJeRw3RtHrGMgYDMfMDDl3MFepfmQPOkJnbC
         alTpXNzlI+maL3yXDsO/+6LxEreKu8N9aybKZAv6tqdH1lP3Kp9qH7TZ6xaivciv/bmP
         Oq9BXwm4Abo6S6U6IuCFFx7Ou4BdhvrbF+yKvb92IwuWFoAYCoUsQL2hu4ITLTZNNFQT
         f/bJNR/xLYK6Olzr06kW6SjS1Yxxx0W8RNNJsSn3vAuPjw0uvCgKt0HUEPiYOg2v5Rmn
         heWZmfa748f7N81SM8CSw1H9Qfp4xgoP7ls5wxQooYBhjECuoyWc24aySS8ldvviPuX+
         5YYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T6axyEAjWlcxCBPAS+CcZeqjvqRqtslHTOXiL1W+u5w=;
        b=urBg9+hBqcdg/Byx2mp5nd/8h5vVziaOBIBum0tPFJQpib8fxqjw/lP3g97040taBx
         +nyFwp0bOa1tsA7eF7kRit+1McZkiE7vZS1bWNOe1s2s9s7eGmnJ47C+ZAUEqigZxXr0
         TBNOh3woZaiCyP77xDV6lap91HI3JCLNXh3o9j3DxqMrjvUGhUPcyLQxiOKrJcb+LR07
         wTEaUMVHndRBaqEF7onqOXYtzGa8KTX7rrx72ia5Yka4YEFwlAcp2H7qDfHxOISNyPA7
         X74NYFpD7Tpy/tI39p7nYe0frQeL/WhaC5fbW/8nMwDqmdNFRsiAEUIur/xiGWRAEnVT
         n6GA==
X-Gm-Message-State: AFqh2kpLoXS0LfqfvCuGdpvO+f5dzijCBg1jWdX40gfZyEErk/LitT4n
	D1kNlyNt7IxUsWD3ekko7QZExUBl9mdEEfS7lmE=
X-Google-Smtp-Source: AMrXdXt+dMWNsK629unrDYGJXjs/UgTa/r2Qsf6fqLDfT7t1pAiGXiQRJHw+FLo7s9fHBXXKvDSm/g==
X-Received: by 2002:a17:902:9a93:b0:192:9e13:a4ba with SMTP id w19-20020a1709029a9300b001929e13a4bamr70739plp.34.1672242703265;
        Wed, 28 Dec 2022 07:51:43 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id k3-20020a170902d58300b0019276616eb0sm6527541plh.83.2022.12.28.07.51.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 07:51:43 -0800 (PST)
Message-ID: <bdd0eba8-6eb8-a72f-85f9-bf4b316f0987@mistywest.com>
Date: Wed, 28 Dec 2022 07:51:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: DISTRO_FEATURES in custom recipe does not override local.conf setting
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 15:51:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58881

Hi,

I'm using the provided local.conf from the BSP which contains:

DISTRO_FEATURES_remove = " x11"

but I need to install xrandr in my image which needs x11, i.e. I set

DISTRO_FEATURES_append = " x11"
IMAGE_INSTALL_append = " xrandr"

in my custom recipe. However, upon building, I get the following error:

ERROR: Nothing RPROVIDES 'xrandr' (but 
/home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/mistysom-image.bb 
RDEPENDS on or otherwise requires it)
xrandr was skipped: missing required distro feature 'x11' (not in 
DISTRO_FEATURES)
NOTE: Runtime target 'xrandr' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xrandr']
ERROR: Required build target 'mistysom-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['mistysom-image', 'xrandr']

Can I override the setting in locl.conf from my custom recipe? How?

Ron


