Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1A30E00CEE; Fri, 27 Jul 2018 00:50:11 -0700 (PDT)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F14E3E00CE0
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 00:50:10 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id h9-v6so4106560wro.3
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 00:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=Dcf7zAoGG79WA9XJwrWu1zzojcWcAfYJI+UkBXIZaIg=;
	b=kie8SOi3ffkXLu/Uj4e/HclFzKZfWWwN5x5AbNrYhrzsrwAwDYikah+TXrmB8c89mL
	P0B++xdesvF18MJQs1wzRSQq+Yv1nlsCHp0cFy4e/jqgwoYZFwsZPNCWiQd3acRcZal8
	JoXVf7NF5jcXBrU+ZEsBt6bpryyHZ+caMNgcVnaNzDdqYew69usvbRfaW5BvudCGzJrk
	yMKkqOLqvCUawx3j0hv92yiAzuF5FB4jKRkslAN4EXCvOuGbt3N4NeoKyqT2cLHqNscS
	br9gW3esESh5Wna4NRbK+jdn7pAB5VengTy0wGsiWtpmyJkmwE/Bfb+VgqjAplFiSJU6
	covw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Dcf7zAoGG79WA9XJwrWu1zzojcWcAfYJI+UkBXIZaIg=;
	b=B9uBcjloy6YZ2EEc0c3Bm+o1MprRwNttUMinfCGpauaM678qo3rO4RAPSiVpNBrB2F
	GRkw93e4fcjAI2x18hlUKsdBiOpNkI5QuCG4ADbSBzI5vbvmu68Ar/TO8mrqMFDdk78x
	1Zp3JfG0cg44SVD4F6Kd2m4WoOkzaYbdjfB0ZxNehfAONDTVlsziWdUhn3a5pP+KjphY
	rFFdMwX4jDX2vLMDSp3LnOO1RYNysGQiZWuUFdnRqGhRH3NzDdhth2a+d9pEAM+rOQzd
	3OTXMFSm7/QF4/V4NyNJUjHiit/8AueblohuCqsYmSntxMBqOgzkv3+fYipOXZPNR90e
	TCeA==
X-Gm-Message-State: AOUpUlHYp+k2aOp6UMndseV2MfzKcFHJn99MNgMrc2qv2o7PyTqkuetd
	9I4aKcg7OTSPgHCgPiD+kPVtuxLIr+s=
X-Google-Smtp-Source: AAOMgpeHT/YMPVAA7kakM9i5GoZlMBV5k6i77yZj6DW+3q2dUNCiJkcO02nvgmmUkiAMrF4VDeqdow==
X-Received: by 2002:adf:9051:: with SMTP id
	h75-v6mr3997432wrh.65.1532677809936; 
	Fri, 27 Jul 2018 00:50:09 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	t186-v6sm5363676wmf.14.2018.07.27.00.50.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 00:50:09 -0700 (PDT)
To: Max Krummenacher <max.oss.09@gmail.com>, yocto@yoctoproject.org
References: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
	<1532634322.3175.3.camel@gmail.com>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <191c234c-3c55-b463-3bad-aa5df20747ca@gmail.com>
Date: Fri, 27 Jul 2018 10:50:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1532634322.3175.3.camel@gmail.com>
Subject: Re: How to force build of a blacklisted recipe?
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
X-List-Received-Date: Fri, 27 Jul 2018 07:50:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Yeah I found the PNBLACKLIST line at the end of the recipe after Paul 
Eggleton message :-D, thanks for the tip anyway Max :-*


On 07/26/2018 10:45 PM, Max Krummenacher wrote:
> Hi
>
>> I'm trying to build dvb-apps recipe which is blacklisted and was removed
>> from the newer openembedded releases, but it exist in the release I work
>> with
>>
>> Now when I try to build the recipe I get this error:
>>
>>   >ERROR:
>> /home/oealliancebuilder/openpli-oe-core/meta-openembedded/meta-multimedia/recipes-dvb/dvb-
>> apps/dvb-apps_1.1.1.bb
>> was skipped: Recipe is blacklisted: Fails to build with RSS
>> http://errors.yoctoproject.org/Errors/Details/130603/ - the recipe will
>> be removed on 2017-09-01 unless the issue is fixed
>>
>> But I want to tell openembedded to override the blacklisting and build
>> the recipe anyway so I can investigate and hopefully fix the recipe. How
>> can I do that ?
> You could overwrite the assignment to PNBLACKLIST in conf/local.conf:
>
> PNBLACKLIST[dvb-apps] = ""
>
> However, if you anyway want to work on the recipe you could simply delete
> the PNBLACKLIST line in the dvb-apps recipe.
>
> Max


