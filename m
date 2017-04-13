Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C89E00A4C; Thu, 13 Apr 2017 11:38:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7369BE00A4C
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 11:38:29 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id a103so91219810ioj.1
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 11:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QmqDxJhj8/0wLeE8SMs0lAaipZwe4t+3HBFGiDPaQZ4=;
	b=T1rmH0+uzyErYYt3UHVDH9tJ3F/7lBBedMWl2U6KcMdj1zXzOXHfrC6Kz0E4ObJQ1K
	4RFP8eKISA3IuSFnoVGnT5ifKnbbOCBTDuRhKQDcYcsn+TBLBZljT64DCVMW3t84Fv07
	Mekl/YbBGH4oYkDugg3BkJqp01Ebqhp9IzmUoLVyQFLlBxsI9ySG6HLxBOpv5uFj579q
	e8MnVKFUub0Nu2sJpiqr5ewZhgjU2wAIhd0rfTt2y234JE+srx78wJvvWyRQlhRvya32
	YI/HF3S9TEJxzbo4sQ2v8DGeucYFeER11MsnG4WZPlhaFuyNF2fJdqfqq+UQBmqv8+kf
	AQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QmqDxJhj8/0wLeE8SMs0lAaipZwe4t+3HBFGiDPaQZ4=;
	b=Xgde+eGvrxgkmvEx8IabUnXX9plSxkpyJB3NppjUhmGRV9WdwLey5SvNwyJ4pP/TdX
	gDq1TVslAICMlAakyY4PPxT/Ek6K4mmOnMwKMJR/dKOJhZETLWpooDw0zLUAkA0VMOBz
	xMW+YYJwWlmeG/V/r06sAcNgHYh8iqrKrM2j7Ve1WH9kZSSM/Mw0gOBDlYkNDgWqBlDz
	bna5b1JyTsfjURBiJw5VvqZtLIXVA5nsjKaTxMvULYptRHGFtSHVPkXH2jECzIkuwe1S
	HL8eQTc1qW7eApfan0mI8Ch602FTNNEeI8sPNKLAISDFrLYnic/l+R/T2CJjYwL/9Xoo
	jEmw==
X-Gm-Message-State: AN3rC/74N49SKdzg0RbPG7OIJEcKVRzwUFYuGGng8fkDFZ98cvdzD3XZ
	bG7wSCDdj3E1c2hHV/Ds0pz1gEy60g==
X-Received: by 10.107.130.211 with SMTP id m80mr4969676ioi.27.1492108708960;
	Thu, 13 Apr 2017 11:38:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.39.200 with HTTP; Thu, 13 Apr 2017 11:37:48 -0700 (PDT)
X-Originating-IP: [86.170.80.134]
In-Reply-To: <CAGAhMBzMeWRxf7JRON29g1XCO1NiW4CS1G-Mo5Z609r-9H6WjQ@mail.gmail.com>
References: <20170406184420.55160-1-rob.woolley@windriver.com>
	<CAGAhMBzMeWRxf7JRON29g1XCO1NiW4CS1G-Mo5Z609r-9H6WjQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 13 Apr 2017 19:37:48 +0100
Message-ID: <CAK18fxE47uF1p0wq2uME-t35_gkODS0acvOtW2aXBRbugW8VeA@mail.gmail.com>
To: Rob Woolley <rob.woolley@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 0/3] pitft: Add support for pitft35r
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
X-List-Received-Date: Thu, 13 Apr 2017 18:38:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi Rob,

On Thu, Apr 13, 2017 at 3:09 PM, Rob Woolley <rob.woolley@windriver.com> wrote:
> Hi Andrei,
>
> Does this patchset look okay?
>
> Are there any further changes you would like me to make?

Looks good. I'll test it and merge it soon.

