Return-Path: <robert.berger.yocto.user@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 743B3E00D60; Thu, 19 Sep 2019 23:02:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (robert.berger.yocto.user[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2833E00B8E
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 23:02:02 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id l3so5417154wru.7
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 23:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=jZ1W9Hs7lMiPutNYBZN3SAVsW8LBjw38VDKcRf1NsfI=;
	b=SjNKKFBKNQLF66gLXUhMM6FkRK0Sf2FbpBAjuyKAyiMsh/g23pQi5qqhS9gatH7qoc
	WXvTJCSUX4FrsBFr0HHa0Wkww/vRkb1TojfoeybwRZycMr9bQ8DMvmZ6umAkyHPX4UL+
	aR5A6PwD8mT27f133NJzZdV785m+Q/kKVm5wcCj/NBX03kcBqNKMNySi30ABTFHCvAvw
	LCJo4i2szPR7UQi05ECooA7utianNvDFr5aq4/CN3EnH/d+z3x8+kLTU4IHRrR3CgyPs
	NR/9u8qzl3YXOYwh+S5eaqRawVfPPWvoKR4FYXhcotXfadVVJsJgSaCdO05aTq08ny8e
	YJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=jZ1W9Hs7lMiPutNYBZN3SAVsW8LBjw38VDKcRf1NsfI=;
	b=c3s3GLuzU8pvNRxlUETwFm6YzRQlD2r/tn9NHbxDtwEf5qVBF3KRpaxDwyEA/78kA3
	gLZAGVAqLFhqmmt77cT/kItkSSQMHfJnboyy5/e/5Hl1c/SUlr7CwYPIU4bBcD2bExNb
	SKwx5m7py5vXhnY/UJZv/eYsc3OnkbSEUw9sQtouW7TkYHeqUWfc/4of+8cX/52Ty1nL
	kuWTi53uQ8xLGt9mGMUFgH3I1djio4kXGxsTyB9AkpNbWqpV6sQ768nS7joZ39r7+DU/
	kXbJ/fFQsQ9fhZFRLkN/I6kIaqincANTcxENA28ZA0TgMsDlinAfPAMqQVtD8wnop+Kk
	8FNQ==
X-Gm-Message-State: APjAAAW3vD5XV70TbJC/nmM7xJHU6HYvs3UbqxUrX88bhEdfsaiMMo5B
	NXZGShzbwk1w4eGBY8I17VQ=
X-Google-Smtp-Source: APXvYqwGlc40U0KiNnEnGkae5UY1tzu11U019JGpEQT6/u76uXJ64vynNecfyd8Gyn4F5Bb3fx5+sQ==
X-Received: by 2002:a5d:5352:: with SMTP id t18mr10676854wrv.72.1568959321691; 
	Thu, 19 Sep 2019 23:02:01 -0700 (PDT)
Received: from [192.168.43.113] (x2f7fbdc.dyn.telefonica.de. [2.247.251.220])
	by smtp.gmail.com with ESMTPSA id
	a192sm915944wma.1.2019.09.19.23.02.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Sep 2019 23:02:01 -0700 (PDT)
To: Simon Spannagel <simon.spannagel@cern.ch>,
	Randy MacLeod <randy.macleod@windriver.com>, yocto@yoctoproject.org
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
	<7dee0735-e4cd-6d7d-b541-a3dd0b83b204@cern.ch>
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <af4a2901-8540-7d39-067a-d5738a4d9716@gmail.com>
Date: Fri, 20 Sep 2019 08:01:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7dee0735-e4cd-6d7d-b541-a3dd0b83b204@cern.ch>
Cc: bunk@stusta.de
Subject: Re: gitlab-runner
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
X-List-Received-Date: Fri, 20 Sep 2019 06:02:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

Please see my comments in-line.

On 19/09/2019 15:48, Simon Spannagel wrote:
> Hi all,
> 
> the linked layer does not provide a bitbake recipe for the gitlab-runner
> to be built but only some instructions of how to set up a runner
> instance to run bitbake on. Was this what you were looking for?

Actually both gitlab-runner kicking off a bitbake and gitlab-runner on 
my boards to run stuff there.

Initially I thought about building the gitlab-runner for the board 
myself, but with 200 golang libs this will be not much fun I guess;)

> 
> Thanks for the link to the layer index, Randy, I'll look into adding it
> there!

Thanks!

> 
> Best regards,
> Simon

Regards,

Robert

> 
> 
> On 19/09/2019 15:39, Randy MacLeod wrote:
>> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
>>> Hi,
>>>
>>> Does someone happen to have a BitBake recipe for gitlab-runner?[1]
>>>
>>> [1] https://gitlab.com/gitlab-org/gitlab-runner
>>>
>>> A quick search did not show up anything;)
>>
>> There's nothing in the layer index:
>>
>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
>>
>>
>> (It wasn't clear if you knew about the index.)
>>
>> I did find:
>> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
>> that mentions gitlab-runner but it doesn't seem like that layer provides
>> a recipe but you might want to check it out anyway and let us know if
>> it works for you.
>>
>> Also I CCed Simon who is the most recent active committer to
>> meta-caribou. Simon, Do you want to add this layer to the index?
>> See:
>>    https://layers.openembedded.org/layerindex/branch/master/layers/
>> and click the "Submit layer" button.
>>
>> ,./Randy
>>
>>>
>>> Regards,
>>>
>>> Robert
>>
>>


