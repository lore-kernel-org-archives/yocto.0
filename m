Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D5EE009E6; Wed, 21 Sep 2016 11:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-yb0-f175.google.com (mail-yb0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D6DE00404
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 11:40:19 -0700 (PDT)
Received: by mail-yb0-f175.google.com with SMTP id x93so39622935ybh.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 11:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dlUtw+kBO6NNeVIpqJz3m1OglJkwTFqUl/lqIq5X2M4=;
	b=lUzEvNIR+ybg8k1M141OJeu393k33n1mjSakUoGsRPuzdG/PEqsjYwVN4aqWHnY1IC
	7V5Mc8r3K9SX/zXUSdGs5jJ35Ft5wVKJR8APSw8hRYAg7osKxEZ17wd5MZ3QNTquLdi7
	v9dBzQL98nFRYXHhfGynyw6rkSPUpkBGjTYM28yoetBX4AB1mm7EEvdTyf2HIClCAG4P
	3o120x9puAWy5aadxnWx77e33PuqrTRTeJG0Dpxw7s4jGPTQnzKBXPuERUA82gF3gnvd
	oprYS2nNfaJhE6vmkn6d85zMTeFQYxvN5Ptiuqchjo89NVJajV35yGwZ9TdQNeQ091Wh
	XHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dlUtw+kBO6NNeVIpqJz3m1OglJkwTFqUl/lqIq5X2M4=;
	b=E+qKotxGV3lMJl1ZXgILBQD2lso8Y3wGz5jGj/gCsrX2cb3X5fKLQEcPu5smw6op+o
	El7JGkvls0spmwrBs4ChR/1PFX6SbIZzIRBqZ3+VvgziUWleH6A9ZnG5OWnv4IZF5Y1z
	CmjywOAAc4TP2h5I6FPyR62esFwPLcpj9LlBLF10vrq5r9EnAOAn4Hj8Z5G/v24KIj9+
	VaOSBRDr2wJO6kMU58eyp3aVlIbIt5AZAG86Ck31asm46AUWgIDpNLZ2qctZRC9pUS6n
	99zvrzjJIp96Ja+9hiV7rKtgX6mPXM9seHi47Bk8eAZ5ltdVgMngh5zWNUyPhFA8PJjT
	iLdQ==
X-Gm-Message-State: AE9vXwOaAIXV8sALF+LGdT+KmSqzG6npSXTeDkYrbVB5QQg6+Tfvjdqo0Yt/FtJ/TTPLFcstekHPxwZVF0cjxQ==
X-Received: by 10.37.211.131 with SMTP id e125mr37542451ybf.62.1474483218888; 
	Wed, 21 Sep 2016 11:40:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Wed, 21 Sep 2016 11:39:48 -0700 (PDT)
In-Reply-To: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Sep 2016 11:39:48 -0700
Message-ID: <CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Wed, 21 Sep 2016 18:40:23 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 2:01 PM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> Hi all,
>
> I just finished a first beta version of a meta layer for SBC pine64.
> You can find it in  https://github.com/mont3z/meta-pine64
>
> I'd appreciate if anyone has any comments on possible improvements. A
> major problem I had was the necessity of two toolchains: one for
> compiling u-boot (32 bits) and another for compiling all other
> components (64 bis). At the moment I have a very ugly hack to do it.
> The 32 bit toolchain is an external toolchain and I set PATH
> environmental variable in u-boot recipe.

I think it would be desirable to have single toolchain, u-boot is a
stand alone app
in general, if your compiler can do multilib builds for 32bit then it
would be possible
to build it. May be you should work with the toolchain team for pine64 to see if
that can be done. It will simplify using this layer.

Other option I would suggest to build u-boot externally for your SoC, we do
not necessarily need a bootloader for building final images anyway.

>
> Cheers,
> Montez
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

