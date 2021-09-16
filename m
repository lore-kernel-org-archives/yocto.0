Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.91.1631809098545285587
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 09:18:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=U1V9pZx0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id q11so10391648wrr.9
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 09:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=rZLbAuamTET32M7Q3c5dKMuDIaGiAKbirtLGFiTcIF0=;
        b=U1V9pZx0F/4dx58ei18dO+I6nRpcGy06vPu6jnGALyTRaCjl8wj1JyzL1ZZh9MYecH
         90fK+2Pyh4HLH2C6QxAYPnkFhzF+Rqe6OfQeSSITamM/hzvLwovptXpvj7c6e8OteOA5
         79s8HkfVXyZN+Wx7HpZDyFnKYVSY/lnlcxJH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=rZLbAuamTET32M7Q3c5dKMuDIaGiAKbirtLGFiTcIF0=;
        b=bebfE3v1IKZyzll8qezkyy01oeXFu9aQbj+R+lkXGP//7mXmcbooAdUjEk88m1k9us
         qvQ5gpW3QwiaZtLq8csxCKj6lPS2Y+8J5q+71cxE+QdIc8XFkXpNqqj7GmMDIeYcElGN
         ZQISzFr3x9C8KR84CNnbXONYN3L2onhTNM0WRVMulCTyTLS52QzEB7lnA5GwANcpPH0Z
         SA08+AvvYkyCErn6xxIOG3LwXnajFIxS+iNsxnMtTfcDDrBuNA+0v5VdX63KOlRZ4rPM
         Zf3mFY9fZ9MQyvOgcmOxqid8ZqIA5pfs16mvqQuBdRvqgonLll1DF1ji0BUQRtw+iEOb
         p7dQ==
X-Gm-Message-State: AOAM532XlabPHaljbxtwxr0c0J0SjtdAUN6lPS3hsQ/K4EAKFbR3L9hW
	XSsj2GULZvE9jVuc507zFs1VIw==
X-Google-Smtp-Source: ABdhPJyRipy3IV2BbtZNumUhkZJ3M+vwgbpPkInVGUdC3kqwT9pCPlwsl4u5dVAhoLd7xa7nTDbOFg==
X-Received: by 2002:adf:e983:: with SMTP id h3mr7120756wrm.231.1631809096793;
        Thu, 16 Sep 2021 09:18:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f11f:8fd1:42b2:e87c? ([2001:8b0:aba:5f3c:f11f:8fd1:42b2:e87c])
        by smtp.gmail.com with ESMTPSA id l26sm7921080wmi.25.2021.09.16.09.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 09:18:16 -0700 (PDT)
Message-ID: <dd6912eaba2712a99b0674a9ddd7c7aa83ab783d.camel@linuxfoundation.org>
Subject: Re: [yocto] [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 yocto@lists.yoctoproject.org,  anibal.limon@linaro.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Thu, 16 Sep 2021 17:18:15 +0100
In-Reply-To: <20210916124617.72791-3-alex@linutronix.de>
References: <20210916124617.72791-1-alex@linutronix.de>
	 <20210916124617.72791-3-alex@linutronix.de>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-09-16 at 14:46 +0200, Alexander Kanavin wrote:
> Currently, ptest-runner simply kills the offending test without further ado,
> which is not at all helpful when trying to figure out why it happens
> (especially if such hangs are intermittent and rare). There's now a script
> that gets executed before killing the test, so ideas on what to have in it
> are welcome.
> 
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  Makefile                         |  2 +-
>  ptest-runner-collect-system-data |  5 +++++
>  utils.c                          | 24 ++++++++++++++++++++++++
>  3 files changed, 30 insertions(+), 1 deletion(-)
>  create mode 100755 ptest-runner-collect-system-data
> 
> diff --git a/Makefile b/Makefile
> index a6372de..168cf5a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)
>  	$(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC) $(TEST_LDFLAGS)
>  
>  check: $(TEST_EXECUTABLE)
> -	./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> +	PATH=.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
>  
>  .c.o:
>  	$(CC) $(CFLAGS) -c $< -o $@
> diff --git a/ptest-runner-collect-system-data b/ptest-runner-collect-system-data
> new file mode 100755
> index 0000000..5bfeaf3
> --- /dev/null
> +++ b/ptest-runner-collect-system-data
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +# Other ideas on what to do when a ptest gets stuck welcome.
> +pstree -a -l
> +df
> +free

It is great to see this. I'd suggest dmesg in here since we've seen components
of tests segfault before (e.g. lttng-relayd in lttng-tools).

Cheers,

Richard


