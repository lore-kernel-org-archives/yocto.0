Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40693E0132F
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 07:24:35 -0800 (PST)
Received: by ghbz10 with SMTP id z10so2830759ghb.35
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2012 07:24:34 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.60.3.2 as permitted sender) client-ip=10.60.3.2; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.60.3.2 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.60.3.2])
	by 10.60.3.2 with SMTP id 2mr9601255oey.0.1331047474723 (num_hops = 1); 
	Tue, 06 Mar 2012 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=LoeB2pI7weMvgRUfKtHzN1agi9FHrHZSsXpgkZe/mpI=;
	b=sAUBgYUB7UODhcMxARGIDGDN4DqWzeU0KipMRWR98lbjI3GAME1qNtd3X3XV/paF10
	L6hSjvJULsmbk1q7toy7LfvUDAaxRGNjc8fM+hmgxz26SSn1frvoFKzmzoje16AXJmvx
	lKwk+il5gBnFveo8HuiNGUbVSlxPFcq2Fp9mm81xk4ujvxngScKoTA5f+D1LdGe8iOak
	iU6peMZhwEWnlYai88yoe9BKH5P1rjTnqWX9qQe/4yRuUUHHHRldbcfCi0977YYFeH7L
	xz9sVYS3asqxx8IR8f639eFsntxZCXGpeIDL9ox9iUXtyDu97hDZkAgqQFITH0nrUgNX
	+HMw==
Received: by 10.60.3.2 with SMTP id 2mr8503993oey.0.1331047474626;
	Tue, 06 Mar 2012 07:24:34 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id x5sm17707118obn.5.2012.03.06.07.24.32
	(version=SSLv3 cipher=OTHER); Tue, 06 Mar 2012 07:24:33 -0800 (PST)
Message-ID: <4F562C2E.5010604@gmail.com>
Date: Tue, 06 Mar 2012 07:24:30 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120302 Thunderbird/11.0
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com> <4F562A34.2020304@gmail.com>
	<4F562B7C.4020105@windriver.com>
In-Reply-To: <4F562B7C.4020105@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: iptables not building on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Mar 2012 15:24:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2012 07:21 AM, Robert Yang wrote:
>
>
> On 03/06/2012 11:16 PM, Khem Raj wrote:
>> On 03/06/2012 01:04 AM, Robert Yang wrote:
>>>
>>> Hi Tom,
>>>
>>> Thanks for the update, the root cause is that iptables offers
>>> a kernel header file include/linux/types.h, but it mis-matches
>>> the kernel in the sysroot, we can add this:
>>>
>>> #define __aligned_u64 __u64 __attribute__((aligned(8)))
>>>
>>> to:
>>>
>>> iptables-1.4.12.2/include/linux/types.h
>>>
>>> to fix this problem.
>>
>> find out why iptables has its own copy of linux/types.h that file
>> should be
>> deleted if there is no reason to have it.
>>
>
> Here is the reply from Bruce:
>
> iptables has always done this .. and it has periodically caused issues like
> this in the past. Typically something like you have above is done, or
> iptables is updated to a newer version (I assume we can't do that
> in this case?), to fix any build issues.
>
> I've had iptables in a directory/location with a dependency on a particular
> kernel version (to show the coupling) in the past to enforce a check
> before the build breaks.
>

it still does not say why iptables keeps a copy of its own.

