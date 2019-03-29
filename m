Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CAA0E00D1B; Thu, 28 Mar 2019 22:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51655E00D1B
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:16:23 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id y6so435273pll.13
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 22:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zgkGY7hCxkA9YGZhXllUekiC3PawzCThuNzbCKz0J94=;
	b=fWTAwqdnA74ug38bFS+/Ho7C9mUm+KGGktY+IL8+XqtgZCnU6z8T0r6sNhBlqke6c6
	95l0Bh2hqGhwl7T9/VMBbZdKNQc1XUmo/M4cGJmZT3eYLBD80ovXcHMr6pE5FNi8/M+l
	1CSr+OWUn1f1SpXVRdWvp1CerdgcSpie+bRqRt/hgXT4M+f1Kzjd8mY8UOo3vapLEmGj
	AujmvfB5lvx+2lCV3hgikdHvWdDC/hpTDuRCcdrXuDQSeOeZLTWGHfhMFWlil/xC337i
	KOAFNDp64tKYrHnbV7NoiNOFyibTdVZKqVgve0GExFJByPwojcMxH/sQDrRBPWGWNVF1
	cC7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=zgkGY7hCxkA9YGZhXllUekiC3PawzCThuNzbCKz0J94=;
	b=QqOn2hddFir5kqCkrO2lzHpee7QLxD6HF6iOo6YLOFv8OesmAutUWYcPWRtHoDDhk8
	RvNukQGH7lzvd2NbHXASwkz9McUdwwRsWhwVsPCXfkwT/Go/2FUB/DPMJzfWa9VEEW0u
	+Erzk9LXly5cg5CgjkgEMFRSyF7kSxIoSaKLqRNAggWj0iXCBxm92fbVcZMhw8kzYmOZ
	DaGEu0V0RPwzEpLt1iWJ7q8lGNqzXy3FHQjqNLZzw60dbXpYYsY4A7je6Cl8Z4CaMDxH
	cWUEkK2bgo8ddYiiGSZt40mi5KK8h24tslejSt2gZRI7UeioxpDorgPbQ4yj0zaDoj5s
	/2ww==
X-Gm-Message-State: APjAAAVb7vyFlQ6EWtr9YN9BrWs/+HUipeTr73WljKfm0LV//IAnztmO
	mnO08efG1zVOFqVrjOIGZOeMZBtd
X-Google-Smtp-Source: APXvYqxpD2qX9tBrA07IUF4sTfk0ePqsLjMZ1/gN3sRCoqCdWJJv9Akg91Hc3+Dx32gRDrnob1tr7A==
X-Received: by 2002:a17:902:781:: with SMTP id
	1mr13537364plj.300.1553836583343; 
	Thu, 28 Mar 2019 22:16:23 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e49f:a080:8dd:cb67?
	([2601:202:4180:c33:e49f:a080:8dd:cb67])
	by smtp.gmail.com with ESMTPSA id 4sm1097101pfo.110.2019.03.28.22.16.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Mar 2019 22:16:22 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>, akuster808 <akuster808@gmail.com>
References: <20190325165855.9222-1-akuster808@gmail.com>
	<20190325165855.9222-2-akuster808@gmail.com>
	<20190326102444.GA19885@localhost>
	<6dae574f-f641-94ff-4bf1-09eac31e6378@gmail.com>
	<20190327071631.GA22331@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <002575a7-deb2-b390-4124-6cc125cb66d3@gmail.com>
Date: Thu, 28 Mar 2019 22:16:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190327071631.GA22331@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: fix libcrypto version used
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
X-List-Received-Date: Fri, 29 Mar 2019 05:16:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 3/27/19 12:16 AM, Adrian Bunk wrote:
> On Tue, Mar 26, 2019 at 03:52:39PM -0700, akuster808 wrote:
>>
>> On 3/26/19 3:24 AM, Adrian Bunk wrote:
>>> On Mon, Mar 25, 2019 at 09:58:55AM -0700, Armin Kuster wrote:
>>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>>> ---
>>>>  recipes-security/sssd/sssd_1.16.3.bb | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
>>>> index 8f7f805..d39fa23 100644
>>>> --- a/recipes-security/sssd/sssd_1.16.3.bb
>>>> +++ b/recipes-security/sssd/sssd_1.16.3.bb
>>>> @@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
>>>>  PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings"
>>>>  PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
>>>>  PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
>>>> -PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
>>>> +PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto10"
>>>> ...
>>> This looks wrong for multiple reasons, and it still gave the same error 
>>> when I tried it.
>> That is troubling. I don't see any errors here. Thanks for the feed
>> back. I will have to dig at this a bit more.
>>
>> Can you provide some build detail so that I can reproduce it?
> Try building the package without nss but with cyrpto (sic) in PACKAGECONFIG.
Ok. I see it now.
>
>>> How has this change been tested?
>> Not for this change.
>>
>> Which reminds me I should automate some testing for this package.
> This is not about automating testing.
>
> This is about first reproducing the problem you are trying to fix,
> and then verifying that your fix actually fixes this problem.
And that is what i thought I was doing.

>
> Which is the fundamental way to do any kind of bugfixing.[1]
Thanks for the reminder.
>
> This one line already contained two bugs,[2] and the commit added a 
> third problem (usage of OpenSSL 1.0) without fixing any of these bugs.
>
> The commit message not stating any reason why this change was done only 
> adds to the confusion.
> I thought originally this was a workaround for code not building with 
> OpenSSL 1.1, which would then also be required for thud.
I will keep that in mind.

thanks,
Armin
>
>> regards,
>> Armin
> cu
> Adrian
>
> [1] this is not one of the harder cases where reproducing the problem
>     would be a problem
> [2] "cyrpto", and "libcrypto" instead of "openssl p11-kit"
>


