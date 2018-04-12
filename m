Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1075BE00B1E; Thu, 12 Apr 2018 08:44:22 -0700 (PDT)
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
	*      [209.85.160.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f42.google.com (mail-pl0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5064FE00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 08:44:14 -0700 (PDT)
Received: by mail-pl0-f42.google.com with SMTP id 91-v6so4180912pld.3
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 08:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=v0onrdvkT9QhaFnytzVLAcaM7YDHBKHRW7jbNUEFzt4=;
	b=VnuJ7IcqmHeCOdz6gkHV8QHUgwLfHt//jfzC9qfEoDYxr1G3/DFcbpi6u3DCIOGRTM
	jtKbPgmv2KK8Dd38ZneK1AANZMQ+6HCYMlO883Z5ms+6hplmuqdVTJCUDYlm6S/48gS2
	HftOQwhubYKG0EPSl56vW/zVfEvqZtNPb6TtYe/d+ggsvX7goku8syHuywW1GAsxSGL9
	UnYmfzeLlZNFGkr09z4Kyc5eQUuTsoi/FJrLxKhfd7XgQQ299zTZhP2Iq7nDSvNkNZ6z
	TS7xvjEr+CRUo4P10/zie3DW5cnh0nUxlmJSwvE34sG/zQOkax9oTviVRE4NOzuYiopC
	whCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=v0onrdvkT9QhaFnytzVLAcaM7YDHBKHRW7jbNUEFzt4=;
	b=lLVF+AeLN4W/1+g0fc9vkrkxSrw0EAjP5qdipMHbvL0IkaUm1mVo4d4BFs9mtXM7aK
	Btv7NvWXt6AbM9q6fDYOxiSNLq6IexNWdDcnZdjYosiWnLk6IXabTO29lzdB31ldAE9N
	DHDm65CpmKw9Zrvcz1bqj7RpWpUfIMyVR/bDdoaBWWbE/KCCyk819Tv8LRdAgnXyCyg0
	i+tKAdNp1jWwZM6/SQI+k4mzms1NrGF7FUxt4yZLPS62zW0AZaxXgWAve56JUQwRviz6
	Apq400nHeJvbj+r1WDpp23DIovHAbqxupVnM1TX6+CAuPSMLm3V4kt9e29zhC55lCvtz
	m8MQ==
X-Gm-Message-State: ALQs6tAIqGOAkN2IovwZbgneG8r8QqAJNQl4riHANMiM7EqcDMKmPfZL
	3a+TYuoK9CwIhs8pYwAfW7xZzxNw
X-Google-Smtp-Source: AIpwx48xjN7ew3x8K8TeEV6C7IiPCheMrs+2a9vcJWD/rxOj6wZ3yNlhaedUxZw0gXvxuZyE0rimsw==
X-Received: by 2002:a17:902:52ec:: with SMTP id
	a99-v6mr624763pli.371.1523547853908; 
	Thu, 12 Apr 2018 08:44:13 -0700 (PDT)
Received: from ?IPv6:2601:646:8880:466c:b946:b3:7b1:a98f?
	([2601:646:8880:466c:b946:b3:7b1:a98f])
	by smtp.gmail.com with ESMTPSA id
	c201sm8416271pfb.30.2018.04.12.08.44.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Apr 2018 08:44:13 -0700 (PDT)
To: RUSSELL PETERSON <bluehills7@comcast.net>, yocto@yoctoproject.org
References: <2BF5B08D-E9E9-4DEC-BFA0-FFBBDF724795@comcast.net>
	<2028529317.567858.1523375875524@connect.xfinity.com>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Message-ID: <51934d7f-3d19-5179-fe5d-933b3277bb10@gmail.com>
Date: Thu, 12 Apr 2018 08:44:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <2028529317.567858.1523375875524@connect.xfinity.com>
Subject: Re: out of tree module dependencies
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
X-List-Received-Date: Thu, 12 Apr 2018 15:44:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 4/10/18 8:57 AM, RUSSELL PETERSON wrote:
> I have been debugging this issue and could use some advice.
> 
> The basic issue I see is that do_make_scripts executes and fails. I have
> seen different fails but in the end it all comes back to something being
> required in recipe-sysroot or recipe-sysroot-native and it's not there.
> For instance gcc-cross-aarch64 is missing from recipe-sysroot-native.
> 
> Yocto build dependencies is a rather advanced topic and I certainly
> don't feel I understand exactly what the issue is... but here is my guess.
> 
> 1. I changed my linux kernel recipe.
> 2. Because of #1, the cross compiler decided to rebuild. Generally, this
> isn't an issue. In fact the old cross compiler should *still* be in
> recipe-sysroot-native.
> 3. Once the kernel build artifacts is done... my module recipes fire.
> The first thing they want to do is run do_cve_check.
> 4. This is the part that causes the problem... do_cve_check DELETES
> gcc-cross-aarch64 from the sysroot! This is because it cannot find
> gcc-cross-aarch64.complete... which points to a manifest file. I think
> this manifest file is created by the
> gcc-cross-aarch64.do_populate_sysroot. Problem is, cve_check does not
> depend on that?
> 

This seems a bug to me. Please open a ticket in yocto project bugzilla


