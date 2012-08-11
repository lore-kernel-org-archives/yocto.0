Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF96E013F7
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 06:10:04 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1516798lbo.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 06:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kdb63TxcAamaAkQRdqtWabsT1RUJPQ5Rc+cE6VJJU/Q=;
	b=CZp/rYveoFtPpsCFNLvCCF0GQSADlXuMt4BVZQ85L2flMnir4qJsVWcZws091xUwQn
	jSZnBvnU+cyAOsQmnaNXjaU7ksMa9hknnuX5Vz5gq2yWH0uW1yFayBe0aBBnqAahqpgg
	qtz/TBYZP1gS+bxAm8bgQE+Gc1ngcYsMszIOhoAKA1dwwwwM3bxsvFq/0Fitj8enPP6S
	0ogTRGPT8VUsr2x4eoJhmR1JxVPxFww2rllFYmsAcWB10hQnKNFs8t47zyg9xc8b5YlA
	s0GMMhFarZr8FdPy1GOiY/i4aXCyN+NnnejJanu4Sy0Sv6tAEVSELNaCRiUjTa0uTBfv
	TGbw==
MIME-Version: 1.0
Received: by 10.112.88.106 with SMTP id bf10mr3780397lbb.43.1344690602925;
	Sat, 11 Aug 2012 06:10:02 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Sat, 11 Aug 2012 06:10:02 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46ACEEE4@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapTBvghatM8xxnuCMPSkFZzS4_ssiU1b3TXvWk1SR74Qug@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46ACEEE4@ORSMSX101.amr.corp.intel.com>
Date: Sat, 11 Aug 2012 09:10:02 -0400
Message-ID: <CAHUNapTvHqMAQEh75V+dMDNGWaqa5WWme9S3e1UAeV5B4Hp6ug@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob workflow
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
X-List-Received-Date: Sat, 11 Aug 2012 13:10:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 10, 2012 at 6:56 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> 1. hob should save the customization into the project's configuration, instead of using its own configuration saving mechanism.  In this way, people will be able to achieve same customized build result from command line or using hob.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2934

> 2. Current "Save template" wording is confusing.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2935

