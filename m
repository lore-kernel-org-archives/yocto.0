Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96396E00C45; Fri,  9 Nov 2018 05:39:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770D6E00C28
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 05:39:45 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id z17-v6so872769pgv.3
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 05:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=kmhG6XS2EZVTy4JX+ht28B/Y6z28Ze0CIpQsf7bOAmY=;
	b=FIsmU8PaWNAI6xPeDD0/yfw6cmE76HNa7fAIWcYD/LvcD9JrmxfPP9JRhDuJHl85Ri
	GX4BNwVD69KqnWEhsTVD/HZF9BKyvNUuagBac0EISvuzR5sR1OWFZMxw8oF27Pn62+gy
	Kmk2PetiWtzO8rfG7nyLS7VXFRglQMAKiPs1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=kmhG6XS2EZVTy4JX+ht28B/Y6z28Ze0CIpQsf7bOAmY=;
	b=Ytzw8v4UO9skchniCSMkDInGoqCiRzSbPo8X74u7hD0FVxUlxvI12NztAaFSz/3xu/
	RlSIVxhMCirfeyK5sWQbIwsLVyWgZkAKtddN3SN2Pl5FTWDvq+qn716ZOebhYxOHE/t/
	RB3NZbnz3zH6sMHa72be9XbgvDAUZJuxA0hUp6qYO8WMzUCpRx3M5tGT4r+HxCpSmaNl
	Av36Wrt9XH7HJ/g2yG8uPP91UPbmsL56cly99Ujf+SdMT47MseyioSxvFU2sW4AK9Z76
	SCF9Go2pGQaiC85aBS67Gdyi19idaHJzR9+GnOreTCQmqlQrQr+Sa9T4Jt6yFm1LIOTk
	+WWw==
X-Gm-Message-State: AGRZ1gISfFzo3g2/qVx3OJymfOkDIothFCAxTacenjnXxm9WR5w0+QiA
	WLnkro0Cmr0geqV4fuBeCIf5q7ibhbXoaA==
X-Google-Smtp-Source: AJdET5ecFA/Lz4TnGacqFDTC61Tvjf7wqSPlFbhexM0Fd8glneSvCaQTESaNV6MgUcES7SEiYjIQiA==
X-Received: by 2002:a62:1196:: with SMTP id
	22-v6mr8994100pfr.178.1541770784329; 
	Fri, 09 Nov 2018 05:39:44 -0800 (PST)
Received: from [192.168.1.111] (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x23-v6sm4837488pfm.126.2018.11.09.05.39.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Nov 2018 05:39:43 -0800 (PST)
To: "Mittal, Anuj" <anuj.mittal@intel.com>,
	"Qi.Chen@windriver.com" <Qi.Chen@windriver.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1541138580-15360-1-git-send-email-Qi.Chen@windriver.com>
	<6b62c08ad4adc471b983b226f0fd8acea0857236.camel@linuxfoundation.org>
	<b60807217de927095931fde0d71c01524b2c4f36.camel@intel.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mhalstead@linuxfoundation.org; prefer-encrypt=mutual; keydata=
	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
Organization: Linux Foundation
Message-ID: <2e21546a-465d-d551-cb09-b3b890712961@linuxfoundation.org>
Date: Fri, 9 Nov 2018 05:39:40 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <b60807217de927095931fde0d71c01524b2c4f36.camel@intel.com>
Subject: Re: [patchtest-oe][PATCH] test_patch_cve.py: fix cve tag checking logic
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
X-List-Received-Date: Fri, 09 Nov 2018 13:39:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

When updating patchtest-oe to include the CVE fixes I also cleaned up
repositories in the share directory removing the patchwork credentials
in the process. I've restored the patchwork credentials and posted the
test results from local backups.

I've opened a bug to collect ideas for testing patchtest upgrades at
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13002.

On 11/8/18 11:38 PM, Mittal, Anuj wrote:
> On Wed, 2018-11-07 at 09:01 +0000, Richard Purdie wrote:
>> On Fri, 2018-11-02 at 14:03 +0800, Chen Qi wrote:
>>> The current logic for checking cve tag is not correct. It errors
>>> out if and only if the patch contains a line which begins with
>>> CVE-YYYY-XXXX and contains nothing else.
>>>
>>> It will not error out if the patch contains no CVE information, nor
>>> will it error out if the patch contains line like below.
>>>
>>> 'Fix CVE-YYYY-XXXX'
>>>
>>> I can see that the cve tag checking logic tries to ensure the patch
>>> contains something like 'CVE: CVE-YYYY-XXXX'. So fix to implement
>>> such
>>> logic.
>>>
>>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>> ---
>>>  tests/test_patch_cve.py | 15 ++++++++-------
>>>  1 file changed, 8 insertions(+), 7 deletions(-)
>> Thanks, good find.
>>
>> I've merged this and I believe the instance should have it applied
>> now
>> too.
>>
> Not sure if this is related but it looks like the tests aren't running
> at all now ...
>
>
> https://patchwork.openembedded.org/project/oe-core/series/?ordering=-last_updated
>
> Thanks,
>
> Anuj

-- 
Michael Halstead
Linux Foundation / SysAdmin


