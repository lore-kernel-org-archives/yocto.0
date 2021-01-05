Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.162.1609888256815295647
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jan 2021 15:10:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GDQCNBP0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id 91so766252wrj.7
        for <yocto@lists.yoctoproject.org>; Tue, 05 Jan 2021 15:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=j9mAS5cjepvdOIkcCZvPSmyt3C4hS+8L2vCL/qWdSR4=;
        b=GDQCNBP0SARv7B+QwQKxM4jcdOW/PD5rvikY5WtFsDlsBHFK2FLIwk87AHMyYusOPG
         5P4dU8PWNxW62br93fyzJm9RORUFPs4edBaf4316sS+38cAy6gapY8g/lkTHnhhLMSG7
         F1SiARc2kgseVGbQBIL/vT52vvWLfYk4TOAgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=j9mAS5cjepvdOIkcCZvPSmyt3C4hS+8L2vCL/qWdSR4=;
        b=QcKEHLmyBFQ+P/VCPYWtSn6mHl4VN7Iq1ZD0QiopzIkbR7FJlU19D1YNI5JaatsO0j
         8ne/lIzLA7vVg52b3K919vYYn/1NwIE0l1erSXGQ/8MLl26kZUVaW6CnMSechdoM0zSD
         h5cl3ut0Y5atvgkQiam+AiCPf5Y5xoTf0o+ZqrXK4fhmG0AGoLajN69yapw0IuEf4c1k
         KFsOjcdkoh8tVaCvL1fm92WJfqjSiPvCi6WPmmBfq5tK9bWsPdPzIM2lW2PgMDkDsUVu
         g1p2CXhfb19ADRoF6S+a0gPiX4Cx07pu2lfhXWxuuCnXc09SNNIQHpLs4v57B+0hU27n
         B9yw==
X-Gm-Message-State: AOAM532Fw843eT3gC5berBUqO560ixcMaffQI7dDsbkaiO6G/suYnauN
	se7x3bMV7s4jagGAQnDDMlqgRQ==
X-Google-Smtp-Source: ABdhPJwg8g8ylkQ9HpQ1TzU+yUkUFR2wQDdBKMu2Bch0so34gdwBnc5lMb0HrW0yDrwxm8bj5Yy2nA==
X-Received: by 2002:a5d:6a05:: with SMTP id m5mr1607166wru.96.1609888255052;
        Tue, 05 Jan 2021 15:10:55 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f056:12a7:edca:60f8? ([2001:8b0:aba:5f3c:f056:12a7:edca:60f8])
        by smtp.gmail.com with ESMTPSA id q143sm743316wme.28.2021.01.05.15.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 15:10:54 -0800 (PST)
Message-ID: <ce71ec0979a6cf5421b0fcaf3164b12e2fa88d9c.camel@linuxfoundation.org>
Subject: Re: [yocto] oeqa: testcase caching
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Konrad Weihmann <kweihmann@outlook.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 05 Jan 2021 23:10:51 +0000
In-Reply-To: <AM9PR09MB4739A4D38A58259775479952A8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
References: 
	<AM9PR09MB4739A4D38A58259775479952A8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2021-01-04 at 11:44 +0100, Konrad Weihmann wrote:
> I have a bunch of custom testcases (oeqa/runtime/cases) which are 
> interacting with "d" from the build host - basically fetching some
> info 
> while executing the test, e.g.
> 
> foo = self.tc.td['MY_CUSTOM_VAR']
> 
> What I've seen is that these files create python __pycache__ files 
> during parsing of the testimage run.
> 
> On the initial run everything is working like expected, but if I now 
> change the variable "MY_CUSTOM_VAR", without modifying the 
> target-filesystem the value inside the test case doesn't get updated.
> 
> Did anyone else encountered this?
> 
> To me it seems like the value of the var does make it into the
> pycache 
> files, ignoring the updated value on a second run.
> 
> On that note: wouldn't it make sense to disable the cache creation
> for 
> oeqa test cases? just to mitigate chances of such scenarios?
> 
> Or maybe I'm doing something wrong here, so any pointers are highly 
> appreciated.

FWIW this doesn't sound right to me. pyc files (in __pycache__) would
cache the code, not data so I don't see how these values would be
preserved there. I don't doubt you're seeing some kind of issue but I
suspect its more likely bitbake's cache or something...

Cheers,

Richard

