Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9DC6E0079D; Tue,  5 Aug 2014 04:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42131E004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 04:23:07 -0700 (PDT)
Received: by mail-yk0-f173.google.com with SMTP id 131so497872ykp.4
	for <yocto@yoctoproject.org>; Tue, 05 Aug 2014 04:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=wm9V82HJ514LEKlKjr7XuFNgJIOOZfzSZKZYGfKgQ4k=;
	b=pIfyhD2BxO7/zFzK1B6qRSOZRLu/EDUUfmNfRws8R9bU2xcAXGVzraxE4cXVMIKyvW
	L6kplmlHhqTFgVtFfUTqeh3VbKoYOVlClTYUoTzLuqPmIa3+pI7G5SqMxOL8DhUBynp/
	mhdzhyw0lXIrn92S1aOilDRcTxisGNNuCYc4ynOlr4oeAM/AR/Wt7ZMSawQrwIw9CweL
	mhSPgMjwcENRw33+nW4qi/JvxDtEEI0k8t3OtlkqqRhUUqhdDLgMlsDX3iJf3p9evaqi
	+fE/zS6NMnYOT721WIQRTmCrLfMUs16aCIrBBrfqQZDAR4HsnwedP26FDpjjlwSE3HYP
	9I8A==
X-Received: by 10.236.40.81 with SMTP id e57mr5169915yhb.26.1407237786716;
	Tue, 05 Aug 2014 04:23:06 -0700 (PDT)
Received: from [192.168.0.12] ([201.53.208.133])
	by mx.google.com with ESMTPSA id k7sm2490811yhl.26.2014.08.05.04.23.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Aug 2014 04:23:06 -0700 (PDT)
Message-ID: <53E0BE90.6050404@gmail.com>
Date: Tue, 05 Aug 2014 08:22:56 -0300
From: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRmVycmVpcmEgZGUgRnJlaXRhcw==?=
	<joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>	
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>	
	<53DC4886.8070406@gmail.com> <1407232846.6981.77.camel@ted>
	<1407234725.6981.82.camel@ted>
In-Reply-To: <1407234725.6981.82.camel@ted>
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
X-List-Received-Date: Tue, 05 Aug 2014 11:23:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 05-08-2014 07:32, Richard Purdie wrote:
> I also couldn't reproduce this with the armv7 toolchain. Do you have the
> logs from that failure?
>

You are right. I retest armv7 and there is no problem. I think I lost 
myself during install-test cycle

Thanks for your attention.

-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil


