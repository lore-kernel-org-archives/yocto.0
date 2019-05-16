Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BAC3E00B3E; Thu, 16 May 2019 09:25:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED130E00ADB
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:24:59 -0700 (PDT)
Received: by mail-pl1-f169.google.com with SMTP id g9so1870812plm.6
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=3fbgb2cYUT4K8FV99iT80mtwpxY4Rc080V//ulCXlxA=;
	b=fK4ewEkNO5jXOqXKq6zAPtyAWAt3F74qPl4TdyUppOMyODdlFxyH2i3i3NXajcwRRT
	aUuC3AsBhgdtSlWp+wA07PAbK7cfUvJEmq/jY7LPgYMrg6nAd463M//rEMVVsoJ17fVW
	MdPFno4Npzm159KHm3bi9MLYvWhcwvQEsqWGhr4ErBUukG7yj/W6gHvFzbwdrwL9EPld
	2Lsm83kzA6DVianiTpcZGJ8ATi31XfOmd7HUm6GBrYQsg/4BmaNdJ+zQluXzmolOkjOP
	sJ7nhNtPSL0foT7SSXuafd3rKrwDtVfORFc0tR3hJ1tUL6eTfumefFgsagqMDFzIh9o9
	HHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3fbgb2cYUT4K8FV99iT80mtwpxY4Rc080V//ulCXlxA=;
	b=jii7hPVoSCeEmqQsrtBKgQm8ZxvILcJ1xhnjyU3KN+/S6pkxqRLks7oXkeMVPkw2tK
	i4oSmMtXoV17iUOGXmJsOkw7c90kr8Hi1t9wk5mZ6QcCyOSZ9eOcUGQTqpUi7ICbXna3
	BpRMRywxj/DadqA/1oyq2kYGnCd/mTZXsqOppevZd6XM2c5oBtkX2oHIkW37k88z2uAM
	qgLuYjFKRB04nqUp4U87A2YO0pJ0+XTq/BOrLTssL89ou73FdfQRfrLBmoPHgNDagM1P
	aDUQm7jg+958+x1xluBlTCZs3vtNqF1RJIwb6aKr2me71/3PT8en9aqzl5EDnyiUtMZZ
	bRYw==
X-Gm-Message-State: APjAAAUpv3ytFYOUHaZuouaUJVogkQaG9WvUwFeW9A8kfkrpGBLmxdXk
	6qxkINodAFr74Mh3SAboVY4VHK+gB58=
X-Google-Smtp-Source: APXvYqxnLefjns0cpiYghtcQs0xkuT+rNMrRqy/3jbXcfIbspK5dnN/+LwQuybf25SxmMn/jAtdD1g==
X-Received: by 2002:a17:902:b601:: with SMTP id
	b1mr3624435pls.117.1558023898844; 
	Thu, 16 May 2019 09:24:58 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	s80sm18264467pfs.117.2019.05.16.09.24.57
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 09:24:58 -0700 (PDT)
To: Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <16605f9d-2158-451c-592e-1c40aab160d5@ibeeto.com>
Date: Thu, 16 May 2019 09:24:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
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
X-List-Received-Date: Thu, 16 May 2019 16:25:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thank you, Paul. I did read Andrei's excellent documentation and enabled 
I2C and SPI etc.

:rjs

On 5/16/19 8:39 AM, Paul Barker wrote:
> On Thu, 16 May 2019, at 16:33, Rudolf J Streif wrote:
>> I am trying to use the "official" RPi 7" touch display
>> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/) with
>> meta-raspberrypi (most recent from master). However, I cannot get it to
>> work. As a matter of fact the display does not even show the GPU rainbow
>> screen making me think that the GPU firmware packaged with
>> meta-raspberrypi does not support the DSI display. It works just fine
>> with the latest Raspbian release (screen and touch).
>>
>> I searched the web up and down but could not find anything. Maybe
>> somebody has an idea? Wrong firmware (maybe cannot be distributed
>> because of licensing...)?
> I'd recommend looking at https://github.com/agherzan/meta-raspberrypi/blob/master/docs/extra-build-config.md to see if there's some extra option you need to enable. If there's nothing documented there then raise an issue on the GitHub repository.
>
> Cheers,
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


