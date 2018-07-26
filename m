Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A48E00CCE; Wed, 25 Jul 2018 20:44:32 -0700 (PDT)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18C7E00C80
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 20:44:30 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id f21-v6so475413wmc.5
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 20:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:references:to:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=OXUXN7XlU+W78v+C8C2BGPju/EnCg6Uzej7U87kHEAs=;
	b=VwVkarCKH2bvsf9RHqq5Oly9ulWuEy4bhOmX1lsmk+FyCxXAShZO2iPViOocKUYNHo
	gP8E+xBgehXMXi5jqnnj1FxVyWUbLnqczpiyijs8nW6wHf0DqtbVYinYkCzS1wjFwJyu
	e2fNb20DlMRFUg29v2B4Yifq68ul85M2iuhUdORiUNmYGrMycosMYJp7J7mPbHhrKnbz
	JZEkxG2XEkhpALfhtug/YjdOivqbDMLIjmQMahvduK+n3Lki3H5gpI5jthv9OP4bSVoJ
	WfmadvGEoVDBo5XLvycSn4s7cHvjx4RSiqa/s83+9U7zbRnPi6vzznJWuKm8ri8Ih68x
	Gamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:references:to:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=OXUXN7XlU+W78v+C8C2BGPju/EnCg6Uzej7U87kHEAs=;
	b=bSMJ+5B5nByJ8PNTN6H1188PBG70IXTAdLcTla48Ir1j02GTCSysh5AXJ3XrkHtoou
	2PzkjZYiTwIRJ77PFVjRvdqPqKezFAITzYaxTCzaIQpgyopBdYad4N7WodzPpi6eabEZ
	c9P80XeVheDBvsRbtTg9Gf5bayOvTHM04SxpNKsAeTdvQWso7P2Fg4sIp+FYklZ//plT
	Jzp3+zrTiSOo/u4Sl6a+ci+bd+qrKKYqDZUdhABxMw4HBtJk0TIZDJ7Nmr6tcyguaOPJ
	nEoil/tFEucZlSVkaPmPgNg+rluiVNMK54VMvDhqqFPxnl8nvO5zBokA32iC+QDPD8XN
	6qdQ==
X-Gm-Message-State: AOUpUlEBS1QvUZyOwCInBHyBUp8lqh1o3WxUpzFhreEdzJss04iAx43q
	QH1fdZtyJudYx5DH7Ca2kVKLRO6i1dY=
X-Google-Smtp-Source: AAOMgpfrLqaLmo1PG03SWn3BqKnp4E+YMbUExSmBKyGvUy+sXgGUid7vyy5LF+59fJDp3S8OpNR43A==
X-Received: by 2002:a1c:f46:: with SMTP id 67-v6mr298624wmp.122.1532576669728; 
	Wed, 25 Jul 2018 20:44:29 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.27])
	by smtp.gmail.com with ESMTPSA id
	w8-v6sm208530wrp.72.2018.07.25.20.44.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Jul 2018 20:44:28 -0700 (PDT)
References: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
To: yocto@yoctoproject.org
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
X-Forwarded-Message-Id: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
Message-ID: <14049c37-db6d-c5b3-b60c-4cdfb00a6f44@gmail.com>
Date: Thu, 26 Jul 2018 06:44:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
Subject: Re: can bitbake build offline ?
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
X-List-Received-Date: Thu, 26 Jul 2018 03:44:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

I tried that and bitbake still fails when disabling the network


On 07/21/2018 11:42 AM, Alexander Kanavin wrote:
> This page has a tip on what might be causing 'git ls-remote':
>
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F
>
> Alex
>
> 2018-07-21 10:32 GMT+02:00 MOHAMMAD RASIM <mohammad.rasim96@gmail.com>:
>> Hi, is there a way I can run a bitbake build offline? I have all the
>> required sources of the target in the sources directory, and I have built
>> the target multiple times with internet connection, but when I build offline
>> it fails because it needs internet access during parsing recipes.
>> Can I tell bitbake to skip running `git ls-remote` during parsing recipes so
>> I can build offline?
>>
>> Thanks
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


