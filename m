Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 385B0E00C49; Mon,  7 Jan 2019 03:53:53 -0800 (PST)
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
	*      [209.85.128.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 896E5E00B58
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 03:53:52 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id y139so600745wmc.5
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 03:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=3Tx818yK3XYpu9T87D/Sl8vevMCnCnPtIhWM0It1KgY=;
	b=fJpbMvsL0TsSZHF/IlxH3tRpBKHyUoQHzlhFR6kzmn+Rfn1rPazN0n7v8H5ReIYhYi
	5/lPGzOuBoyejV2HwZwSCgGfDTZx9GonVkd6D3gzN41Lsner3JvzPpudc+61psJ93wOa
	hHqdBIC8UsMDOjjUdfrv774UgAgEiRArGHFSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=3Tx818yK3XYpu9T87D/Sl8vevMCnCnPtIhWM0It1KgY=;
	b=rOCzGSVmvfSVJKzXCTVONOxbvOz/K0Zx6MIBMR3wYcxsPrStoHUuwVQ1DdwO4iF72w
	ShaOXl0ddovMhd/RSW0+lrJ9B4uJO7XHWhhU2osvTbxyfTA4o2HtnYdUIVBEk+xKLUoM
	zzfDDO4oDVczV33LQSYZn8dELxjAHAIvPuxHou0yCpnqEu5OE3bD/p7HdDHDXFZVjjie
	viLU83JWx40xNYsnIHTE05cySPpnWklS3JC6jYPpZPb2SlA0hctk1jepVuOxypxLtcna
	j9Z7Zwn7C2XL3pO6geYZoodUTBHKX2pXat5YPldHSWwKgqV+jmHG4HlExVIUfYSrdvCx
	eLWg==
X-Gm-Message-State: AJcUukcN1tT9S+TQWypcQHTYWZkBuxs1RohGryVnXLJBe3eDDfw98JRo
	/Am7XIgb9fUHzjT9Fs6qw+BOsA==
X-Google-Smtp-Source: ALg8bN7RMyWetun9UgNVzVKNYsU9P5VIi8F4acp9b5QZMWd2rxn0O7RpJjdx64HaiUDECiGawg98Vw==
X-Received: by 2002:a7b:c315:: with SMTP id k21mr8153802wmj.145.1546862031447; 
	Mon, 07 Jan 2019 03:53:51 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	a187sm7971909wmf.33.2019.01.07.03.53.49
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 07 Jan 2019 03:53:50 -0800 (PST)
Message-ID: <b31c7613c6c65d745ea808bd16a97e8d79d03843.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linaro.org>, 
	yocto@yoctoproject.org
Date: Mon, 07 Jan 2019 11:53:48 +0000
In-Reply-To: <20190106174328.20978-1-anibal.limon@linaro.org>
References: <20190106174328.20978-1-anibal.limon@linaro.org>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Mon, 07 Jan 2019 11:53:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2019-01-06 at 11:43 -0600, Aníbal Limón wrote:
> In stdout reported as,
> 
> ...
> BEGIN: ptest-dir
> ...
> DURATION: Ns
> END: ptest-dir
> ...
> 
> In XML reported as,
> 
> ...
> <testcase classname='test1' name='run-ptest'>
> 	<duration>Ns</duration>
> </testcase>
> ...

Looks good, thanks!

One minor detail - should this be:

<duration>N</duration>

?

I'm wondering if we should just mandate duration is in seconds and not
put units into the field as it would complicate parsing?

Cheers,

Richard



