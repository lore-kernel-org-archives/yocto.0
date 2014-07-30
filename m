Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 687AFE00862; Wed, 30 Jul 2014 13:02:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54CAAE00781
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:02:31 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id at20so2230624iec.39
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=L+pYapQPDHcHu6bFGfIN6FNFnVsjk1TzOV2JHYrTrmQ=;
	b=vyr3OimWS87hIearUB2cRdaUbyhQgDUXEc0GG78ylRtKIDMVeKqlVITXONC+LqUkCw
	sidq7CFnQedcGlRudDOqe9+UCHmdvUQ4Bq6bbes1qMHwaq7naewoTSJ1zj5NS/02SotU
	98zmgM3ZBc1gyru+qT7P/YrWlRILzmm2Kl+vuMykT1FkvhXn3aV2UhYHoi1H2Cus/Mm2
	Ev8H3zYeFmM+TV8eI4M2QNHy9DsjuXSZALZWvY6adnojKjQQPjuOTCPwP6xMeKxrVOBg
	mDCMyqWadkurkcrMKceaD319lwod5uYq1lR0JS2GEkK8U8j1YBn1kPlsoqYeqQtVuK5e
	+/HA==
X-Received: by 10.42.168.199 with SMTP id x7mr8481191icy.70.1406750551052;
	Wed, 30 Jul 2014 13:02:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 30 Jul 2014 13:02:00 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407301529040.30154@localhost>
References: <alpine.LFD.2.11.1407301529040.30154@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 13:02:00 -0700
Message-ID: <CAMKF1srPF4zZrXxgakGiSMeJAanTMuXxi27mFWrKsDkoNX0kcw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATH] Emphasize both 32- and 64-bit MIPS supported.
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
X-List-Received-Date: Wed, 30 Jul 2014 20:02:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 12:32 PM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
> -        on ARM, MIPS, PowerPC, x86 and x86-64.
> +        on ARM, MIPS (both 32- and 64-bit), PowerPC, x86 and x86-64.

we usually use MIPS to denote 32bit and then MIPS64 to denote 64bit mips.

