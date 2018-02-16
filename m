Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2020E00DB1; Thu, 15 Feb 2018 22:16:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.67 listed in list.dnswl.org]
Received: from mail-pl0-f67.google.com (mail-pl0-f67.google.com
	[209.85.160.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B12E00DB1
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 22:16:01 -0800 (PST)
Received: by mail-pl0-f67.google.com with SMTP id s13so1182207plq.6
	for <yocto@yoctoproject.org>; Thu, 15 Feb 2018 22:16:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=eHE16qrrrogTX2ufdDaLBNP7pSogVVvujvxDDLsXWh8=;
	b=pHpcIZaJmvZgx28GtZqC9geKIHAfqSqbVB5l8OIj93847dSkrcMxmY4ft2dRprdNLI
	+DGInZKDswcf4FVe59iG2TYcDdEhnfWDY9XldvVnV8UvX6IQovYfXo79at7V4IkEk8dd
	qkipv5XpZV6t0JIVpRYcAaZ+vVdBUWtVYTh5d5AcDtYL11Y16vrUS328GlGu5fyatf59
	hQtS2KD9BODDuLDJo2/iPd4vpMiKbgPkBBAndHz/XvgMHTIYK44vZHBGJTH19pzVn1DF
	LM75VOoKyQ7pO0YMAcCuRLazbBKQz0xRdOkQPk4BL1dy/v2CYNICgsiJHkoKkw51ZcE1
	AsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=eHE16qrrrogTX2ufdDaLBNP7pSogVVvujvxDDLsXWh8=;
	b=X18Unxqw4iy774RPxpYckeTekrUBuYcfjpUSCpYTIsmAUnYtzQQAgUEv2gQy/FK4gU
	e5uhIoUPEorCd1TP83scw8aOAJhG5fwjzSH/kYdQncMODIyUNo/QAUskYeC/t6zkDmzA
	ahuVrJsYt8+ytZo5NwLcZPLFKFFuOWPLeFkSZxHQrnl95c+Jfiwie36lv/mTk0Aq30n/
	abgJVvav4bNUSBnBtJSVGG5K0R5gSY8Zo3pTLXjRLJX/4faIQ0nWfwnldedSUk/boxpf
	/Mz4OObwrMkisFcrIfOPhpdGSPykE8AHbRmaEqpbnSrmSramWT+FYdL/FNxHa7Mipr9M
	45OQ==
X-Gm-Message-State: APf1xPAAjGFp+t3IVijWxouZot05lmCx3wEECWBw0q8wROFGZ0/wBHuw
	hCyoKpj/DPSR70AEmCZFpavhyg==
X-Google-Smtp-Source: AH8x224VAx+chGpp6q6X/tf2c2FweAJCGHjdlbNZ+pe/tops731trYo8ClgvDHV6oRTaQ7ZXZGfvjQ==
X-Received: by 2002:a17:902:1486:: with SMTP id
	k6-v6mr5028270pla.376.1518761761096; 
	Thu, 15 Feb 2018 22:16:01 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1184:88eb:9355:1226:7325?
	([2601:202:4000:1184:88eb:9355:1226:7325])
	by smtp.gmail.com with ESMTPSA id
	t16sm38432182pfh.131.2018.02.15.22.15.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Feb 2018 22:16:00 -0800 (PST)
To: Anuj Mittal <anuj.mittal@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	richard.purdie@linuxfoundation.org
References: <cover.1517934700.git.bruce.ashfield@windriver.com>
	<2d69d47f2413a8e1b969303c9d985869b9abc847.1517934700.git.bruce.ashfield@windriver.com>
	<7b1631bc-be63-91c5-04b0-085432488822@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <f8869bbe-22f3-63cd-dd90-e0a776498b66@gmail.com>
Date: Thu, 15 Feb 2018 22:14:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <7b1631bc-be63-91c5-04b0-085432488822@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] poky: update default kernel to v4.15
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
X-List-Received-Date: Fri, 16 Feb 2018 06:16:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 02/15/2018 08:54 PM, Anuj Mittal wrote:
> Hi Bruce,
>
> On 02/07/2018 12:34 AM, Bruce Ashfield wrote:
>> Updating the default kernel for qemu* to be v4.15. This allows easy
>> integration of the latest fixes/features for new BSPs. 4.14 is also
>> available as a LTS kernel option.
>>
>> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>> ---
>>  meta-poky/conf/distro/poky.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>> index 3dac26fa3c7b..441986c190bf 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
>>  
>>  DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
>>  
>> -PREFERRED_VERSION_linux-yocto ?= "4.12%"
>> +PREFERRED_VERSION_linux-yocto ?= "4.14%"
> Should this have been 4.15?
If I am not mistaken, the default will be the lts kernel which is 4.14.

- armin
>
> Thanks,
> Anuj
>
>>  
>>  SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
>>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>>


