Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.14.1582148693585088382
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DPC43u8I;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72538E016E9; Tue, 18 Feb 2020 10:21:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F08C4E01483
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 10:21:19 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id w12so25160313wrt.2
        for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 10:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=7hAmtyAbshVBCkjzQGdvuOhiT0d2KR4XcUOiRu/wLps=;
        b=DPC43u8ITlPprSEYEv1O1FbAGU5wc7CoQXI30KwLAGPabYHXoiGNQTeQ7HjoSmN9vl
         A0SALcf3Ug540zNr8QHzJngCy3Gm7QtQp+pYq04sk/3Q5bklH+odpkxyKzF3MvSGgBHM
         Evg/a+kqb2q0xNsM+thPksrFNIS3L4wJLLMfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=7hAmtyAbshVBCkjzQGdvuOhiT0d2KR4XcUOiRu/wLps=;
        b=UE5eztaq9ATdPnV1zQuAwp+q7k8E8GlZZ6s+uI9N9pYDEmat2Ijm+lq0hJCDPzWGB4
         40nNHlnXT+zt9FTBgzCaGNgYTABDyNvg8lTSOIzLg6GjtHYvUSqFuWXfgCWh1vLoB1L3
         Q3OBuohCBvx+I/7zS0K5s+l2yl9dV/0agJKZj7RZJc/50O+9mSRAZzncpfU38q5yfFmU
         VrkeHtqX37d9e27npqDFKxtRtccLo1Mhi/Jpc+VXtyInpjiiN+z+yuOnsXJr+RIAbbDB
         Mi7bbCCmJxuf57lRZkYPX1TAonbi8ONh5jVtEdxigRYGNsbyUzhdwGRtdordyQAB7Lji
         tlfw==
X-Gm-Message-State: APjAAAVNDWUx2iHzEGM6oFXYpUje7RqCBMPxVfMFxDoXS4nN8lYbznoZ
	8kuXt7NmYX9S+zcjq+e6c+QZbntfcSs=
X-Google-Smtp-Source: APXvYqzUFmraa4lE2EpA/Y1uOEutGgHm2K6W7Bi9CFE0y22SMOw4Q19nRcjJC/s9CtiggnshJaSfww==
X-Received: by 2002:adf:e448:: with SMTP id t8mr30050598wrm.224.1582050078694;
        Tue, 18 Feb 2020 10:21:18 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e1sm7144597wrt.84.2020.02.18.10.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 10:21:17 -0800 (PST)
Message-ID: <bcd830c7d9c83f927058294d806540c912dfa78a.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status WW07'20
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto discussion list
 <yocto@yoctoproject.org>, OE-core <openembedded-core@lists.openembedded.org>
Date: Tue, 18 Feb 2020 18:21:16 +0000
In-Reply-To: <CANNYZj8GBXxLdM-TQ6TukuLMGPu167ZqL9f-nNmG21rrkMNJ_Q@mail.gmail.com>
References: <0b8a01d5e675$d2363e30$76a2ba90$@gmail.com>
	 <CANNYZj8GBXxLdM-TQ6TukuLMGPu167ZqL9f-nNmG21rrkMNJ_Q@mail.gmail.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-02-18 at 17:44 +0100, Alexander Kanavin wrote:
> On Tue, 18 Feb 2020 at 17:10, <sjolley.yp.pm@gmail.com> wrote:
> > With the git infrastructure issue updated, we now have centos8
> > workers added to the autobuilder.
> > 
> 
> What are the current plans for centos 7? 

Project members are keen to see support for centos7 retained.

I think we need to sort our buildtools plan, then we have more options
as we can use that on Centos7.

Cheers,

Richard

