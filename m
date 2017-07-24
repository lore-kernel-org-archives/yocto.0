Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37A4BE00BF3; Mon, 24 Jul 2017 06:16:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B2A7E00A9C
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 06:16:34 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id f9so78158057uaf.4
	for <yocto@yoctoproject.org>; Mon, 24 Jul 2017 06:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TTBt0BQ09GSETGsoahBqS14+ClV8r6xvZ78akOZhxHQ=;
	b=Z7QarbwDTwvUdJcwyO2XlnGSPG2TOSmF8tdL+hg38n6hU72KRgPmkHlCJCBS3lm32K
	azcMaTkuU/DyhPi/7Nw2z9Sl3YQotScWSi+HZdMKh70psOpoa8vcGlN0QBLchGVzESBr
	yiieo1hDzRG0m9sdM7YrWplVHwMWoJ6WoYl93n+oIlnSo/VS87O4zTilyJ4n6kY7KSti
	DWpXhIG0QTopWTRyUpP2zzvtoHfVInPL/hTrasq5RTunfSLZYySIQntxBpnHW6brO0XZ
	LqGx3As+Bh+XWXp+a6fE5pILVF0cJduv2uvqMEdXWNEzPMmw1+rtmATu1WCPQ8cSoBEI
	RFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TTBt0BQ09GSETGsoahBqS14+ClV8r6xvZ78akOZhxHQ=;
	b=Ab0AzvJoWvMUPUUzulFxEZxu83LQpkwMv0SYz45skWbwh7tRdyIQGIrh6K3vKovNwn
	obHYRQnImAUyEOgS6vwAT8YSZdkzB3IqO+OorR9D0P0wj7u3Q8KyiMSD5gVMFZJCKZEz
	hCGFKC9QR2bxQpMPVRevW8HRY5fCtCgvNwcSJ0dXbz/JTEsDPuiQGrM4o9PKRJJ6ezqr
	V49UIn0ijj/GdwOmgjgiC7N9YMf9Z2bBMPQlxrw482Zlk8er62pvoyZmfgmREOr6HQNL
	XLSv35JW4Py20gtcNxtz538f1XTO9IeT5J0UyMlfuNMEEcEZjoaeUl1g12km+9q0y0jf
	FdYQ==
X-Gm-Message-State: AIVw110xwI/t6g+IO//iwCSDplzdyHTNS9LKk4vGCoR7Xxq2nxX14SIq
	NlWVj9nG8oGC09pnSNoko5EOLjrff5CR
X-Received: by 10.176.24.144 with SMTP id t16mr10110174uag.15.1500902193529;
	Mon, 24 Jul 2017 06:16:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.48.88 with HTTP; Mon, 24 Jul 2017 06:16:32 -0700 (PDT)
In-Reply-To: <33bba87d-ce40-417a-31ab-f8432248aa1b@eumx.net>
References: <20170722224032.1963-1-twoerner@gmail.com>
	<20170722234550.GB26163@bill-the-cat>
	<CAHUNapQaKUVuHkehG2L-rCA0xh-fhZaqa9qBO4C2w5FtiVzyog@mail.gmail.com>
	<33bba87d-ce40-417a-31ab-f8432248aa1b@eumx.net>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 24 Jul 2017 09:16:32 -0400
Message-ID: <CAHUNapRubsMXeSTndP2xfnRRs_5u10ukiMQE3QucfGau=ojN3Q@mail.gmail.com>
To: Jack Mitchell <ml@embed.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] u-boot-rockchip: update require path
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
X-List-Received-Date: Mon, 24 Jul 2017 13:16:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 24, 2017 at 4:46 AM, Jack Mitchell <ml@embed.me.uk> wrote:
> I have a small layer I use for booting mainline components on the tinker, so
> i can confirm that works with current upstream.
>
> https://github.com/jackmitch/meta-tinker


Thanks! :-D

