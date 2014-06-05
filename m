Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4489AE00BE0; Thu,  5 Jun 2014 05:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.andrus[at]wp.pl)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.77.101.11 listed in list.dnswl.org]
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE4BE00B74
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 05:06:28 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 27494 invoked from network);
	5 Jun 2014 14:06:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1401969986; bh=WeRfpAyuXJkbOsXataYEpymkQAVVV1yA2u3Of4bKSyQ=;
	h=From:To:Subject;
	b=ZUCxo8wOwSk0v4xjT5NiZXGWZB4Nlp0LOQzKjG57o0QuCftlq/A8MyIeHCAP1RB2J
	4T/M9LdIxTeQrvWM0Hzst+xNeuScnvCTjSRQbT2WjGKfW8K1TV8Jo6spPMpZubX4rT
	bAaQT/5calgKonFCllvNJ/bkg8UrS5ro07HhZuGk=
Received: from unknown (HELO [62.159.77.167]) (marek.andrus@[62.159.77.167])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 5 Jun 2014 14:06:26 +0200
Message-ID: <53905D40.5040009@wp.pl>
Date: Thu, 05 Jun 2014 14:06:24 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53904E36.7020609@wp.pl>
In-Reply-To: <53904E36.7020609@wp.pl>
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [oSP0]                               
Subject: Re: TARGET_ARCH in external toolchain
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
X-List-Received-Date: Thu, 05 Jun 2014 12:06:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've found a problem. TARGET_ARCH in fact isn't set but I can still use 
conditional syntax. The problem was I was trying with ppc architecture 
(TARGET_ARCH is later set to ppc) but here I had to use "powerpc" instead.

BR,
Marek Andrus


On 05.06.2014 13:02, Marek Andrus wrote:
> Hi,
>
> I'd like to provide one meta for a 4 external toolchains (for 4 
> different architectures). I wanted it to select appropriate toolchain 
> accroding to a TARGET_ARCH variable. Unfortunately TARGET_ARCH looks 
> like not being set at the time of parsing my tcmode-external-mytc.inc 
> file (where preffered providers are set). Of course OVERRIDES variable 
> is not set either.
>
> What do you recommend?
>
> Of course I can change the toolchain layer manually but I wanted to 
> change machine/architecture in just one place. Is there any method?
>
> BR,
> Marek Andrus


