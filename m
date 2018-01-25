Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6EACE00E21; Thu, 25 Jan 2018 08:59:28 -0800 (PST)
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
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFEEAE00C45
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 08:59:27 -0800 (PST)
Received: by mail-pg0-f48.google.com with SMTP id u1so5429836pgr.0
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 08:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=YXrGaKE0AzTDW0sghVLuEIfAuNLJbGvlidxcFoGQC9Q=;
	b=iELUadOcT+dD616vsrueYxd0Kz+G1B1LSaENNnk843w6gqM05RXUK8WZp/NRNY9kPR
	VHTp8/eypSiOPuf/Lt4HB8x1wxn5Sxriae+KqSsaeSIYZVzh/hv/8IB6jMmJRZ8wtw3q
	odDxy7N4ufrVlpdc7uKOm87S0+ZmysYTJQ+qi24uZtV/Ym0cfl0k6dyUbR8LvXMg76oy
	65Y2INibOnI1hYLijtEkjc7j/mvn8KGH8O88LGPxu0SGKW26s6co3T/tjtdVlymEKdMQ
	jBnjKXDhsLZ30fKJQdKzhV4Z77sxiiMTFOh3/UB2avuC0MpHZAtjr0M6k7hjz4w2WjAX
	muIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=YXrGaKE0AzTDW0sghVLuEIfAuNLJbGvlidxcFoGQC9Q=;
	b=Ti/NzH4nWujNi19wI0JLP+3zSrY+JAr2hrQMjbUD75sNGroMNSx77P+EFhHw70UwDb
	J3DqlIaoCk4eMD6scB+h5zSSZ+FqSmD3nzmBNeF045w1CKk+HunM3zX+bHAG/CQVJhLF
	tGfs85MVxQvGGNUT0o3oSnuOo9gFtaP+CPq3LA2DeKP88XWtbNm3PjmMSuU9j8zWfIsf
	1pf1x/H3+PwPxxopeeUe0bmj0w6r8k8gkYOEdv+z7sQLx6wLdarkh39rY5p5gBcP+SCv
	1B1Wl+6+04T5ItavhJP8NtI8ezMaobGidl8x87IeO6LGHHL9NL4nTZijw77t+TMMdvU8
	TkmQ==
X-Gm-Message-State: AKwxytcAkJC5SBjApe418zaFVFVNcYlNBROlhpiLVIZ+2CQKMgcUlika
	m6tMdj7iQ4hBWfoOYCO+XwQ3tKxo
X-Google-Smtp-Source: AH8x227tLoKHS/pghN+sdM2ZCxuZBQk4LuverX527WU9Dn3vibCqVuuJ0kGVTSYvl3EeY6HodldHog==
X-Received: by 10.98.206.1 with SMTP id y1mr16410864pfg.136.1516899566500;
	Thu, 25 Jan 2018 08:59:26 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:c139:8d30:e308:8c2a?
	([2601:646:8880:466c:c139:8d30:e308:8c2a])
	by smtp.gmail.com with ESMTPSA id
	u63sm15563965pfi.63.2018.01.25.08.59.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 08:59:25 -0800 (PST)
To: yocto@yoctoproject.org
References: <cf230c0b-0025-726c-5920-5c899dd0df65@otonomy-aviation.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <67413a54-9907-0b03-a106-82542f6b9843@gmail.com>
Date: Thu, 25 Jan 2018 08:59:25 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <cf230c0b-0025-726c-5920-5c899dd0df65@otonomy-aviation.com>
Subject: Re: log4cpp-1.1
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
X-List-Received-Date: Thu, 25 Jan 2018 16:59:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 1/25/18 6:04 AM, Thibaut SARRAZIN wrote:
> 
> good morning everyone,
> 
> i have a problem with the recipe log4cpp, i added layer log4cpp-1.1.1.bb
> to my recipe. but when i look in my rootfs i have the log4cpp.so.5
> library but not the include ones.

if you are calling it log4cpp-1.1.1.bb then its a different PN
(log4cpp-1.1.1). You should be calling it log4cpp_1.1.1.bb and it should
be in a layer thats above the meta-oe layer in priority.

> 
> I can integrate them manually but I would like to add them in a .bbappend
> 
> could you help me?
> 
> thank you in advance
> 
> 


