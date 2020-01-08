Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web09.8716.1578494746616458836
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 06:45:47 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id j42so3594157wrj.12
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 06:45:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=QT0e91VSoLFnXSZreQgmOojsXPB9Dsi4tqnW0FSWumc=;
        b=ZaDywwnWTj7AW8OmJFb06He5eSNjDM4YTRoKXjWqfVl3safgNq2nq9jPBT69o7jDdM
         Kepowj+g/rgyVtsH7VhEnq2qpQ5pZmyLfeT6CNerFtOU0VW656IBTvSr1/F2b74+yiwo
         a7ZhoLtTo2Ptx1s5IBwrpQrxqw1esoLbi/E6UaxKwmDP2aFk05Cv1Pwo5rjN2973uuPw
         nxHuyeRhRo6dnwvP8ymbjvxwGueSalPdgMQi4NHbYl87LX3y23Ew4rgFRuQEjbS4uFMl
         nk4LmYp1H0TFDmdtu2SXGCm0bLO3ZaGn3PSZqmMq2Cd9VbdhqOF2iQ9oVnp/Pp8p4+nW
         mckw==
X-Gm-Message-State: APjAAAXiq3TotuFrFwmu0QH2N/SYNOuMGWQ9ul+BTuz2PGgwe4Zhk4Vl
	rMamjuRjGDEYbKyJIZkyJvLrJ77n
X-Google-Smtp-Source: APXvYqzilQJ1fzj0fjPbZyxrm7hb80ncE68vChgd9zEymnVEpDAI9IxKGVAirPjiryjdHOzoJhcN7w==
X-Received: by 2002:adf:ef92:: with SMTP id d18mr4839214wro.234.1578494744280;
        Wed, 08 Jan 2020 06:45:44 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850 ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id q14sm4097911wmj.14.2020.01.08.06.45.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 06:45:43 -0800 (PST)
Message-ID: <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
Subject: mailing list mangling name?
From: "Andr? Draszik" <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Wed, 08 Jan 2020 14:45:42 +0000
In-Reply-To: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The mailing list started mangling my name.


The From is sent as:
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>

but it comes back as:
From: "Andr? Draszik" <git@andred.net>

(and of course the patches in git look funny now)

Could sombody please look into that?


Cheers,
Andre'


