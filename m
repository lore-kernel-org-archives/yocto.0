Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D774E00BE2; Wed, 28 Jun 2017 21:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86343E00BDC
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 21:51:04 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id 62so70978832wmw.1
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 21:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DqX7NoaOi5S497+s+KlHo1rewYkuBwpcqoqtr4AeThQ=;
	b=p6h+Ydbe2LCrFtCpgGUwa4z6klnW/HJk2vgREK1d/FTsrqs4ijeULHBZKc6S3qd4br
	jiiC96WKj0oc+aAPnbP5ip+z50yydcpS+HO64JjwK38PF9YpSfIO69ZHT/Qu1QagclF3
	rNEBY/vBVnU6485dvHAiw07Qp/p7012UnAB+g+potTG0Kr2L44Q8CpcxydB/Mqk9Qc0M
	Qt5CSr0A5AJSOCuCawtB0WVF0X0ViqQ8vdX4JJzbR8jDyxTC9aGI/03s+Bo136SzPwEB
	L+JP5ERJMbVR1VtgZuwQ4AkZuXKzYXXLSUt3musXxcWsTowpM2TFKId3c3mlwC9C83aj
	Z0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DqX7NoaOi5S497+s+KlHo1rewYkuBwpcqoqtr4AeThQ=;
	b=j8kO9Ihm6uqBcXNDHqIo313Gr8m63ILzDW43FbwQ30vtorXdSJH7hwTioUs5QpD9KX
	OlXFvp66e2czHazZicbosc0aGabnZrLyKshCHExwgFm4/0BK8NinIDrPn4h9BIUiRwcm
	Y/ICwuLFLdA4aODj4UaaUM3KOry5LzE8K52s8RLtquQOLtfEykq36uyWUb62KY5MslXK
	tA9dov5C3dt7mWTVOd79uP9p2jzgDPaGZSg2hZB4xKyvvclP4ZxyEQcC9/8e7hYlV8YP
	ayunH9EIzUyqf1tVV4vT92I8jdkezXkfWqZ/Fh24LB3igLOh6JWGisYqrpTiwMuNA1PQ
	uqKg==
X-Gm-Message-State: AKS2vOw8PkHDOSp3n3GQQ2vSkWqWqay4PTwHN1Orq0Uc92NoKK/wubDl
	sBn1edA+r2KW9vbed/sB30aNMYT9nYp1
X-Received: by 10.80.140.204 with SMTP id r12mr224950edr.123.1498711863266;
	Wed, 28 Jun 2017 21:51:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Wed, 28 Jun 2017 21:50:32 -0700 (PDT)
In-Reply-To: <2f3e1cd085204ac480e2435922a9cce1@HIBDWSMB03.ad.harman.com>
References: <2f3e1cd085204ac480e2435922a9cce1@HIBDWSMB03.ad.harman.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Jun 2017 21:50:32 -0700
Message-ID: <CAMKF1sq5FfN3tdhHFdfDUsMTA9GF6F1x93OJTk8R9FJL+OA1OQ@mail.gmail.com>
To: "Pawar, Alok" <Alok.Pawar3@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compilation error : No GNU_HASH in elf bianry
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
X-List-Received-Date: Thu, 29 Jun 2017 04:51:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 28, 2017 at 9:29 PM, Pawar, Alok <Alok.Pawar3@harman.com> wrote=
:
> Hi,
>
>
>
> I am using krogoth release and I am facing one issue in custom bitbake fi=
le.
>
>
>
> When I am doing bitbake with custom bb file the following error is coming=
 :
>
> =E2=80=9CNo GNU_HASH in the elf binary=E2=80=9D
>
> In custom bb file, I am trying to copy precompiled binary and library.
>
> I tried also with Flag : FILES_${PN} +=3D , but face same issue.
>

this error means you have an issue in Makefiles where
linker flags are not being respected.

I would suggest to add CFLAGS and LDFLAGS both to
linker cmdline in Makefile.

Other option is to set

TARGET_CC_ARCH +=3D "${LDFLAGS}"

in your bb file but I would rather like to see it fixed in
right place which is the Makefile.

>
>
> Best Regards
>
> Alok Pawar
>
> Sr. Engineer Product Development
>
> Harman Connected Services
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

