Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1C27E009FD; Sat, 11 Feb 2017 23:33:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2FBCE009F0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 23:33:29 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id r136so5598397vke.1
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 23:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3CYoF4Bi2GE/RKcoVtYftlX+dFGVqYsji6Vr4REnk2M=;
	b=mF7G2vSmFUHnQMzmnxwNGNAia71QfR05VILMm/7NgWIgJNfCwNv6E7l6Mi8BnRPU68
	2iteXsWaw1ELlztJTjR40bQZTLuvRuKiNltWVonscZZvlBhCf8m5OfRO2Yjs6BRP/+ss
	4OP5iyIsDPMHNq7NXwaJRkPBo2cW2bzXPmHOUaLnliwFSe3ZIHYR2hNHuJgUDkn9BIj/
	s6nbZrvOQmo/LCOWIO2rmH9l65/6sG3it0CBZzCVmNcUq/MRrM6I5bq5gCbf8FY1i3Zu
	JyXUA7qIEpOvhoiU3OJJqWK8MT5Wf82LvRn3AKJX1Ob6RZ8iEKpsvH8Qopb4JmFarJs1
	JWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3CYoF4Bi2GE/RKcoVtYftlX+dFGVqYsji6Vr4REnk2M=;
	b=PgwuTo6ko5aoeKNk3N2U9C/mn3wQYZhOkip2wrlZ9YnjcZl36S8NqtyT/aL5o1i33+
	ao3JOYy8B+qdTUMSiZJ2PIqAHviQyXKveObDFlD06xjOVy1Xs18pCXuqcDiXC41Wk9NO
	G921W9RYuuMn41wBcPxPfB5nze447s6veCF3KiYVYd3zwzV7Os5/eL6WszsMtleyCvRC
	trP5olIkwUT5hhGF4q3LEsj3AmAJMRPwQHY8Ogo2ql6l+oc/M5u7k2b6yoM9/TtFi1Bn
	aD/KuqJ1RNw+fJLFRRNGL80MdWoIlxxTTyjDGbWVyc/foourqZSZ9gHhP8762I1KrK31
	C/gA==
X-Gm-Message-State: AMke39nj4H8/GxxbYwlZsGQEE/FZzpWZhrSlHGLX1w+IUDC6Q5XdEcHB/rgSO75rqJ2K04zIXx4DtqvrOpGc8g==
X-Received: by 10.31.115.142 with SMTP id o136mr8529283vkc.139.1486884809215; 
	Sat, 11 Feb 2017 23:33:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Sat, 11 Feb 2017 23:32:58 -0800 (PST)
In-Reply-To: <94b61132-855c-7290-51d6-c0708fe34f87@mlbassoc.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<94b61132-855c-7290-51d6-c0708fe34f87@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Feb 2017 23:32:58 -0800
Message-ID: <CAMKF1srnAaP0fK00-UFczbqFzTym8d2TA+5n6eJaobW+E7Eygw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/9] Add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 12 Feb 2017 07:33:34 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 9, 2017 at 12:25 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2017-02-09 06:48, Khem Raj wrote:
>>
>> From: Herve Jourdain <herve.jourdain@neuf.fr>
>>
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>  create mode 100644 conf/machine/raspberrypi3-64.conf
>>
>> diff --git a/conf/machine/raspberrypi3-64.conf
>> b/conf/machine/raspberrypi3-64.conf
>> new file mode 100644
>> index 0000000..5598e50
>> --- /dev/null
>> +++ b/conf/machine/raspberrypi3-64.conf
>> @@ -0,0 +1,15 @@
>> +#@TYPE: Machine
>> +#@NAME: RaspberryPi 3 Development Board
>> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits
>> mode
>> +
>> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
>> +
>> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>> +
>> +require conf/machine/include/arm/arch-armv8.inc
>> +include conf/machine/include/rpi-base.inc
>> +
>> +SERIAL_CONSOLE = "115200 ttyS0"
>> +VC4_CMA_SIZE ?= "cma-256"
>> +
>> +UBOOT_MACHINE = "rpi_3_config"
>>
>
> I know it's 2017, but what are the real advantages of rpi3-64 over rpi3?
> Should I care (or use it)?

rpi3-64 is more appropriate for headless server kind of workloads
atleast thats what I am trying to use it. It also performs better with
aarch64 ISA in some usecases.

