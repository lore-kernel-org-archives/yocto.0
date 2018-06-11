Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C1CAE0225A; Mon, 11 Jun 2018 15:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BA2E0224D
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:42:14 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id a12-v6so11005297pfi.3
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=FzMV5Pwm6zi2JRgK5x16WE0BYrJIK2clbM25xmXkVX4=;
	b=tFvYdRdP9kqa1PxfaoSqBhxA8z2PtqFkOIMFqz13cJdg2BWx1pCoNOJjb9dbunSEg7
	+GOcg3m+Gtj3luYsLIISChpJXdQR+mhc3xAfAVu70cCg+saoQgnq3U1vkCAmn9Hh78Ro
	FAOw2Xzv54sDLCbvbIxPUBIG/ZZ/KOJIFUpamhXqg5NoZNozSJa0JCQ9SqpCkuBueJgU
	fIHhfARM+5B9djUd9Ynz/M1CCCAqvheBlz9Hu8ZtfBrw0A7h7sENJegWaWhQOj6LKs9z
	6ScgKTyzpKleApsLZ/u3PInMSIbZ6KAZEhq6Pf2ZhLIwxIOeAXyxGif+nhHA75dG+apM
	zjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=FzMV5Pwm6zi2JRgK5x16WE0BYrJIK2clbM25xmXkVX4=;
	b=jqwm2337/Q2QDyqVzPDpb121LCEFjbKSiAw70OkVTd2rYEyuJ6XMhLkYS1aiszdsUT
	MGWHcSWX5GDY7g5Cp+KZ7PiAbTNvsNpUc6QujbrIlYDG0mj5OaGwMH7XLkaCgfinFHcj
	VW3mgHel2P3av7VaWZu36xP5nwQUSEB4H+Y3rmB1ZOrZfqmq5idNrMjVOc9rGmtQn5d3
	UvQuQVkVWEdZhWPjpyYumdba5AOOFcRKZ/icwZ285vgc6FtLUAxV3mQPLHNjU+C5RaoH
	xnbKv/KAdsHz7aQhWDxU0p1fhZhS5O1Vg0YF38Breqze+vfAWHKh9knG0JObw+g2Ym0q
	Tb1g==
X-Gm-Message-State: APt69E0LGllKBTavzYzZ3/T5m7joqelJDcDd0kOnGuA4jwiK0NFIZiKm
	BcvJ1vr/EzxebxyIgnbg4uE/Ba3B
X-Google-Smtp-Source: ADUXVKJ1LJXqbSzkASleGQaMb4BQDagdxcfAJpceqd833yVF25QyYPmoIf3RNbRfzG5WLhbNZDqXnw==
X-Received: by 2002:a65:634a:: with SMTP id
	p10-v6mr900629pgv.184.1528756933582; 
	Mon, 11 Jun 2018 15:42:13 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:8876:e80:c7fd:8b89])
	by smtp.gmail.com with ESMTPSA id
	4-v6sm47562742pfi.78.2018.06.11.15.42.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 15:42:13 -0700 (PDT)
To: Ricardo Ramirez <o_o@ieee.org>, "Reyna, David"
	<david.reyna@windriver.com>, yocto@yoctoproject.org
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
	<CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
Date: Mon, 11 Jun 2018 15:41:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Mon, 11 Jun 2018 22:42:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Ricardo

On 6/10/18 7:06 PM, Ricardo Ramirez wrote:
> Hi David,
> 
> Thanks for the prompt reply!
> 
> My question was a follow up of Khem's inquire (posted on 2014-05-02)
> 
> https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.html
> 

this reply still holds as of today.

> Using the links you sent me, I found that the old OE-Classic branch 
> supports sparc32 but didn't see any sparc64
> 
> http://layers.openembedded.org/layerindex/oe-classic/recipes/
> 
> As such, I'd like to know what steps I need to follow in order to enable 
> a SPARCv9 machine in Yocto.
> 

We support arm/aarch64/mips/mips64/ppc/ppc64/riscv64/x86/x86_64 for 
major arches in OE-Core, we also carry patches to support SH4 but do not 
test actively for it. sparc support is in there atleast I see basic 
constructs are there. Its should be possible to build upon that easily. 
But it will not work out of box to set your expectations right.

> I appreciate your answer.
> 
> -R
> 
> 
> On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <david.reyna@windriver.com 
> <mailto:david.reyna@windriver.com>> wrote:
> 
>     Hi Ricardo,____
> 
>     __ __
> 
>     If you are asking about the list of MACHINE types that Yocto Project
>     supports, then the best place to look is in the Layer Index:____
> 
>     __ __
> 
>     https://layers.openembedded.org/layerindex/branch/master/layers/
>     <https://layers.openembedded.org/layerindex/branch/master/layers/>____
> 
>     __ __
> 
>     Click on the “Machines” tab, click on the “Search” tab with or
>     without a search value, and see the glorious list.____
> 
>     __ __
> 
>     The same goes for supported layers, recipes, classes, and distro
>     values.____
> 
>     __ __
> 
>     You can change the “Branch” value to see the MACHINE’s per release.____
> 
>     __ __
> 
>     - David Reyna____
> 
>     __ __
> 
>     *From:*yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>
>     [mailto:yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of *Ricardo Ramirez
>     *Sent:* Sunday, June 10, 2018 5:07 PM
>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     *Subject:* Re: [yocto] Target CPU architectures that Yocto Project
>     Support____
> 
>     __ __
> 
>     Hi,____
> 
>     __ __
> 
>     Naive question from a newbie. How can this be achieved? I'd
>     appreciate if you could please shed some light on what steps need to
>     be followed?____
> 
>     __ __
> 
>     Thanks in advance,____
> 
>     __ __
> 
>     -R____
> 
> 
> 

