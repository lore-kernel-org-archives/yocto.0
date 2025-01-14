Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697C0C02183
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 10:35:24 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.41830.1736850922624882535
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 02:35:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JEamJlEN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so37893185e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 02:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1736850921; x=1737455721; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xVu2Tr+h42qtbFcyrXBB38bFPhqXWNpAoEgHPvsiLss=;
        b=JEamJlENRUw+t8UQNgd0ai/mYGiOvahgk/3ZbweJGAXiP6C0f34Rw/jVfOuWG/L6jr
         DBsxIohaLA/iP8psknds6xSalqEOKKEvsJ5LbbXufRddcUwn5cz6vMNQfRc2paMcZM7t
         pT3qxwHzj0zlHCCksTNCRDHwFHz7IjSRw6GYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736850921; x=1737455721;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xVu2Tr+h42qtbFcyrXBB38bFPhqXWNpAoEgHPvsiLss=;
        b=GzJ8SXcPyAxRjYbmhKZa9TXRY31lBYcCNeOMLj/7MYehQkYgutFY8/WnIziAHHyM/p
         +Bt+L0NDLROyK/fKLmTX/pIt+nG5CJu2vJTjYQH79A6XHWMP8julT7RlvEHCapWXaeNG
         Ml27emlB+jprCUyUl6HmtyKMfaHjMxZE7Unzz9vDMY+FzT2bmhG87dcQ7yuNGoeWdX96
         cWm8fMH122VERj+XRBGgeINZM0kxUQZUI/pEhobSMuCkFvD6/Tp65EXZfeR4yL3Zf4OW
         w1MnIudXEN9kg+OoutKqR2uQV8QKcH5ZA9n5cik1szgmAkaCPBWyZxeOwKT7uSZW6bmd
         /6jg==
X-Gm-Message-State: AOJu0YyrbD33fq4BlnHAIFl+l61AVMMUX3d4M32KvHR1CLPHQNsKGfW/
	8YZSyHrlv1z+DDnlQjteJqX96cQk07Sy/ksIuKBw87thT98S9l/ifkQasIh3poLR5OcvzBPE4il
	H0cg=
X-Gm-Gg: ASbGnctYp2CpQODuKJUSTS6lTZapDs7Sv5reCgpUZOrhlIG5xTCqJSExQQc3p6BftqI
	LQ2FSnJdqk50ydoANFs5TeYBW/PA2qTPO2MAb4lMD8TVgCM1SbJOEfGXZAV38vqIzXBSInPHNU2
	UJmxDyxb69EcQfG9F6KuDy4YMa0TBzvIqKSnC797yvoAqH+VHUwRTIeug0dMqCW66rvXDpmCNpH
	1Rta+p3voCE+biTn8bR8TvEKyUGUQfYs26cr1jCnHW1IRrDxgJUE6DuM70KsxDTAk26MQMMqxSN
	i5Rs/ibCjabpO/48IS3ireGtC16yEqj755Mhbn+W2dBtQw==
X-Google-Smtp-Source: AGHT+IEw2KyHQ4egvctFwsLcSAb3aoDK/fv+/ePBTIQsndS6MJD889ZB/4uozyFRZWMRjalf/J0sIA==
X-Received: by 2002:a05:600c:3b94:b0:434:e2ea:fc94 with SMTP id 5b1f17b1804b1-436e2696cb8mr241546065e9.11.1736850920715;
        Tue, 14 Jan 2025 02:35:20 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:682b:98f8:ba86:ec04? ([2001:8b0:aba:5f3c:682b:98f8:ba86:ec04])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2ddc5f5sm204934965e9.18.2025.01.14.02.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:35:20 -0800 (PST)
Message-ID: <f389aa26db3303d50bcc88fe31c5434163394719.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-status] Yocto Project Status 7 Jan. 2025 (WW02)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, wminer@linuxfoundation.org, 
	yocto-status@lists.yoctoproject.org
Cc: ",openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>
Date: Tue, 14 Jan 2025 10:35:19 +0000
In-Reply-To: <CAC_dYdrbwJPe8YQqvFpnpDU+Wq6NxMcj5sj2SSWRqao0zcZc0A@mail.gmail.com>
References: 
	<CAK5yBb8dbPpVqDweeU0xsWAZ07k1x29MMtzvWWDtJesqinKE-g@mail.gmail.com>
	 <CAC_dYdrbwJPe8YQqvFpnpDU+Wq6NxMcj5sj2SSWRqao0zcZc0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 10:35:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64547

On Mon, 2025-01-13 at 10:32 -0500, Walt Miner via lists.yoctoproject.org wr=
ote:
> What is happening with the 5.0.6 release? =C2=A0

The TSC met and approved it last week, I sent the email to the release
people on Thursday. It should therefore be in the process of being
released.

Cheers,

Richard

