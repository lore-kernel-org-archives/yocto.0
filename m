Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9103CE00B3E; Thu, 16 May 2019 08:53:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1AB8E00ADB
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 08:53:52 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id l2so3964025wrb.9
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 08:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=SXShMfrXrWMr0LOPVU2NvZOyoPT3iFtUIRedzZcfuZg=;
	b=NI5xqD7SGrIDZZ5MtQd1TjSCPAUXo9dsVrgljcCQ7fMG0Naz2+wo6giNaValDmMeQh
	FUVJ9Sgyv10Y8YYro/tVpRKUcGGvYu8SpSqAlYB4/qynNjaUFalBDLVOCR5r+JNhqVZt
	k/tXTHXd0PPqcGIss9BmOYOb6NnhwX8+ZI8pfzDDi5HiIMk6Fw/yf4MDWeIewt3dnLOp
	Hb6bheozU1mEylbte7l6ugyJti6Tv686+lcPTOyhczeTv+uJlxg8s6TanShaWV6Z9qY6
	ifU7842S4B+7DFnk9BXVAQsAzEDp024tj0ys+xVxdblw2775sIE3uW4DXWmmxhDGqjy7
	I9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SXShMfrXrWMr0LOPVU2NvZOyoPT3iFtUIRedzZcfuZg=;
	b=YC4gqaYipLZAiVWxMzXouw/RjH9YshFy5GkBlgE1/EjJjnKgyQRvlmK2/O0ffNMQfI
	6lSrTwFFnf80Qu0+9vxdTj5qYqZcsL3tVYvs5/eJnTn6JoMfFY05dVSwE2VGs/RuCQox
	zmG0VbYd4mN0c5wIGFaoB4yRcjImSbAvCuEEY0m1qlkLvefXq6bIobTQvglWDU8Gw4ST
	uHQFQW6Bp+tpkj5MEByUFNKpzTSg2PrVGJu2l3Sz2Rx8B9mmu5f562NdR6VZLutdxnOM
	G8XtJixozDV7IRnfIWSFUAUI+5ma3rVvZuMR1yuw/LcRHj0z4TGplfubKWMDF/cXKSTo
	oKGA==
X-Gm-Message-State: APjAAAVx7dytSZHlzuiOedD0DvJ3xrbTFuDxjH6zznv70HkP46TKm9E6
	4rMbijWhAdiz+4pRE1PpHeuMXIlMDiY=
X-Google-Smtp-Source: APXvYqy4skcbz3MEqM4Wx/qfbNvamWcEr2IkPy9mMugZ4MAImQFUKj+kGYFIUoIk8rFW8gqIFcInvA==
X-Received: by 2002:a5d:6a81:: with SMTP id s1mr31170698wru.85.1558022031656; 
	Thu, 16 May 2019 08:53:51 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101])
	by smtp.gmail.com with ESMTPSA id 22sm5625329wmg.44.2019.05.16.08.53.50
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 08:53:51 -0700 (PDT)
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>,
	Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
	<1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
	<7448c585-90cc-35bb-c20f-ce5bf1879de4@innodelec.ch>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <488795da-6201-60e2-8618-ceeac78542e1@gherzan.ro>
Date: Thu, 16 May 2019 16:53:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7448c585-90cc-35bb-c20f-ce5bf1879de4@innodelec.ch>
Subject: Re: linux-raspberrypi_4.19.bb unknown commit
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
X-List-Received-Date: Thu, 16 May 2019 15:53:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 12/05/2019 16.04, Jean-Christian de Rivaz wrote:
> Le 11.05.19 à 21:46, Paul Barker a écrit :
>> On Sat, 11 May 2019, at 20:44, Jean-Christian de Rivaz wrote:
>>> Hi,
>>>
>>> I try to use the Linux 4.19 for the RaspberryPi from the
>>> meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
>>> ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
>>> into the repository github.com/raspberrypi/linux branch rpi-4.19.y . I
>>> searched that commit on a few others branches but failed to find it.
>>> Have anyone tested that recipe ?
>> The upstream rpi-4.19.y branch is still unstable and they enjoy rebasing commits. The breaks the commit references used in our recipes.
>>
>> For now I recommend sticking to the 4.14.y kernels for Raspberry Pi.
>>
> Too bad, I need Linux >= 4.19 to enable cgroup2 memory.oom_group to
> properly kill and restart xserver-nodm with chromium in kiosk mode
> displaying videos all the days long. There a bug somewhere in
> chromium/ffmpeg/gpu that eat all the available memory, and I don't have
> time and money  to dig in that complexity and patch acceptance marathon.
Feel free to complain upstream:
https://github.com/raspberrypi/linux/issues/2931

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


