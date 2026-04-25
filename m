Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8D4FF885C
	for <webhook@archiver.kernel.org>; Sat, 25 Apr 2026 18:02:02 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2377.1777140120985079321
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2026 11:02:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fru5Lp1T;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so8004155f8f.2
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 11:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1777140119; x=1777744919; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RMfswNzhSlKVV5QWgE8VxPMwSnTuR+oKvmRs9yOs7Nk=;
        b=fru5Lp1TKD0CW3K+YSqoL4WTculb+tYwhtID/0AXAnoeskFe2p1I+ElnLYxYTND/5e
         aJzhNS6eqCGtVrieBSz0XZ1iAas2QVKh35bVQC03WpyHbvgxBAsNXn9ePDUUcOaoYXLx
         htHRqcNT44FtlS65WPyeWf7yslC5qIWfItjco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777140119; x=1777744919;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RMfswNzhSlKVV5QWgE8VxPMwSnTuR+oKvmRs9yOs7Nk=;
        b=sNwRfYZFgrFbM8lN0TiJdN+ffHYAnH0NxJhKbL9rgKRdlv2rjZerrH6UtXPpFzjvMQ
         8NSwIwzjSSGfDqPDgMQC/Uo3m5joqEnmHV1QQcIDzrP01n0EBoz7GYX8c5A7oVK32NCg
         o17GKA0i+Oe7v20SEJG9NboRnoHxubjtRnDr+MdbReinyzFQh1bWr61q+i93jxiw911m
         CNbHY+VFjel0uRyz2p/TYCeuZVa8KmUfDNK4aG2MEUzVw+EnHVcehRt4ymtCsRpmye0r
         RpnlzSfB4jJiekTO3swySIQezgZnHAVRvC0Qf83r3gKQpZwzFN66xOS3KcJX7M5jAIZB
         BXgg==
X-Forwarded-Encrypted: i=1; AFNElJ9xb/7z6Sz7RN6Hioq8vQ1yliGFS7eefdYb+rUTKD95QpVy+5rSw2bQqpDAY2g4Q1BDpCuiKQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxRVEanIcGwt8XMbL/3YE2f/U28holXwp3DlvSLcpfIsccVMsKh
	Isj+XOwVJah93wWQl5kfK7xFKjqnncrKRhAREHMB3MgmYveGJ41WWs4Qh/ZuSTIhJdE=
X-Gm-Gg: AeBDiet/tOsdt5ow2qZ4xxCagqu2vzgTcCtcrRjlAS9Yc8d0bZKihjEkDPnQkzJX4XI
	vqrgkqmDLP1rE7EXF4TESQVHR6ORfcwUI6/0y3v3asnI0wTZO3IQqjscWpnIAJadNnYhpQT97zH
	VLjhAaVnXB7K6JNn0ELL9aPOd3zA4uVZxoGCjR0KDxeKTmzDI/ZRecLhCyCntvdycUCz050JNk3
	T39Z9bNFDyChvYEU/1VNjzHXEuAGhleS4obbf1JTmeo77Mm4uf2EqYXzE47s7Zl4Ej/APaGFM3w
	9dd2a1MiN98Kcv8dXXiuNUstDjh+7EztdeEF5um+godNqK7tZ9HMCq+RvTp8xcgzxwwF+6ViREl
	i4djugNHwIgyAOOHtgxkiHORCT9xYJMtqnwCz34KOkKehozaeVdvIZoWS2SHf7wd6axcVlXGiO9
	plOAj6r7aqS7uGcHbKpDlDLK1yoIl6IHzK0R90fLfCEu6HsPdEkLP2USNmKiaFvyC/YRf6RbM/S
	BbXzNKrrKMzBmy+d5HjqJCDdPA=
X-Received: by 2002:a05:6000:4283:b0:439:c18f:5aaf with SMTP id ffacd0b85a97d-43fe3e13dddmr56992970f8f.34.1777140119230;
        Sat, 25 Apr 2026 11:01:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fc2e:49a9:508d:b834? ([2001:8b0:aba:5f3c:fc2e:49a9:508d:b834])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a166sm67254107f8f.19.2026.04.25.11.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 11:01:58 -0700 (PDT)
Message-ID: <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>, 
	yocto@lists.yoctoproject.org
Cc: qa-build-notification@lists.yoctoproject.org,
 "yann.cardaillac@balena.io"	 <yann.cardaillac@balena.io>
Date: Sat, 25 Apr 2026 19:01:57 +0100
In-Reply-To: <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com>
References: 
	<0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
	 <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
	 <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2026 18:02:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66443

On Sat, 2026-04-25 at 19:33 +0200, Yann CARDAILLAC Pro wrote:
> We had the same kind of error, we suspect some issue on crates.io
> side, did you have any news from them?
>=20
> I couldn't find anything about this issue.
>=20
> Shall we change the way we download the crates?

https://github.com/rust-lang/simpleinfra/pull/988/changes/85fe8c9cbf4b5fec0=
6c5b3a936c63497fdb877af#diff-abcb0d6ee61cc76b8ecffa3cf0b751e15ee9563eb39abb=
526815c2638168ad04R41

Basically upstream implemented rate limiting. Whether they got the
numbers right when they did that I'm not sure as it is easy to hit
those limits given there are lots of small crates in most builds.

We've not thought about mitigation yet, in theory PREMIRRORS should
help once you have the crates somewhere...

Cheers,

Richard

