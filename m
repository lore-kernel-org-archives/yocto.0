Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ACCCE00CA3; Fri,  1 Apr 2016 21:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64280E00A9C
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 21:03:10 -0700 (PDT)
Received: by mail-ig0-f195.google.com with SMTP id ya17so2123006igc.2
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 21:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wqdJ7+GcVfQSV6z9cIaaowJL9c4TAPpZplsENaQfMf4=;
	b=LNpLt5JXOmJeANX6pfNaUK+XvRezIstVN0c8nWVXAMb60RXQFLVPPj4EfHyqZ7upoh
	oidRgbGamT0hvLlvx/kELTMSOdPSIbqyc6ao/16ASyqM5HM7PBNAPQ+V2a6cqPxuKwge
	++9UhFxzDINGasu1ap8U0UTMehvln9auJO8kStgLJLNv16hbNXFBEbt8ql4R5AwbCinE
	9Ne7KvTccrLm7hsn4HFM2mabE6zO1l2aM73KTGVGUJEk0yWVdAvWtTrTS9t6qaG+Ph3L
	RSb3joE1jUggEcLx/B26aAUOY1zgPja2RsMR3caJrvpqyrCOhTy3ZC2np+3+L1ORqXG6
	niXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wqdJ7+GcVfQSV6z9cIaaowJL9c4TAPpZplsENaQfMf4=;
	b=CtvW9oct4EnSxduWGFDtlV/7fFfFrr6NFy+4pOwX340GMeqfqfYEnYw35rOao+9Kj7
	rGhpGT2azCex33WnR+krp33y2CoZpYGyLMFnrMLW0Dyd3td9UCunzyLuUPEWVlfxf2Ic
	+nvdwSgqZxsziy7w8SxXLkPwXPCcGzKnkNWzrZLmQrnSJ0mtJNHShYZ5wabjVtN9fSqb
	1Wz4mac6NAHkx3niBeIpQs6bH4Xz4Um2vc5KkyYRBqZkK7CmtTeRdsl1Z0G8YgqabXNq
	dsIPRpgJPHpCOIrtdW6LtZv0uJrefJh98Gp2X1lCAgYJIuHKRaQbx7om8HJDZFJXB7/r
	ImAg==
X-Gm-Message-State: AD7BkJIl3726Yskx0lKE2RRTtNMgQB4z/5VgLGMukQg8OtjzhORMOBgR6UzWpq8VkekGJQ==
X-Received: by 10.107.7.23 with SMTP id 23mr7387770ioh.64.1459569790213;
	Fri, 01 Apr 2016 21:03:10 -0700 (PDT)
Received: from linux-mkz6 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	o125sm7179548ioo.6.2016.04.01.21.03.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Apr 2016 21:03:09 -0700 (PDT)
Date: Sat, 2 Apr 2016 00:03:01 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160402040301.GA20785@linux-mkz6>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
	<20160401191729.GA25051@linux-yxv0>
	<20160401224604.GA30256@linux-yxv0>
	<46A38E77-8BDD-4272-9619-2583EC019F1E@gmail.com>
MIME-Version: 1.0
In-Reply-To: <46A38E77-8BDD-4272-9619-2583EC019F1E@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Sat, 02 Apr 2016 04:03:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2016-04-01 @ 03:55:31 PM, Khem Raj wrote:
> 
> > On Apr 1, 2016, at 3:46 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > On Fri 2016-04-01 @ 03:17:29 PM, Trevor Woerner wrote:
> >> As far as I can tell there are two raspberry pi OE layers which include this
> >> commit:
> >> 
> >> 1. git://git.yoctoproject.org/meta-raspberrypi::master
> >> 2. https://github.com/kraj/meta-raspberrypi.git::kraj/master
> > [...]
> >> - Using 1 (the official layer from Andrei) I get an image that boots but the
> >>   console remains messed up (as before).
> >> 
> >> - Using 2 (the layer from Khem) I get an image that flashes the rainbow
> >>   pattern on the HDMI monitor, shows the 4 berries, then stops. Nothing else
> >>   happens, no messages on the console.
> > 
> > I get the same results with no local.conf tweaks and building the
> > rpi-basic-image.
> > 
> > Does anyone have a run-tested, OE-built, raspi3 image with working console?
> > 
> 
> can you select 4.1 for kernel and try with master, Andre has merged all my changes
> today

Yes, that's one of the options I have already tried; it boots but the console
is still garbled.

The 4.1 kernel is the default in Andrei's layer. Using the 4.4 kernel from
your layer I can't get past the 4 raspberries.

