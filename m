Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web11.5222.1619508761045298720
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 00:32:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=NsLYOZy7;
 spf=pass (domain: blade-group.com, ip: 209.85.217.45, mailfrom: yann.dirson@blade-group.com)
Received: by mail-vs1-f45.google.com with SMTP id r18so23676172vso.12
        for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 00:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tUQASOjIK+YrLuHBFHEoCoCxrmwMW5XfgNAGojXHG94=;
        b=NsLYOZy7ed+1ETz8plBUh6+8Rp4V4x9LYGEvOmTqbm3e6Pbp/3MfNAxg01zYk7rpRP
         qiIw31c/eDmPfk+vOKIPBlxPk90CsScDQAj5U50QQtmOTPhme7+IPXS1EuXdIGFI+mO/
         L5US6PW0h9NuMcsN9OInBa/4/2hzd3dzTJj/yZ+DdG6VfXWMwl4VCRViCxn8aBRRepdF
         syBRl831F4RI/Of4z+y8B1HkjGvSfif4dax76qSjUxzC4FERdSv/NV0RxguNediq5D70
         3z9gotFG8vCCZPIqU2PxwsWTLNxcynNTlPp09BLqn8RdSrQ4G3YFG65pgMC6pttmSM9/
         hCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tUQASOjIK+YrLuHBFHEoCoCxrmwMW5XfgNAGojXHG94=;
        b=IBwwo9JHADo9EggcbYUZWm1E2ZRCxmwwh5XD8ZlKja+ioguCQKW/L7WsvU6Qnb1yyT
         /A6mUtXGbggZJh6HFPKKzDAlpTV5KxPya0HgLEXQlRPTUf5RdmWl0RmPOuls779zf9DS
         0hQ8JtgSYVjd6n5sDk2xkO0+6marKkmpHHzKIUuAphjnXh876WAKfj5qJE+CJBiHWYpF
         iSBOQ1Oz6wWGzqMYy0W/TZe6IFMzi0RkDkgaURUaonQkXteg0ynC51uymOKePHqYQTQk
         tDIUHU38fukAL5MhD4b/4Ykx1WSyhy9IATQxVz1amGz6ywGzO3qBpf32APtxcEGXjAiC
         U98Q==
X-Gm-Message-State: AOAM530bbNr9WqcJS6G4MTYHpwtwDqe+NCuwUueKIzUPD2kv2Es9RekQ
	3fu+ogUUS5t16Go3PWRLCGh5Xx17qd7gE1SnT9Qftw==
X-Google-Smtp-Source: ABdhPJyh1Zvn7GGW4zwJOPbGsPRLEKcc+f7k21CKnroJqVdEzywS6tyCIEQ93Pq4Td/QbTFhWgxQUXQlacJ0S4Whqmo=
X-Received: by 2002:a67:2ecb:: with SMTP id u194mr15804769vsu.41.1619508760274;
 Tue, 27 Apr 2021 00:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <Mgmv.1619507435353064322.vAYm@lists.yoctoproject.org>
In-Reply-To: <Mgmv.1619507435353064322.vAYm@lists.yoctoproject.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Tue, 27 Apr 2021 09:32:29 +0200
Message-ID: <CA+4=imY9G8tOf5VA=TJih_t-aFhGxs6P59Ekg6ogCW0nLFcmfg@mail.gmail.com>
Subject: Re: [yocto] running application in user mode instead of root #yocto
To: mail2uvijay@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello,

> I am trying to run my application in less privilege mode instead of root user.
> As i am new to Yocto build could you please some one suggest on how to configure my build environment to get user and run
> my application with the user privileges at startup.

You may be interested in ROOTLESS_X="1", to open a non-priviledged X11 session.

>
> Regards,
> Vijay
> 
>


-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
