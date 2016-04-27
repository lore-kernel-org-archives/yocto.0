Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8100AE00D91; Wed, 27 Apr 2016 05:35:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10793E00D8C
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 05:35:24 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id d62so44660662iof.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 05:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RjopezBu3W+2cn5zivLn+TOURbVa/V0tsNAtfpwdsTQ=;
	b=k891YE4Y/DAL7+Y5YxGJAjdTy/FQfOHbGWFyGk1pQt8PEFIegGiTBSafEE4M9nr+6/
	T/nSo4xQF6P1rNuOLimhwS9/PXniMWwm/3plU63SZdIsNZ4D9X99yGGtXzZa9w5IpPBK
	hEtKVfRc7hbOdKkA4BcYTUrhLVIo4ihjf8ZFJcN6y9KWSihDnTFNIMJQLSKzKf+0W60t
	yurlHsVo9BaaBttoUyhQOY2TCFM2BB/W3Sb993/RlDx8P0M4G45HNDz6G/oqg8bfhANP
	qZDTey0MkpHUStmopa2t6H7BJELbBmjYHY0rkhZ1HMj289Phkk4qFy0Z3hvqLOX94uS/
	/T2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RjopezBu3W+2cn5zivLn+TOURbVa/V0tsNAtfpwdsTQ=;
	b=mx9GO7AFKy/n6DZRoJcFbMqu8wL+QXFZsGrWXCW8kIiSzrRoDuR2w4IYNcEPIm6w6g
	7LfM3NGFloQJagnMKk3L1EAvD+bOOoFQssOy7tMPc/3ovriTZpHyaZblpQ3c5hZre/+V
	dTVeYe+cm16lCSVofoxkNiVsplB5xKTY/fT++rO7OjYLXpX6cdBPWzIlhTHLoi0TbXkP
	h0PZD9xSIw+gTQgSNSK7DiMs+bMY4x4hXxW/ZWcmPQttu9uvtwQhxMWXIvNCLan2c9HJ
	zNGGn5KHT9ugrgicXVP3zgF681rsPkIFn+dvWeK6DHyULvy6d+r/LNEHcmed1+4LlUbR
	r2XQ==
X-Gm-Message-State: AOPr4FVzFmvKawE0IAi8IDn3hY1Z4d/T8JCtvQP46RsLk/kTArtwBDZd3f/Y/wawFKiZTlCAQ2O5Xhzt8Zpmfk3Q
X-Received: by 10.107.149.66 with SMTP id x63mr9787681iod.141.1461760524314;
	Wed, 27 Apr 2016 05:35:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.3.140 with HTTP; Wed, 27 Apr 2016 05:34:44 -0700 (PDT)
In-Reply-To: <58471203.UVK15pv3J4@peggleto-mobl.ger.corp.intel.com>
References: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
	<CAJTo0LYB=p-rOcz4MUxjkyWE1RX0zhTOdFvtaf_rMepjOPzMOg@mail.gmail.com>
	<58471203.UVK15pv3J4@peggleto-mobl.ger.corp.intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 27 Apr 2016 13:34:44 +0100
Message-ID: <CAPhnLPAVSWOpfC1mS5_rNfndyODG8M4UE6LVpNDm5szFtw8fjQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Ross Burton <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problems with cmake finding the c++ includes
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
X-List-Received-Date: Wed, 27 Apr 2016 12:35:30 -0000
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 03:12, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> On Tue, 26 Apr 2016 09:39:26 Burton, Ross wrote:
>> > SUMMARY = "g3log"
>> > SECTION = "sek4"
>> > LICENSE = "MIT"
>> > LIC_FILES_CHKSUM = "file://$
>> > {COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> This appears to be the Unlicense [1]. It's worth noting that we seem to be
> missing this in our common licenses, though it's listed by SPDX [2]. As an
> aside, maybe it's time for us to bring in new license files from SPDX if there
> are any others like this?

Ross and I were discussing an update for this. There are a lot of new
SPDX licenses and I want a day or so with this patch I'm working on
because enough has changed I don't want any breakage.

-b

>
>> This should point to the LICENSE file in the clone, and that license file
>> doesn't say MIT.
>>
>> > DEPENDS ="boost"
>
> I don't think this is correct - at least I can't see any sign upstream that it
> needs boost. It even claims that it needs no external libraries.
>
> Cheers,
> Paul
>
> [1] http://unlicense.org/
> [2] https://spdx.org/licenses/Unlicense.html
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

