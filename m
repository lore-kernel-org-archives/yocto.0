Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E56CD4F21
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 12:13:17 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.73733.1778587988277558382
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 05:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N0pQAOTm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so5021439f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 05:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1778587986; x=1779192786; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahjqqcjR0yTtzM/fH44/Ud75a1LKdKN5axPHMXNMxmk=;
        b=N0pQAOTmD0TFKdd58o+ugzoeAkEO4DHWuA6W9NV96xrnBgiDN+TBnAssh/JnaE3uNC
         A7U5ENWSyUplJdGRYwBReFmEEo0x25UWHFsV+BOrsyLMyAb6QUydnHCDaYzYWa9+oeTd
         3qxWX+Q7o9G94yMgqL44I+j6rUWmnz2CGkQN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778587986; x=1779192786;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ahjqqcjR0yTtzM/fH44/Ud75a1LKdKN5axPHMXNMxmk=;
        b=Gm0jbJK0kuhu920oXXfx4H5yVjYwXbtL04gVKRYRGlUhkou6+ZfRANdaPENcOx8DfC
         n60CcNFGYzTjrKeNCDhYgZYprm0ju43G0Om4iUin8LGZXUaJnpaYZdKDlu1nxIjLmLEV
         PsIuEcCyJ16Pq/L82eqANTWQ7ZOjpPp0grwnhywQB0gESdYiQRML6lfSlCUGlqKk95wX
         OrBpvxM+djPOLx60JBbUzhNUzXD4KG3GRoBddv9p5WQdJfav0w45egZiddinySvQ6mMs
         gaE6hgO6lh0crFCxTBmWmVuhCy+2x4iOa8YUENIpIhsQTvc44Yt26JF1BKKuuJbwLFYP
         7wQg==
X-Gm-Message-State: AOJu0YwZ97a10t5E1JPxWAgxmWoqrbjydt/URNgdbtx4ZD1A1gq0Sx2L
	ikQq8RRm8db81mYDHKSc85LlCrW06etVZ0i+6ALMimD2nIL4reuEKQQ9Ke2Rg8hfJJpLMGbfhCI
	ipsJI
X-Gm-Gg: Acq92OEer/yese/vmkLgDSFNxVcXI2nMEp5UEsx/IOV/oiQVOnLRORJlUPraBDZX4Rw
	6XHUWR2nY6knBMErdP3tWQSjM4KHQGxr26y/eipiUqe3qwYySRvZvCCv7JNzFkbiRs1p95nfUBM
	IjD/tvEU2J1bz3zCu+zJc/LFRzqkooRPO/T0pUcWGAkIsgC3gWABy6/ZG4BGZKb/jkxPFRxciMX
	DcgTOQ0T6B5zhr/5X7GGx5OiKnmziDiemCRrYMWQqT7HlZv1/9M85nWWRIFnf72hPoTwQJmQPLQ
	CBCrDdm6+YyLwgvr4NSUqwAjUgHbycJ2PGGipCWvdX8+Ta5xQNY50DzGwfRehF7u1/gLzzoq4jr
	NlsivoCWG2NKooJ9NgveVBIKAnlX3A2MrjTzYfO25POeYVoPqnXMQFwdhzhsROMFaShx7dCHCyg
	jNzdX9f38pGVDfiJzxUvkLNACZzq/60TkCx/EOlcw/0VZ/a522W4alMjyq/jePkkDFC3RmWf//P
	IndtSt2lqQS+LlP
X-Received: by 2002:a05:600c:8b83:b0:485:40db:d40c with SMTP id 5b1f17b1804b1-48e706acfb7mr210623345e9.3.1778587985585;
        Tue, 12 May 2026 05:13:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:44a5:ca0b:d27c:9664? ([2001:8b0:aba:5f3c:44a5:ca0b:d27c:9664])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e9067811dsm75018175e9.9.2026.05.12.05.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 05:13:05 -0700 (PDT)
Message-ID: <c087189f913cfd64e1d835c4f96815a42c51eab2.camel@linuxfoundation.org>
Subject: Re: [yocto] Looking for Yocto-supported Reference Design
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, dave@synergy.org
Date: Tue, 12 May 2026 13:13:04 +0100
In-Reply-To: <001001dce188$4a8cde20$dfa69a60$@synergy.org>
References: <001001dce188$4a8cde20$dfa69a60$@synergy.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 12:13:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66534

Hi David,

On Mon, 2026-05-11 at 13:53 -0700, dave via lists.yoctoproject.org wrote:
> 	My name is David Richards and I am blind. I am new to Yocto. I would
> like to build a portable talking e-book reader. The goal is to support
> DAISY, Audible, Kindle, and epub books. In addition, I would like to be a=
ble
> to stream MP3 content. To that end, I am looking for a reference design t=
o
> base the project on. It does not require/use a display or touchpad. The u=
ser
> interface will utilize buttons and speech output. The design should have
> existing Yocto support, if possible.
> 	Does anyone have any pointers for a reference design I could start
> with?

There are many boards with OE/Yocto Project support. You can=C2=A0get an
idea of them all from the layer index's list of machines which is
showing 22 pages of them!=20

https://layers.openembedded.org/layerindex/branch/master/machines/?q=3D&bro=
wse=3D1

Some have better support than others, we've had the Beagle devices like
the BeaglePlay and earlier devices like the BeagleBone and BeagleBoard
supported as one of our test platforms for a long time.=C2=A0That has basic
support in meta-yocto with beaglebone-yocto and a full BSP from TI as
well. There are others like the various RaspberryPis and may more,
including more experimental ones with RISC-V processors.

It sounds like the audio output might be important to you and however
you plan to interface the buttons to the system so that may be
something to factor in. You might need USB? That might narrow down your
choice. I'd probably try and find a board which holds interest to you
as well.

Cheers,

Richard




