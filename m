Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD9EE00E3B; Thu, 14 Nov 2019 10:05:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DFE2E00DF3
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 10:05:16 -0800 (PST)
Received: by mail-qk1-f195.google.com with SMTP id 71so5811443qkl.0
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 10:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=5F9+7vQpZF2Uy6p5Tm4Hp26i9OQS7qG9HvTgNzMmdu4=;
	b=trqaGDtOdg43QM1gxKGmI2c5CP9y2/udttgRb/NmrO6GvZiTQ3GBSXAa6rAMjqyIZi
	zLc3zQK/8VWZ9FEZYXWDDPAMFooGd4TjM8dEVOGtibemM7wCIFmEdwuQ8AafTrAiT3+e
	kBEqNjowsJHlM9aMBxBnV1N1zk3yf5wpEv7m98aLzZepRi0n9xs+JK/0iaLuK2hU+2BO
	vQGDjNQojdIR1XrC7rWrsK2L4MY3XAlfUYF/mlxQZXTDiqctFQCgJSoDwftY81Nx03oH
	FEZyRHVV9L/5Q/39+GAV7g9jyHDgWrQeAd+Ny4lKx1cKZEf1tq4sk5QfDWB6f1yJaGT1
	Mt4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=5F9+7vQpZF2Uy6p5Tm4Hp26i9OQS7qG9HvTgNzMmdu4=;
	b=cb0atZfnQ0sQBk/2hRVlMTBJ2Fh1fOlbCEM8wcgEa8h711aVdzdbucQKqE49IJxaty
	gCCYmlRRc9NnQi5uCTrIrPN165Kb1jDioz1eDjQEpXlH5S1ke3O6iNFkjVGTdhfhzW/k
	qA4n2gFKZLVr4rDSPRWo4500H3QEbWotQeU/WDkDxOh10sNOOI6gka1Knqs+yb5FxidT
	SIfMX2+4/v92B9tiYJOIvOJdAhEgq+WMxXs5rOSEw0QURItVahFjVI3MriuIb4Kfx/8/
	Y4geAM3mGvYzNTNgONZ+OYuOqw8fpV0iTdPWEJFyVE3cerAfAXlIMBqlwkauOF3fseaG
	e2Bw==
X-Gm-Message-State: APjAAAX4OsybUJuW+BbXNRfmRfPbAuC0iJXg9qCex9tqPPR+NFWVd9Sf
	VGWywRVnk9az1ukSLmWsGJhhhbba
X-Google-Smtp-Source: APXvYqwTXDwRTptunBQDvZYj74Rvu6p/DHDpIzYqeFlLjg8pXkAjvIJlv4d5hqOzQ3IU+6DE/ItBZQ==
X-Received: by 2002:a37:47d7:: with SMTP id u206mr8798329qka.42.1573754715289; 
	Thu, 14 Nov 2019 10:05:15 -0800 (PST)
Received: from [192.168.1.103] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.gmail.com with ESMTPSA id
	n56sm3484369qtb.73.2019.11.14.10.05.14
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 14 Nov 2019 10:05:14 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <edcdaba6-5163-418b-ea0f-0ae4a0896651@gmail.com>
	<CAMKF1sp32eek6prtbubAB46hpz4jG9UviPgJ3wBzi4jBfwArmw@mail.gmail.com>
From: Nicholas Krause <xerofoify@gmail.com>
Message-ID: <5fc26e48-9555-bd75-1ce5-4023162e6154@gmail.com>
Date: Thu, 14 Nov 2019 13:05:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp32eek6prtbubAB46hpz4jG9UviPgJ3wBzi4jBfwArmw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Collaboration on Testing GCC/LLVM Toolchains
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
X-List-Received-Date: Thu, 14 Nov 2019 18:05:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 11/13/19 9:59 PM, Khem Raj wrote:
> On Wed, Nov 13, 2019 at 4:02 PM Nicholas Krause <xerofoify@gmail.com> wrote:
>> Greetings All,
>>
>> I'm a student working on multi-threading GCC and researching it. Seems
>> that it my
>>
>> time doing it and other things with the project it would be great to
>> start collaborating
>>
>> on testing gcc/llvm upstream with Yocto. Granted there is a testsuite
>> for both but it
>>
>> would be great to also test it against a build system that builds real
>> world software.
>>
>> Furthermore I'm aware that this is done for Yocto toolchain selection
>> internally but it
>>
>> would be great if we can start collaborating on testing upstream
>> toolchains if
>>
>> possible.
> I think its a good idea. Currently, we test released versions mostly,
> however, there is
> a class to switch to git versions and primarily be able to use tip of
> master for a given
> recipe, this would be something I wish we had but so far we have not
> fully completed it
> I know Ross had started this work and created initial skeleton, So
> step one would be to
> complete that class so we can easily switch recipes to use dev
> versions of packages
> this will go beyond GCC but certainly will be a tremendous achievement.

Does Ross have a copy of the skeleton or someone else as I would

like to take a look at it. Don't think I will be much help writing it as

I'm not too familiar with bitbake recipes or classes themselves.


Cheers,

Nick

>>
>> Not sure if that's done already so sorry for the noise if it is,
>>
>> Nick
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

