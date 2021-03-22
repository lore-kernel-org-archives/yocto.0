Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web08.1291.1616435872292919124
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 10:57:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Qt3zatWV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id j20-20020a05600c1914b029010f31e15a7fso3621188wmq.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 10:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=/cIVhitU0JQ8KpmtZlvWjVq9x4bY0bJIfkZiAQzuCSw=;
        b=Qt3zatWVyho3XNEpBfvA9ZvEkGJOuU+LztTYRsXxgszSZO8Bfx9KabQ798SiOHqbBI
         OW5BKhy1bzmksDqY7sogFcIY9S0npxNygKihfVvbgPmuJ/Nzsiquv2GbDuoQSLSncGso
         QJEzcbWLYgnz451wteXQAuwPUHxnmlVIEPzrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/cIVhitU0JQ8KpmtZlvWjVq9x4bY0bJIfkZiAQzuCSw=;
        b=QkMv/UHI/XHjo/smth0N5fvNMvx9DlA+Eg7gTyrIobkhFEH9rs2HCvWnaENDQMT5DA
         96OAnatUF7O4A1vhYEpQ3MIOz1ZJae91JZ9bhL8SDi4JeRqpho75hJtnAXyw8YjYT6XR
         wyGHP70jO1v7WdtcH+WPE+rsOofGHQrzRSZoYoOfM7zOaJi7qh3N+C+5tnX3VKo/4ZBw
         g0OpzqcSHhsqIFM0APiN5zCA4khyTM2v3JwJiDYlzAUqIcIjFk4Oylb4yNk20wl9+loH
         E7qfoEYmDGMbKjEaqEg+4oukQdU/TNDOXVq7yFmKWnpaeYFKWu1Xu/WOcI6sqMXp/Mn+
         ZJJA==
X-Gm-Message-State: AOAM530I9jpYopCy5u6GUrtDHH7l9XIsgvxEyLvOqUrVzll5EKxbU3VG
	OQeBlPhGLu62aAuNFrs8VMlu5Q==
X-Google-Smtp-Source: ABdhPJzHbTu2GLeCKNU80A4ANZtjGsfJtSUAP8phes69TSIv8T1pm+UkG0PpobmG6inAEuzU1eNZcw==
X-Received: by 2002:a05:600c:198c:: with SMTP id t12mr178929wmq.183.1616435870848;
        Mon, 22 Mar 2021 10:57:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:5915:a721:ad3c:1822? ([2001:8b0:aba:5f3c:5915:a721:ad3c:1822])
        by smtp.gmail.com with ESMTPSA id b12sm10401246wrf.39.2021.03.22.10.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 10:57:50 -0700 (PDT)
Message-ID: <19addba875aa8ab81d4024ceaca14d788dbc82dd.camel@linuxfoundation.org>
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Changqing Li <changqing.li@windriver.com>, Paul Eggleton
	 <paul.eggleton@linux.microsoft.com>
Cc: yocto@lists.yoctoproject.org
Date: Mon, 22 Mar 2021 17:57:46 +0000
In-Reply-To: <166EB3F47EB07A94.1968@lists.yoctoproject.org>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
	 <9315981.NtHHCumI8A@shodan>
	 <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
	 <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
	 <166EB3F47EB07A94.1968@lists.yoctoproject.org>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2021-03-22 at 15:32 +0000, Richard Purdie via lists.yoctoproject.org wrote:
> Sorry about the delay on this, we do really need to get this resolved.
> I'm wondering if we should replace the angled brackets test with
> https://github.com/mozilla/bleach which would then remove the need
> for these workarounds.
> 
> Would you be able to update the patch for the others issues please
> and then we can look at this one separately?

I just sent out an as yet untested patch which may fix some of the quoting
issues by using bleach. I'd still need to add it to the requirements file...

Cheers,

Richard

