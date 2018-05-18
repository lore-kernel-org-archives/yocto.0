Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8DE2E00CDD; Fri, 18 May 2018 09:15:20 -0700 (PDT)
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
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8452FE00C36
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 09:15:20 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 63-v6so1370134pgg.3
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 09:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=vYNSVyX5mrc4XWprP5gOi2KoHvfIUdzcXLLY/anT+kk=;
	b=rNZnjqs9uFw7MKPCWyvcu+GGJCf5XZqj6SJJ4MVZPb+GT0QP0YjKL4XJMJKNk88pHY
	3xWpcfn+GDUHQMOggNqiTuEvrYejZzEbL8rt+21VaDz0eIcFNls48P4phdlALCDDtrsM
	NJfSvKnMndcbzVlmLRw8a86OyFScqpthwcywu+o2d5iQmSxGAxT1T3M9rLgBA0Ort9KP
	0AejhV9s3qjmODz1qBYaXI5N7vCLTo15mWbXtRQj8xONLUBJbLpjwiMLlRjDxnxizy9z
	N7YF52CVfeJYYiAN11eSrs+c4G9dXx+4sXdqIgVu1NCfXNtci03/riGqXz4O1JpRw2Dp
	5fSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=vYNSVyX5mrc4XWprP5gOi2KoHvfIUdzcXLLY/anT+kk=;
	b=PlxcHPy4tsk0HMec3vU6YEZ1Cvhc0Y4jnXXp8ADXWmTf6fZ82RqPSb/QasToy0L7tH
	IBbM45NpCJw932/ukYwHCZUB8D+nF3JtmMXsMTpFMM1RPyk6k50+QxV34OAEYLXh9sEY
	pFeR2fX4DGozdaWLAhyUkf0FByPThqv3HdLIMuDXutS9QOIt3t07viFf0Hg6T9OHnRO5
	CFdQiZ9nP/KLcSB+itaRsRn6PZiExuB8k7LTo3AgUQqvHRJUcjFUXMK/8brTDS3Uof+r
	ezteEq0L+R22X0AqwGOoXULCvRusmRtiYottT2YHY0vmJBuyWRDOcyDObJLI6VXZ4oI0
	R6tA==
X-Gm-Message-State: ALKqPweMDHgoObwCJUl+oxfGQ3JHgCOWOQbmF6F4s0868GB1MCUm7XO9
	r3ahRppkPFGTZZBx5DEavX8q00hZ
X-Google-Smtp-Source: AB8JxZr+toEHQXlNjbIbGvqd47Si3RIKppJLoL9zhlJTOM9aUGWxSt/eFDwgmob/sAIjh+We8BkwlQ==
X-Received: by 2002:a63:9517:: with SMTP id
	p23-v6mr5579132pgd.183.1526660119205; 
	Fri, 18 May 2018 09:15:19 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:5d7b:6139:aaad:7f])
	by smtp.gmail.com with ESMTPSA id
	w8-v6sm15521614pfk.112.2018.05.18.09.15.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 May 2018 09:15:18 -0700 (PDT)
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	mamta0925@yahoo.com, yocto@yoctoproject.org
References: <396AD4CF-B81A-48EC-9641-068B3B6D6F59@yahoo.com>
	<4bd6eee5-0af7-1cbb-f6f4-38de9ed329ea@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <d6281d13-2350-da9a-ade8-390f130da458@gmail.com>
Date: Fri, 18 May 2018 09:15:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <4bd6eee5-0af7-1cbb-f6f4-38de9ed329ea@linux.intel.com>
Subject: Re: Using yocto as a build system
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
X-List-Received-Date: Fri, 18 May 2018 16:15:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/18/18 7:12 AM, Alexander Kanavin wrote:
> On 05/18/2018 12:06 AM, mamta0925@yahoo.com wrote:
> 
>> Apologies if these are basic questions but thought this will be the
>> best place to find answers to the point
>>
>> So our requirement is to build open source packages in Linux, windows
>> and Mac on a build system. Currently we have an internal build system
>> which is quite cumbersome to manage. Hence we are looking for outside
>> options
>>
>> Given our situation, is Yocto our best solution? Does it even provide
>> for building windows and Mac open source packages?

I would suggest to look into something like cmake, if you do not build 
platforms. it might be good for building apps across platforms

> 
> Generally speaking, no. Yocto is aimed at embedded Linux use cases.
> 
> If you elaborate about your product and what are the 'open source 
> packages', maybe someone can suggest other options.
> 
> Alex

