Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 471DAE003DB; Tue,  3 Jan 2017 16:05:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADB43E0033D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 16:05:29 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id p9so32167490vkd.1
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2017 16:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Atvrp+rBPP88kfKdoNvpKIveeeSJIJNlWKccpHwRNFU=;
	b=sV9nzSE1sY0o5vH5xuubuxOO1tdQU33xaDXNkqpQdiFJK+rFwPRdBmSrGxKWnviZUw
	XXqJwfe8HVBF8WBXMjOBp80gC90I9EYUYZ6nRQ2W8pa2XlUyOn1SyZEQawWjnXYuprJu
	t4IxREV4hIfkHFqWmXtAJBoJBfASAFvtBJuRCGSUK3mS49CU7HeYyE21DPpuVnA1Sv/K
	eLC3Md5CNfX5oSem6HAKcKH9oIzwocxCsDMIUFugMbVEYvkn96VLl0iPRH3a6YJlR+Jg
	aexdk30VRNuA0Crp9Y01E7lkPM4Ihn9kMikVIYdrIlPzXAyqCQy3TM0CBH7fDU+ijWQi
	ORdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Atvrp+rBPP88kfKdoNvpKIveeeSJIJNlWKccpHwRNFU=;
	b=tczcsyIrqNOblK4wCIfF/iWzhZgPWu/agod0v1mbP/YzM3pedVa4ke1tG2rFIggA3A
	STSaGmsngsHGU6hg5RhHOnySwMNA/PTBlVPECoFx6ZL5QA46kK0K3qZ9RTmJusZ7oMrj
	pUAnEqjzCdBIxohJtsPkhCioWJwlOCkIuwBZUUs8yscoy9GETzJPlCx7DksUQAKGbdcK
	upie9gBxwXk84gfOPxvvAAuSLRE1gY5G0UGYJhFkKJhe8R0IdYYcpjI2kwzBdv/G8oEw
	I20fxNpdKzX19M1cZIlFED1ISudOgDWm70IExuhPeZq/F6b/EQNp91aC4h9MbFyNLEzx
	udYw==
X-Gm-Message-State: AIkVDXJrffuEN2ZghFYZFyGlcTvatDtEr5dw0CmF4ONgNM9VzaDzj5vyq1Jo4e7HeuR1W1oJ0vYxlZ3agSkwsA==
X-Received: by 10.31.75.198 with SMTP id y189mr18345173vka.51.1483488328685;
	Tue, 03 Jan 2017 16:05:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Tue, 3 Jan 2017 16:05:27 -0800 (PST)
In-Reply-To: <20170103193831.16829-2-twoerner@gmail.com>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 4 Jan 2017 01:05:27 +0100
Message-ID: <CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 04 Jan 2017 00:05:30 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 3, 2017 at 8:38 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Add an -rt kernel option for Raspberry Pi that includes the FIQ patch which
> adds stability to the -rt kernel (with full preemption enabled) and is an
> improvement to simply disabling FIQ on the kernel cmdline.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
I played around with rt-kernel too but had no solution for the crashes
so far. Will test soon and hope you are my hero..

Andreas

