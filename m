Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.17759.1604843906903676560
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 05:58:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MFmH7m+U;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E585338C0630
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2020 05:58:25 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id c17so6016743wrc.11
        for <yocto@yoctoproject.org>; Sun, 08 Nov 2020 05:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=/qhRoWVgvlBYzHjJsd/ySibcQUC0sI6teFDjUIgB03Q=;
        b=MFmH7m+UL876CYTfbguEdXfeCWOiW15DmCEuMhh955s/VFVBD9At2r8WFtFG/csOW9
         ejueMmb/9BIpUBaS4z1/UEA3xJOyTKtmsGwg7vQOfgssx6oceCKCmTbohD258AMDnu+r
         yNvQlt9V/Am075q1oMwPMqCV7WfBO6ReLxxNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/qhRoWVgvlBYzHjJsd/ySibcQUC0sI6teFDjUIgB03Q=;
        b=ZMohhWpwcafLie9q6zZiIcGbLDwR3PvO8dDwcAzZz9SEser0Aw9swLzTn4VolNBaFp
         iPP9VKLUuDc3Y3zb13yeLwghILRt3K+KcDSd9+SmNgIsv6vbLt72zYbN5GdTU3Z38J4p
         DU1zLj92xfpS+JOnc/lnMFvKB27vwA9MVmlyNaXu0GypcTHgwwTkyAxCO3vmKVgtsjMc
         nXj60b5bNKoaS5QhYo68m86D2x0rDtknobwikPIb/CfOtIRWpSv9al+L9WkJ3sRJ8GPX
         f6VDz0/xkxYnWUbj0oaJmCOJMzKnqQ19+deQCxdaG1JI+oAwA2qaXZiivRQfnn5RioDo
         r/QQ==
X-Gm-Message-State: AOAM533vtC533UoLvMMPRIrxHnOcbJRJh/ssufrK9VL+3cnDcj0BzvQz
	jJFYTvv+mnii+m8DU/KzCfHOSA==
X-Google-Smtp-Source: ABdhPJzWwHcecw8XMvnCbvKRkTcXRI/ObT2uEBJ7ZHTkRCndy9n3INviyGzoI1DePGzdAP7uKO/pHQ==
X-Received: by 2002:a5d:4d0d:: with SMTP id z13mr12391069wrt.23.1604843904624;
        Sun, 08 Nov 2020 05:58:24 -0800 (PST)
Received: from 7.e.4.c.9.7.4.3.c.6.2.9.7.2.8.5.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (7.e.4.c.9.7.4.3.c.6.2.9.7.2.8.5.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:5827:926c:3479:c4e7])
        by smtp.gmail.com with ESMTPSA id n14sm10126356wrt.8.2020.11.08.05.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 05:58:24 -0800 (PST)
Message-ID: <a1422b29bbd411dbd3e5ecbe2880e19b6f14bfb7.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] schedulers.py: run performance builds only 2x a day, not 4x
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Date: Sun, 08 Nov 2020 13:58:23 +0000
In-Reply-To: <CANNYZj9MxkicwgD65AVdDNeXZ-6UWsnm2zCS9Ao7HSWyc0n11A@mail.gmail.com>
References: <20201108090923.3079-1-alex.kanavin@gmail.com>
	 <9f76d20390e74a51e338ade333a1f7a11ae7daec.camel@linuxfoundation.org>
	 <CANNYZj9MxkicwgD65AVdDNeXZ-6UWsnm2zCS9Ao7HSWyc0n11A@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-11-08 at 14:26 +0100, Alexander Kanavin wrote:
> On Sun, 8 Nov 2020 at 13:59, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > I've been wondering about this but I suspect we should drop them
> > from 
> > a-full instead...
> 
> Sure, I sent a patch for that.

I've been thinking about this and the reason I've not done this is
release builds. I'm wondering if we we can somehow make the trigger
release build specific.

I think is is possible to do this, I've pushed in a patch to attempt it
since I'm the one asking for the complication :)

I've tried to reconfig the controller but we'll see whether it works
out or needs a full restart (when no builds are running).

Cheers,

Richard

