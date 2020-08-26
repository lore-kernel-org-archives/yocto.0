Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web12.4723.1598475816965463119
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 14:03:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N07OM22W;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f66.google.com with SMTP id h15so3252379wrt.12
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 14:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=c5/hIgkcivAbZ5DaChshHssWZRo8DAWSKdsCSA+glfA=;
        b=N07OM22WkojZsTjKG2xU7Jt3yZYum5hV96dwQAv7k/5p+yi6PEl6cpn1kDR9SRf/+Q
         2RQsvW5Wt56tXZ4M+IkWKrTExgSht5p4I53+Pv5zCZ/rps2fyfqvbSJD5Y6BOm52AtdK
         ilTrrTr93GdPVMC+LCXQlyQOoD1jSXocCw+E0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=c5/hIgkcivAbZ5DaChshHssWZRo8DAWSKdsCSA+glfA=;
        b=r0ZgWYm4QFrokCdK1BOQkQ/xgDAWE8luCIJcs09GV8M4Yn3j0h3q4ZnPDYVzLNWkrz
         JP1MOGnj8bAgdSa+pyqTGtAJ7leN0sdv/Tvh0woaMGlS1i4sKjRoRmV+mtig0ctjttxS
         b7FDjwsM1kiNbueY0My7ak93JUZH7uKVu1UpXgkkr2bspdm5tsXMEEIAeYLpqvSL9eNi
         WyVp74LMmXYw/asv23ZKcvAUQy2EfjFHV+YwBza5HXK8QITZQLWjEbJi8JIN3bWTGGE7
         Xb4DDDSMNrzs2u5jRxBxCUHo+d8+d6hk3VlqaxVoB06KBj1XVkmX0wjX6zmeXsgZJdXT
         bbOA==
X-Gm-Message-State: AOAM533bIiB8iVDcW7yb9QsOJR76Znlg91xQOoFyHhFdWh7fG2E5Xb79
	WKo9zAH5dX5DbhTr9jIgZoLkvA==
X-Google-Smtp-Source: ABdhPJxUbMqmqlMprg7o7y81s7HJnwGfCvEEDyTDCi6UGGHKCtzKDUfXafAQEjV4sEIRIi9NFHElNg==
X-Received: by 2002:adf:82f6:: with SMTP id 109mr18650939wrc.25.1598475815345;
        Wed, 26 Aug 2020 14:03:35 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id m8sm529787wro.75.2020.08.26.14.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 14:03:34 -0700 (PDT)
Message-ID: <2fcbd0f884b6b53a4cdc7002c278eef3a7868c06.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 22:03:31 +0100
In-Reply-To: <CANNYZj-Fg0aiqK2QM__OC+3r2N5-THnsUYX5Pgtt+mjWDDq5zg@mail.gmail.com>
References: <20200826155433.16346-1-alex.kanavin@gmail.com>
	 <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
	 <CANNYZj-Fg0aiqK2QM__OC+3r2N5-THnsUYX5Pgtt+mjWDDq5zg@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 23:00 +0200, Alexander Kanavin wrote:
> On Wed, 26 Aug 2020 at 22:50, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > I suspect we need binutils-symlinks instead of binutils?
> 
> binutils-symlinks is only an alias to the main package according to
> binutils.inc:
> 
> RPROVIDES_${PN} += "${PN}-symlinks"

Fair enough, I suspect I'm getting it confused with gcc-symlinks.

> > Also, thinking about this more, why aren't these tests scp'ing the
> > file
> > to the host system and running readelf there? That would remove the
> > need for the dependency?
> 
>  I didn't write either of the tests, but yes - I can work on this
> tomorrow.

Right, I didn't write them either, they're rather old. I'm just
thinking whilst we've gotten this far we may as well fix this properly
and stop it being copy and pasted onward. I appreciate the help!

Cheers,

Richard

