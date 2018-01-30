Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5264E00E05; Tue, 30 Jan 2018 12:37:33 -0800 (PST)
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
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CEBE0056D
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 12:37:33 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id j16so6783983pgn.9
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 12:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=cPEYaD6Lfbfad/ZAmw4VLKB8t/CKuIb8o4nkwdsrVsw=;
	b=nOd7xdcWS2ytUbDa5CZ8ihaeWL9+PU7NQQJeH5bhpTzUwQEJbLFjZVoPElay+lNHUt
	DQEo27SqRUsYMKA548dVYTR+LPv6/tXIvJ7bQjxMJkl9ct1v9m+QsRBGBekO0+t9YFuE
	3+h3eSOGgt755+Bxh/kWst5E9m1wpCsmVXychg2SBjE1YjJ1qSt0EiVDuCrkhnXT5fJg
	cfxNp6/xRQheDxiTTLVPvEl4qZXaOjvEV2azAYtzapyUFy7NB2/rvZHRcZwK4tHR35a7
	tM9d5J6t66fhmSOuDX4BRkUEledtCYRi7EDEF5scLkmEUIgStBLRHf4FBTuMXL/Pkq2N
	uiyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=cPEYaD6Lfbfad/ZAmw4VLKB8t/CKuIb8o4nkwdsrVsw=;
	b=oofUkW3ruxr3BEwjm1DyymMW1D8jGox87/7NV/qslWM6jDjIX+3To5TakFTX5xbLQw
	ilmkMFEAvlZmAyMj4xPgwyYy2h6cykk0azT5SGDK/l1l9AlL7XEEyHlINxNc6Vpyk9Nz
	QBphMOjgutGxuOLMbfgBbkMikh0vQSmWRlXAdBljUvMk8+Txr14HPjE2nsf4coRjxpJl
	oRENpQ7gRgcTMx5/hkTdwpqSAMOBctlSMup/NZdt31sRn3qO0+KsNIkvfeXa3X4hqY6N
	H9Q3MeSxiBfxEfYsx+ZpMgJauMPujQ3jUDugiBY6Q6gQmPH3mH+Sv08jU7OUgrT+Vb0L
	PL6A==
X-Gm-Message-State: AKwxytfatBA+uVyPGMTUnes/TLnG9LZOEkA0LoC9rKIKtYeJfttigsNf
	6YV/AXpNKtXCRkCdpmxYML/WOf3G
X-Google-Smtp-Source: AH8x225PoEe6IGxcygelhayM9LQK4d+G1vaGfh3IWPRDF/xxic0Fw3iyxfIpcwJMWCuX6xuE1nAJdw==
X-Received: by 2002:a17:902:3183:: with SMTP id
	x3-v6mr26225425plb.290.1517344652438; 
	Tue, 30 Jan 2018 12:37:32 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:4c3e:ac59:6e73:b998?
	([2601:646:8880:466c:4c3e:ac59:6e73:b998])
	by smtp.gmail.com with ESMTPSA id
	b3sm22434365pga.24.2018.01.30.12.37.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Jan 2018 12:37:31 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAGkqu_uOb+J+hphttWKRD-8g2gwVG1P90r3aHQAzW2KOJNoptQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <bd8710cd-efa0-d2ce-b08a-0138f3656440@gmail.com>
Date: Tue, 30 Jan 2018 12:37:31 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CAGkqu_uOb+J+hphttWKRD-8g2gwVG1P90r3aHQAzW2KOJNoptQ@mail.gmail.com>
Subject: Re: Disable UART Console for Pi 0
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
X-List-Received-Date: Tue, 30 Jan 2018 20:37:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 1/26/18 3:25 PM, Nathan Roberts wrote:
> extra-build-config.md <http://extra-build-config.md> states
> "|RaspberryPi 0, 1, 2 and CM will have UART console enabled by default."
> 
> |
> |I have a Pi 0 (not a Pi 0W), and want to disable the UART console when
> an image is built (I know how to manually do it after the iamge is built).
> 
> |
> |the above file also states:
> |
> 
> |Users who want serial console support on RaspberryPi3 will have to
> explicitely set in local.conf: ENABLE_UART = "1"|
> 
> 
> So I assumed to disable I should add to local.conf
> 
> |ENABLE_UART = "0"

yes that is correct.

> 
> |
> 
> |but when I do this the image wont boot (no error messages).

how do you know it does not boot since the console it disabled now,
probably you should check other means e.g. IP address or ping or ssh
or some other networked command to ensure the system is up.

> 
> |
> 
> |What is the best practice method of disabling UART console when
> building an image?

you already noted it above.

> 
> |
> 
> |Nathan
> |
> 
> ||
> 


