Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1090.1576701995214665573
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 12:46:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BrQpNQBJ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACE0EE01270; Wed, 18 Dec 2019 12:46:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC4EE0091A
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 12:46:33 -0800 (PST)
Received: by mail-pf1-f196.google.com with SMTP id z16so1889554pfk.0
        for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 12:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CtBM7AHTjBsEnWhw1g8d0R3sbcN8+wATRdXHfP/O/1M=;
        b=BrQpNQBJOADllBzJZGYNsMDr4UN8tnRgoN7arZlc+WZly2g3i+52hl64qO1YAYpWV5
         vTSYR/7nS5W6Atm6IIAiTNpQ3SRvWwz1k4CQIBMEFuUVKw4zobB9NuyO3N1KzwCm89+I
         zBixzybIZZQmUP1Az1RIr3sXmQYJvq1CeTcFphaKa+bHCmIttZheRQ7ajM2EJbDuDqKZ
         VwvQn00cKYfBgWlQFJ/+IB6eACBSu4zT/0IFjoWohgMjtbdWpyk39jjHoPU4N9MB88rQ
         8naHXCbpDCEtKd02mo4XsEHim2eZgg32FtN4oeIGk8/wBh/y+ZG9vKhKva1cfG2y/9DE
         KwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=CtBM7AHTjBsEnWhw1g8d0R3sbcN8+wATRdXHfP/O/1M=;
        b=oho2hieGMrMYUWGeBhV2JNtr6X/YGEAyUIjrMq0SY6N227Pzm4NmZ6GcTpiOQLljo6
         l4wSHACLaS6YB2S0Y+/AhtyQCG91rY9C0Hnv97OTWZ/UizIW+yzhi9uRdUUTyvzM7AKY
         MQzhxdEXDfv7GoNjPZ667VQWBGI0HlImDcXnjjNXF2c1OySLyb0RxzzahyImN0tuczbT
         pI7m/wtcYcZ7FnGnCqSyNjlXHKqXOxft0cXgPd1sgjeK8kjZzmzyShnxrKSObbBZFuac
         nvwr1ewVY31DCI8Ll64j2NurR2nRQJsyJIvd3W9ub8t50iEvg28eygXHKwVjwdftPVUV
         JfsQ==
X-Gm-Message-State: APjAAAU//Z5xjQK145UrZ8q21n00UaaJCsz3zhnx0i+BYLkcbLqbQKiI
	CiOOhFOCFLxkzBf8M0cAzM0=
X-Google-Smtp-Source: APXvYqxx1KzsVNgDmn+mThYJ/h9BsLBLsNNM8pNA8ndQFHGgMeHN84yzgZ0rcKtNRcJSOuRuNwxcnw==
X-Received: by 2002:a65:5bc3:: with SMTP id o3mr5088652pgr.226.1576701992755;
        Wed, 18 Dec 2019 12:46:32 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:dd5b:acf6:7dd2:90d0? ([2601:646:9200:4e0:dd5b:acf6:7dd2:90d0])
        by smtp.gmail.com with ESMTPSA id r37sm2529532pjb.7.2019.12.18.12.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 12:46:32 -0800 (PST)
Subject: Re: [tsc] QA Cycle report for build (yocto-3.1_M1.rc8)
To: Armpit <akuster808@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Yocto TSC <tsc@lists.yoctoproject.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
 <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
 <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <f6dc629b-a1d7-76cf-25f8-dccdae0f0902@gmail.com>
Date: Wed, 18 Dec 2019 12:46:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/18/19 7:38 AM, Armpit wrote:
> 
> 
> On 12/18/19 2:46 AM, Richard Purdie wrote:
>> On Wed, 2019-12-18 at 03:32 +0000, Jain, Sangeeta wrote:
>>> Hello all,
>>>
>>> This is the full report for 3.1_M1.rc8:
>>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>>>
>>>
>>> ======= Summary ========
>>> No high milestone defects.
>>> No new defects are found in this cycle.
>>> glib and valgrind ptest failed (BUG id:13713).
> 
> The Valgrind is a known issue:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666
> 
>>>
>>> ======= Bugs ========
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13713
>> Thanks Sangeeta.
>>
>> Adding TSC to CC.
>>
>> We have the bugs above but they're minor ptest issues (small
>> regressions).
>>
>> We have performance problems in certain world build cases but we need
>> to work through those issues in master.
>>
>> We also have reproducibile build issues but those are in theory fixed
>> in master.
>>
>> I think we should ship this as I can't see any huge improvements from
>> any further respins, it just collides with vactions. We should move
>> forward to M2 after the holidays.
> 
> I would make these blockers for M2/M3 and approve shipping M1
> 

I would also agree to ship M1 without this.

> - armin
>>
>> Cheers,
>>
>> Richard
>>
>>
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#247): https://lists.yoctoproject.org/g/tsc/message/247
> Mute This Topic: https://lists.yoctoproject.org/mt/68790744/1997914
> Group Owner: tsc+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/tsc/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

