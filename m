Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D661EE0077E; Thu, 14 Apr 2016 09:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679CEE00527
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 09:27:25 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id c6so66088231qga.1
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 09:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q4lgUe1oConlr1Zh+1rYqBZQE93mV2oXxPFggOFqU00=;
	b=V2b8fJ0ozlLLHWmwNQ12E38Ld5n7juHUmFCuwNxikkI2Er4kPheKDh6BIxslsVHpPA
	H5JuUiskH2MALb0Hoy6Pr1BGnj9jaAKU5iRgkmDztb8HFxVyoclRNhf9u2aGQ+eRNSc2
	a90AoC/d303agv56U+AjRnZ3naPYaWiQDn+WasPOLyzH4DDG1dnv24/UjKurbz9eiOSV
	Zbddnw8pYS6IvfDMmFB25lnCpe/3QTD+ZmOwMaL6SAHZ5QI5HdQoyXZAGlr4dogftqjg
	xRrUeRWH6jXcEdzxA7591BnUTcDFA0UEVqmGdB/rDvICtIlc0j2MezBBgQu7sqAl7WPG
	IeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q4lgUe1oConlr1Zh+1rYqBZQE93mV2oXxPFggOFqU00=;
	b=GolCLOZBKNQn5JdHbKG9WPXCk4QFtk2N+AA5rqdGpvDG9b0cVh/c8hEutjn/DrvvR4
	4nNhJ5I5dz62kd4KHdeOy55Xlwn2+FvhJL3CNp0oynd8kpy4FGhLhmad2LTLmLlopDQ1
	Z197QITXP5KOjNa4AAgBEUWIQCr76KudsVw4wB25spa8Xoa7NedN8KzGUcwtIP2PCGYA
	wphGoGiCE7FeGSMQJDAV0iehd62LT3rvBgLXngqWI+lWAq6vxJGdoBl7SwncjVQsIx9p
	HzEQeEmU8QREvpvcrM8VXmu97kWBDHWYzqb1+AkqyGMl2ecLABtvXdQAmXkkK8YlGmjY
	DVDw==
X-Gm-Message-State: AOPr4FUFN8yEv0BBBdl09rt8E6XhQSXNlfCdt0Yl0HzJ6VZ1/16xcf/jX+pgJFKc9hZE+Ugl2GLXYBYYx1HJHA==
X-Received: by 10.140.100.184 with SMTP id s53mr18876797qge.19.1460651244516; 
	Thu, 14 Apr 2016 09:27:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 14 Apr 2016 09:26:55 -0700 (PDT)
In-Reply-To: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Apr 2016 09:26:55 -0700
Message-ID: <CAMKF1sr9_8bY-T4ghGT1o9xfMdfUcG_HuGFOgRGy=M2v7wsOpQ@mail.gmail.com>
To: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake -c clean for all recipes
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
X-List-Received-Date: Thu, 14 Apr 2016 16:27:27 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 14, 2016 at 4:18 AM, Vajzovic, Tom
<Tom.Vajzovic@irisys.co.uk> wrote:
> Hi,
>
> What command can I use to do the equivalent of running "bitbake -c clean" (or cleanstate etc) for all recipes that have previously been run?

Thats almost equivalent of rm -rf tmp
since you have sstate it should rebuild really quick.

>
> Thanks,
> Tom
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

