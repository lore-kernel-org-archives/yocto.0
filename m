Return-Path: <robert.berger.yocto.user@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA1EE009D8; Thu, 19 Sep 2019 23:05:19 -0700 (PDT)
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
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E673E008A4
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 23:05:18 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 3so938950wmi.3
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 23:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=5bWfkNk0oeq9yz9TXmcMtIVWcLSiCEkPp4l7nrwVo5M=;
	b=k9DDd07SIBBj1fcixtX8PAtuAmqvcqaCrL4wpLZIBZgMDkVrHq2Ar5zRZ9uNOuOIza
	a5SJAoD/It6RrI6hkZTsOwT4Sw5YYtrRyfl/4CxlQHpyaUMHHgt3MW2ZglrZv4OUS/wH
	jjradML7+AiboAFldGrRaK2/5S9ynCg5YyO61BgntpVgxAEEx5pco8J+gE7pNYdc/HAb
	uM/toG5VkI75KkFJ9AhxoXc/Siok0n+ppV8yFYMwET8emRXbNAyAIR1izpirouj5BOlO
	vaiTyz8AnFBWL98es9CB4oP27888l6n2AY1n2h8oICdMKkqTME6opSrLtfIZmG0r3dBz
	uTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=5bWfkNk0oeq9yz9TXmcMtIVWcLSiCEkPp4l7nrwVo5M=;
	b=AOGS3cuEbfpnwacCfndLwtjQm3El/pImOz7idhMAHzFvnrVo3w5Xz+ZnCMkdv7xlee
	KICuhTBfqrNGMifjUxrTvklaRH1btZejDrE+mkD5gNMnb0axC1loPQb7DEhcfygV9rR/
	B9hYfQjOmS7sItPUhiR8Q8ZtU2W7BnWZWv0tilB60WtpWiFvCec2btebiZKDFhhQ4gg7
	VekkwqcV1P6J8nGoEfi5SR5r0qJIxc+x/1gnXMJ+8tSfH1gbbHeJw5YejAJ7oohuCzn6
	d4/fzzvzQPzQ4WegrxUsQzSAq4NVt7uAK7kcZqrPWft14SfMdqo62y3kRedqppDnFxs2
	+/dA==
X-Gm-Message-State: APjAAAXAtFZirfcbmmed1inpUvRxmGbpFPUt63MbFQ1k6kDcFX6hMO8s
	Efmg0RHobc1HjndTyCzIixo6FRzI
X-Google-Smtp-Source: APXvYqwupqmPJMMs6KeBX/q552B4eVe1VFhPo+NUY/kClN4qS9/P9HN8eNixKYGU249j2kd/W8K3+Q==
X-Received: by 2002:a1c:5451:: with SMTP id p17mr1804699wmi.103.1568959517708; 
	Thu, 19 Sep 2019 23:05:17 -0700 (PDT)
Received: from [192.168.43.113] (x2f7fbdc.dyn.telefonica.de. [2.247.251.220])
	by smtp.gmail.com with ESMTPSA id
	l13sm739725wmj.25.2019.09.19.23.05.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Sep 2019 23:05:17 -0700 (PDT)
To: Yann Dirson <yann.dirson@blade-group.com>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
	<20190919141650.GA23770@localhost>
	<CA+4=imZz4xAV2EYyHSCb+d1XbpAg0O=xz=e=-_oc7q6b6Qvjew@mail.gmail.com>
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <c8d1273f-4a7b-6807-d71c-d1ca3127542b@gmail.com>
Date: Fri, 20 Sep 2019 08:05:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imZz4xAV2EYyHSCb+d1XbpAg0O=xz=e=-_oc7q6b6Qvjew@mail.gmail.com>
Cc: yocto@yoctoproject.org, simon.spannagel@cern.ch,
	Adrian Bunk <bunk@stusta.de>
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
X-List-Received-Date: Fri, 20 Sep 2019 06:05:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Yann,

Please se my comments in-line

On 19/09/2019 16:35, Yann Dirson wrote:
> Do you want a recipe for gitlab-runner, or something for getting
> gitlab-runned to tun a bitbake build ?  The latter I have, though
> imperfect and not readily packaged, but I can possibly try to publish
> something (planned for a long time, but hey...)

Actually both. It's some setup of a customer who does not use Yocto yet 
on their boards ad I would like to help them replace some Linux distro 
with the yocto project and therefor need gitlab-runner on the boards as 
well as kicking off a bitbake.

In case you have something which already does something it's more than I 
have and we can try to polish it ;)

Regards,

Robert

> 
> 2019-09-19 16:16 UTC+02:00, Adrian Bunk <bunk@stusta.de>:
>> On Thu, Sep 19, 2019 at 09:39:55AM -0400, Randy MacLeod wrote:
>>> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
>>>> Hi,
>>>>
>>>> Does someone happen to have a BitBake recipe for gitlab-runner?[1]
>>>>
>>>> [1] https://gitlab.com/gitlab-org/gitlab-runner
>>>>
>>>> A quick search did not show up anything;)
>>>
>>> There's nothing in the layer index:
>>>
>>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
>>>
>>> (It wasn't clear if you knew about the index.)
>>>
>>> I did find:
>>> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
>>> that mentions gitlab-runner but it doesn't seem like that layer provides
>>> a recipe but you might want to check it out anyway and let us know if
>>> it works for you.
>>> ...
>>
>> It just downloads an ARM binary from the internet.
>>
>> Any layer actually building gitlab-runner would have to provide
>> 200 Go libraries.
>>
>>> ,./Randy
>>
>> cu
>> Adrian
>>
>> --
>>
>>         "Is there not promise of rain?" Ling Tan asked suddenly out
>>          of the darkness. There had been need of rain for many days.
>>         "Only a promise," Lao Er said.
>>                                         Pearl S. Buck - Dragon Seed
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 
> 


