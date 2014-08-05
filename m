Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DEE3E00799; Tue,  5 Aug 2014 04:15:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-yh0-f43.google.com (mail-yh0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B745E004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 04:15:21 -0700 (PDT)
Received: by mail-yh0-f43.google.com with SMTP id 29so513831yhl.16
	for <yocto@yoctoproject.org>; Tue, 05 Aug 2014 04:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Gwx3YnNSQ5kZNlVxjHlyLMVD5HPsK0uFc8U0SOCcA2o=;
	b=HppI9i91ebt2xPeQNFkLGinC5OhMliO7XOoodoSihYf3POaNdLz5zT3UTSZ79+JkQu
	xNLIzDx/crq79C9cUh/NwXSyv6YFDvq/lF71d/05oe2Q56EaAP4tr4NEH9/5AjqLwFif
	CxFjuhJx11j3Aat3SdKYngbNlGTloRNcU22IHZt+eIDpFgHFxQxEPj9UIWlWVkHQmRY4
	Oq8cLBKjsqDGiNI51XayQwd9TyOTocMgH/W0uJoXCu1bmaS00gBmmeGu+W66LZ7e7EwU
	RqFcCQ8WP5Zu15JHfk/KwmGrOOXmYfrwZLLV/dA0cD3rwnYTBsTovwdxyqncZjtW9/2s
	FX0w==
X-Received: by 10.236.34.165 with SMTP id s25mr4845819yha.71.1407237320950;
	Tue, 05 Aug 2014 04:15:20 -0700 (PDT)
Received: from [192.168.0.12] ([201.53.208.133])
	by mx.google.com with ESMTPSA id c47sm2448044yhh.49.2014.08.05.04.15.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Aug 2014 04:15:20 -0700 (PDT)
Message-ID: <53E0BCC1.1020008@gmail.com>
Date: Tue, 05 Aug 2014 08:15:13 -0300
From: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRmVycmVpcmEgZGUgRnJlaXRhcw==?=
	<joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>	
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>	
	<53DC4886.8070406@gmail.com> <1407229526.6981.72.camel@ted>
In-Reply-To: <1407229526.6981.72.camel@ted>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Tue, 05 Aug 2014 11:15:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 05-08-2014 06:05, Richard Purdie wrote:
>
>
> On the specific errors, I think its likely the fact we're using one
> compiler over multiple different configurations and there is likely some
> kind of path issue somewhere. It may be worth filing bugs on these
> issues to ensure they don't get lost.

Ok, I will fill.

Thanks for the status update about it.


-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil


