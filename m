Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 862A4E00D80; Tue, 23 Feb 2016 16:14:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BCAAE00D78
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 16:14:34 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id fy10so1559874pac.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 16:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=r9zCQzNlPEKo/1LRsZgPLkaF0B7XIJpknByiL+UB7h8=;
	b=zVfgAXwWLMGhECYGPFX5DFqS4of8R/4AZmnI+LAig92ZUO/h01LRQipuZB2WEKBDqi
	5uknhTNfWGk3rNhmXNg38mJXoFeo0fUS3P9ZBgYxK7N28PtFetIwF3wBvdQHafE5YzqU
	+PDtvdsSUeOpfOiFFCD9pRKtQGX8ldDQl6vdi0jQmV+cPhOCYIT/QPDxKdQRYUblEkTh
	3CUVVseHBb6ZzRnjwXqzRxU1QA5fcsOioBRipu7u9RcYoi5DCA9nKI07sRcHNFVGuhGX
	aT2SYc1qOk2HaR/+hIww4z1JRcuPKWO5TO9784fMomHzB4dA0Fr9JwXyW/+Ed/kUrda9
	UowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=r9zCQzNlPEKo/1LRsZgPLkaF0B7XIJpknByiL+UB7h8=;
	b=i+Vk8C+/jmM1dD0ykOoeOgRfh5DzF2i4WtySn8c5fhXtAekYwIaB0OD5S+dWA3ffxz
	njy3fcUVoFYUw2lKcExKgtPEjrgUYzJ/eF3KVhN3GhiR4+I+W7i4Musc0H23o61pXP6o
	mbl6DZucSUcKj4CGugkDbEmV6pNphal7Ty07Ql5ZCm2gICKMeoo9MK9nxfRjSTQelkSH
	Cxkc0JuNc2VQrqmRcmBY+rqVHIvWG8arJTt5Q9p77n6nASpTrlAbyWBiSu7GTVklsGAe
	Hgc1/EKrZjg6dEoOy614k+0q6jIilJDWn48b0SS6atsG3zOQCDY4WPT4IFgC53if7vE3
	N7Lw==
X-Gm-Message-State: AG10YORaXKU5Qq8GnU5JJ6oIkWLJTggZ6BW/3P+ZcTE3jUGWkn5R7sM0VmQz9Itu8wl0uw==
X-Received: by 10.67.21.205 with SMTP id hm13mr50535268pad.56.1456272874445;
	Tue, 23 Feb 2016 16:14:34 -0800 (PST)
Received: from [10.43.100.29] ([64.2.3.194])
	by smtp.googlemail.com with ESMTPSA id
	o17sm217428pfj.50.2016.02.23.16.14.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Feb 2016 16:14:33 -0800 (PST)
To: Darcy Watkins <dwatkins@sierrawireless.com>, yocto@yoctoproject.org
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
	<1456267969.27839.3.camel@sierrawireless.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56CCF5E8.3000005@gmail.com>
Date: Tue, 23 Feb 2016 16:14:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1456267969.27839.3.camel@sierrawireless.com>
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Wed, 24 Feb 2016 00:14:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 02/23/2016 02:52 PM, Darcy Watkins wrote:
> On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
>> On 2/23/16 1:53 PM, Khem Raj wrote:
>>> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
>>>> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
>>>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>>>
>>>> Anyone know if we need the same security fixes in eglibc?
>>>
>>> yes you do. Eglibc was nothing but glibc+few fixes.
>>
>> Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.
>>
>> As far as I'm aware, this affects all Yocto Project versions up to 2.0.
> 
> I will be interested in knowing which Yocto Project versions will
> receive the fixes. 

Master, 2.0 and 1.8 all have the fixes.
How far back do we go in matters like this?

1.7 (dizzy) I plan on doing soon. beyond that I do not know. those are
all community supported.

- armin
> 
> Thanks in advance!
> 
>> (The patch referenced by the security announcement applies to all of the
>> versions of glibc I've needed to apply it to for my customers.  A few per-line
>> tweaks might be necessary, but it was fairly easy.)
> 
> 

