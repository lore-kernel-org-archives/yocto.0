Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA648E0091A; Thu, 29 Mar 2018 01:25:30 -0700 (PDT)
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
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D134E008EE
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 01:25:28 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id b20so6729623iof.5
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 01:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=VgbILIz3aC4hgKV5FmPf0Iz9S8XPIKnEpqBA0ULj/c4=;
	b=jS4JpAGTzycidQv4bcZ4nSwug1VjUh5Vaff6n441WKlWLPgGmtdOJ9xlDCqmeIHCxU
	0Vs/3vbUFGncrCVrR7kI8Ay8ks4UPSQ1D0XcYsuUKArg5DMpiykyfTVY9zbNYzZyHitL
	etQ0sCtLfEcWLMEmcGspADVVAftcwgUFFV7J1itnR/EcCfr9BwXdnOz8GM+O0IBbrvUA
	oURjGpR0Z+dGA44hk2zPmuEwSsA/W2aM9xDNG1p3pPFNPAZQBY4mfYESNWcJqazByepH
	l60fVTe2hDj9UUfR9VNxX7pm4MheylPrUfr6mUhdxpUzgeLMV03p/FkD0XbjgNMGfn02
	rioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=VgbILIz3aC4hgKV5FmPf0Iz9S8XPIKnEpqBA0ULj/c4=;
	b=eDrVUzESDILdXEVkO1qU5w2mL9fyoyPNdqq8D2wnFVkeHtRpWTzxeoxz7VleoJXy9k
	oFNAOshV4uikilNZsRUWJc/WjwxlvxmYm8wuFRs7UxDDYLCIMSnP3zIyTEraMRo3BIFV
	D7p4v0mtIKmCPbCDphZlpvIM48S6VjQ25X8bwjKlmBfg8SKCBAc1buUl6XqI6n2lpZ5B
	Y2IcrN80qc5/ZrGSLzjwMI4aNZS7qqgnA8kZiOAfZ02TvjfqS8gICQdunBRuIajRPxdD
	askZsme3LShcjaSol3fNedu1tr/c19qKYuMqm1k80A3AUpDC2GEnzBjakmXE8DsUgta6
	KR8A==
X-Gm-Message-State: AElRT7Hjg9s/yZY+iweDTM4Txtu/Pbe4vVSX946vvm6HOKi6W06XnIgo
	OFutr08a00ReK8YADF+F4L3gOGro
X-Google-Smtp-Source: AG47ELtoVPe8N/fB+pchmDEMhsjnWunX09KGIxrgXEikeRKiYDRrDvcU75tbMXaxorIkMsYO9FpHvQ==
X-Received: by 10.107.164.17 with SMTP id n17mr50874826ioe.173.1522311927967; 
	Thu, 29 Mar 2018 01:25:27 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:e996:2d15:f718:d3cf])
	by smtp.gmail.com with ESMTPSA id
	79-v6sm872020itm.11.2018.03.29.01.25.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Mar 2018 01:25:27 -0700 (PDT)
To: Vincent Daanen <vincent.daanen@orthotaxy.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
	<AM5P192MB0132927EBF4A922322C970F28DA20@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <70e7d121-a3ca-22f0-700b-5a558540baae@gmail.com>
Date: Thu, 29 Mar 2018 01:25:25 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <AM5P192MB0132927EBF4A922322C970F28DA20@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Thu, 29 Mar 2018 08:25:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/28/18 11:00 PM, Vincent Daanen wrote:
>> On 3/28/18 9:27 AM, Vincent Daanen wrote:
>>> Hi,
>>>
>>> I want to add CAN driver support to the kernel. Here is the procedure
>>> I
>>> followed:
>>>
>>>   1. Generate a .config file
>>>   2. Copy it to meta-myWork/recipes-kernel/linux/files/defconfig
>>>   3. Update it: set at the end the config to enable CAN as follows
>>>
>>> # CAN Bus
>>>
>>> CONFIG_NET=y
>>>
>>> CONFIG_CAN=y
>>>
>>> CONFIG_CAN_RAW=y
>>>
>>> CONFIG_CAN_BCM=y
>>>
>>> CONFIG_CAN_GW=y
>>>
>>> #
>>>
>>> # CAN Device Drivers
>>>
>>> #
>>>
>>> CONFIG_CAN_VCAN=y
>>>
>>> # CONFIG_CAN_SLCAN is not set
>>>
>>> CONFIG_CAN_DEV=y
>>>
>>> # CONFIG_CAN_CALC_BITTIMING is not set
>>>
>>> # CONFIG_CAN_LEDS is not set
>>>
>>> # CONFIG_CAN_SJA1000 is not set
>>>
>>>   4. Update the linux-yocto_%.bbappend file as follows
>>>
>>> SUMMARY = "Recipe to configure kernel as required"
>>>
>>> LICENSE = "CLOSED"
>>>
>>> inherit kernel-yocto
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>>
>>> SRC_URI += file://defconfig
>>>
>>>   5. Request rebuilt:
>>>
>>> bitbake linux-yocto-rt -c cleansstate
>>>
>>> bitbake -k linux-yocto-rt
>>>
>>> Once the image started (with qemu), I check if the CAN is enabled
>>> (using zcat /proc/config.gz | grep CAN) and I always get “CAN not set”
>>>
>>> I also tried using fragment and I got the same result ☹
>>>
>>> According the user manual, it seems to me I’m doing the right think!
>>>
>>> Does someone know why my defconfig file is not taken into account ?
>>>
>>
>> If you are using linux-yocto for your kernel provider then I wouldr recommend that you look into developer manual.
>>
>> you should look into using config fragments to modify the needed
>> options e.g. see
>> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#cha
>> nging-the-configuration
> 
> I don't understand what you mean. That's what I'm doing. I followed the procedure described in the link you provide... Can u explain ?
> 

Create a file for config fragment say can.cfg and put all options you 
want to change in that file and then add that to SRC_URI
you dont need to create full defconfig.

> Thanks
> 
> Vincent
> 

