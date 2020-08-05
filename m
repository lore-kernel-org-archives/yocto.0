Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6647.1596632979749217350
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 06:09:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KYO3m2O8;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5356AE01F8B; Wed,  5 Aug 2020 06:09:39 -0700 (PDT)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A3DDE01F24
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2020 06:09:37 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id y3so40646476wrl.4
        for <yocto@yoctoproject.org>; Wed, 05 Aug 2020 06:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=IH06UGc24vx0Y28xNbhiSQjdHF9r+nz8Yo8H56BDczc=;
        b=KYO3m2O85BFX9LjZHLx8hJy6QKmCbW1AVB2jzLjMPn70UIcsRpkGcEdKsi8wHNJfBZ
         7OuhFaKeIjlvhHd6fzV3vYbSW09f/kLuKQI6CVV5kbA3RTqXhFjCLQw4XntO3zu6hzkD
         QNRtiAsfp9eqWJ0qQQo03lxyQIzNsDZOl+OFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IH06UGc24vx0Y28xNbhiSQjdHF9r+nz8Yo8H56BDczc=;
        b=GBfNafsdqZ4M/t3cYspHY/V1eY+EpghdhMJ0wzLX9F7trrproMP5D1AGNp39ZvAmOO
         NuDooMc66ULYZAmfDf+NBmjmP4o0UEc4H4TqLe6qeYaL3+vsS5gU8yiwLJ4XSUSEP/tU
         bEhLlBlmLx09Favo4mHeyTATHd+w0skyiy7ZCMx6dFbs/Ji50UK+2vf1xAWj4mhxIAJG
         Trbg3bsm5Ns3FsWxsMNvo7xm/TxUGQmQuqXFm3qdci9NNiDdMEwuKWorx+5n48plARIX
         ehr5s/gWTJb37bQEqL7r3CPvHdZj9WPGkjqGEksDfLfSjGUbRN+4VCn8RXG8xC1WexuW
         EBYw==
X-Gm-Message-State: AOAM531/grz1bqOPjsBOHHvc6BAuj5CgkEB972rOK3JTuy669qe35Mf4
	PDifKIMeoDosjzEyfUIsZNoS6g==
X-Google-Smtp-Source: ABdhPJwmyf6++tPeC5yZRAbVZvvklSLFNwfJpCPbSwNCfanA79tgoCjuSGneECj4u4S1h2/6LeDVvA==
X-Received: by 2002:adf:ed85:: with SMTP id c5mr2740048wro.307.1596632977017;
        Wed, 05 Aug 2020 06:09:37 -0700 (PDT)
Received: from 1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (1.8.8.2.4.4.9.8.7.6.b.0.9.5.0.7.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:7059:b67:8944:2881])
        by smtp.gmail.com with ESMTPSA id b8sm2722036wrv.4.2020.08.05.06.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 06:09:36 -0700 (PDT)
Message-ID: <46f432ee580bbabf1b4378a89cbe49829da4ce0a.camel@linuxfoundation.org>
Subject: Re: Mirroring meta-kernel on git.yoctoproject.org
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>, Yocto discussion list
	 <yocto@yoctoproject.org>
Cc: Ross Burton <ross@burtonini.com>, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Date: Wed, 05 Aug 2020 14:09:33 +0100
In-Reply-To: <CAM9ZRVvRYmxjUcm7BmCX6ArPAn7JaEhGukbU4zGhvedmc8NcFA@mail.gmail.com>
References: 
	<CAM9ZRVvRYmxjUcm7BmCX6ArPAn7JaEhGukbU4zGhvedmc8NcFA@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-08-03 at 09:56 +0100, Paul Barker wrote:
> I'd like to get the meta-kernel layer mirrored on
> git.yoctoproject.org
> so that we've got a backup available in case of any issues with
> GitLab. This has been requested by one of our users
> (https://gitlab.com/openembedded/community/meta-kernel/-/issues/11).
> I
> also think it's important now that meta-arm-bsp and a few other
> layers
> depend on meta-kernel.
> 
> I can enable an automatic push from GitLab whenever the repository is
> updated so all we would need on git.yoctoproject.org is a meta-kernel
> repository and push access from the relevant SSH keys.

I've had to think carefully about this and I think we can only say no. 

The reason is the namespacing. This is taking a special namespace and
its doing it by stealth, not a conscious decision. If we do this, its
going to create confusion for users and also create friction with other
Yocto Project components.

This was warned about when "meta-kernel" was started and now its coming
back to bite us :(.

I suspect this is something which will you'll want to appeal against
and I should therefore refer it to the YP TSC?

Cheers,

Richard


