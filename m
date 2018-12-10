Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39AE6E00C89; Mon, 10 Dec 2018 03:06:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5837BE00C7D
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 03:06:46 -0800 (PST)
Received: by mail-wm1-f68.google.com with SMTP id s14so10494863wmh.1
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 03:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=3BA8k/0H7/ChogIZsWp7TdH7UwiWsKqekPrSqL0CQF0=;
	b=X7RMuXAFKyovPOkoAhooi9uOwf76u2sTGSFDgcVbJtUjuTPbw3kvxKyIIzrtionLAv
	Rgzjjp3Ppxrbxy84XjS6uAPt50yJcnmqxA6+d/a0169LrWJ1PWHZfB/Kx3NWfNcIo+/1
	NJHmdlAu9+9ZMCm1SIDpiraV1Er6+1F+XrLf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=3BA8k/0H7/ChogIZsWp7TdH7UwiWsKqekPrSqL0CQF0=;
	b=K3mu0Ibq4HNq8eiXbt9mWDpOdv3k5o0LuOlfJtMtLG6hoInIQxaxUofFQIqTmryv6D
	BwbJshT4d6EtdmU2GstUz2iW08X0Uk/YPznIP3HMOxXtdME2Y0zh/Vu6Z5EwSzivs7ev
	XcLHhPdPTXJ/+9GlRCmMromzVwQQrwh9pbKAUcVi+v7bQU215SD94TUlpn37L5MXrQTq
	3+pcHpISjABl2cqkWc8gk4UQ5ZBDQuQweAfE2w1s0Fo3OhR2Bk4OZpGPrnRaiJmX2UIt
	yx2kV2Uv6++Mcii01l4xQjCCdIBjoSTjAx7kowt9WM66NoP6joX25xYfsVhscN2X+Fmm
	pnPA==
X-Gm-Message-State: AA+aEWbI6CZoRsyvr+cUTM884ITTuD9Qtyj8QL9eYD9WhU4ur8YwHg/R
	XHKw1gRqZLij3hx/4W/LmXYH4Q==
X-Google-Smtp-Source: AFSGD/UdyLHSe7V1JBYKwVREyWN87h/jiGJ9RO6UzcbG2XjLane/vf3fiKIb3rXsVstmP4WQC2mMwg==
X-Received: by 2002:a1c:c44c:: with SMTP id u73mr10685440wmf.45.1544440005213; 
	Mon, 10 Dec 2018 03:06:45 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j76sm30777142wmf.26.2018.12.10.03.06.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 10 Dec 2018 03:06:44 -0800 (PST)
Message-ID: <b6c73373e34528b010445ce77bf9c42f8f52ff29.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: hs@denx.de, Yocto Project <yocto@yoctoproject.org>
Date: Mon, 10 Dec 2018 11:06:43 +0000
In-Reply-To: <ee7a87cc-3aad-b7af-d966-4c8512961081@denx.de>
References: <b2b6022a-3906-085a-07fd-ae11dc250d35@denx.de>
	<ee7a87cc-3aad-b7af-d966-4c8512961081@denx.de>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Cc: Robert Berger <yocto.user.mailinglist@gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: beaglebone-yocto.conf: support 8250 serial driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2018 11:06:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-12-10 at 12:01 +0100, Heiko Schocher wrote:
> Hello all,
> 
> Am 13.11.2018 um 08:06 schrieb Heiko Schocher:
> > it is possible to use the beagleboneblack with the 8250 serial
> > driver or with the deprecated omap serial driver.
> > 
> > Unfortunately serial console get different names (ttyS0 with
> > 8250 driver and ttyO0 with omap driver)
> > 
> > So set SERIAL_CONSOLES to
> > SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0"
> > 
> > (intentionally with "?=" so it is overwriteable)
> > and activate
> > 
> > SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
> > 
> > with that on the first boot the correct value is picked up
> > automatically.
> > 
> > Signed-off-by: Heiko Schocher <hs@denx.de>
> > ---
> > 
> >   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> gentle ping. Any issues with this patch?

No, it merged already:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=81e48b24dd9c97a3bdda3b4140f8e2bda29d24da

Cheers,

Richard


