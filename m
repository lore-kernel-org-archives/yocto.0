Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BAC0E006AF; Thu, 13 Sep 2018 04:23:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35042E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 04:23:42 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id p84-v6so9047657oic.4
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 04:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=kaHhJhfye+vyAMUTXNcPW/B3kO05DCem6d8EpNRnLlw=;
	b=Bu/jvp5gTbHZzcLTEzP40DCgsgKe2swJpUNa6xCvAyM/jn6H/RjIvZ1JjI64O7kAcS
	0ZpO5XxnaSdcBHbc9TuKq1Z+yMFaaGmlNj3aAdYQu1Iq5+yDPCQmHvDVk1Tgtrf7pwCW
	2juMxDl99hv7XN8zYGFWczyuoWSQA/aEcgh9ZMATc5XqklkAOSRIMCI4es/d/LpKBca9
	l8eN7kIv6CUMlfMMwyyKObOMAfLkdineSLC5QZIdXtiwxvoGObxywbzxL+MNVf/tuxJl
	BLI27pHyy32Bm1EBWVJOVEhUcVsWGczKxWubyo1ouhNz2dU55S1xdHw5v7PAJVN5bOsJ
	Vy1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=kaHhJhfye+vyAMUTXNcPW/B3kO05DCem6d8EpNRnLlw=;
	b=mYZxB+I0169tnTpwrHMUlb6wg/GcKFL8dFQ5Oz/ufAvoem4iUOA1Zj95+14Eof/N6w
	r9zZvPoHcJyNIoGPZ9auDcbPqhXpHxKfPoo13TkbTgTNaUfWnaEh/eJsmpWCejgTsrpB
	QED+T4rGE191KfoCUjrcMSiJzkBbnp0ST6Zui3R6smu13VW2w5AN9DeEdbvhDWAhJvtm
	jSp9G9QCbvJmGSKTwrtAUP0OtfK61etKQXYVrOo2D7m69W1N5kmF8GQBgOODSFeuYeyU
	fPdJBIBWhzOEoA1rKWbgbC8J8cdyQDLX0QgyW2/jtHkXvGQGaLp+sKlFMqZI1Vn+Za3f
	Y/XQ==
X-Gm-Message-State: APzg51CQ5TE3adqVmyU5mB+gPDaeHFlyMHgMjgL0AI+UeZhSwofmov47
	hbJdLzhByaZ+VI2TDOpGqDzPeDZUaFjQoGGqJuiO7w==
X-Google-Smtp-Source: ANB0VdbXNqmP5n8BxWWinw+/76HZXqSuJW+NF9OIRESdmjJ5tTbpxrb9joVakhyBJTJsNCALqZx6LqSFOGE86SqOJMQ=
X-Received: by 2002:aca:3c02:: with SMTP id j2-v6mr6250085oia.50.1536837821551;
	Thu, 13 Sep 2018 04:23:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Thu, 13 Sep 2018 04:23:20 -0700 (PDT)
In-Reply-To: <VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2018 12:23:20 +0100
Message-ID: <CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 11:23:43 -0000
Content-Type: text/plain; charset="UTF-8"

CCing the list again.  Please remember to reply to the list.

On 13 September 2018 at 11:42, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Is it possible for one Bitbake target to check list and order of classes inherited?

bitbake -e [recipe] will show you what was parsed.

In this situation I wouldn't worry too much.  It's best to use
BBCLASSEXTEND instead of inherit native directly anyway.

Ross

