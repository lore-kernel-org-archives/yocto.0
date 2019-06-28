Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA03DE00C81; Fri, 28 Jun 2019 07:01:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA0EE00B9C
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 07:01:34 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id y57so6379388qtk.4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 07:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M0vIDvhGynryj3bFFBG8/x/24tLx9W9ul4z2m/XAAlo=;
	b=f0cAi0d/izU9fWGdao1dymdFBjuBFbGi9qoIQQ59chPWXU8LlmKtezEUlwSAp7trhK
	pITE3tDCSl58d7uVGQ9Ws6EkeHDsTSKTnU1oijDnMhHoUZQaFqha3gCCN85mML9tGTt0
	/67qPUjA1PoPQ/t8B26rTLlOD6W9pQM7Vip6r57LTRreZFka1TiRllBBh3GCJEZJSXr8
	gLEoAhdlH4sCrAvkBm9lKLmTCasktY1DFWcPWQrLT8W2LNkUlFKoH/MT4EPAjjFRCJPf
	cMCUVYkCwqgMPaNgUc2rwWG22TwkKFuOuXOyjnI7B4/FGrHEH2HxSqQCdu73s8BQZkLH
	dmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M0vIDvhGynryj3bFFBG8/x/24tLx9W9ul4z2m/XAAlo=;
	b=tpB8Ai1pmywVRn0h3kXFijZmw6Uhlj3xExyAVTBEjd4jcrPDDYWldI2X2+em9RKwqo
	lr1ujda6bN1I/qVM24G70KE/2S79zCxCpX17NsRZl6QkKPl/paxv3p59q/tObK9Xyzq/
	IEJFIjE4Q01sxDMrnCB3XdHhCmcBY6wN82WyaSkzsPD5iY1fD7Y0fFbP7c5F6FRS2qK3
	BDbPmgrY5U4QXbEvt2p3djTrvkiaVxqnWmCMjxhDDPeFEzZBIgmF0op0xQHBmORFRfaC
	sy2baa6Bl2L+zyV/Q70OHl6paI1b6Qss7VjOm907MHD8tf/GXkywnn53FwUtQRkggfhJ
	W6CA==
X-Gm-Message-State: APjAAAV5uZPA4xUaLmQq7i+57eUW00E0BukdpHTLG/RRHohlqokpWr8M
	XcjEcPU3nxixTpTFv3OMthQnXi+MZP3hArByce4=
X-Google-Smtp-Source: APXvYqz1P6V4vdDU+hKXFfS3Q1wI9K8ov7KEhTOWB+KbqTnkEiHF4LsQor0nH8g0RrMMYLkNrei64SkmKm7yrPJHSPI=
X-Received: by 2002:ac8:877:: with SMTP id x52mr8208613qth.328.1561730493576; 
	Fri, 28 Jun 2019 07:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAzx7i7ZKdgsfxJ4ChZ_jWAcTFZCHBp2Hp2MCaQVFdHrCw@mail.gmail.com>
In-Reply-To: <CAEmXcAzx7i7ZKdgsfxJ4ChZ_jWAcTFZCHBp2Hp2MCaQVFdHrCw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 Jun 2019 16:01:22 +0200
Message-ID: <CAGAf8LwsGwTTKOSwDST4xdPhv0Gbg=7tPKdnML+2P_qpU=E0YA@mail.gmail.com>
To: danwe <daniel.wenninger92@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Copying the binaries to an SD card after bulding with Yocto
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
X-List-Received-Date: Fri, 28 Jun 2019 14:01:35 -0000
Content-Type: text/plain; charset="UTF-8"

>> ~/bbb/meta-bbb/scripts$ export OETMP=/oe7/bbb/tmp-warrior
>> Then run the copy_boot.sh script passing the location of SD card

I forgot how inheritance schema works with shells. When you run
copy_boot.sh script, it'll spawn for you new shell, and, IIRC, it
should inherit OETMP from parent shell. You can try to experiment, and
export OETMP command embed into copy_boot.sh file/script, and see what
is happening. You also can, as first command after #!/bin/bash, to
issue env command, and see what variables you have inherited from
parent shell.

In my opinion, this problem has very little to do with YOCTO building
system... Am I really (!) correct?

Zoran
_______

On Fri, Jun 28, 2019 at 3:42 PM danwe <daniel.wenninger92@gmail.com> wrote:
>
> Hi,
>
> I have successfully build BeagleBone systems with Yocto.
> I have used this site:
> https://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html
>
> Now I need to copy the binaries to an SD card and have a question to the following:
> In the instruction I can read the following:
> ``````````````````````````
> This copy_boot.sh script needs to know the TMPDIR to find the binaries. It looks for an environment variable called OETMP.
>
> For instance, if I had this in the local.conf
>
> TMPDIR = "/oe7/bbb/tmp-warrior"
>
> Then I would export this environment variable before running copy_boot.sh
>
> ~/bbb/meta-bbb/scripts$ export OETMP=/oe7/bbb/tmp-warrior
>
> Then run the copy_boot.sh script passing the location of SD card
>
> ~/bbb/meta-bbb/scripts$ ./copy_boot.sh sdb
> ```````````````````````
>
> I did that but it shows me the following error:
> OETMP: /oe7/bbb/tmp-warrior
> Directory not found: /oe7/bbb/tmp-warrior/deploy/images/beaglebone
>
> So my question is if I need to uncomment TMPDIR = "/oe7/bbb/tmp-warrior" in my local.conf when doing this or not? --> I tried both.
>
> So my copy_boot.sh looks for an environment variable called OETMP. And OETMP should know the TMPDIR (directory). But what should I export?
>
> Thanks.
>
> Daniel
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

