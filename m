Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.38015.1578923525252737285
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jan 2020 05:52:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h5+Aj7WA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id p9so9765735wmc.2
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jan 2020 05:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=uTmQjA10fLe4E1GdkBHLXb4EiDPX2TUn76t6sn2WTqg=;
        b=h5+Aj7WAC3U0uMBD6tdpbIiMz38Jh5QOt5kiTLJ+hrdfXiUGs3XxEFWEl3DzS/mjVg
         heP/skncrnaAqYEYbfwsIsMwxHgntEijC96ROfdv6aOQUPjJUMP4QIVG66B2KxfB00Lx
         hzzRAOfD7JjfGhQSFcurHi/QIJhg2iKQwpikw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=uTmQjA10fLe4E1GdkBHLXb4EiDPX2TUn76t6sn2WTqg=;
        b=ez/fxzoImx170IH9ahiVuVaSwXiW+/g6PYg0FkLRZ4EM6bGDfW7UGYDbP1FNbfjDQ6
         nzXLy+jwhq19fM7ONjMSXrP8dt6hoNVMeE9zM4ywwXZ0m/aGcnOJ8Y0mDuS/5LhH5uRN
         SisoqJfr6wGs78F+Kij5bFCZEteywj5/bmJKMKd2jrgbaIkm/WNXsRmINrlqMJmW/qU3
         uiv+6C8VpQtPpU4ekLXLAftsTI06L28FceJXoyyFqizPH2qspWV+hWql27R1jIPBAQP/
         Uij5l0srQST4vCetuD2sHNKb/QXgbMr9bAvUf6cs1jenohTOxDWSPtgoWxWUYMaqbM0U
         0ABA==
X-Gm-Message-State: APjAAAXTcPygDnKy6K6hRIEhuBRuWLV6hs16Z42HqpzmJ7B54jpfvUEQ
	JUDWAN5T0eUJAYvx082/iQ3CSQ==
X-Google-Smtp-Source: APXvYqx/BBI2vPL4LICAK27np6kE4k0u4Z6I1PVWD4KdrA8gPJjKRnyqH6UMmtNNLpZfAwCrenqqng==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr19983895wmg.147.1578923523717;
        Mon, 13 Jan 2020 05:52:03 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id b17sm14913403wrp.49.2020.01.13.05.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 05:52:03 -0800 (PST)
Message-ID: <eb80ac740d24bcea10dfe56d4816062f515bfbe5.camel@linuxfoundation.org>
Subject: Re: [yocto] mailing list mangling name?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>, Ross Burton
	 <ross.burton@intel.com>, Andreas =?ISO-8859-1?Q?M=FCller?=
	 <schnitzeltony@gmail.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	yocto@lists.yoctoproject.org
Date: Mon, 13 Jan 2020 13:52:02 +0000
In-Reply-To: <ef7a6099ca79e3032ee02d912e5b953c5ba1a720.camel@andred.net>
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org>
	 <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
	 <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
	 <CALbNGRQzPKmUR8OK6ZA=yD6yZzVt=JyW=akCMmFrPtMkRP+1vA@mail.gmail.com>
	 <092c83db-bf23-eea2-36a5-8b88ae0e96dc@intel.com>
	 <15E914A621406CC1.15008@lists.yoctoproject.org>
	 <ef7a6099ca79e3032ee02d912e5b953c5ba1a720.camel@andred.net>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2020-01-12 at 08:01 +0000, André Draszik wrote:
> On a related note,
> 
> It appears groups.io is generating a new Message-Id header:
> 
> Message-Id: <15E914A621406CC1.15008@lists.yoctoproject.org>
> X-Orig-Message-Id: <
> f868f741ae07674cb99e2b0c4ea6f7621ca16474.camel@andred.net>
> 
> Is this behaviour expected?

If the lists reprocess the message (which they have to when sending
email back to yourself for example), the ID would change. A lot of the
behaviour now depends on the sender domain policies in place, one
reason we needed to move to groups.io as this is all getting too
complex to maintain as a project :(

Cheers,

Richard

