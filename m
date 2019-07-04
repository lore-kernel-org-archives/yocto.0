Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 592C5E00D35; Wed,  3 Jul 2019 23:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22200E00B1B
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 23:45:00 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 62so3448407lfa.8
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 23:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e8MVOltQKYiGyrR6EG69IZYLiwhfXY9n3zelJJSBGew=;
	b=UIE5PSnW647IZZbnDIOglTR9wK9Ifj5hTHp2kR5QUnhn0lRGl9fXb9dNHuO4mQvBac
	kaEVPIXms7A4GxVTVvPrtyHTkj9SAzUm204hjEEZrTK90+wvrmCRbShIxCz6ODQYvN6H
	YpoW8E1sJs+bZoSMi4nt7yxshSaTkchD4uuxYs/5VIofal3QTu1gTILJnie+/Yi6xEEX
	6QdwOlSPwQvBLDlLS6hnGo2rF54CavUH0aTh931YR83F7XEAWEv1G2HlTAe8t1BUaS0s
	t8rel8C64tIW3fM/i7/y8R1zXcGRSUTfRd4fIDGbwrIBRmwSzWd1FJM2VFpylXetExAk
	Gtfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e8MVOltQKYiGyrR6EG69IZYLiwhfXY9n3zelJJSBGew=;
	b=KdsbDeLZqtPP7p5rPdcAQpH5iWu6jX85F3ZBmoVbxx36TOSXaRBVnparvwcnpjXxuR
	keHyB5Nk2+Om9Mw7o5RYjZAA+RvMpTTEteVNJ3SVP15SJSUogrWN8Mixm21P8dLxjT2a
	pmRtFBa40Fh4v05o50JTG0bV9J5+99ZHvrVcI+EZeqEU+qYH3yGCzIgEMGXBgQ5ceirS
	tskZtVybBsTk+3l2sYi+TOJTLLElq9CP/OtkPEODjHUkjgsbH6W1KOUglrqIzovnCbKT
	iWlijaUvpFrssnLUbHDI64xNctG8uwTylkyHE2GZYpEIhMQEJnD4TRMy9SmaPTNJERez
	TkVQ==
X-Gm-Message-State: APjAAAUAzL28RQ/KlzPIvFX5QTymbnFxNgzIq3jQ2NoS8O+COUh7HI0T
	oUNHRIMgjbOFmQzBZa9AtMC1qdBTKbKU3b7sKqQ6lg==
X-Google-Smtp-Source: APXvYqxvJSQZoypdACIGCTbpLUZEFutaPDMVbJPED3gatCt8nbNghtKdGOs4rllaPJmTSIIAUp8L8fQQILzeisnEFUA=
X-Received: by 2002:a19:f806:: with SMTP id a6mr20269119lff.102.1562222699970; 
	Wed, 03 Jul 2019 23:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <OFDFFF8F9D.BA13B49C-ONC125842D.00221F33-C125842D.002264A7@INDUSTRONIC.DE>
In-Reply-To: <OFDFFF8F9D.BA13B49C-ONC125842D.00221F33-C125842D.002264A7@INDUSTRONIC.DE>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 4 Jul 2019 08:44:48 +0200
Message-ID: <CAP71Wjy4RwRpjFD31wA_b8CpZn5u+2wHHscwCvS7zFCp9pruoQ@mail.gmail.com>
To: Thomas Roos <Thomas.Roos@industronic.de>, 
	"Volosincu, Andreea S" <andreea.volosincu@windriver.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto dev day ELCE 2019 Lyon ?
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
X-List-Received-Date: Thu, 04 Jul 2019 06:45:02 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Thomas,

On Thu, Jul 4, 2019 at 8:18 AM Thomas Roos <Thomas.Roos@industronic.de> wrote:
>
> Hi,
> are there any plans to organize a yocto dev day in October 2019,  Lyon. Embedded Linux Conference Europe?
> cheers, Thomas

Yes, in fact we are trying something new for the first time at ELC-E
this year, see:
https://lists.yoctoproject.org/pipermail/yocto/2019-May/045088.html

There will be a 2-day "Yocto Project Summit" with a mix of
presentations/talks, training classes and developers meetings,
including a social event in the evening.

cc'ing Andreea if there are more questions.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

