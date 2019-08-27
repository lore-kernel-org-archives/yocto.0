Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91AAFE00D72; Tue, 27 Aug 2019 06:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43322E00D72
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 06:22:56 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id q22so46227021iog.4
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 06:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=mhRgShLo4la2HgaLKjujKneq2pL3AhMgcZDAgHYOtl4=;
	b=JKBPLGHGy3htAjPpzB/LHAfY95SSqO++TZtDWD8AoQdgzy+8+knhQ6NbQ6QBFH+RVQ
	EX3oNeHqeSmHPeqZrVmAmFBPf3wD9S2Ks8X1JJZI6QyAuk1tMfScgqp4bRqzB8eovSXQ
	ZIRDoEzJ5Bl0BerecGqUZQVireyHFEh3L6fMnejeuvjP9YBwyv2LJXaWmEmt21WTmesh
	GDzAdbALaXofT8w9yuTkvDNgK7QuJLGIB7U7cudTGONqluiYuyUKrghX8IZ/vdNiwIMR
	Fbg0DndGi8d2it+CTs5L2rXMDJUZRvGbaD6zXD7+KCTpX4k79GO11kBjJnKiFjf8s8g5
	0KWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=mhRgShLo4la2HgaLKjujKneq2pL3AhMgcZDAgHYOtl4=;
	b=VBiLlihmHJ+jbBGHGOp0qgoRVqg09F5c+I03h9C0RyTSwO07mmT7xq+oitlpJj3+Qx
	rUy97ebO4H8Dd30Ms4MWrxftgvt1DPz917z8G8vGiw6OM6xCAYmEufsTp5usxoD+yjdI
	eD9vhn3ufxYbTzxXGAcuGw70EABE3umMIqvaKOlro2c+/bILmwN2VSkb1V9cuVJ0EHt1
	3lmPnBrcd1CQEjl7NwUJd95YZJU+ksTuIpeoqS1xIbyL1hQbkpW1bumnFi8jMQR0IzSS
	LavZPdbOcYVsP9S3NVlhraWMogOI1IjwWFzBg6JTQkYYrgYdNPKA78qAR0EPWujQLMC4
	bU+g==
X-Gm-Message-State: APjAAAXJW1wz2qOXAtP27CvC6AYWF0smm7nN2zaiJg+55G7U2lhfj3x5
	o5nRfO0t4Xw0Kzclv6VI47g9bz0C
X-Google-Smtp-Source: APXvYqwyT9VzO+52rGeNkz8++blr8+tpf9qhooUwBMZJdEPUGE4OJVtHRZUDjmwRNJrfe76AB+X41g==
X-Received: by 2002:a02:c792:: with SMTP id n18mr4122453jao.130.1566912175153; 
	Tue, 27 Aug 2019 06:22:55 -0700 (PDT)
Received: from [10.30.197.57] ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	v10sm14984109iob.43.2019.08.27.06.22.54
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 27 Aug 2019 06:22:54 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Sinan Kaya <okaya@kernel.org>
References: <d0118f7f-8e31-1cd6-5804-b199c755e639@kernel.org>
	<da7b54f0-2e00-0d58-7cd8-8fc5f5c46e2b@gmail.com>
	<98d43ab8-b934-a4f3-ea07-98cabf948dd0@kernel.org>
	<CAJdd5GZ7OMN-hUZz6U-SoxC5Ot+NPu0wHa7amuHhMmawpE8zmw@mail.gmail.com>
	<5e3b9046-a9c2-a6c4-7d0d-517600410969@kernel.org>
Message-ID: <648fa5d7-3d5c-5905-f77b-e0f5780463f3@gmail.com>
Date: Tue, 27 Aug 2019 08:22:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5e3b9046-a9c2-a6c4-7d0d-517600410969@kernel.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] QEMU on thud mingw SDK is broken
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
X-List-Received-Date: Tue, 27 Aug 2019 13:22:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/26/19 9:55 PM, Sinan Kaya wrote:
> On 8/26/2019 9:47 PM, Joshua Watt wrote:
>> No, I don't think that is supported. Just to make sure, did you try
>> building with
>>
>>   SDKMACHINE = "x86_64-mingw32"
>>
>> to try building the entire SDK as 64-bit?
> Yup, that's what I have been using.
>
> SDKMACHINE = "x86_64-mingw32"

Hmm, we are actually building the mingw-w64 runtime libraries (see 
meta-mingw/recipes-devtools/mingw-w64), and compiling for 64-bit, so I'm 
not sure where qemu is getting hung up. Perhaps there is something 
preventing it from detecting this?

>
>

