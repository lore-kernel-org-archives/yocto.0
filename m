Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFE97E00BBF; Thu, 29 May 2014 21:50:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87E8FE00B71
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:50:25 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id oy12so1515542veb.24
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:50:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=vQK1aJLFoioRZShjj+uMmPen9MzaZXku4qop670xtWg=;
	b=CCZh90sY216sUzzcFCGuX1p7fx5rgdbDL/FEaBFVZEQ34qxFdg4UlHkHWxXBSSx3VN
	rNFUypLW3+Doq5rrqnoVY+iv4XPQoM4byQcaYerB0WEyhVCSiVHWjUzCNkJVOaXkrDxq
	FyHz7G3UHtVWVe+XkLn8IYeHfAEwmmIXR3b0tMvm5Q1Esr7kgeYe0A2qlurCykRvkGDr
	hWXEW8gYZ3PLe9LL72Oeri8JLXT0cO0AoUs52tVsB2as9JA0sl5lO7+BDQPvH5YaSL/0
	29lqQGejkrjUqdO8bHg2JshC4tCtIVkZ51J2EeicnZUe9kjhfMqITIDCA+rUp+gcLFic
	roUw==
X-Gm-Message-State: ALoCoQntMRcNf4vv6j3cDiUrSw77VCPVAD4RsybWqGdTWQyBY7cDfvfRDdLCupFkN5gpzCWJ9jzT
MIME-Version: 1.0
X-Received: by 10.220.69.72 with SMTP id y8mr11301328vci.21.1401425425168;
	Thu, 29 May 2014 21:50:25 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Thu, 29 May 2014 21:50:25 -0700 (PDT)
In-Reply-To: <20140530040912.GR31444@kai-gentoo.bj.intel.com>
References: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
	<20140520021510.GE4465@kai-gentoo.bj.intel.com>
	<20140530040912.GR31444@kai-gentoo.bj.intel.com>
Date: Thu, 29 May 2014 21:50:25 -0700
Message-ID: <CAPhnLPBQwsWGRK847eFjPUyj=3zeL76PWBt6Uo6c+dPuopg7ww@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Yin Kangkai <kangkai.yin@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3] SingleBranchScheduler: check each repo but not only the first one
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
X-List-Received-Date: Fri, 30 May 2014 04:50:37 -0000
Content-Type: text/plain; charset=UTF-8

Sorry Yin, I've been backlogged. I have it in my preproduction test
setup. I should pull tomorrow if all goes well.

-b

On Thu, May 29, 2014 at 9:09 PM, Yin Kangkai <kangkai.yin@intel.com> wrote:
> On 2014-05-20, 10:15 +0800, Yin Kangkai wrote:
>> [up post intentionally]
>>
>> I was trying to setup yocto-autobuilder in my local env, and customize
>> it to my needs (i.e. watch git/gerrit event and only build my
>> images). It is a little bit of struggle for me to make it finally work
>> (due to the fact I am little knowledge to both buildbot and python.)
>>
>> Anyway, these several patches are needed in my setup. Please review
>> and considering merge.
>>
>> If this is not the right mailing list, please let me know. Thanks.
>
> Sorry, any response on this patch set?
>
>> On 2014-05-20, 10:16 +0800, Yin Kangkai wrote:
>> > Without this patch, when you set a SingleBranchScheduler scheduler,
>> > code will only check against the first repo in repos list. e.g.:
>> ...



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

