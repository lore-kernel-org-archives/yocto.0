Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A190E00B3E; Thu, 16 May 2019 09:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
	[209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC5C2E00ADB
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:22:22 -0700 (PDT)
Received: by mail-pf1-f182.google.com with SMTP id n19so2118513pfa.1
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=B+qyayoOsWtDDzhSTDhijSIK2QVELJGbY90TNJ9jQ+U=;
	b=LnJ19/085L/6gJNxwOoOb7ITqOBw+BvVWxpWsfO0jAqyYzH4viuHtBwqgX8jMLekUR
	gJ5jlSQ5GcI/TfwCibcJfyNcQmZmX5VX2VlmOGpndLNkUpibPMp4zg+TvP5za9A22dhq
	recwQx3tDwf9Vt1b8miQUqsBfWcbvXGvU44ELa7G0X/oB0J9hK02Vi8WyH9vXyRdAHoc
	VSSTjHbza4xca3K5FoZWTUf8RJItAsWoJSVMbPO+wmk/l+QM/yEHee6Ydy4yUS1kcZtn
	hyiSNKyrZ6Dtw0jqPCHPZF2+oO3eNBSQxb0HLvlx7I4R5qCLH5Lvr5v7HskXVGNvRHhT
	2l4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=B+qyayoOsWtDDzhSTDhijSIK2QVELJGbY90TNJ9jQ+U=;
	b=FITNTjyPP+Q1qbObl/0dKg4ihoMPHo6o/spW/u9Kcbqg/R0hWME3cCJ1JZG455pPt2
	jT0gfaN2jchqyqoGVAGiGFzR6MsZfNrruHY9s1FOAGH/Geb31+CEeRtut8CnzNX4iOCx
	1q9K43neVBcB1cBUqYyVIEiSIdWe14p3naDF629SoMTgbPApO9ThVY8qhR2SXIvJiVib
	UN8mrSv73Tp0Xkt1gjRpUmv/0FC5nBM3fEoxMOaPulJ7CIJKgHkJjBH9T5cldrTULLEf
	TMLF8TGDCTCX95UuNPpPXsrKSEVK9CZ4rBGUJgbQEIYhzhwIPY9yJLn4HLiNwrSxucQU
	eWYg==
X-Gm-Message-State: APjAAAWVyTkSG5US21l1X4bBH+8qRLoTHGuwiXNUCk940tftMQhz3XRT
	XuDqmYLdxV1CNmlHKDEMZ1e/NQ0oi28=
X-Google-Smtp-Source: APXvYqxZQgx7sfXPBM6GWlB79Tg6iSxODly6EFcIlxSYaeRRdq7VWGPFVA9OCZrLBUNFF4pLYcp9xw==
X-Received: by 2002:a62:75c6:: with SMTP id q189mr53981437pfc.98.1558023740308;
	Thu, 16 May 2019 09:22:20 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	s77sm13086670pfa.63.2019.05.16.09.22.18
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 09:22:19 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <855e8141-0ff1-24bf-3e24-37ac66c3279f@ibeeto.com>
Date: Thu, 16 May 2019 09:22:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Thu, 16 May 2019 16:22:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thank you, Andrei. Much appreciated.

https://pastebin.com/bHUHaRkL

It's the config.txt that is packaged with the image.

:rjs

On 5/16/19 9:01 AM, Andrei Gherzan wrote:
> HI,
>
> On 16/05/2019 16.31, Rudolf J Streif wrote:
>> I am trying to use the "official" RPi 7" touch display
>> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
>> with meta-raspberrypi (most recent from master). However, I cannot get
>> it to work. As a matter of fact the display does not even show the GPU
>> rainbow screen making me think that the GPU firmware packaged with
>> meta-raspberrypi does not support the DSI display. It works just fine
>> with the latest Raspbian release (screen and touch).
>>
>> I searched the web up and down but could not find anything. Maybe
>> somebody has an idea? Wrong firmware (maybe cannot be distributed
>> because of licensing...)?
> Sadly we don't actively test display and other related toys so they
> might be broken. Even so, I would be surprised if the DSI port doesn't
> work. What is you final config.txt (pastebin it please)?
>

