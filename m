Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 376D4E00D68; Tue, 11 Jun 2019 01:23:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC04E00D33
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:23:42 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id h10so4798494ljg.0
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=2gq+Xj/WDepRs6X9povfP560Hs6ICH3AiPEz7MncoVg=;
	b=sydRqzNaLtKkkW+XyKNTugihLekkUmA6P8cMEX5N4fGHJOv5ATqjHgYP241x8ff+Bg
	US3tWmIbcdKGIdA299vFZWK7volcjrAoHYMoiXONekBK5tjGT4wFqjW5L4EgDpJF7909
	ysZxAegLkftP0kyFQKc5uHr11abmE6C8n3te7sbD6N6hxkxhP7tOSF7O8b6N5rBeguHd
	dXYzyQfk+7CHYlYGgBihUg1aeCiDF9QRxKvcVrsQLtip22n3GP5M1nh9Rc0nkX6O0IrR
	VkBqfKxFFIn1kvRVr0bvX+fYVP0SoEmw07LRBTIXKbKo9ZBrIqd4PY3nNEaEbBX7yadh
	MOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=2gq+Xj/WDepRs6X9povfP560Hs6ICH3AiPEz7MncoVg=;
	b=SMU5PuMmz3A2i1MuRm6XtAAjmvaDGCbjtkL0muX74UIA9dGlmHwv32xEChIShDEsA3
	FNoMbrUTlriwXlfPS4zgapZIp9GaQrM1IcrpLBLTTbcNHmlGkfu+FROF4qfl3j/mWTAD
	XdFSOO/R60tGWZdhXrmNo/sSSFjDkWXaKnLr5uak/73E+w2M7fGtGRRzjmFD5PN7+eyC
	WAqfxbzssGr1WcGtFaiaXKlZla00+UR+lSvAxyJ6YADZXjMW93xg87mSUSLyx7IYDSND
	Yl6FJe2FmS5HWv5tLoDnDzy54Ok7GPi4amtAH+djtn0OO03vb0SUv72Ss0ETQMgYT0LT
	czrA==
X-Gm-Message-State: APjAAAVJtUm3wc7o6a3EGihycAJVzNNr05Mlb0erhD5xFM+JFgJo+aLN
	MXC5kEf9wPJjSFE7OaqyYx7ZCWkSHzTVMC0ExIVyFWCtBiA=
X-Google-Smtp-Source: APXvYqwFdXa2IQhWY9VDp1PHrV3nHjz0m6/mTt2g0PA0GhnFM6uPmQc02finLb6dmWXm7AVPnmlJ4P2dkLT2I8oP8AY=
X-Received: by 2002:a2e:85d1:: with SMTP id h17mr21435498ljj.1.1560241421061; 
	Tue, 11 Jun 2019 01:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8m3pJtUMMzSH0enBmLz5=x4CYnvV3LW-1W8BHJdMDGR_w@mail.gmail.com>
In-Reply-To: <CAEhQi8m3pJtUMMzSH0enBmLz5=x4CYnvV3LW-1W8BHJdMDGR_w@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 11 Jun 2019 10:23:29 +0200
Message-ID: <CAEhQi8k--Zpay4SAqfGru077+q1DDDWbtAWDJRNz149LzSP4cQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to set PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Tue, 11 Jun 2019 08:23:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding

PACKAGE_EXTRA_ARCHS =3D "${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}
armv7ahf-neon-mx8mm"

To my machine config solved my problem but I am not sure if it belongs
here or not.

BR

Den tors 6 juni 2019 kl 10:02 skrev M=C3=A5ns Zigher <mans.zigher@gmail.com=
>:
>
> Hi,
>
> I am facing an issue described here
> https://lists.yoctoproject.org/pipermail/yocto/2019-June/045565.html.
> I have come to the conclusion that I need to add armv7ahf-neon-mx8mm
> to PACKAGE_EXTRA_ARCHS but it is not obvious how to do that based on
> what is stated in the reference manual
> https://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#var-PACK=
AGE_EXTRA_ARCHS,
> at least not for me. I have gone through the existing usage of the
> PACKAGE_EXTRA_ARCHS in poky but in there it is always used in
> combination with tune so for example
>
> PACKAGE_EXTRA_ARCHS_tune-armv7atb-neon  =3D
> "${PACKAGE_EXTRA_ARCHS_tune-armv7atb} armv7ab-neon armv7at2b-neon"
>
> How can I make sure to get armv7ahf-neon-mx8mm added to the
> PACKAGE_EXTRA_ARCHS variable and where should it be set local.conf,
> machine configuration?
>
> BR
> M=C3=A5ns Zigher

