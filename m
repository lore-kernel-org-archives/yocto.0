Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9331E00985; Wed, 18 Nov 2015 23:01:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C79E008B8
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:01:29 -0800 (PST)
Received: by igl9 with SMTP id 9so118823209igl.0
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 23:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ETizWeSA31ffyQJWmqpmBt8MpUCmA0NykCsCTw8U900=;
	b=AcOEIRnPclSRkArQXb8Jq75a1D/gYudqJbLsLY68IdBbLTM+pNgcxN7Nha76fGhQXs
	wn1DgFq84sAKHmiX0c4MrPPbkxqo6+k7ihhDgJCIA7FSfmHdvgF/sbzzAeXGN34WwJlU
	QF/96eVR4XXoQs1DR26HJGP9sXL8BpzgvUkX803JVTR7VxLme8D68b1QfpoQ4j2I9IMc
	F7wvjHobnDhXwsUpxxAi8GYeNChRdcYIRJLV2CieaWUtOwuxYYL8q8FKuFrlX03hD5OL
	/xIFw5FSq24A1wA4FpFY8n4MbzEwuy2BbQ1dHIphqINAv9GGVchh4q4QQndIKXVjaYKL
	r6FA==
X-Received: by 10.50.221.36 with SMTP id qb4mr12443934igc.77.1447916489412;
	Wed, 18 Nov 2015 23:01:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Wed, 18 Nov 2015 23:01:00 -0800 (PST)
In-Reply-To: <trinity-5dab3937-8bd4-42ae-98e1-bdbeb72bb2d4-1447838770675@3capp-gmx-bs65>
References: <trinity-5dab3937-8bd4-42ae-98e1-bdbeb72bb2d4-1447838770675@3capp-gmx-bs65>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Nov 2015 23:01:00 -0800
Message-ID: <CAMKF1soWAUpRz90qetDpsLC5Zb9yRrc+ikUaxdzpQuXX0O6G-w@mail.gmail.com>
To: Virgilia Eigner <Virgi200@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: external toolchain
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
X-List-Received-Date: Thu, 19 Nov 2015 07:01:31 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 18, 2015 at 1:26 AM, Virgilia  Eigner <Virgi200@gmx.de> wrote:
> In this case I can't find any help, has anyone an idea?

add a provider for gcc-source in your external toolchain recipe.

