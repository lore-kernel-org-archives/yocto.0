Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EBA4E00D23; Thu, 15 Dec 2016 02:11:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f174.google.com (mail-wj0-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E05CE00D01
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:11:06 -0800 (PST)
Received: by mail-wj0-f174.google.com with SMTP id tg4so61460209wjb.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=siUKpUerjPEzwT6yc06CyEGFayv8Yd/zCNRN3pgEDLg=;
	b=Vrj0q6JXLrpOyv3WsecBNH+ZYi6oR3RY3Q7X+C1ewUs+O3Usjs3HgKZeVNo18yLvtG
	+LEW8/bAy5qmvDHbUHT8+RiSQZu1Qv/m5usB/6RrdpFm8PbnZe/16cjDpqbAQfQq/lUg
	feKiGt4pm3c4a9s10xNjqsTb42UrJUQlDPJBA1fHRhUqRRzHDu3Qkx0jA07Eo2cW7JzC
	ruHRC/FzrR8bJOEYz3F71nwkcLVzcdGF5gLawEQVOOAXUAmd0CJv4mOJOU3CU9JAwRD5
	NyV3+wLvKHgEBLhMbkOty1Zt8binsXP51z2Z47wW2fObBcfXIcsZTD07yqRltXzkdKDW
	z/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=siUKpUerjPEzwT6yc06CyEGFayv8Yd/zCNRN3pgEDLg=;
	b=XPMzLA2XPzRhcr2dviErPnmZkwet0BGhjLvauqWG0yHS4FMWh0orxgdykDZCcEyjYk
	zM00wOI+w2+mj/B2BVF/hWsMu9HII+ENyUSdsiowh77PWC6+dfZUnke2OttQrZRhOcHC
	rk/3JayWBraGwGFlUX4EUSUFhY3nMQ/gwx3sQOP+zlQfarD5tz49dVJKoIiJ1fMKWI1I
	L2grg0VNqErtS4CCd1fIQLy3NOdmRXotFUCv7j/W282maBuGx4NXmAoPeh2gqRlcckv+
	BIwLMRCiv+KXKlWQrDYRGiQJI0WIHLMq6k8G4TD4+0/Stku/wq4nwwhqya9FLK45/XR8
	irxg==
X-Gm-Message-State: AKaTC00uhdZAbs7gh7u3EVGVZCoqSdZqPnmjR0RFy3Fk40cZ9ycJLhQQTvqY0fI4B2XthQ==
X-Received: by 10.194.86.34 with SMTP id m2mr548706wjz.173.1481796665454;
	Thu, 15 Dec 2016 02:11:05 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	c133sm1717049wme.12.2016.12.15.02.11.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Dec 2016 02:11:04 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <80fb4491-6f66-0317-84d5-7b3e7efa8645@elfin.de>
	<CAMKF1sr6fJUR47pk5ieGAJaGqEjttm-uRnTi4iiqcO4FKOd1iQ@mail.gmail.com>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <8a0ef44f-a869-8b11-6aab-6d51bc3eb7ca@elfin.de>
Date: Thu, 15 Dec 2016 11:11:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr6fJUR47pk5ieGAJaGqEjttm-uRnTi4iiqcO4FKOd1iQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] How to set the kernel config variables in the recipe?
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
X-List-Received-Date: Thu, 15 Dec 2016 10:11:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14.12.2016 21:26, Khem Raj wrote:
> On Wed, Dec 14, 2016 at 3:14 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>> Hi,
>>
>> I need to set some kernel parameters and I thought that it would work with
>> "do_configure_prepend()" task in my "linux-raspberrypi_%.bbappend" file.
>>
>> I have do configure like so:
>>
>> do_configure_prepend() {
>>
>>      kernel_configure_variable USB_PRINTER n
>>
>> # and some other variables
>>
>> }
>>
>>
>> Now I have noticed that what I get in the real do_configure task is:
>>
>> do_configure() {
>>      kernel_configure_variable USB_PRINTER n
>>
>> # and some other variables
>>      # Clean .config
>>      echo "" >
>> /home/piotr.lewicki/2016-12-09/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/linux-raspberrypi3-standard-build/.config
>>      CONF_SED_SCRIPT=""
>>
>> ...
>>
>> }
>>
>>
>> Does this mean that my configuration does not get into the recipe?
> this should regerate .config which should account for your change too.
I've sent a patch that hopefully fixes this- allows usage of 
"do_configure_prepend()" with "kernel_configure_variable" in bbappends.
>
>> Is there a better (working) way to do it?
>>
>>
>> Best regards,
>>
>> Piotr Lewicki
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


