Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11076.1608038714470774948
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 05:25:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JhkkOL9q;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B59E238C0883
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2020 13:25:13 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id x16so27659934ejj.7
        for <yocto@yoctoproject.org>; Tue, 15 Dec 2020 05:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=z9rWsXL/ie+19yZZ2rmvZk6LVUiZWF/k5akqa2uEHiE=;
        b=JhkkOL9qe2bY6FRk0QFZmUhzmWuHjJl/4Oxcjh3H+wjmRUebMmsftXI2YVR4jkTWqd
         qJDlCqZ8+a9kxq3BGXTSqqwZPWlYcCxMu6XxOQTvGd+OwB+OlF24Gc5Cob4u1Kopg9fn
         mKM9Dt7iBTt89bhYUSNmtKnYtOE+NclVto6YHodwAW9taRY7aLMT1tO+01ERjiEq8kpN
         peeNOjyEsjVGBTC+/s0dSBEJXfn/EqrpjcddNV9AYxoA+/kyoIqJrzumK1fZMsB16YDP
         8NSK7WRGBG15dSsHhZ0XvtDpibq/LV10ArrjTDgCok9Eb8bzCLhUYQ6WbsLdN6kEM+7j
         aR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=z9rWsXL/ie+19yZZ2rmvZk6LVUiZWF/k5akqa2uEHiE=;
        b=C8JV5420nL0mLy9Vd4w7RwTxI5vUKH5lDhz9IWTwJBE9LDonInKGjvpmLJJDaii2Wu
         HS6AhR/dRZkVLoE/1xSMiHnaqYVMza08nhNSvSCAedo/RT19/lblKXV6ZsSWOumx229F
         5iyRO3P3pZmAk3CfX3M5sZFnsqoYUd0+rV/q1yzmTf3UcH/LHYRCqsAHOehIoHTwg3eN
         x7hMfP76nkHRX3uehCFzctvw8VlsLL4k/UKfa6yb+Q11nzhrd4+YwAiN6UGDsx0EQQu/
         Cvsc6JAhO9dbT1D9nL64A8adGzjgQpWcHYX/1HQZQRiYGv/zPyMIapYYTysmE2hgP7jq
         bW8A==
X-Gm-Message-State: AOAM5337g0O8Gx7xtokqFmjcGwD+wVc92n3b6zdm1TuzOQ0j4jExdSwK
	hNlmMCSJiifP0LgaiAiiGDvVKCUCaanlI/Q/9iKwzr+u/MkgCA==
X-Google-Smtp-Source: ABdhPJx1YFVE+wYbxvQDxZO7H1EHJS5HZu3bNjmNDKcX/Vj6aBC53639zLqV7YOieb1Nff9HtGrMnhy69IoE17RdNSc=
X-Received: by 2002:a17:906:af5a:: with SMTP id ly26mr26564568ejb.416.1608038711865;
 Tue, 15 Dec 2020 05:25:11 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 15 Dec 2020 14:25:00 +0100
Message-ID: <CAAfyv36P_iWi9jHXNtWDJv2SWTGZRJ2SOtpx4yO6UqydJbk4QA@mail.gmail.com>
Subject: pygame 1.9.1 python3 issue?
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add pygame to my image and took a recipe from
https://github.com/openembedded/openembedded/blob/master/recipes/python/python-pygame_1.9.1.bb.
with few tweaks I can build it on dunfell but when trying to use on
board
I'm getting cythos errors. Doesn anybody share updated version which
works with recent poky releases? I tried to pass cmpila phase on 2.0.0
but it seems it's too much for my knowledge ;)

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
