Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B21E00CE0; Thu, 26 Jul 2018 07:10:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EBEE00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 07:10:10 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id r24-v6so2228816wmh.0
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 07:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=Q5gtbyLyu/3TeUJYXoN/qAHvMG/hSWAJD2xMabmgh7g=;
	b=QRDOqqH1ynS4CLgiPqrW6hV0C+x+QG+kiggBU21uELPRAF4XXwhpORwi0KE0tvuqtL
	6n3K4mpnRj8h4h9UjC5rEmzwZVO1Rca1woIfQv1W9jeru29P453Hyj3Rmr2G2L0Mrr0l
	x8VBENK/mkguQF35TIvn+yjgBSrL6S9lCsziEV37nQtzt3H7as5j4SChmj8NEFFR/eX+
	37fFG0tDZOe3/7C9KXStor561zTob5JBjSvJW3auRpGK3rw7UozLdGyaTmxvI+bvSnqi
	TnCdEA3OD1hQACytbbcnoxqfAnTgKltgO7QZ9rPoG80PpSgGmcaovbkahmqe3KdfsT22
	FZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Q5gtbyLyu/3TeUJYXoN/qAHvMG/hSWAJD2xMabmgh7g=;
	b=Vz7QTkBtfYgsbQHQGDH+dk1VtSq6yw1FYNJ1vb3GFp9Z39E+jHf0aUiYS/hjPcvDRz
	LuKN1fXAngCs2hDjPpe4JVe9V8oiC9g+a1v0Suo2+tk0mGnivZmfB6EZ3cSmOUUCUf+x
	cE6i8mYLQV9Gj1rfs4rUIKlbl+yNGhO9vg3/NubAomVK9wBgN+QiSOUXHlSqYQCwifm6
	d5w/mtflz/ZgMUtvlI61KdGKb4CuJDO16LoS8n6bTrK7jLMBPkFyCe/khVV6lesySfDc
	p4kLzaucZaS7zmtDrD5Gae5P6A/F4UgFiCnXlW20QzjXcFbtCe4K96C2NQKXmedmTfFq
	gNSg==
X-Gm-Message-State: AOUpUlFdjLEK8PEgrfib0Fkx55siTRceJYyxDhuo7HL24uD/XEMM1YTN
	WWkz/qd60JpmcM06cLI0a2t+lTIb3sDbNA==
X-Google-Smtp-Source: AAOMgpcsiTTqV115MjeQi5JR1J11oSdEHaEzgmJUypAnABtWj/2Q5LAiSe7LZey1bS1CYWWFm/rhww==
X-Received: by 2002:a1c:4d16:: with SMTP id
	o22-v6mr1632080wmh.49.1532614209900; 
	Thu, 26 Jul 2018 07:10:09 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	g15-v6sm2112511wrh.48.2018.07.26.07.10.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jul 2018 07:10:09 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
	<4930421.VRI8zmqDti@localhost.localdomain>
	<a2a07618-2378-4563-109b-a6654ab29220@gmail.com>
	<10152170.chYgiU6tNd@localhost.localdomain>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <d06b21ca-7564-f2a7-24e4-e9d63917e13b@gmail.com>
Date: Thu, 26 Jul 2018 17:10:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <10152170.chYgiU6tNd@localhost.localdomain>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 26 Jul 2018 14:10:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Wow that's a cool trick and it worked for me so ,thank you.

Also after some digging I found a solution that does exactly what I 
described in my previous message(I think), and I'm gonna leave it here 
in case someone face the same issue and find this message:

You can use set BB_SRCREV_POLICY = "cache" the local.conf which will 
prevent the AUTOREV recipes from failing by using the local cache for 
revisions

https://www.yoctoproject.org/docs/2.1/bitbake-user-manual/bitbake-user-manual.html#var-BB_SRCREV_POLICY

But If there is a new commits on the remote repo you probably need to 
disable this and rebuild to let bitbake fetch the latest revision and 
you can re enable it afterwards.


Regards


On 07/26/2018 01:40 PM, Paul Eggleton wrote:
> On Thursday, 26 July 2018 12:09:46 PM CEST MOHAMMAD RASIM wrote:
>> Well, actually I used the find command in that wiki page to find the
>> recipe that uses tag name to chose github revision and it found only one
>> recipe
>>
>>   >meta-openembedded/meta-initramfs/recipes-devtools/mtd/ubi-utils-
>>   >klibc_1.5.1.bb
> Hmm, right, it seems like you're using a previous branch - this got fixed
> in a later update of that recipe.
>
>> I masked this recipe in the local.conf file and bitbake failed at
>> parsing other recipes, looking at those recipes I saw that they don't
>> use tag names but they use
>>
>>   >SRCREV = "${AUTOREV}"
>>
>> which is logical since bitbake has to issue ls-remote to know what is
>> the latest revision on the remote git repo (maybe the wiki page needs
>> update to point this ?)
>>
>> Now I can't remove this AUTOREV in these recipes since I need bitbake to
>> fetch the latest updates ( I push updates regularly on that repo and I
>> don't want to update the recipe file each time to add the latest revision)
>>
>> So, here comes the hard part, Is it possible to tell bitbake to issue
>> ls-remote if there is network and to use the latest fetched revision in
>> the sources directory if the network is disabled ? that way I can use
>> ${AUTOREV} in my recipes and bitbake will build from the local repo in
>> the sources directory unless there is network to update the local repo,
>> probably there is no such thing :) .
> So there isn't a mechanism to do exactly that, no, however you can sort of
> achieve the same thing if you set up a .inc file that sets the SRCREV values
> for each recipe and sets BB_NO_NETWORK at the same time (though the
> latter could still be separate). e.g. let's call it no_network.inc:
>
> BB_NO_NETWORK = "1"
> SRCREV_pn-abc = "b4c2bd84ee6f699e348d602a82d2d0963384cdea"
> SRCREV_pn-xyz = "e3b30def2cd1c9ede7630489c3949a45b6eba6ee"
> ..
>
> Then to build offline you would just add the following to your config:
>
> require no_network.inc
>
> FYI you can enable buildhistory and use the buildhistory-collect-srcrevs
> script to generate all those SRCREV lines so you don't have to do that
> by hand:
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-build-output-quality
>
> Cheers,
> Paul
>


