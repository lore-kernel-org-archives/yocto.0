Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.13842.1591191781146934854
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 06:43:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=d88PBjJK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id j10so2419932wrw.8
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 06:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iKFdQcefquIgUrTfT0qtJ4yQ13Aqt/o2W8i+tzrUyCs=;
        b=d88PBjJKGvr8ZiliIaHswYtr9QwFlNdTtsA06preZI8JEbLvF1W3UfQRdksKOoz36q
         01wkiya35LiX3nNm/QmV7hMSKKeEo1s9sluF1AA5cAviNo9YgZB/TFnyqFis+AsXM2hY
         8srk8napdWI3DMv13dv4Nz131QhpwwFIBlpDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iKFdQcefquIgUrTfT0qtJ4yQ13Aqt/o2W8i+tzrUyCs=;
        b=E2w4uO6sF2rP9mmIp4rmQnSpsip91pr8P/FETtT4HvDq9MMhjfRN10G4ApRkWzPd9y
         CEJvHCyqhGDe5CKSzU8C2lFSiymH8PCYHkXm46uGaQX9Wg5yle1qQE9TiXxszsEf6lTw
         nZ/AJEfs7D2jfMsgbc+CnpAZJdXW/3SCK1YxLJad90JHWzIX6+37+SGMUXe0kWxEFRG4
         tOGxHbiqbGVGqiPw40JZnga1czKYhsS5pLu7vS6Ap0GUm7E82YlhY9mPGRpFF59UFQyb
         9/ocXHZdw5X3xFj6Efgk+u0OXGV3hM6jbQ8mi4S6YIkHvUK/MHKs8KNF0xHIMCgMPwMG
         vJAg==
X-Gm-Message-State: AOAM533jQ1o9f6faXd32xMqWgWfsSkcx94BUVuerP+QrWCeU9d51jEKV
	fwtD17rqyEdHozl1vUCF3Wpcyg==
X-Google-Smtp-Source: ABdhPJwyyZMdT/bZDYsjwGl1g7+u1+2tUnzteWCnUbRpX4tNvWzagUhMsFo8t3pR2uci4EPtIUEyeA==
X-Received: by 2002:adf:e3c4:: with SMTP id k4mr30579886wrm.262.1591191779518;
        Wed, 03 Jun 2020 06:42:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u13sm3425025wrp.53.2020.06.03.06.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 06:42:58 -0700 (PDT)
Message-ID: <115f3f1f445a163af79f94cdd48b497f478ae85d.camel@linuxfoundation.org>
Subject: Re: [yocto] devtool modify issues with ubuntu 20 and fedora core 32
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Andrew Geissler
	 <geissonator@gmail.com>, Christopher Larson <chris_larson@mentor.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 03 Jun 2020 14:42:57 +0100
In-Reply-To: <CANNYZj_39Vq-1754skg3Zhvkt+jU1bDwKVDVar0jZovZC4P3WQ@mail.gmail.com>
References: <srY9.1591133327694476026.h5dt@lists.yoctoproject.org>
	 <CANNYZj_39Vq-1754skg3Zhvkt+jU1bDwKVDVar0jZovZC4P3WQ@mail.gmail.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-06-03 at 11:06 +0200, Alexander Kanavin wrote:
> I'm not sure if this is distro specific. _PYTHON_SYSCONFIGDATA_NAME
> is set from python3native.bbclass so that native python can pick up
> target configuration, and if the target configuration is not there
> (it comes with target python3 build), then there will be a failure
> like the above. How does your recipe look like? Do you get the same
> failure if you try devtool modify in a plain yocto environment (not
> the SDK)?

Chris and I did talk about this on irc:

(22:33:38) kergoth: actually fails even without prserv enabled at all
(22:34:07) kergoth: just import pydoc will call sysconfig.get_path() which enters that codepath
(22:34:22) kergoth: so calling anything that imports bb from a task will explode
(22:34:33) kergoth: cooker pulls in xmlrpc, which pulls in pydoc
(22:34:41) kergoth: breaks devtool modify
(22:37:04) RP: kergoth: right, it was more about it being a hint at the kinds of issues
(22:37:11) kergoth: ah, fair enough
(22:37:26) kergoth: i expect we may need to change how python3native is doing its thing
(22:42:55) RP: kergoth: quite possibly. I never liked that fix and suspected there was more to it :/
(23:21:39) kergoth: RP: maybe something like https://github.com/openembedded/openembedded-core/compare/master...kergoth:python-sysconfig ? i'll mull it over. makes sense, though. we rename _sysconfig only for the python3-native recipe, so it'd make sense for us to only change that name for our python, not any python run from the task
(23:21:49) kergoth: _sysconfigdata, that is
(23:46:35) RP: kergoth: something like that would make sense, yes

Chris: Did you come to any conclusion? 

Does someone want to send a patch?

Cheers,

Richard

