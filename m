Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C2B4E00953; Mon, 29 May 2017 11:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9B59E0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 11:33:58 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id d127so69311117wmf.0
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 11:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bilEVqcjJJY364D7970RYRLp2HntUz9XC30W8bT9VkQ=;
	b=Tny1IKme/nPEJdLycHMpULiO20cwHKLwAI0RAKE9ek0okkhex/be8JGHvAxel+3MMh
	eW4n047eYYLATOvPHU0ZOwAom3af4kdwwRdqQsLCKEGaRuuqwhj7fqmsQ0i6Jq9Jr8e5
	GDkGiTY2JgPNvmjmZK42jPm70yXCeWW50suIW8O6nOdAXOjOJeRBAoIs5xiv3I8S9yVt
	WjVUmY8o7qJG+lQT76QFpoRnOlQZ35zr2soOJGcaZ+zr7naAvW/ZRbs/vZMy7gJsz/4J
	T23AsodkYAx238551Ok2hp44zv4b+vH2POj1Yd8/zu09HbFUolKijgPehbmhVNiTAwFs
	soRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bilEVqcjJJY364D7970RYRLp2HntUz9XC30W8bT9VkQ=;
	b=hpFKmCuqENmCiTDZTXzDGhZ/JdsVUa3nspoemrNmOOXdaDGbTNk5nHeOYGkOTc/Dxp
	CwJp1w7wPPDAn4oyAacVBge+eYOiBW0kajtLX+9I7eZ4OddWZ5EZw65Ni0CLLeWaQwjB
	lv5yyzXXXITuv7GUk6mT9bSELOioUXDZnGkyt/xsuomxU62Na9mBenM+Qk3Yo1fsH6kn
	b23lt8XJL/+M5lQTBWvEz0QJz139gFzeYDSJD6UxF3URax6nsEGMaD/TK/45zBY0abmc
	qceDlX8ixYkegAy6hS/Ji7s+1yDmyqmWlcKqwIn/IBy3Px7LGDE6Ut2Xp1r5n4O6QKD4
	R7mw==
X-Gm-Message-State: AODbwcBEDIyJoPnNfpEj+kTGSBZqC+DEsMDwXNaZWi+jcDEYfEZcUtUf
	0Z/GWfJjh59Q1dy4eAIAMW1pDBhBPw==
X-Received: by 10.223.170.67 with SMTP id q3mr13692762wrd.19.1496082837453;
	Mon, 29 May 2017 11:33:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Mon, 29 May 2017 11:33:57 -0700 (PDT)
In-Reply-To: <BL2PR17MB07231874E7E5333D663C42BEF1FC0@BL2PR17MB0723.namprd17.prod.outlook.com>
References: <BL2PR17MB07231874E7E5333D663C42BEF1FC0@BL2PR17MB0723.namprd17.prod.outlook.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 29 May 2017 11:33:57 -0700
Message-ID: <CAJ86T=Xah3HrM41my08WV17cNTdmOzSHSTAHMi03SuOe=U4NfA@mail.gmail.com>
To: "ALLEN,RICHARD (K-SantaClara,ex1)" <richard_allen@keysight.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pyro not honoring TOOLCHAIN_TARGET_TASK in populate_sdk
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
X-List-Received-Date: Mon, 29 May 2017 18:33:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 26, 2017 at 5:58 AM, ALLEN,RICHARD (K-SantaClara,ex1)
<richard_allen@keysight.com> wrote:
> With the pyro drop , when I use an -c populate_sdk,  It appears that TOOLCHAIN_TARGET_TASK  is not being honored.
>
> I have a
> TOOLCHAIN_TARGET_TASK_append = " gtest"
>
> With morty, gtest is included in -c populate_sdk generated sdk
> but with pyro, it is not.
>
> Is this a known issue with pyro?

This may be related to gtest only being provided as a static library
and the SDK no longer including static libraries by default.

>
> Richard C. Allen
> richard_allen@Keysight.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

