Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3411E006EE; Tue,  7 Jul 2015 08:57:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53EEEE006B7
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 08:57:09 -0700 (PDT)
Received: by laar3 with SMTP id r3so201927019laa.0
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 08:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=LXHWnriSJtbUgVWOej3BfaHghlZ7LzeqgTaN3QIvnnA=;
	b=uoO/5Ys4+EfXUcnYCcjDsmHYiyNndR69feMfIa2xxpdyVHsS3toBpuPwNha9amlo/i
	fCb8Nc8oKOKWr0crg9vABOVIs6y7699QPQ58Hi0XAR59TOjMpN+/35Vs8BnXu+95cdhG
	O5Jf6fIyyouCSfWsx/rDe1GuLxEh8xnS6WRJGOlYefnyVUjN1s9ngTHPyDvdL3xZctJ+
	x2QLAKpdqorNfnf7N+4bxKx15YgcIolg7CzJEUsxnLpBz+AFjWEIfb1mGWjPHSHc89My
	2Ll1FTdGDLOv0ioKUnvqbNBqJGtOTC+3L1pRbMp2jn1eUBmPHcKls03XHiC5Sv4G1v7u
	7/PQ==
X-Received: by 10.112.218.67 with SMTP id pe3mr4169400lbc.53.1436284627516;
	Tue, 07 Jul 2015 08:57:07 -0700 (PDT)
Received: from [192.168.50.14] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137]) by mx.google.com with ESMTPSA id
	ew11sm5674804lac.31.2015.07.07.08.57.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Jul 2015 08:57:06 -0700 (PDT)
Message-ID: <559BF6CA.5060105@gmail.com>
Date: Tue, 07 Jul 2015 17:56:58 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Bryan Evenson <bevenson@melinkcorp.com>
References: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
	<2853092.imoTbB5xtm@peggleto-mobl.ger.corp.intel.com>
	<BN3PR0501MB1090F5833858888228C52DAFBB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<31918961.8Ai7UFDIn8@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <31918961.8Ai7UFDIn8@peggleto-mobl.ger.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple conncetion to svn (svn+ssh)
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
X-List-Received-Date: Tue, 07 Jul 2015 15:57:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Brian, Paul,

Thanks for response.

W dniu 06.07.2015 o 17:11, Paul Eggleton pisze:
> On Monday 06 July 2015 15:04:57 Bryan Evenson wrote:
>> Paul,
>>
>>> -----Original Message-----
>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>>> Sent: Monday, July 06, 2015 10:08 AM
>>> To: Marcin Krzemiński
>>> Cc: Bryan Evenson; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Multiple conncetion to svn (svn+ssh)
>>>
>>> On Monday 06 July 2015 12:57:39 Bryan Evenson wrote:
>>>> Marcin,
>>>>
>>>>> From: yocto-bounces@yoctoproject.org
>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marcin
>>>>> Krzeminski
>>>>> Sent: Friday, July 03, 2015 7:55 AM
>>>>> To: yocto@yoctoproject.org
>>>>> Subject: [yocto] Multiple conncetion to svn (svn+ssh)
>>>>>
>>>>> Hello again,
>>>>>
>>>>> I have 12 recipes that download code from same svn repository (using
>>>>> svn+ssh)protocol. Recipes are grouped in packagegroup.
>>>>> When I want to bitbake packagegroup fetcher fail, but when I run
>>>>> recipe alone all is ok. I think it is because I want to open 8
>>>>> connection to one svn repository.How can I fix this, for example by
>>>>> allowing only eg. 2 recipes from packagegroup to be executed in
>>>>> paralell.
>>>> There is no fetcher-specific variable that I know of, but I think you
>>>> can set PARALLEL_MAKE="2" in your recipes to reduce the number of
>>>> fetches on your repository at a time.  The downside is your build will
>>>> go slower when it is building your recipes as it won't be doing as
>>>> many things in parallel.
>>> That's not going to help. The parallelism we are talking about here is
>>> across recipes - PARALLEL_MAKE is just passed through to make within one
>>> task in one recipe, and make isn't even involved at the fetch stage.
>> Sorry, I grabbed the wrong variable.  I meant BB_NUMBER_THREADS, not
>> PARALLEL_MAKE.
> Sure, but that's not going to work either from within a recipe. It would work at the configuration level but that'll quite severely impact build performance.
This was my first idea.
>
>>> Something that might work would be to set a lockfile on the do_fetch task
>>> such that only one of the recipes could fetch at once. That could not
>>> allow
>>> two executing at once, but at least it would solve the problem. e.g. you
>>> could add this to all of the recipes:
>>>
>>> do_fetch[lockfiles] += "${TMPDIR}/mysvnlock.lock"
>>>
>>> (The file name isn't critical, it just needs to be the same for all of the
>>> recipes you wish to participate in the exclusive fetching.)
This works as you wrote, it is not a perfect solution for my problem,
but at least builds doesn't fail. Thanks!
>> I had no idea that we could do this.  I don't see any documentation on
>> lockfiles anywhere. If you use a lockfile, do the all recipes with the same
>> lockfile wait until the lockfile is available before continuing on with
>> that step?  Is there a timeout for waiting for the lockfile or does the
>> recipe wait indefinitely?
> Yes, it's just a lock on the specified file - whoever gets there first can
> continue, everyone else blocks, and it's an indefinite wait as far as
> I'm aware.
>
> It's a little obscure perhaps, but it is in the BitBake manual:
>
> http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#variable-flags
>
> Cheers,
> Paul
>
Regards,
Marcin

