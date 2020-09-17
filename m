Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.12032.1600336559771507323
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 02:56:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bytesatwork-ch.20150623.gappssmtp.com header.s=20150623 header.b=DcFgONwO;
 spf=softfail (domain: bytesatwork.ch, ip: 198.145.29.25, mailfrom: daniel.ammann@bytesatwork.ch)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A248F38C0896
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 02:55:59 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id u21so2443997eja.2
        for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 02:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytesatwork-ch.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=a8MBdZt/pWTJDnyENqPWExwRnCMt4wKalBDlz9HYksU=;
        b=DcFgONwOFL50krLi0Y+QNwLxUqamLVZQHHNUKq5kn59eIAk6T665TCvlbX2L1HUQag
         rbPW9P/M5qfwKFMepDygLSUCx3k1On+UrCUw9C5IuEo7DzIsaBnQH09aI3xQGJ11iHub
         rLbHERy1FZHnlknfXKVS7gQjYecPPsBXWGbtFeN341LDUliNONvOFfTF0i96oxEpdEHl
         8cncujvyBVZnoZaVrUTV88Uif9QyvigeiwlSJrD5JRyyETgCIIx8T9+nBuW3qbrhc8by
         Rf1vMPm2MQxgMRQvc9oe+ZGPcgVSncNWVd/QMJBlHqFhQRY9yngCynlc2ovrij8rqZC1
         1J7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=a8MBdZt/pWTJDnyENqPWExwRnCMt4wKalBDlz9HYksU=;
        b=YLkin28HAAq52ILQN3p2qkgeeTXaE9QvZ0LuCKf/60cLPZCn4QotxhPDBbaZ64iU5j
         gj/2H5WQQjoMVvLpkA2x2IUlAD9W29qObHH/FHolHpGGNexUpl4og4NMuXXuOuefFc/M
         tt3bCrlJRm0p24bdTJC1+LJ0QgF7kEPAdaAylzoRDDDpDcNjB7BhjQmnKC/fuiXJtAuB
         kFiudZz8gGGtDd68gBFLv9/w2EjI2MO5eo88ea1/8/lTVkO4xUAEA5EXU7Dh370UEL02
         2qTJQ/jVaXPwykHTLxT1Nr7NDlkdyOI6ke2YgpqHUPQEEmgnlSKWQZhEz33A5mvSh5BG
         A/LA==
X-Gm-Message-State: AOAM5303E4sF5nsK8zm0i2sKTQ9by1x3v7qDcnREuBGu0aR4T92MdEQg
	30G/2v8DWE7/87eMYQq3cbTVfDVdYKzy5gXp
X-Google-Smtp-Source: ABdhPJyGSayxet7FEtJi1OA6HcQqI1q//+KP3/eKfVHvScGVEOx/X7YecbBUOdlhTPbptv8asPqwZg==
X-Received: by 2002:a17:906:f8d1:: with SMTP id lh17mr28962062ejb.409.1600336557958;
        Thu, 17 Sep 2020 02:55:57 -0700 (PDT)
Received: from [172.16.80.6] (162.40.150.83.ftth.as8758.net. [83.150.40.162])
        by smtp.gmail.com with ESMTPSA id q26sm14703527ejr.97.2020.09.17.02.55.57
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 02:55:57 -0700 (PDT)
To: Yocto discussion list <yocto@yoctoproject.org>
From: "Daniel Ammann" <daniel.ammann@bytesatwork.ch>
Subject: split rootfs into partitions for rauc
Message-ID: <d09fbb41-d45b-9047-cb78-c3cd45f7fa09@bytesatwork.ch>
Date: Thu, 17 Sep 2020 11:55:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi

Is it possible to split a rootfs image into two images for two partitions?
Let's say I have a rootfs, but I want to split out /usr/local/applicationx into
a separate image so that I can have it on a different partition. The goal is to
have two ext4 images, one with everything except /usr/local/applicationx and
one with just /usr/local/applicationx.

Thanks, Daniel

-- 
bytes at work
Technoparkstrasse 7
CH-8406 Winterthur
Switzerland

phone: +41 52 550 50 67
