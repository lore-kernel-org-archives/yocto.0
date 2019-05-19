Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BDEDE00D2F; Sat, 18 May 2019 22:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.176 listed in list.dnswl.org]
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F806E00D1E
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 22:13:20 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id i21so5171941pgi.12
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 22:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=UGrWH8cgYXnc23ZaANJ8ztqal7MOZ6IUJKytymsFmgo=;
	b=GbHTj3t7laNkYBY/T+tO0tht+UZYCj2dyjFkSk5AmOIuxIQBylwFLEag8WewBQn9Si
	43mWEqkv7wSVwHk66s8mdlGp817T9AKoThy9iB86rGpu33ZBOV4g37u9d9LNlBMU8PYK
	wjxwgF1w12TdHsYOn7RDLINBIqbZW984r2h0wz3IKKfUPi796kd1uQPAQAE3DbvheJct
	02L6U6vcjrOUEm3m57UVoCsbtfP5UukqLwLgdOfEHoA8ztFU5saAu5RbjXmbBoTsYViz
	c8WjQvg1xVi272XS84c10UyPpdfYS1Xpb7q6kw7y7FZKt8tzS8EAQc1zB1W4LK/DwC9f
	M+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=UGrWH8cgYXnc23ZaANJ8ztqal7MOZ6IUJKytymsFmgo=;
	b=GcLtfGvgQI6MkxrnNbUAtmPkEcWgUK4Nxdc0viLRlDNadQcCDo4gU7qcsQorV+/qbq
	yZ80TROaF+xy+BJQmH5dLEH5gtLQkjfO2tk5mVrEYb1dy3kycanCIT/Dgrd79RXz/5UV
	6rshRGadbWaglz/egua16r9YSnyVK1vVaQ5r74RNyEP/mU5z5afmVPaI6+TBUas63N/t
	9b/CQRzHsolgXrvgWHvLAuT5x7nKXiWXR8sd/RMobYAtOay6R3N6SDwv+x5n86umc3Nm
	DBcXusSayFC7v/PKpHmq8X4gaKyST2HswDxXVUjqfBXrbDYs6ZFjJ0RlvSOLTJTNYq3b
	01EA==
X-Gm-Message-State: APjAAAWqnhC3w0IFNBv8rp8Y6DmEVzbRBfgNpo/2wR/lbbEmldhWXrvS
	nCFrP1iDjBzup9OPnjYCTUMc3SmDP0I=
X-Google-Smtp-Source: APXvYqyLMNdAb0LxdW/Q26dLgC9dtOVR202+SjrdDWAkbfYvTE85Y1lx7aFCnvSxWuL2OD0UJ237jA==
X-Received: by 2002:a62:5e06:: with SMTP id s6mr11588077pfb.193.1558242799211; 
	Sat, 18 May 2019 22:13:19 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:2991:b26a:5bdc:753c])
	by smtp.gmail.com with ESMTPSA id g17sm532999pfb.56.2019.05.18.22.13.18
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 May 2019 22:13:18 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>,
	Rudolf J Streif <rudolf.streif@ibeeto.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
Date: Sat, 18 May 2019 22:13:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
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
X-List-Received-Date: Sun, 19 May 2019 05:13:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



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

are you building 64bit or 32bit images ?
are you using vc4grpahics or userland graphics ?

