Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61171E008BF; Sat, 22 Sep 2018 07:47:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2A33E0078F
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2018 07:46:59 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id r77-v6so2189322pgr.5
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2018 07:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0cdRQISzeX0ZAbZSvrC1F7NQFI5O4s1eMlizT+TJroQ=;
	b=PVL6IxlcTGk3SshcMXQah/rpbmwCep1eJG/PzU50/2fWOxgj6/5YL1AY8Y9TSaXGbx
	54WUXyLFdUAFs0fBi+NA7ZvngsmcpdcELZXjyowux5l5JTa0nBP2P2sX6TyOiEdOn18m
	LcBGy6UX6I48QPDg9hE2HsB3oZjDy3ktuIh58SA5H7AWuai8FS9hXlKfXf8ykAJtq5R0
	Ysxi9seGX9S5L32p2skgcekQyyuD1AF218Mtz42VTE3M/1xKQXpPsbgXt6yDGoRl52Hh
	8uO36z95T9rpG+Kgrj4HDMDglZoZsb1aB3hrSO8kXyc8m6NfNwMokXMN+Goz95b+D+9l
	O2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=0cdRQISzeX0ZAbZSvrC1F7NQFI5O4s1eMlizT+TJroQ=;
	b=OBmRALS/7nzQfv89uLt1XIod0g+mDLDt5DBNNxsFbBGk4z3KPRPjKdXYr0bv8DqgPG
	J0ZVrV6TgPXvSKEOM+uEk1WC2VOdj8y9M35I5Yl+kWTBTntyVuI9YARhB5NLg7K2YFWu
	+MKw/Xt/ZJ4niZaZT1Tewrv0DL+usHWa+7eeBg3jOxN3mF/dmVjFCTFDZfJXw6j+7Fqn
	svDjk18YKsM1QT09WOa4/fEqj/FbGkLw/JN5LfVKoo0mX9GOnSyHmOK9ySVjhWSGKekZ
	yONUbGygZB13LqkQjzRdfsFwMjG+wKJFxlQlPZAbSvL+7sxMuocTUBU26+1S1qVTdHCy
	g4YA==
X-Gm-Message-State: ABuFfogMBn26N7MaeAZQKD1qQJRVg+brqrw1OfvrUhFVPdT+DhMKvmDS
	9j3qx59e6I+CmxOeTzYrvNppyw==
X-Google-Smtp-Source: ACcGV60BTwJz1JENdYAodRaXQ9C2pja4QkYsqbif0EZ8Wv7bekkSGjmusN5/4cGmC1YFOWpDAY5shA==
X-Received: by 2002:a63:be4a:: with SMTP id
	g10-v6mr2581788pgo.378.1537627618972; 
	Sat, 22 Sep 2018 07:46:58 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:c80d:9d99:c57:cbfe?
	([2601:202:4180:c33:c80d:9d99:c57:cbfe])
	by smtp.gmail.com with ESMTPSA id
	g84-v6sm7725823pfd.23.2018.09.22.07.46.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 22 Sep 2018 07:46:57 -0700 (PDT)
To: Sinan Kaya <okaya@kernel.org>, akuster808 <akuster808@gmail.com>,
	yocto@yoctoproject.org
References: <36756321-d4b5-b3fb-39a7-7303793ad723@kernel.org>
	<23c30a05-03bf-daf9-fa02-4152f29befc7@gmail.com>
	<3d9fa759-08a4-319d-bc78-dcc86ece44ce@kernel.org>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <1ad18ccd-6f59-cfa3-f920-256db4c6cd6e@mvista.com>
Date: Sat, 22 Sep 2018 07:46:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3d9fa759-08a4-319d-bc78-dcc86ece44ce@kernel.org>
Cc: Sasha Levin <Alexander.Levin@microsoft.com>
Subject: Re: [RFC] CVEs on sumo branch
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
X-List-Received-Date: Sat, 22 Sep 2018 14:47:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 09/21/2018 02:07 PM, Sinan Kaya wrote:
> On 9/21/2018 4:35 PM, akuster808 wrote:
>> I already have in my sumo-next
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=stable/sumo-next
>>
>> libcroco: patch for CVE-2017-7960
>> <http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&id=c02364a464d2e96ca663018d5266c68751f2c335>
>>
>>
>> libarchive: CVE-2017-14501
>> <http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/sumo-nmut&id=8d7f5e76cad2127e477056ce42d1be06b4df5b5c>
>>
>>
>> For the rest can you sent them to the proper mailing list
>> openembedded-core@lists.openembedded.org  via git send-patch.
>
> Actually, I took this from open-embedded master branch.
>
> https://github.com/openembedded/openembedded-core/commit/b9b254da08c1db94ac9ded5f67d7e2e82e3b9be7
>
>
> commit b9b254da08c1db94ac9ded5f67d7e2e82e3b9be7
> Author: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
> Date:   Tue Jun 26 13:44:17 2018 +0800
>
>     glibc: fix CVE-2018-11237
>
>     glibc: fix CVE-2018-11237
>
>     Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> What does it take to move this in the right direction?
bring it to my attention like you have.

backported it for the next build round.

Thanks,
Armin
>
> I'll take care of the remaining 3.


