Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43D62E00B5F; Thu, 23 May 2019 16:49:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49225E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 16:49:46 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id z3so3946068pgp.8
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 16:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ulILMwaB7nEnxpHSiCOSMjc4rFxTEtipgfgcDHUXksc=;
	b=LInWwccRobSgmVMKt0Z4s4wtTg6e1AEjefhAajRvYhK8SvzexnBTYmDb2ZUIvjWhOE
	OljAhzBV+RN/xBpq75xR3BZzHcwkaDtCSV3cLrMPKdjJ9/1mYIw5TqrKEpN/7YmsovqM
	oEiQbarZV5vewuP+HEhhCrIRYDGrczAnCyT1ki0u1RzB0hOSrzYh6wj7Hzs0aHv3efUc
	puwhRC+PqJplvAshK354/UIHh8b9w+yrtSK5Jfa7hV4W7Cekw5D9pmZuL0zrirCTK+NP
	RiSNLuFcGsZtqemKzkTZXvHP2l3+loPDG+N2aQaoo7UH+QdLPAhsRw23Va5JFx19BGTw
	92dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=ulILMwaB7nEnxpHSiCOSMjc4rFxTEtipgfgcDHUXksc=;
	b=D+D2IJkJgaVXznSjFuyxD7ZvBEd5dmYZ5FCXmYKn074yqiQSzOdZMI06XBKct9fJgI
	RSxYi6ERsYDoYVuxgmiLmRpM7/u78ZgMAkUxngML1wreS42Cuq2dWZUZmFcOwuNZw6j3
	VAG4kDQfhFIOyiYrmlWP5aaFzn5iRtqYycuocOz4Q4lm0efxxte/PM6OxsRfChJHbyju
	ELBJEYdRbrER5p7eeBQhRZ5rxqRhs3hvsdH6nNMu8o8UTBhHBRFqnkhXKU8tLorRqw9L
	OYsgOVrb/hrnaJDZRX0++32xDBPmYKwugq8oxqS/zS/xtga62lY5Nojs3aXXA0jTj/0Q
	eTXg==
X-Gm-Message-State: APjAAAUTm92XC+tOQ14pdg0cmZimrpT9MKU2cSRthq7/7e9Cq5fgREWF
	zHTTcUz1Nex47zHvohpdO1u74WN5gTQ=
X-Google-Smtp-Source: APXvYqwlFK8Ei4essE9k3cmK7xF7H9NRbwXaWx0XGRrmZe1xNKCHjU2tuDDib/T4og/SvM798ZEUSg==
X-Received: by 2002:a65:6681:: with SMTP id b1mr26276805pgw.301.1558655384923; 
	Thu, 23 May 2019 16:49:44 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:7892:9931:70c0:491e])
	by smtp.gmail.com with ESMTPSA id l38sm402014pje.12.2019.05.23.16.49.43
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 16:49:44 -0700 (PDT)
To: Ralf Spiwoks <spiwoks@cern.ch>, "Burton, Ross" <ross.burton@intel.com>
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
	<CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
	<cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <70c52f90-eba9-d67b-7d8c-55b5a249f1ae@gmail.com>
Date: Thu, 23 May 2019 16:49:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PN is uppercase
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
X-List-Received-Date: Thu, 23 May 2019 23:49:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/21/19 12:50 AM, Ralf Spiwoks wrote:
> Hi Ross,
> 
> Thanks for your email. I am realising that I have not replied to your
> email earlier. Sorry. I guess it was partly because your answer put
> me slightly off. On the one hand, I thought that as a general approach,
> Linux was case sensitive, unlike its big rival Windows, and I was not
> aware  of package managers which would explicitly forbid uppercase
> package names. I find the approach of allowing only lowercase package
> names quite limiting, and frankly a drawback for using Yocto
> 
> On the other hand I have a few tens of packages to maintain, which
> have uppercase letters in the package names and which did work with
> Yocto in previous versions. So, because of a new convention we would
> have to rework some of the packages or ignore the warning messages.
> And until we find the effort for reworking those package recipes we
> will stay with the latter option.

The package name rules are not new, they have been with OE/YP forever
so it should have failed always. Similar to debian see

https://www.debian.org/doc/debian-policy/ch-controlfields.html#list-of-fields

> 
> Thanks for your patience and your explanations. Cheers,
> 
> Ralf.
> 
> On 4/2/19 1:54 PM, Burton, Ross wrote:
>> On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch> wrote:
>>> TWO questions:
>>>
>>> 1) Are those two issues related?
>>
>> Probably not, unless you're trying to use a mixed-case override.
>>
>>> 2) What is the logic behind allowing only lower case package names? 
>>> This is to me
>>>      a serious restriction on the use of Yocto.
>>
>> Two reasons: some package managers forbid packages with uppercase
>> names; and for performance reasons overrides are lowercase and as
>> package names are often embedded in overrides this implies that
>> package names need to be lowercase.
>>
>> What's the problem with using lowercase names?
>>
>> Ross
>>

