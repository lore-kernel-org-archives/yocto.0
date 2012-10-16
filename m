Return-Path: <marc.ferland@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A234E011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 11:27:51 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id n41so6168859qco.35
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 11:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=qvPD8pELYK7KV35K072VyqpsIb6ZVIpVKPbXV1+yXUQ=;
	b=c9rJPdg12PPuDj6HP0fKSd2kDrhZiT7glqakfXfqu1gCOftKm/75Br5kTILJ/in1cZ
	zUPPTPX8SvgqMA2eA2y7SAFKTZ5wUmORURTG3i4xHaN6MjwpcQJeIbFItHuR1SIWsiXi
	cinmCkCCh3TnpRacbTrmbE2WxMyvHyk929f/1WT7aAi1e2EG68V2mDo4uM1+Cbo43HZ2
	NgqodhpV/Ym4u4cRxDsiJ/zeXRLaWTCGMYl/3IHzxRyrUcZR7NL29wJHV3vvDVqcVB+c
	YMT8Mf/586d9gq/Z7dZrebn2LX9a5d6KiERBQC1S0uwX5FjLvfUebeHlhILHm8lPnfis
	hkHg==
Received: by 10.229.137.70 with SMTP id v6mr7649860qct.69.1350412070512;
	Tue, 16 Oct 2012 11:27:50 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id j3sm17503963qek.7.2012.10.16.11.27.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 16 Oct 2012 11:27:49 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 16 Oct 2012 14:27:48 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios> <87vceal3m1.fsf@sonatest.com>
	<DDDB9E6645DE24488B8485B41A051F471D961A0A@Mercury.usurf.usu.edu>
Date: Tue, 16 Oct 2012 14:27:48 -0400
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D961A0A@Mercury.usurf.usu.edu>
	(Jonathan Haws's message of "Tue, 16 Oct 2012 17:53:53 +0000")
Message-ID: <87d30ie0gr.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lm-sensors not available as a package?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Oct 2012 18:27:51 -0000
Content-Type: text/plain

Jonathan Haws <Jonathan.Haws@sdl.usu.edu> writes:

> I got the oe-classic recipe building with the latest version of
> lm-sensors.  However, I am now running into perl issues - when I try
> to run sensors-detect, I get errors with the @INC paths - strict.pm is
> not found anywhere on the filesystem.  I went back to see if I had
> left out perl support, but it was present and included.  Where is
> strict.pm?  How can I get that in my image?
>
> Thanks!
>
You might want to add 'perl-modules' to RDEPENDS_lmsensors-scripts.

Marc

