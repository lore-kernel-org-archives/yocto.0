Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.8359.1576754203115445993
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 03:16:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=K7imts1U;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id d16so5544305wre.10
        for <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2019 03:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=IZXYfBUHp3SPapre1O7PyVKL1xHvD6u8z9a0UXZFy7E=;
        b=K7imts1UD6OKNrXmHyxjnIO7Hah0OrhjmsBYZ8Mz8PTCfTEuJAT5gstME/FDzT9EHl
         2MulK9xp4Eqmx+7q3PFWSxPaW9sB74VBn/cX6DmGCkrYiLQ/iLucUenEJwAhHcVsEppR
         La5y2i/yIOrPIZXpW4oqFAOYvJRuiFyfI2olw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IZXYfBUHp3SPapre1O7PyVKL1xHvD6u8z9a0UXZFy7E=;
        b=NwURjh63nFqXXo9RnL0ci6b4EbDUtRBecHkYsfxckZChX8hvuVQvy6WQMRKHO5NPmn
         jM95n5Ht4ySNl0FYVj+QqWnj3fbKcrl1s5YrKL2nUgf82+T0bopfQTHETLWMNStZ5iOt
         yS9bWAbQgRr4bQQmd2Gleyl1g+o93O76qcqaOyTXeyqKieV1aPkjb0MLc2FD00S2TB59
         MhZXf58L7HGeTlrjPaFwGuGzjTLStWSmw3U54J5SmZRc/qrFlo0q1n0EGW1iXBa+j/f1
         kCa/x7zOS/N6sZmBl2Cat8cZHVDyIBgE+B/PKU31amz5dtZGisog0C4hDCSYS65S44ed
         g4fA==
X-Gm-Message-State: APjAAAVCKILTDS8bXJfZ5ON2tlPn63OcCQ5cMy8q5amEdXlpjDcspamV
	AOKcBDGx/ofe29dI0Pqz8To8kQ==
X-Google-Smtp-Source: APXvYqyTAEq6Col1hBJRmBjDRh7sGO3qdYwwTOIDkSdxyKZ7iDvAIrgoL4PpfzeHe5MQ9NoDhxLKAA==
X-Received: by 2002:adf:f70b:: with SMTP id r11mr9347453wrp.388.1576754201531;
        Thu, 19 Dec 2019 03:16:41 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g23sm5792934wmk.14.2019.12.19.03.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 03:16:40 -0800 (PST)
Message-ID: <9cb0a929b4b74c114156ad5fd1731b4bd16e8e5d.camel@linuxfoundation.org>
Subject: Re: [yocto] SSTATE_MIRRORS with ssh/sftp fetchers #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: angeal1105@gmail.com, yocto@lists.yoctoproject.org
Date: Thu, 19 Dec 2019 11:16:39 +0000
In-Reply-To: <OmzH.1576751850923597182.4rq4@lists.yoctoproject.org>
References: <OmzH.1576751850923597182.4rq4@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-12-19 at 02:37 -0800, angeal1105@gmail.com wrote:
> Hi everyone,
> 
> Recently, I tried to use the SSTATE_MIRRORS variable to get back
> sstate cache from a build machine shared amongst developers.
> When I tried with the simple FILE fetcher, it worked great and
> resumed the work where the build machine stopped.
> But when I tried to replace it with SSH and/or SFTP fetchers (setup
> to connect on my own machine), I had no errors or warnings, but the
> steps started from scratch, ignoring the sstate cache mirror.
> 
> The thing is that we can't use unauthenticated HTTP/FTP fetchers for
> corporate security reasons. 
> SSH and SFTP are convenients as we use crops and mount ssh keys
> inside to authenticate ourselves on corporate git servers.
> 
> Environment:
> 
> I'm using Yocto 2.6 (Thud) and CROPS.
> I've set up my machine as SSH/SFTP server, and I tried it manually,
> it works: the connection is established (even in CROPS).
> 
> I defined the SSTATE_MIRRORS variable in the build/conf/local.conf
> file.
> Working:        SSTATE_MIRRORS = "file://.*
> file://{COMMON_PATH}/sstate-cache/PATH"
> Not working:  SSTATE_MIRRORS = "file://.* 
> ssh://user@my-machine-ip/{COMMON_PATH}/sstate-cache/PATH"
> Notworking:  SSTATE_MIRRORS = "file://.* 
> sftp://user@my-machine-ip/{COMMON_PATH}/sstate-cache/PATH"
> 
> Do you have any idea on how to use these fetchers (or other SSH keys-
> based secure fetcher) to share sstate cache ?

I think this is a "not implemented" problem.

If you look at bitbake/lib/bb/fetch2/ssh.py or sftp.py, they don't have
a checkstatus() method that local.py or wget.py has.

I think the sstate code relies on the checkstatus method working to
know know if an sstate artefact is present.

Performance of that function is key and creating a new ssh connection
to check for each sstate artefact may make the build prohibitively
slow. There are some connection caching mechanisms present which may
help with that.

Probably not the answer you wanted, sorry but at least it might explain
why its not working.

Cheers,

Richard



