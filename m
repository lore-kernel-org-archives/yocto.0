Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C1B3E00D33; Fri,  7 Jun 2019 09:02:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3E10E00951
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 09:02:09 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id 20so1400759pgr.4
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2019 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=X//gDJWXeNz8ZEwyfy/bmsqUwh07/K4aokyFPFu26yI=;
	b=kLmqPBF+PegkVvQBPlYioZrVPUKrF63o1mB0x7hMv1G7NwupTG696U1VkKWWp3TcKB
	wckgs9/sbZnc5q/sYLwMl66KPfvT+bH2wOMW25dPBX5V6Sgtm14X2OnP0qOtEJHOPiCu
	AqX1Mr13HnlrlzlbmDTfEP+Jodfq5tD+B+/+8LyOuVus47J63wKDYdwrm2YXpeUmhcRA
	XKHjb1zd59KICuXSWRO1a/1ag2Bi4wFH66pYoYp/UerQLKU4565lfntqvUfiIxx1022Y
	mwZsKnWyv0kcPOoRd/yoxLXyJfdAHOV4JRjDimo5M/hCpyPrdVD/fRQFlPUjtnNNTnl1
	aTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=X//gDJWXeNz8ZEwyfy/bmsqUwh07/K4aokyFPFu26yI=;
	b=cdfKNgGDzLa4skAyVWK8JnH5RJ16nqAWf8Cwv9aw3ItYrGNxFhB0JJ9QOWjjVBXkok
	dGzzCkkFSCk5SqkM8VjyHtr15DoTPKuT3vSW6T9cxMd3OO6BshvEBgmOpkQahBcGrI6x
	3j0JAQHLpiBi/GBCTELr0I2ANdPZFrn8aDrPWv6HNS1K/wXw6EZMn02C3/KJLv0W/vrf
	XPhyNwJz3oQrMZTY8mlCEK/Tzh0pkN8P35NE2Q6DpUlPbG+J83MmHa4nI771/Kd+Qhnv
	wwPFrtSiKFsFWiJhD3Qwajggkkz91Sl+N+zSxbKbZ975rS0TJy+hne8kcdsrkjITCFRL
	IVDw==
X-Gm-Message-State: APjAAAWHAnQuZJ2ssC+5Nx39CfQ/WY4Q60QGulbrilkt3R40k/vH8QbZ
	1siJiusC/7rZD6EneKDyZgecwuPY
X-Google-Smtp-Source: APXvYqwUMMzDpDuI86o/kV2j3/RDUOJTM+scqdHGiS6ZwdN01i6gs2PNmPpcxTrAYN1cCXmK78tQYA==
X-Received: by 2002:a17:90a:2ec5:: with SMTP id
	h5mr6206353pjs.93.1559923329209; 
	Fri, 07 Jun 2019 09:02:09 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:9501:8703:ab4:a59e?
	([2601:202:4180:c33:9501:8703:ab4:a59e])
	by smtp.gmail.com with ESMTPSA id
	x129sm2862800pfb.29.2019.06.07.09.02.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Jun 2019 09:02:08 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>,
	"Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
References: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
	<CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <09dc216d-63ab-2fba-2510-a538a079a181@gmail.com>
Date: Fri, 7 Jun 2019 09:02:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security] AppArmor 2.11 no longer available on Ubuntu archive (sumo branch)
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
X-List-Received-Date: Fri, 07 Jun 2019 16:02:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 6/7/19 3:09 AM, Burton, Ross wrote:
> That is deliberate and by design, recipes shouldn't fetch from
> Debian/Ubuntu archives for this reason.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=462d76700a3c2748067d4685db8985c511b1b46c
> is a patch to master that needs to be backported to warrior/thud/sumo.
should poke that maintainer ; )


>
> Ross
>
> On Fri, 7 Jun 2019 at 11:07, Smith, Peter1 (GE Renewable Energy)
> <peter.t.smith@ge.com> wrote:
>> We are building with meta-security (from sumo branch) which currently uses v2.11 of AppArmor, it seems overnight that the source archive has been removed from the Ubuntu archives. Does anyone know if this is a deliberate action, or if not who to contact to get it put back.
>>
>>
>>
>> Peter Smith
>>
>>
>>
>> Senior Emerging Technologies Engineer
>>
>> Grid Solutions
>>
>> GE Renewable Energy
>>
>>
>>
>> -NON PUBLIC-
>>
>>
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


