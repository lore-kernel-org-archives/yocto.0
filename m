Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFBF4E00D38; Fri,  1 Nov 2019 01:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FACDE0091A
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 01:27:26 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id c17so1177879wmk.2
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 01:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=7UHsPEEv4Krsaxn20NF0TL5WLEzkpTc7AkWQQV9+q2s=;
	b=SpSO2EEVD+hVEtoId209m833Lz/MKU6FUjhrgYfI93/rWlDMtOl5Z0B6pkitfYgH8v
	g76e0/8dYNTkDv36AA5ear1z/IZoghxZJoTHccEU/81n7Wbct+ajrcWvkY4imbY21+nw
	eR1SDYC/WC/QX6Z9JC1m6txcW9Pq5tw7nMvaW2qCta0ClZzsk0lP29E/Oa8DSslNjjL3
	zQv8BUl4tnQhb0MEqI4sQV1JixXbVHkTo1r1ME1WKwvJgRo0yz7EvgeiYoqS8DAiLeN+
	A7i+buOAE56B4XLLlmbndxEfpph81SUFj6Q+QBvZvS5u2lrI0nt0rfyp2zIsdw1SPMk7
	O1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=7UHsPEEv4Krsaxn20NF0TL5WLEzkpTc7AkWQQV9+q2s=;
	b=ikL2do8qNBA1vqpw0RW/P7lbZz/oiWqtj0exolwqPDr2A4MxipDi3Hg7AZdLJWtsLB
	tDH+5sUaOsR0bWrrhHqbRY8TMDoXFDE2cHycJ3aEYZQkx2F7J1cqyuyFYdk7hewH1Qpt
	i3HB3lfcQkIF4//1f6L0UFQJk2BBBtZmbFMb/LrDRjkH3nvo0vJfpcm0KU63ux4xVtZv
	rzgOkcXapvp40hUYyFom7g2iIPuKCEcmI/WdqYKIn8da0RFBq8k18f+7p6J6TERC6EtT
	fVRb9o6damBD5pl1twRxiobG0YpPWgPPD79AHS5KXy4TH76PPkdVI2VRDYXWyMHr5thv
	j1aA==
X-Gm-Message-State: APjAAAUa9uVxfF9OZNW6hQAKCyfUfwjajB7fl8smsyNN0YsiPf73ZieN
	RoAU936Ts7sSiNIhynSBTEBCIUE1CkMJ36MP
X-Google-Smtp-Source: APXvYqxv3z0FICYmV9dYHNCra5B/pH1Q/8Fmw8vl4ZTrWjsGYYiuHabf9l7FeCUil1LsWV01847SMQ==
X-Received: by 2002:a1c:7e91:: with SMTP id z139mr9137661wmc.15.1572596845133; 
	Fri, 01 Nov 2019 01:27:25 -0700 (PDT)
Received: from [172.20.38.113] ([91.217.168.176])
	by smtp.gmail.com with ESMTPSA id
	l22sm12038862wrb.45.2019.11.01.01.27.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Nov 2019 01:27:24 -0700 (PDT)
To: Steve Pavao <stevep@korgrd.com>, yocto@yoctoproject.org
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
Date: Fri, 1 Nov 2019 08:27:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Fri, 01 Nov 2019 08:27:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Steve,

On 01/11/2019 05:32, Steve Pavao wrote:
> poky linux build fails when ARM erratum mfix linker switch is specified 
> in local.conf:
> 
> TARGET_LD_ARCH_append += " -mfix-cortex-a53-843419”
> 
> causes build failure.
> 
> Please advise how to use this switch successfully.  I am synced current 
> in master branch in all layers as of today.  The switch causes libtool 
> link to fail due to missing libbz2.so.  If I don’t specify the switch, 
> the build completes without errors.
> 
> It is important to be able to build poky linux with this switch to avoid 
> certain crash conditions as described in the ARM errata document.

I haven't tried this erratum fix. It is indeed implemented at the 
linker's lever. It's curious though to see the bz2 dependency. Can you 
share the specific error? I assume you are doing this on RPi3.

-- 
Andrei Gherzan

