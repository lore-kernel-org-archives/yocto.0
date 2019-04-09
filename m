Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95B3EE00AA9; Mon,  8 Apr 2019 17:50:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEEAE00A54
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 17:50:24 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id g8so8267229pgf.2
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 17:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=GJnQdElXIwgwc9EyO4K/nM7pgr+pMU/HsuUBOGLqUsI=;
	b=xelcQ4306WtYbSGT6ugnC95jaWDfpckaVS8gSwfezTSXWVjm1a2QORoIYz9jNL4nr4
	96gMR3ElhcPavkp93Gupn+Nov6No7Nb/c4d6oWqy5a8WQhjBV+EakTp5eTwK+Y8XWls3
	t2d+zC7GNEk3Dbq2RRytHVWpnB2UeqhCdHOugCfRHW5noSHjBDWoqxgHQg7W7WZoUtNi
	iTRDJTXCEZvgsnUsMcZ4UxIIeg/u8KmQqhWSgKaxzUB0JYaTgW67xvT6Nv9a9jYpXfFB
	x/Nx6VoeqsMS231ehrea5dqG6NaVb1OvFj1Y/u8yBMGQxZv5CAzecljdVBT0KSvV9wco
	OX7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=GJnQdElXIwgwc9EyO4K/nM7pgr+pMU/HsuUBOGLqUsI=;
	b=GPOwcTh8A3L1xBgHj6WAoAm2Ix1zX4By3GS3+nN+kuCRZYg8VLd0i4mSkCNE3Ggbiv
	7nGjJZt5oUVvhQI2gUR7G66xCLYWeYnsVt3xYV/Wp9Rqh951CHlnicqaf5mb/tSS9WCK
	mttkBIR6Isx5khJOP2y6s9ytPiQtZPpePYBPhD73l6O0CYedzXdRWuo1zJmBsr/tbgCs
	HWjQ6lrWx5QwuHsKK6aXssTJ6sqS5+qHDwxlcRVGsdcVk178MDvJdYKJOZnvXnJxEhsR
	qXhHs+M4pVO9HNdSGOlyygwwB7eTR7B4N49MFmEitRSIocyH2hy4VDZH3KNKdFYmm80o
	f7Aw==
X-Gm-Message-State: APjAAAXlNyMThYVd6XXHhsBPWEDHlSrRMZB0kYkppLrqoLBHzHFquCRX
	WFryyfCW7Zqiukd133e9+l48Tg==
X-Google-Smtp-Source: APXvYqzxzNzWPnmdtqNtVfrIltlwVQ+iYzVYJCIlD8UqwBCSGxdqhJXi4Xu+LeERs2DGWRrdbUVx4g==
X-Received: by 2002:a65:4341:: with SMTP id k1mr31936596pgq.88.1554771023608; 
	Mon, 08 Apr 2019 17:50:23 -0700 (PDT)
Received: from [10.240.241.171] ([116.212.180.67])
	by smtp.gmail.com with ESMTPSA id
	a9sm43280199pfo.17.2019.04.08.17.50.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Apr 2019 17:50:22 -0700 (PDT)
To: Sinan Kaya <Okaya@kernel.org>, yocto@yoctoproject.org, akuster808@gmail.com
References: <20190329144252.10259-1-okaya@kernel.org>
	<84319ec4-cdd5-6095-1363-e07cf5c6d396@kernel.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <276079f3-1c73-c6a0-fc2f-cce4f38de754@mvista.com>
Date: Tue, 9 Apr 2019 06:20:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <84319ec4-cdd5-6095-1363-e07cf5c6d396@kernel.org>
Subject: Re: [sumo] [PATCH v1] systemd: fix musl compilation
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
X-List-Received-Date: Tue, 09 Apr 2019 00:50:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/9/19 5:45 AM, Sinan Kaya wrote:
> On 3/29/2019 10:42 AM, Sinan Kaya wrote:
>> musl compilation has been broken since systemd: fix CVE-2018-6954.
>> Fixing this
>> by placing #ifdef for glob definition.
>>
>> Signed-off-by: Sinan Kaya<okaya@kernel.org>
>
> I didn't see any comments here but I wanted to let everyone know that
> sumo-next branch is currently broken with MUSL unless this patch is
> applied.

Thanks for the reminder. it will be in my next merge series.

- armin


