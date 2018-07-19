Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA2CE012F0; Thu, 19 Jul 2018 04:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 152FBE00A39
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 04:09:47 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id m12-v6so5719450lfc.10
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 04:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FTlV/qYA2TdJfiNpMVgTD6EXbrRAUjMEU3JgqMzRjQc=;
	b=U9PiQTfJO7Kau9LI3nUKUvEViCUj1jEjgG22KdGTguONMLpCvuAjms70CcM8tcTuRN
	sTXD8Oj7vBAkmuSgjwa9yDEWXQ4Nir1bJiS6zx1ciUkWMoq/tKBlW03TZWIordeuwP3n
	fua8wAG99Yww+m+8STiFVYXrdyVpWLB8NFDC5KUdImcwQZADJK5VlzVlxNcEU5Hf2ebQ
	phUmbRRTCdQX9/DhzGUgJpciNA696OyJf/boBhk/NZehPfbVXEu7ORa6VhdWsq8nC4+j
	nW+nJOFt4iNXD1a1Gyh0E49+HPS4JDg3fqFGckkQk0sszy/I6hY38dOPyQAoBvDBmmM+
	1tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FTlV/qYA2TdJfiNpMVgTD6EXbrRAUjMEU3JgqMzRjQc=;
	b=LGtR5NNTHUcuabXcaOcvvMOq2t/uoqT8qEaHqs1WuwNL6Hd73X15dCDrn0kxRgEj4J
	DFJPKIfFR7K1qyjbwV3J6fqhHQztQ5YVYiHiZtknMiUR/KPgRHqz33c2sCKBQnXbPrQ/
	GQKRrIUwyC8QQExWmcwCbhWoEspmgf7HY5ANwHN5TmLeSW5nYt8MWm+cIJuCSq0aEakN
	Spo7hHLRgIAZYb+aAWihYBe2/TRTzJHClJNB++PrQG6bobB+WbtgErKvxxEp+zvx/nIp
	nJgoy+qO4ecu+tmgMAuj8RWYicA+8o8eRXcsT/JAbihFI9/TsP57CrtFRUgFiA+A8h7t
	SvQA==
X-Gm-Message-State: AOUpUlGzYYuIGRwjhSggM56/pYHsB1nEGA27fzYOWYfeox50AExPwSkD
	uyi91CafjBKL9nVrqGOfWi2O+H0xoNUGBMxlEvMCPL/AikM=
X-Google-Smtp-Source: AAOMgpeCjbWLVTWvsGoDMw043el/Mm60/V+WTubWjCskBtRvChAI7D57GG5+JrX4+53HoAI6HBeI1v/ZgruuyPn8Wh0=
X-Received: by 2002:a19:e546:: with SMTP id
	c67-v6mr6179233lfh.135.1531998587090; 
	Thu, 19 Jul 2018 04:09:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 04:09:45
	-0700 (PDT)
In-Reply-To: <1531996869.3103.16.camel@genivi.org>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
	<1531996869.3103.16.camel@genivi.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 19 Jul 2018 13:09:45 +0200
Message-ID: <CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Thu, 19 Jul 2018 11:09:49 -0000
Content-Type: text/plain; charset="UTF-8"

> I'm happy to move cannelloni to a generic layer if there is wider interest.

I did not write only the stand-alone recipe for cannelloni, since I
needed the one, original one from this location:
https://github.com/mguentner/cannelloni

I also wrote one for can-utils, since one, residing in YOCTO Projects
from Pengutronix GIT is 8y old.
I used one from here (most recent, I guess):
https://github.com/linux-can/can-utils

So, I created my own layer, and put them both (recipes) there.

If you all ask me, I would like to have some generic CAN layer, where
these CAN recipes can reside.

There are more CAN user space creations, most of them work over
socketCAN (and these days more important socketCAN-Fd) frameworks.

This generic CAN layer creation will be the step toward the unified
automotive system CAN architecture... IMHO.

Zoran
_______


On Thu, Jul 19, 2018 at 12:41 PM, Gunnar Andersson
<gandersson@genivi.org> wrote:
> On Wed, 2018-07-18 at 23:49 +0200, Mirza Krak wrote:
>> On Wed, Jul 18, 2018, 13:38 Zoran Stojsavljevic <zoran.stojsavljevic@gmail
>> .com> wrote:
>> > Hello YOCTO community,
>> >
>> > Since I need to build the latest and the greatest Github creations
>> > from the independent contributors, I decided myself to write few YOCTO
>> > recipes and to get myself to this (un)pleasant learning path.
>> >
>> > I did few examples, simplistic ones, before I took more complex
>> > recipes to write.
>> >
>> > And... I need this one, Cannelloni, one defined here:
>> > https://github.com/mguentner/cannelloni
>>
>> Recipe for above can be found here, https://github.com/GENIVI/genivi-dev-
>> platform/blob/master/meta-genivi-dev/meta-genivi-dev/recipes-
>> extended/cannelloni/cannelloni.bb.
>
> Since that layer is not kept as a separate submodule, your only reasonable
> option would be copying, so I'll jump in to preempt that.
>
> It would be better with a single location (shared maintenance).  meta-
> genivi-dev is where we keep things that (seem to be so far) unique to our
> platform, so rather than recommending to reuse that layer we strive to push
> things out of there, as soon as it makes sense.
>
> I'm happy to move cannelloni to a generic layer if there is wider interest.
>
> meta-can-networking?  There might be some other CAN associated components of
> interest so that it does not become one of those single-recipe layers...
>
> On the other hand, some related things are elsewhere:
>
> - meta-openembedded/meta-oe/recipes-extended/socketcan/*
>
> Please share your thoughts.
>
> - Gunnar
>
>
>

