Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.730.1626804097648876760
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 11:01:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=drRZFQSm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id p15-20020a05600c358fb0290245467f26a4so88049wmq.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 11:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=wF4A7WPJzTeYUSggzq47W9VxDfJg/WuUB0LRhzv14IU=;
        b=drRZFQSmfbpT6Tc9Xxa0mZmARPg58CDubisIMn5/gvnzEX4AecreRzJNfGHTkwuPSz
         pKVxog6JJoaCb5y2MdSxBqyoZlcFz3PSnsQO36K/Dg3BncLvj7fOsOgaHGyt/3ung9p+
         pI1d2L2ykwSOT8E12Ho+Py+WdlG4iO1Ye/BeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wF4A7WPJzTeYUSggzq47W9VxDfJg/WuUB0LRhzv14IU=;
        b=BYKQv73OJUyAHZg98Dq1XOypxbm9SaMV5oshRkMf6NpLtJ68W+KZQdQnfGIVixKnMS
         mgpbU1Y0g/NoY+iiTnm/IWa1zraYlwQetNNOVMktkajKptK5+3e8f+CLiqwwttyAPkTx
         CrE/JANvXaazojPpABnkmF9vtYNC0NBjTd7lMPzqyTL5DfpCaRsFYzeb0NWJwc24nZvY
         Ui6+12cicQXqGR1VGE43P9i33uf5yXVr6zD4u5hmJCYZtNWRhaFo5a0b+Gy6PxB6XzP4
         YnqTsiuYxb/KjkqJU3qVM1N0sVJBtjbi60S9cLji+vIp1AEQXWG32BUYyg229gkVkHHU
         bjwg==
X-Gm-Message-State: AOAM5320yNozEgSsc4PQ/hkPeLXHDJZB2bOJAseyZiSz7g0TbjaIpMgX
	GsyVaX4nswEwD4sJMDd4LK+GCQ==
X-Google-Smtp-Source: ABdhPJwJq/iXiHqYGWyrwNFhy3V+jo1Yg3aERAFOE6/4bbjR0SanSpIpyPEPluX3gbkGcwmf58ifnQ==
X-Received: by 2002:a1c:2012:: with SMTP id g18mr10828656wmg.170.1626804096022;
        Tue, 20 Jul 2021 11:01:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2cd8:e78f:29a5:f753? ([2001:8b0:aba:5f3c:2cd8:e78f:29a5:f753])
        by smtp.gmail.com with ESMTPSA id z16sm25493905wrl.8.2021.07.20.11.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 11:01:35 -0700 (PDT)
Message-ID: <38370593ab1701c8c6b496841bf3adc989438ad7.camel@linuxfoundation.org>
Subject: Re: [yocto] [layerindex-web][PATCH 00/15] Upgrade to Django 3.2.5 LTS and Celery 5
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Tim Orling <ticotimo@gmail.com>, yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org, Tim Orling <timothy.t.orling@intel.com>
Date: Tue, 20 Jul 2021 19:01:32 +0100
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2021-07-18 at 16:07 -0700, Tim Orling wrote:
> The current code base uses Django 2.2.x which will go out of extended
> support in April 2022, but also holds us back from updating a number of
> dependencies.
> 
> Update to the current Django 3.2.5 LTS and also the latest Celery 5.1.2.
> Celery 4 has not had any commits since 2020 and is unlikely to be
> getting much more attention from the developers.
> 
> While we are at it, upgrade all of our dependencies to the latest
> versions.

I don't have the skills to review this in detail but it sounds like a
good step forward for many different reasons, thanks!

Cheers,

Richard

