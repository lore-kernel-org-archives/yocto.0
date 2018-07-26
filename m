Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCC31E00CE0; Thu, 26 Jul 2018 13:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5708DE00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 13:04:30 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id r16-v6so2873124wrt.11
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 13:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=cTG+8dJKas/WIESiRb0HFFiioiR5zsdpUUymU4Y8aU4=;
	b=n+xP8P6N+SW1Mbxf2oOCQ//GoUQSRv+Fji2CC7j5WWvHS69/SDM2nMLea7fLAcyUGc
	V6+O+T9j6feeCQYLgfLPZZxX683VEm8j+WpCRgMiJdRCUCI87JhuPa2nwpmiGYdbGjXy
	yPZeLfS2Fo6UiqYKJ+dgRRC8RlfqS9JIrKrPnpbiImPQtEI13QKopc0Rkucq1ajQ74rr
	dZeDWXzkzy5i0fq4oJZ1z8LuabtSIuO/7iVF0FnpLyUtY8WNglmMVcgPAwH8ceO1sbIL
	/zIvkiIXpQlm8bncO7UASwIfVpgyh6/MkxaeDy9c662pefm58UXnnmIzd8OeCZ5s4NLG
	iYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cTG+8dJKas/WIESiRb0HFFiioiR5zsdpUUymU4Y8aU4=;
	b=mrOSdiDcAvhEbDWnfUu+OoZ6fHGQWCTdwxAgO5VELQicriThg7MhBAUgU5lXbNyx7M
	1bZysQ6uO4FtlzZZYfBfHZR8Xaietotd3UPy8bRQZved+BCtKAyxbiP6MxbpsTtYctPf
	mHyn7wa0uiihpReyHmm1/J2rmjdW7PsWYvez72zwofm2nwbtOsZe8RFbh/BYphI9WMsN
	o5FfKfFkws0Am027b88iioYJ6Q/Y0fgVFm1aJ8I+ov0dMxEi1g+cbA3hFWD+TIg4K7i6
	1/K2LvJEcSAsNEC1sjWycPz2jE9IeGjxUOPzjOXE7Mc9Y7pc2owkeo0tz07rvq83tgRE
	7h0Q==
X-Gm-Message-State: AOUpUlFac8Gm9P+PtATst/bCGKyDySongDznYtmM49sJ5+YeHyoZn2Vk
	PREbJHxee8ktlz9nlISuuPZ12etmExU=
X-Google-Smtp-Source: AAOMgpef0HR5F65P5oKC0YpVVh9yYjjcOUOJR07mP1uhqwSR/RuftBLzZlz1Oh8y7gZo1DUkE8tIpQ==
X-Received: by 2002:adf:e3c5:: with SMTP id k5-v6mr2725211wrm.94.1532635469112;
	Thu, 26 Jul 2018 13:04:29 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	l14-v6sm3366688wrw.65.2018.07.26.13.04.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jul 2018 13:04:28 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
	<2256317.g0Ya7sYkEM@localhost.localdomain>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <42e16100-64f7-64f3-1ddf-5bb248291b76@gmail.com>
Date: Thu, 26 Jul 2018 23:04:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2256317.g0Ya7sYkEM@localhost.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: How to force build of a blacklisted recipe?
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
X-List-Received-Date: Thu, 26 Jul 2018 20:04:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Thanks, that worked


On 07/26/2018 01:43 PM, Paul Eggleton wrote:
> On Thursday, 26 July 2018 11:16:02 AM CEST MOHAMMAD RASIM wrote:
>> I'm trying to build dvb-apps recipe which is blacklisted and was removed
>> from the newer openembedded releases, but it exist in the release I work
>> with
>>
>> Now when I try to build the recipe I get this error:
>>
>>   >ERROR:
>> /home/oealliancebuilder/openpli-oe-core/meta-openembedded/meta-multimedia/
>> recipes-dvb/dvb-apps/dvb-apps_1.1.1.bb
>> was skipped: Recipe is blacklisted: Fails to build with RSS
>> http://errors.yoctoproject.org/Errors/Details/130603/ - the recipe will
>> be removed on 2017-09-01 unless the issue is fixed
>>
>> But I want to tell openembedded to override the blacklisting and build
>> the recipe anyway so I can investigate and hopefully fix the recipe. How
>> can I do that ?
> You should be able to just set PNBLACKLIST[dvb-apps] = "" in a
> dvb-apps_%.bbappend for the recipe in your own layer, and then the
> blacklisting will be disabled for that recipe.
>
> Cheers,
> Paul
>


