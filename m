Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94A58E00D68; Wed,  5 Jun 2019 02:50:40 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A4EE00D63
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 02:50:38 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id a21so7326013ljh.7
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 02:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pYINphD7hMZTI425lzty2ggURQOJ8H98gapC1zpjtOc=;
	b=utcEqjJIYEmZrlPyCPymoPM5ffJqdf9s7UfxCjH4FzK22AGDOinBz4toYoELYeL/gg
	wjpm0/u1CwNV8DNbiaVknnbhVaM93rsLmDFdliN2kfgmTaOIJNkPrA13I4F6mYTc9gw9
	njyL+BaDt92z7Hzd1puIdAZ89Fim/qQzoDvYXZmjrib+UuPkb/Gnlw8K18MmSjBbStLS
	aIVPIQqwWDsy5pfZQSDUorwOJ7WP0E/C8JqaorAIriWLjPDZlsPhXwTdHMohVcV2L9Nz
	OqcHZe1W2Uws2emlFnUbiguiiH8z5a35ZnmFXwAGXgMlchFJxagcUYRhHlk1Acqo521N
	X9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pYINphD7hMZTI425lzty2ggURQOJ8H98gapC1zpjtOc=;
	b=dgCpIgs9lsHr+OTj2hgGU/1DCLDY9X/we97es8lo87HztbitwJpRaviyTwiZV3r4Xt
	4WTLHcdyc0wLnvaxs6rF/ghlIRVoQnVGd1l2YbVeqkdu0UAKtshcRFcAbju4vtHujEKq
	bIgdgcxgWY+iIqTDNC4AK8HsRkBXDN8anAzVriTNyRUSgJh/Dz3rh40L16LXhtWHnZUZ
	K+vY44CqSDzti4BtVdw+lfb4s8SOVlEVAVZPzzo3igvtxrfWnY/hrjkHBmPgc4z7gSRj
	WtDMrfjt/9N2VMUVXg1yKcMsCa9evqdkI/MdVePp6Eg4+b/ihFVB6+xd6MN+d1S6uM+X
	AcXQ==
X-Gm-Message-State: APjAAAWd1dwnvo8woNT5Of8DraaXnkXGw1+2k7Z3378G4KNjpzUFLeaK
	SEjDEgXH5n92CcFPJUvpp+7KwTNH8K1ah2/fyKDDDgue+pE=
X-Google-Smtp-Source: APXvYqywEMBMZTitGSTKhYJguO+8x8s2xyvv84zl4zn1meUvuB7AwSue9qe9+IuOdp5Wk57rpUiHhHrQs+bRfck41n0=
X-Received: by 2002:a2e:9d43:: with SMTP id y3mr19254092ljj.154.1559728237485; 
	Wed, 05 Jun 2019 02:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <c4034430-bdf6-0324-9c7a-24257fb0327f@bisdn.de>
In-Reply-To: <c4034430-bdf6-0324-9c7a-24257fb0327f@bisdn.de>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 11:50:26 +0200
Message-ID: <CAEhQi8mqqHrC6-288e2TeFP+A-jfnTGXKvXhJdhPz3MzbQBJ5A@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: fitImage kernel compression type
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
X-List-Received-Date: Wed, 05 Jun 2019 09:50:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you looked at
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/kernel-fitima=
ge.bbclass?
I cannot see that there is an option for determining the compression.
It appears as if it looks specifically for bin-file. I am no expert
regarding fitimage format so I cannot say what the best solution is.

/M=C3=A5ns

Den ons 5 juni 2019 kl 11:24 skrev Pierluigi Greto <pierluigi.greto@bisdn.d=
e>:
>
> Hello everyone,
>
> I'm building an fitImage and I would like to set the kernel compression
> type. Yocto is automatically creating the linux.bin but I cannot find
> any variable to specify the kernel compression type. I would like to
> have a gzip compressed kernel. Is possible to specify the compression
> type by using a variable? If not, there are other ways?
>
> Thank you,
> Pierluigi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

