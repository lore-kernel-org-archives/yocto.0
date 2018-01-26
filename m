Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E7C5E00E15; Fri, 26 Jan 2018 10:29:29 -0800 (PST)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040A9E00D1C
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:29:28 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id a88so787892pfe.12
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 10:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=ZbttAyZyTJeTqstmXzbVB7WaateciOEjGfuTAuIP8Zw=;
	b=ltbDlSJUC+jUdFL2P7nMRklzRWjH3QGqokkUtWxsop3GamI7gZ4SK8tUhVNooWl8rR
	xHW4BJG7LL1toGumBWVejFhraMvzVcgxFFtVMpRjS9oZUVbqhIXTwoz0CFeAB/EF0PbM
	rqh3TbD4O8u6IWUOXbB7ELRxwaDgxOhlKGQ60OraC1iKwEOt9/2/qnPKcmFrbUhqwMBp
	noBCaBIA6YYKBt+ewlLAGLtLkYvhbEnxRGyRVx/bhrkTkIvAzw6X6F0Nm1EmH6VOlicq
	9Cfa3ZecMVAWkjm0sP1YCeFVNPfCUqv+AulQ5v9S6jz/YfirG61nPV9G5tAFbRgR1LXS
	ihbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ZbttAyZyTJeTqstmXzbVB7WaateciOEjGfuTAuIP8Zw=;
	b=Mm4HcNkRpPgU6cLHY8+zFPsNyBN1eLPmb2WIB1uNKHmD7VoUdgNnRg00c8DigBn9sq
	EVIAFJwS6bZ6H0DhUvftP2EFmaZwAK/1y5yvXDFGwwH17IO9dXRGaB0tow2+jpZBMqAm
	JRrAJAc1K9e+i+NQx23lzRlrtzjYQsckssW/1gRIwY9X6tJbxM+PEMoAC44fEsHZvpyc
	sRkZTmbZFNtcTbRmyOyXU3o7sWFh8CBbtm8BVD0yYuQ8O++AcvBW11Zbf1/U3OIaE0tJ
	F3VYv5VrKu0+rW001tN3H3r+zNdox/pZOOLoeKuDudDQduqIwy1xhGEs9dnAQQc9eL3o
	gGeg==
X-Gm-Message-State: AKwxytcJRxxhM2lqpcPF+e3BVgo0qUGYox95wotuUKU+L3SpecWi8NnV
	nRFEM8PHUqjr2ESNOuMVX4Jx7J3M
X-Google-Smtp-Source: AH8x224CScvHbfuVI/gV58WGMvzbGbLNhNo+sOBA1HwZksaJCudnU8nbH7RWjyGrUaQZgtS7nAfFKA==
X-Received: by 10.101.90.138 with SMTP id c10mr15160999pgt.6.1516991368039;
	Fri, 26 Jan 2018 10:29:28 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:bcb1:558b:44dd:74b6?
	([2601:647:4c00:6cf9:bcb1:558b:44dd:74b6])
	by smtp.gmail.com with ESMTPSA id
	f21sm7525728pgv.42.2018.01.26.10.29.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 Jan 2018 10:29:27 -0800 (PST)
To: yocto@yoctoproject.org
References: <trinity-6b2e8095-aa74-42f3-960c-b26c140fbc44-1516988853978@3c-app-gmx-bs56>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <8cf76e0f-e81b-d83e-c8cf-25e7d73549c6@gmail.com>
Date: Fri, 26 Jan 2018 10:29:26 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <trinity-6b2e8095-aa74-42f3-960c-b26c140fbc44-1516988853978@3c-app-gmx-bs56>
Subject: Re: populate_sdk won't work
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
X-List-Received-Date: Fri, 26 Jan 2018 18:29:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 1/26/18 9:47 AM, John Smith wrote:
> Hi list,
>  
> bitbake my-core-image -c populate_sdk does not work and fails
> at: x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc
>  
> Please see the log for further details: https://pastebin.com/w604z66S
>  
> bitbake myimage works perfect except the sdk.
>  
> Any suggestions?
>  

what is your build host OS/arch

> Best kkl
> 


