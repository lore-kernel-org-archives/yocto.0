Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6122BC3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 06:17:07 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.117332.1723702621018140309
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 23:17:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=D8E6v2CP;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f3b7aba3dbso3666881fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 23:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723702619; x=1724307419; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Vb+JEYX/vWtncnXQ+plFJoilCNpqBS+kg53kR2k0NEU=;
        b=D8E6v2CPjhzTgzZEJ/bhbmz9tyLgpmnnICMsiQe3P38eRxDFrVrpL/P2y7dTcYkMb/
         FZqt9SLtN+8tZdDDZaGTzs+y6G8wLcEDlz/OXItzKNxFBLSWC91XoWn7Le9KurCcAKOs
         SpcferOHMBVr7qeVqhVLrwjSiQHQOd451ldvLvxM6Noj1Aqnk+CPrWk69cDKNk09XNxY
         NUK3AfjLT/YgT+Ec3ubXVGB8xhLCB2Ktz9hPPyOv/DlrE0FOVJcXXSiuDe7dhABn0Ex5
         uubHq2MW3KiztAHBRcmg3tZ/UxwfLYb5exM4wsGUi1r+3yWZzqgvWT3K9LPWptqSGzCe
         8iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723702619; x=1724307419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vb+JEYX/vWtncnXQ+plFJoilCNpqBS+kg53kR2k0NEU=;
        b=CPBlj+OI167PrJejsoyR4L9ECq/xyHcrFUXU9StZLz4FcDwm37C/557p+hJW1Yhqf1
         dcVXo3Irk4yktDkCmtBAm3+bv6ZX9kCzb+n/3vfP+oSxpLYBl7f12LS1Tn84QFdZIiYr
         k/FmyQ9Ey93kVfPgc+9vy46LCgZfp+EmhtTcvcC2HB/64ux9UpuCmMIT68ft/K7RbQ1a
         e61ZcopzK6VLNxMmYUrlz0LdxrOyu63699ze51p5YYIEtEjwzJ1h6UvpdJn6C+emFtr6
         ih7/mw96DRnQuClCZnZl7RxilkYqo1oJw2l/J9I/Cp9bY+GpFLdGlNBtMZIk+F0nOd6P
         usBg==
X-Gm-Message-State: AOJu0YwHDUGov//rwtcvPkveRb79ubXLFXHnT7GibzEOaPIrrCBB43kn
	P6zKGGIbdpiC4PMY63atHu4z+nS76ofhofiEBkoukisWiusrMW7O+s8BqHKENQ+rPUSgZGk8IJr
	X
X-Google-Smtp-Source: AGHT+IFBdtPRhCq6fGNWfAWs/7IaHbdNZpqVrQ2bInSQ4KEwQN4Q9grqD5T8nfx6Nl0W+Ie0Lso5Ew==
X-Received: by 2002:a05:6512:31cf:b0:52e:9fda:f18a with SMTP id 2adb3069b0e04-532edba8e92mr3699614e87.44.1723702618858;
        Wed, 14 Aug 2024 23:16:58 -0700 (PDT)
Received: from nuoska (87-100-245-199.bb.dnainternet.fi. [87.100.245.199])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5330d3b8ed1sm99210e87.73.2024.08.14.23.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 23:16:58 -0700 (PDT)
Date: Thu, 15 Aug 2024 09:16:56 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: raj.khem@gmail.com, steven.monsees@baesystems.us
Subject: Re: [yocto] Parallel builds under yocto
Message-ID: <Zr2dWMCbY4deHsfI@nuoska>
References: <MADEUP.17EBAE4E6A437742.17352@lists.yoctoproject.org>
 <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
 <CANNYZj8OMoGL5h9nGfht0w=KizX-FZuY6kFhGFb8Qv1dFAwM4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANNYZj8OMoGL5h9nGfht0w=KizX-FZuY6kFhGFb8Qv1dFAwM4w@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 06:17:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63704

Hi,

On Wed, Aug 14, 2024 at 09:36:05PM +0200, Alexander Kanavin via lists.yoctoproject.org wrote:
> Also there are sensible defaults for both, which use autodetection for
> how many cores a system cpu has. Generally you need to start tweaking
> these settings only when defaults aren't working well (e.g. if the
> system doesn't have enough RAM to support that many instances of gcc).

And when RAM becomes the limiting factor, one rule of thumb is to follow
CPU thread count until each thread has at least 2 Gb of physical RAM available.

On complex builds with lots of C++ (qt and friends) this seems to be a good
upper limit.

Less than 2 Gb per CPU thread results in OOM killer actions during building/linking
steps.

If one tracks builds CPU, memory, local disk and networking load with Performance Co-Pilot
or similar tools, it can be deduced that builds are CPU bound only some of the time
and a lot of time they are actually memory and local disk IO bound. Thus reducing
disk writes helps.

http://events17.linuxfoundation.org/sites/events/files/slides/elce-2016-mario-goulart-mikko-rapeli.pdf
and slides 49 and 50, for one setup.

Cheers,

-Mikko

