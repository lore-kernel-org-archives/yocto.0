Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24578E00D8E; Thu, 17 Oct 2019 21:36:33 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43FCE0097C
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 21:36:32 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id j11so2229406plk.3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 21:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=sKzPKJOkoZfpHxVuYAvEfQ473ncriEdJ6jTLk9Y+w2I=;
	b=lAIZSIO80ss2yIbOqr1TGWrSdEE6o09vzZfaF+J7Kw3+waPsCptzWC0iWMJK1ezyvH
	W0O7oKagHHLpuY/Cn1BX03xO8ZdI9GSRIZYlGp9jlGI3Lez97hned2i9ixZLH+7z4ixw
	kbIc+BTlk9uvZJ2KDUUsfzk3vTUcgY6IqCF4tu4h5K2/PtMGKXVUpugUbK/SVYLKXYUP
	XQ3sF8IqOC0iYhyGxpMDAR1YE2qbbFVZ9T3T2fagZrdKdQ64ZLqjnx+el0Dl/+XeLw99
	ukFpVlChY5DiQ/ZIAJS1jEK65B5TennU762/z9jsOmt1MUlzfSIGbF2SLkFZkCdxyBhX
	rBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=sKzPKJOkoZfpHxVuYAvEfQ473ncriEdJ6jTLk9Y+w2I=;
	b=S7rhTemjttvxbisbIgEqxjnmXufP103ekObFvvKyjZllBdpb9YblDry1cyaWhibEm2
	PWJzfy+STeOCYg1W0snBPAM195UqGvn7Gaod3OGwJz9mc3mYMq34lWThO5bfmi70C3cU
	Wri8iqyNQMw3TGjNYObrODQnow4f/h7Cxh2qpw4mjcU0Gnt3vw25s7DdtMFRCTq3S3FM
	eh/4Zb7pY/YbP+E2LpaNwYeMPZPAyF3uCVXUa6RgKxFc8rpiOAb6v6f7w5fuX0ZMntKO
	t8KQ2ESmQrNrlhQ3SKHBq1qlIDxqxyefXS9f4GtGvV8TqCc3MjmM0KWakVwEJhNIm3yb
	ZQJA==
X-Gm-Message-State: APjAAAU5DrI8NQyEFfh5n19zdf8MbgM5jZyLLCsDFSnUeHn7DB/p5+S1
	D2q7zSSx5ipZp3xk8PnTVMo=
X-Google-Smtp-Source: APXvYqzswfymbSIZSo/++5wiHZMwlReAgpl1NGbwzkf1xqyueSBc0GEhQZ9C4+vii7c4uriR1gIXRw==
X-Received: by 2002:a17:902:ab89:: with SMTP id
	f9mr7674629plr.295.1571373392026; 
	Thu, 17 Oct 2019 21:36:32 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:80c4:1df3:e700:2539?
	([2601:202:4180:a5c0:80c4:1df3:e700:2539])
	by smtp.gmail.com with ESMTPSA id w2sm4435827pfn.57.2019.10.17.21.36.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Oct 2019 21:36:31 -0700 (PDT)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
	<f16291d5-196e-33bb-58ab-1eeb75c03271@mvista.com>
	<CY4PR11MB18798A880817EFD912D21A03E36C0@CY4PR11MB1879.namprd11.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <18c80cb0-2bf9-d6aa-cb56-92e3a842c482@gmail.com>
Date: Thu, 17 Oct 2019 21:36:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB18798A880817EFD912D21A03E36C0@CY4PR11MB1879.namprd11.prod.outlook.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
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
X-List-Received-Date: Fri, 18 Oct 2019 04:36:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 10/17/19 7:01 PM, Jain, Sangeeta wrote:
>
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>> Behalf Of akuster
>> Sent: Friday, 18 October, 2019 6:53 AM
>> To: yocto@yoctoproject.org
>> Cc: akuster808@gmail.com; Chan, Aaron Chun Yew
>> <aaron.chun.yew.chan@intel.com>; otavio@ossystems.com.br
>> Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-
>> 2.6.4.rc2)
>>
>> Can we get 2.6.4-rc2 in a QA queue for the next dot release?
> Do you mean that we should wait for 2.7.2 before starting QA for 2.6.4-rc2?
Not to wait for 2.7.2, there is an outstanding issue needing resolution.

2.6.4 is a ready to go.

regards,
Armin
>> - armin
>>
> Thanks & Regards,
> Sangeeta Jain
>
>> On 10/17/19 2:17 PM, Poky Build User wrote:
>>> A build flagged for QA (yocto-2.6.4.rc2) was completed on the autobuilder and
>> is available at:
>>>
>>>     https://autobuilder.yocto.io/pub/releases/yocto-2.6.4.rc2
>>>
>>>
>>> Build hash information:
>>>
>>> bitbake: 6b045e074c6fea97d4e305a5a3c8bf82135d95eb
>>> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>>> meta-intel: c200851435f39acd2fe4abbf7a05fbf617833964
>>> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>>> oecore: cd7cf933b3235560ec71576d8f3836dff736a39f
>>> poky: 51f6145f8f99a02df1dad937684f014b0172e72a
>>>
>>>
>>>
>>> This is an automated message from the Yocto Project Autobuilder
>>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>>> Email: richard.purdie@linuxfoundation.org
>>>
>>>
>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


