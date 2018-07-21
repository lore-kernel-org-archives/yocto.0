Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C567E01107; Sat, 21 Jul 2018 01:32:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f41.google.com (mail-pl0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B19BE01077
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 01:32:22 -0700 (PDT)
Received: by mail-pl0-f41.google.com with SMTP id s17-v6so6159142plp.7
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 01:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=qc4P8CrUrWDjZzZaXBd9Vp7Rq1PVlOLO7eksYQ+Czro=;
	b=n+HPmylAlU7MDrAoxDVDX35ITP5dFfEa0tXxbuYqEx05prLMYXJjsyenKdXa9YobWZ
	8pOZ2RnL2c1QQIUMB7m6fp3B0Cvm0IoUi6acFUD8mI75GCtdlEvms8Pz7k8j/vJf7n4z
	DA37zlSjGKvXEqnj6cMrAjLLiJNHZH5e1IVxUUR5KOGaI7TS9CxQVWKOwYAIJelhyU0B
	tZzN2UdLn1QPFWAVRMD/7Zsy87xG8lX0zICH4bKWHN6TX1vRma/c0hAXL9jyVb/ZPzCk
	JKFDlzufBWY9o8RG0dHyVCI+saJIv+8i82Ogv7ig7hKLIEqzih7CbzjeEtdcpoYV9cPC
	/Kdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=qc4P8CrUrWDjZzZaXBd9Vp7Rq1PVlOLO7eksYQ+Czro=;
	b=AqBZxtSi+HfTQQ7VQwyA9TnlGkkC5V6wcGpBqEw0z9sYyX1uI3BxNQSM5rdzXSxB0p
	8rm5S3PLBcd1IEWCbYtbc7NgtVYshlBEt8SQZ5DFyodr07b7xOq5tTFisd8EOjHDE9VI
	aH06o+6rh4RblCpQipdmvsvDFUKvh5633MLPITHf8v+AwL8T2DSmV1c0Us0UgOA0xht+
	KBXtwbWM8+1ybK1V1dJHfiXGaFfaLiclUGK64dI7fdNQneAgTDq1YOIijs0H86kTkIyq
	TL9NK6avTq9QR4nm0U19cERyJUlijeePsVc+Wzth6n+PDGToUsH68L2Yj5Kf7sSnvtHU
	M4cg==
X-Gm-Message-State: AOUpUlG5n1+tyv9pPs5+fdULL4EFRaQ5FiHLZ5TElfEGIO3P9GKOBc8x
	sBuLpqwcA+76hxEzgKMAvPWm7U8V5UQ=
X-Google-Smtp-Source: AAOMgpds4fxlgfEceC+VQcy8ffbeyX/9Ixh8zTgr5n6ChDtoUUEXu1yVTZA1MQa9Tmwcq+be5jxaYQ==
X-Received: by 2002:a17:902:9a8a:: with SMTP id
	w10-v6mr4051735plp.14.1532161941652; 
	Sat, 21 Jul 2018 01:32:21 -0700 (PDT)
Received: from [10.211.4.220] (fp76f115f6.knge107.ap.nuro.jp. [118.241.21.246])
	by smtp.gmail.com with ESMTPSA id
	o84-v6sm5899218pfi.165.2018.07.21.01.32.18
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 21 Jul 2018 01:32:20 -0700 (PDT)
To: yocto@yoctoproject.org
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <1a11df88-6c0a-5d6b-f729-2e942ce1f5d1@gmail.com>
Date: Sat, 21 Jul 2018 11:32:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: can bitbake build offline ?
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
X-List-Received-Date: Sat, 21 Jul 2018 08:32:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi, is there a way I can run a bitbake build offline? I have all the 
required sources of the target in the sources directory, and I have 
built the target multiple times with internet connection, but when I 
build offline it fails because it needs internet access during parsing 
recipes.
Can I tell bitbake to skip running `git ls-remote` during parsing 
recipes so I can build offline?

Thanks

