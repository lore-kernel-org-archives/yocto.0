Return-Path: <uwe.geuder+yocto@neuroeventlabs.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81D6AC77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 11:05:49 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.34677.1681902339984203292
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 04:05:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@neuroeventlabs.com header.s=google header.b=QRFqAHPo;
 spf=pass (domain: neuroeventlabs.com, ip: 209.85.208.173, mailfrom: uwe.geuder+yocto@neuroeventlabs.com)
Received: by mail-lj1-f173.google.com with SMTP id q21so4331455ljp.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 04:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=neuroeventlabs.com; s=google; t=1681902338; x=1684494338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9iLmQ7xsfJg3ev7N9xvbO20z5mdj5+ZnmOaUT8UcbTg=;
        b=QRFqAHPoseOdczcedq0jydUb/ZyzxQ5ZSbzNP1coOWqEDu+x8fv1aDZFlMQ6O9HaWr
         1wrLqqO5ls5s0kbvsRFKPEJ3yjTlMCa9/pVTiX+YcsFNC/o9JJ4XdkbAmoLT8X0mcpSo
         RXWPf8XRWY6KV4uzOfdyG3Qnqs0I08a5QC8iY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681902338; x=1684494338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9iLmQ7xsfJg3ev7N9xvbO20z5mdj5+ZnmOaUT8UcbTg=;
        b=dSJif6Hg36S3k1dY6+cDpyjXmESUazkD6xGqOJWMtHC3Xn4pC67GcZImEw/yhRPD+8
         kQHnl84glP5Z3zhEyEetzKWVGBbnS28D/ePN5HcaqIlFUxax4UeP4BC0gnCctfH+SW9d
         6W3Biz96PpiRl1z+ivPVKSeX4lwUqa+rSkJ+1d1yQlY2DmnpD5HrFGT/36cr9lTSbhH9
         /SdoPfpHAzESf2xS2WG1FTmRXryRgeJ3YVl1DBCWpH21bsGb32bukf38X0Dn2e1u9yRg
         m636E111C05ReoeYqDowqMyHXuVYSnhwy1dMkujRMPyYE8dfXHI/GF5MGnI5O6Zjp+qJ
         S26Q==
X-Gm-Message-State: AAQBX9cKJ+jt7jyXmuj507gsiw5f5GfqPOycozak2fpntKHALqggF+9X
	1Y1yB+HTYtIN1riAiLMGL70eJQOHcXYnAC6Fql3xrrW1
X-Google-Smtp-Source: AKy350ZGtbQcKI9VR5fjfQKoc0UavP/Uebw7RcEkMiM5bU9jVSwxKhni6vWQ4rfHAjC5CJPtyaKA2w==
X-Received: by 2002:a2e:6e03:0:b0:2a6:1681:81e0 with SMTP id j3-20020a2e6e03000000b002a6168181e0mr1935592ljc.2.1681902337393;
        Wed, 19 Apr 2023 04:05:37 -0700 (PDT)
Received: from [192.168.8.100] (85-76-102-80-nat.elisa-mobile.fi. [85.76.102.80])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c011200b002a7af83ca1csm2881595ljb.21.2023.04.19.04.05.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 04:05:37 -0700 (PDT)
Message-ID: <d32fa5d2-fe99-a57a-37d8-9c66ebaad283@neuroeventlabs.com>
Date: Wed, 19 Apr 2023 14:05:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Postinstall scriptet failure
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <f20700bd-ca0c-2908-7d44-f47ff5686d3d@skf.com>
 <b677b5c7-c296-27d9-ffc0-180ae2346681@skf.com>
Content-Language: en-US
From: Uwe Geuder <uwe.geuder+yocto@neuroeventlabs.com>
In-Reply-To: <b677b5c7-c296-27d9-ffc0-180ae2346681@skf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 11:05:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59728


On 19/04/2023 11:02, Pelle Windestam wrote:
> Any ideas? I do not know where to continue troubleshooting from here. Is
> it possible to "debug" the postinstall scriptlet in the environment that
> it is running in?
>
It's a shell script. You can add pwd, ls, echo commands, and
whatever else you would do during debugging. set -x comes to my
my mind although I don't remember having done that. I see no
reason why it would not work. Whether there is a way to do it
more interactively I don't know.

The output will be in the log file, I'd assume (although I have
not had to debug any scriptlet recently). You could also use
output redirection.

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland


