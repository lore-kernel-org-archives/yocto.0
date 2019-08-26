Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 637A1E00D85; Mon, 26 Aug 2019 14:33:43 -0700 (PDT)
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
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4D22E009D8
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 14:33:42 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id t6so41100543ios.7
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 14:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=qxC7SiSAbsqMijZYJsPI05t8LGnvMRUm1ecqXV5vsPs=;
	b=U6h7bblCsXyqd89sUZ3oeTcocMtHY2ro4YedyDpmmDcVuxKM4eIw6dfHHUvVrGOBPX
	WC6YAg8vVMwnR/lO2V9WAoqoaaUxQq14v+HTKJlrtSWNSQxro31gQ5bGafoZil/N5dVb
	Nif/HgKjgAFwyMhT81IXnmROxafLjV3YYW0HXS3rjRxGRmC82lF0mAGLDotYLcmPaEdV
	zFgZu/4TLAsGvbG93Lf+UCrftG1q2YuvurikkzQhXXYx5X+2upmChYTTQMJ0vuI1fJVT
	6f00lRN9jMgh2eNS7CUwdNm28LUqIBWn3IgmpFPjMdIwOBfAvdjbf9qhVzS5XqrGFuwB
	Ne0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qxC7SiSAbsqMijZYJsPI05t8LGnvMRUm1ecqXV5vsPs=;
	b=UQCf3/vOlJZKF/YkLsbNc973ZHxxvTzmcIowTAYvrgRcISbPoRaT+mh5MepsjbdI5B
	oUEqYx+RCds5fj5MP1Y9qNdPhIZs4y+pKHS7bDY7HoNjn9WyQhUp2SWG+llu47BTS00q
	qdcQDeACmcMLYlUjxps/G5KdpSo2koE33i3eopl4/XT2exCABiokvENHCFH/IifqAIbn
	+1fZDh7dXYo6ad4a7z2Kx2fWU/gD27zySDQSnxFMps3KP8ATN239xUG8KhvUQSIEVM8E
	StHJMg2YXp5we/LIf7+RxJjS3PObIOVpa1+UiW+rSmi6Ic0SME1TwTzn3KrFMau+Y34R
	1vcg==
X-Gm-Message-State: APjAAAV1Pu+ZJF9sMei0wQigoGBs4NJAcF88NU8BGTATezhdOMQA2/j1
	t9Ec6+gUGc7+J9C5pFbifej0nWmM
X-Google-Smtp-Source: APXvYqwuCeln0nstRgMLvmfBT3CCLpO46k8YGBOrUr7UBsJvZ6SAFw4zjmd+v5N2yLc3cz+Z9vVyrA==
X-Received: by 2002:a05:6638:52:: with SMTP id
	a18mr19811037jap.75.1566855222051; 
	Mon, 26 Aug 2019 14:33:42 -0700 (PDT)
Received: from [10.30.197.57] ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	k7sm11624284iop.88.2019.08.26.14.33.41
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 14:33:41 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Sinan Kaya <okaya@kernel.org>, yocto@yoctoproject.org
References: <d0118f7f-8e31-1cd6-5804-b199c755e639@kernel.org>
Message-ID: <da7b54f0-2e00-0d58-7cd8-8fc5f5c46e2b@gmail.com>
Date: Mon, 26 Aug 2019 16:33:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d0118f7f-8e31-1cd6-5804-b199c755e639@kernel.org>
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
X-List-Received-Date: Mon, 26 Aug 2019 21:33:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 8/19/19 7:30 AM, Sinan Kaya wrote:
> I noticed last week that qemu packaged into mingw sdk is broken while
> the qemu in linux sdk works fine.
>
> Qemu crashes very early while launching the kernel boot.
> This used to work fine on sumo.
>
> Does anybody see this problem too?

Doesn't look like it. I wasn't aware that QEMU even worked in MinGW in 
the first place :)

Is it included in the default SDK, or did you add it manually?

If you do happen to get it fixed, can you look at writing a test case 
for it so that it doesn't break in the future?

>
>

