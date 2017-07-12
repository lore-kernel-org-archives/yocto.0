Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AFDEE00752; Wed, 12 Jul 2017 11:03:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB8C0E00529
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 11:03:15 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id 77so7206476wrb.3
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 11:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=mpeJ7wkMDIz1UE92vA9705130yz2rmkEkmKwoOZWkQ4=;
	b=D7ARmCldyq5u7w/S4V1KLqAcw6YJex0S5qwLyKeAX1R2kR0XVN3rzRSHY9mvn9Ur5F
	MyLEGNx8pjaO3YnIfCX6zuG0uPKwoW5ruEHCkDfJ/pEyTZMDHI1dYVFPJC8yrM6VhXfC
	QGFip4tYtn1LqCRVwzh1sOkuT8Tnbxrs1C+2trdbAMM6Fgi8pRN241wsGmke+IUndVDX
	bFpfkR7vnuvQF8QuSk2+gZKF70hETI9iNxM8fVFwPbd8pir2ttdTvt6Nyp9VFxbNPkE9
	1tPW3/DS8jqZH/3C8F2XeDDNZfTc9sbbJmEj80cWOgiv5jwf+suOTR/pt0YEtKtuWZtf
	Dnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=mpeJ7wkMDIz1UE92vA9705130yz2rmkEkmKwoOZWkQ4=;
	b=fn6nojEASLMRJjQkpQ4B/TRTfC8T5WAcg9EHzdD8gVvc9MU0Tnih6lajEgr6FayeGs
	50Jvcm2QIH+a+Kef17mRCm+p7tb+4Z/HtqQI3sS81hy+4Zt7DtrS2iY/1p6REOv0LBkC
	9qmLcEy1H23U6eSLvxKDv0AmL8GolIlNfpImYjSQC7bNKEDpesTkOoxQFxhRa8w/bDBj
	kTl6J8RIiuMJx9mXdwretliB0Gks4Oupbj7CH9dgGaNMyfwSHFB2qyiSRF/MeOmDd04S
	bfCHb6ZyI4Dkk88nB4xBgNP9F0MfvwkF4+B7JhmKae7brjipgYLR20ONxEWzOtdYFs49
	tsog==
X-Gm-Message-State: AIVw111VDZ2l6ZJtmfrLnDiM307ruStkNY4dFPpW3zKVkx/JEzgk0aML
	kg+Q9VuIVygLdu9PkK0=
X-Received: by 10.223.132.133 with SMTP id 5mr3527808wrg.132.1499882594207;
	Wed, 12 Jul 2017 11:03:14 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-148-99.home.otenet.gr. [2.86.148.99])
	by smtp.gmail.com with ESMTPSA id
	i32sm3458654wra.5.2017.07.12.11.03.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Jul 2017 11:03:13 -0700 (PDT)
To: Kenny Koller <kenny@understoryweather.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAPtqgUxdtgOZNVqRUjrGX6e-+e9Hd=zwac2-zDRUdWQSk=+8fw@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <35d94e6e-39ff-f9c6-5030-7213b5f70da3@gmail.com>
Date: Wed, 12 Jul 2017 21:03:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAPtqgUxdtgOZNVqRUjrGX6e-+e9Hd=zwac2-zDRUdWQSk=+8fw@mail.gmail.com>
Subject: Re: Determining Load Addresses
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
X-List-Received-Date: Wed, 12 Jul 2017 18:03:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2017-07-12 08:23, Kenny Koller wrote:
> I'm trying to piece together the various load addresses used in the boot 
> sequence. I have built core-image-minimal for a Beaglebone. How can I 
> determine which load address and entry point is used when mkimage is 
> called for the kernel? Should I dig in to the recipe? Search some log 
> files? I've tried a few difference things without results.

You don't need to bake a board specific address into uImage.

Like this you could create an uImage without a baked in address. Check 
here between lines 98 and 112

https://github.com/RobertBerger/meta-mainline/blob/pyro-training-v4.9.x/multi-v7-ml/conf/machine/multi-v7-ml.conf#L98


> 
> Thanks.
> 
> 


