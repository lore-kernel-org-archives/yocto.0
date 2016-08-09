Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 507A7E010A0; Mon,  8 Aug 2016 21:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE668E00EA4
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 21:20:47 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id d97so128065uad.1
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 21:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uukd3Hbkq9XMp4SxLgsfZXwvYL788h8TJ/INRmfmmJ0=;
	b=dR1M9G+rII9L5H2Lda86E7YUWdzDEy5pH1MWEWRFfjs5BZ1Q6gQ55fAu1mV0Znow52
	lTso1jLqfHvccdOE/jhJ5ODKEotn7l7ktwoYfZiu8Vvo1LL57l5qAXSObxy6FyiOhuIH
	m8GkFeb6Dq43pgtQrlcO4scFVfaZ5MhdVfvjaAwR8ZDVlgSSb65paQ9cvezwgitQH2e5
	4FggSjiiVa383zDYmZFL0o6ILpjHErVPYO0YydxFJZfB4jQAkUJ8sUNxPjtl3R2trglO
	tF258Q2IUl54fR1g2AcKgBKc3QMz64Lao3qPt2v5pqMQziZIxTxVaEGKkhXhD91hZ/mP
	+Asw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uukd3Hbkq9XMp4SxLgsfZXwvYL788h8TJ/INRmfmmJ0=;
	b=IzIhZs6WoFJb46GaqathWALSyXSKWUtJhedENM9qY7rIjTnk/JA7OhHqv+Ee7f+vIm
	PhQWxUueHL5oDQNEOvzq7jEsL0+kfROBsKEnIbzpsPHM0vOwZEVTGystjFNzytpiVY6O
	L5kzyHCEDMwP41IyHw5tLbtbkDXTbMwFL/lkToUqndM56FGOE/47Z3c27FOTFzBf7zPc
	EgCVADHEFbZFlK+ztGsRT0uB+rd4Z+FRyPSpOuplzzDFVxhqwPTsdUS88V2eOt33hY6J
	ra7QWhmkd/IRZlohJ5xo2EeMWsJzKTgVjVPCT99zLvuK8a2xM8ZSM50+rHX9OO1/9zZB
	CWsQ==
X-Gm-Message-State: AEkoouuLcHfSZwjYOlEpVvI6NpXBiMU/LhV/Fu6phjwIr4/QSk9R26HkVkKIS6KoEggpufvMarlkrgTYSj+Mvw==
X-Received: by 10.31.168.78 with SMTP id r75mr49276279vke.8.1470716446531;
	Mon, 08 Aug 2016 21:20:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.194 with HTTP; Mon, 8 Aug 2016 21:20:46 -0700 (PDT)
In-Reply-To: <CAF_dkJBdaF9JtNmKO=s1Ji61kc1H2a7fhH8wo7LzoSjbB8_nsQ@mail.gmail.com>
References: <CAF_dkJBdaF9JtNmKO=s1Ji61kc1H2a7fhH8wo7LzoSjbB8_nsQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 9 Aug 2016 01:20:46 -0300
Message-ID: <CAF3SDA713t7BKc+cx_=xQJa4fySfoThJ3UsnCUq7FD9Y9W46kA@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the simplest way to test a new kernel configuration in a Yocto Project?
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
X-List-Received-Date: Tue, 09 Aug 2016 04:20:51 -0000
Content-Type: text/plain; charset=UTF-8

Hi Patrick,

If you are running your image embedded at some board, and have easy
access to the board, you can plug it to network and make u-boot
download kernel from your machine. So that deploy a new kernel becomes
simple as copy the new kernel to the tftp folder, and rebooting
target. This is also true for device-trees. And if you have NFS
support is true for all userspace too. :)

Regards,

2016-08-08 14:15 GMT-03:00 Patrick Doyle <wpdster@gmail.com>:
> Back story:
> I have an Intel Edison board running some form of a Yocto distibution
> (from ubilinux-edison-150309.tar.gz).  I want to change the kernel
> configuration.  Following Intel's documention, I have downloaded the
> Yocto build for this board and have seperately learned that I can run:
>
> $ bitbake virtual/kernel -c menuconfig
> # enable some other kernel modules
> $ bitbake virtual/kernel -c compile -f
> $ bitbake edison-image u-boot
>
> (Yes, this could probably be optimized a bit... but at the moment I
> just want to try out my tweaked kernel).
>
> So, how would I try out my tweaked kernel?
>
> I see in tmp/deploy/ipk/edison a set of .ipk files that were just
> assembled, including the suggestively usefully named
> kernel-image-3.10.98-poky-edison+_1.0-r2_edison.ipk file, but also the
> confusingly named kernel-dev_1.0-r2_edison.ipk and
> kernel-modules_1.0-r2_edison.ipk files along with 23 files of the form
> kernel-module-*.ipk.
>
> I just want to try the new kernel and the new modules compiled with
> that kernel.  How might I do that?  I feel like I am going down a path
> of copy the .ipk files over to the device (much as I would copy .deb
> files over) and run "sudo ipkg -i *.ipk".
>
> But I wonder if I might be sorry just doing that.  So I figured I'd
> ask around first.
>
> Any thoughts?
>
> --wpd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

