Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.1658.1624564842878032997
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 13:00:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zy9tdzi4;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id i189so9793295ioa.8
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jun 2021 13:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hLopFy+sXLIjRmM86ih7tTe3kNPGPeRHQZ7shrabXX4=;
        b=Zy9tdzi415QUuiUq+/vhrj39rOMxtMYMEoVoMTrQSI+lnOvVeoQ57kMWnzncny2I6A
         wcryhbi5wg9EFTlnRD9A9NarERGoc9HyxnBKanG/yhwXrFTESAOb2dlXZvLq+/jlvs3J
         KZJ+BazVZubelbYHv03wG4EqyXxQb7hYGJl04d+vTQTDE+c6RYxoz1hEWM3GECbsQlxl
         M59vDdYKYqjq+vLeNt153tN7dXCImDNXUo/6QO3gLk1DbZkQIeuXhOUTCHxZer4ZBMP6
         2z91hRig0q58X4LMVLVq3ImF1YgML7o0cbQmOa0geMDK+/+jCa5Q8irgNqSicP4H1+wH
         6dwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hLopFy+sXLIjRmM86ih7tTe3kNPGPeRHQZ7shrabXX4=;
        b=mIf2jxWqW5Sc3zT25gD11hdrYwQrlxPtmUWcRyprWNSJ9ihVGxyyUEAoaSoibf6gkW
         Bzp4WHpcKRrcxTArYsMlwlSGg99sD567E6jAJZ93fWWF3M64ws4vfuH9peRr0H02p2W2
         UrR+/nSKjb7M/pDnMYcz5dVT/hzoGqh+HN23ZXR2OdBBUvT/uUSD8P+0rTX28pIYlRL+
         4mP0tFH6d9yX8Y0uIFn7cQw5cTZd4hx2MXoBDxbYi7vjQXOH0V8+cbVkou85qgzz9KRb
         Vo8jsNe2eMxfH+AGhFaFpERB7FPjW2EJd5ZVR87xP5SlUyB/vOwOSQsmz/A5740MLqxn
         Dutg==
X-Gm-Message-State: AOAM531eAgbNeOxy2F/YKqz6PClV4s0GcUPfugh4c7wODqtv9rSYX2L/
	fY1v0SQXLFE26rfeTSk9uvQ=
X-Google-Smtp-Source: ABdhPJxcUDxT2fMv7utK9vwbwqli8xplYOkKkxuUR0HCOZhylUpGDNCG2LRtkK7povz1T9qqa8hKpw==
X-Received: by 2002:a6b:b215:: with SMTP id b21mr5388933iof.165.1624564842299;
        Thu, 24 Jun 2021 13:00:42 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x13sm2345166ilo.11.2021.06.24.13.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 13:00:41 -0700 (PDT)
Date: Thu, 24 Jun 2021 16:00:39 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2] console cleanup
Message-ID: <20210624200039.GA23652@localhost>
References: <20210624123959.10105-1-twoerner@gmail.com>
 <be66b62e-deab-cb5a-4f21-714adeaf7e98@gmail.com>
MIME-Version: 1.0
In-Reply-To: <be66b62e-deab-cb5a-4f21-714adeaf7e98@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2021-06-24 @ 10:36:34 AM, Khem Raj wrote:
> This version looks good to me.

Thanks, I appreciate your feedback.
