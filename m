Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A5BE00D98; Tue, 29 Oct 2019 04:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03028E00D85
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 04:56:05 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id r141so2072914wme.4
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 04:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=FIpglUu81j4oMfjn2nPYrPqP0OtK3yPdI5JmULSAlVg=;
	b=KAITVFtsZzTmM7zSTI2GMajs8lNsaNhycnfLVY3W01e5i0VN/ncFPrOrAgP+7TVhUG
	/EJJtE1IpuQHot48X6gKmqMVard0Z20pKAlYl3sPqNn1W+Nu0vAF9yeEWAQGDJFvHlxp
	zWQh4roWrzUTHtmHv/UislmRLeaOXJwye/3Yp5qhSiU+d+JYKQnMIIGI9ASNxmtyo1+s
	ananARZEwkf3Ntq+wtwc6Pzv3Nn9TWqDrDcOLM5VyETxO1qcg8oj3letP87/W3gktX4x
	cQ0v4ietSbv1COhdrMc6k/eyZqnUMBMdkQTJJ23/Bha+9vZP1DYbNDmRwEONTQ6PxIsw
	4JIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=FIpglUu81j4oMfjn2nPYrPqP0OtK3yPdI5JmULSAlVg=;
	b=X3K69I8Y6uLqpsF0Uth9E1acp1EKxjEqlKWd6G8XkAkClmpBWklXJCXGHHvJ8N1XUz
	h4BF/XfvMJr3da63xZWDtLzkWQOKRTcZ0h4rBhXfqKyTWVa8Cy3lcCos1xaSQZWxWhAG
	JG8ctXe0Swahti2hS62iPJRb5UyFMUP7iI9yG6ZUl+ZGJj8ZQWtCN+PWP0Z2w8lqafmL
	69sGANrUr1ZEXzkYFauSRJjoASqXUNmIwwG2m6VuksaZjFa8BRkdpCDZ9WB24V1j1MIT
	sHO+HqcFu3C/bZKKYGA2NoZXoEPQd+D4/u0kwdiaLmb4fqCFShzuLHyMo14O65SOxFki
	E0fA==
X-Gm-Message-State: APjAAAWfNVrloLXAssm7ld7QdllpMRtPBdqSmUCAxWMYjQQMOtuCCeY5
	9P8dZPuT9NTzyRcAhewM6YIFq4BGfJP72Q==
X-Google-Smtp-Source: APXvYqyexQftzpmtAB2XcVbdw2Wy4L9YbvxmCm46eQPH3B0hlNFUJix3TsvEuVcomMZXM9f58xW5/g==
X-Received: by 2002:a05:600c:2282:: with SMTP id
	2mr3888640wmf.93.1572350164849; 
	Tue, 29 Oct 2019 04:56:04 -0700 (PDT)
Received: from [10.192.11.162] ([178.18.58.186])
	by smtp.gmail.com with ESMTPSA id
	h124sm3079182wmf.30.2019.10.29.04.56.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Oct 2019 04:56:04 -0700 (PDT)
To: Ross Burton <ross.burton@intel.com>,
	Robert Joslyn <robert.joslyn@redrectangle.org>, yocto@yoctoproject.org
References: <5ed5-5db71680-7f-1be36200@40858189>
	<acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
	<d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
	<3cb7a48c-fdd6-5fc8-ab7f-e93c6cf3482e@intel.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <e82f1125-b9dc-fa79-008a-30f8a74866ac@mvista.com>
Date: Tue, 29 Oct 2019 12:55:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3cb7a48c-fdd6-5fc8-ab7f-e93c6cf3482e@intel.com>
Subject: Re: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Tue, 29 Oct 2019 11:56:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 10/29/19 11:50 AM, Ross Burton wrote:
> On 29/10/2019 04:41, Robert Joslyn wrote:
>> On Mon, 2019-10-28 at 19:06 +0000, Ross Burton wrote:
>>> On 28/10/2019 16:25, robert.joslyn@redrectangle.org wrote:
>>>> I'm using buildhistory in one of my builds that creates a package
>>>> feed, and a recent update to systemd on warrior triggered version-
>>>> going-backwards errors:
>>>>
>>>> ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do_packagedata: QA
>>>> Issue: Package version for package systemd-conf-src went backwards
>>>> which would break package feeds from (0:241+0+c1f8ff8d0d-r0 to
>>>> 0:241+0+511646b8ac-r0) [version-going-backwards]

Isn't this do to the hashes being different and the PR server can't
really tell which one is newer?


>>>>
>>>> Should PE have been updated at the same time due to the hash making
>>>> the version number go backwards? I can send a patch if that's all
>>>> that's missing. Or is a PR server enough to prevent this? My debug
>>>> builds do not use a PR server, but my production builds do use a PR
>>>> server.
>>>
>>> If you're using feeds, you need to use a PR server.  This is *exactly*
>>> what they are for.
> >
>
>> The part I wasn't sure about was if the PR server helped in the case
>> where
>> PV went backwards. I know it works when PV stays the same but the
>> package
>> was rebuilt. But if it keeps the versions going forward no matter how PV
>> changes, then I should be good. I should probably setup a separate PR
>> server on my debug builds to avoid this kind of error.
>
> If the PV actually goes backwards then the PR service isn't useful, as
> PV sorts before PR.
>
> However in this case the problem is that SRCREV should have a
> incrementing counter (the +0+ should be +1+ in the rebuild) which I
> believe comes from the PR service.  I may be wrong...
>
> Ross


