Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40636E008D0; Wed, 15 Feb 2017 07:35:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFAF1E00874
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 07:35:55 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id e4so9003026pfg.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 07:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=IEItT2H56iI9hvrUF/KiolpWsYlogoxetnWijAsWgVo=;
	b=sBk7ngJXu07gr1onOxmzo5gT3XD6LbxM5B15zqUVhovbysEE7PeiDz1DTxKwq2BbCI
	rqIct1StGP9VaWL+LAmlSHGEdzu0gNI5emOrZOw1+e+etPLDa/n6ltG//gf6zH/1UzZd
	3+8wutZUQqtByob1lT6z+JhsD/r6g0yvWegDp1AXA+yT6RvSOPvlIDIU0KkXfsQHpfgG
	9XPM+ckhrJjybaGHLRNurYgr64/7qmRSHayzX227TviLnN8t9u3LO31DBTcTn1NWqGut
	yPlP+ornmjAPGUBBgKJr9sQTGPg7eh8F3LP5bzyE4VAU4xH5WkPcSQs/G1e17sbKYlp0
	jnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=IEItT2H56iI9hvrUF/KiolpWsYlogoxetnWijAsWgVo=;
	b=QlesmecmUrnCgXIfD57x3I5h2kGLuRIAyWHh3yLOb6DwDOd++jtFSsXxhcnmDiDHck
	EvlXLfdULKgoNA4yO0PpguBzI4KbHBScbDnoFtxD2RAQZNCWZfaaEcqEf8AhrG9FsZ3t
	5T0uBxob/CQ1bkkBqQdWK5i26KFVbpruWm5FNyecpxv92sA8kaT0Y3vo+ChSMOCJBpzm
	r/PB1zSfZQBEOY+sB5X2Z8jpH/x9YhiLZaeNT0BB+N4cois59uQAP1Bchm1+PkwhS9z7
	bjc2RSuh3lqL8l4UTZ3W9wMCj24FN7PY7v54S/LkDstp/2eAlvfBL0e6ciQ1OrtRM9OW
	Ggzw==
X-Gm-Message-State: AMke39nHWvkTs7Wybw/1CCqgNd5kGR/WAoczlhQtXLQZformAaA0NXMyrzS2irn8bci/HA==
X-Received: by 10.99.110.74 with SMTP id j71mr38973219pgc.134.1487172955279;
	Wed, 15 Feb 2017 07:35:55 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:b420:65dd:6ce9:c9f9?
	([2601:202:4001:9ea0:b420:65dd:6ce9:c9f9])
	by smtp.gmail.com with ESMTPSA id
	b75sm8273691pfb.90.2017.02.15.07.35.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 07:35:54 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
	<b85dd671-0c0b-73f8-0c99-ce1f40bf8892@gmail.com>
	<1487071301.13854.330.camel@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <9c935223-4d44-d633-8411-8677ae5cc506@gmail.com>
Date: Wed, 15 Feb 2017 07:35:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1487071301.13854.330.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH v2 0/9] tpm: virtual TPM for qemu
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
X-List-Received-Date: Wed, 15 Feb 2017 15:35:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 02/14/2017 03:21 AM, Patrick Ohly wrote:
> On Fri, 2017-02-03 at 10:35 -0800, akuster808 wrote:
>> On 2/3/17 12:46 AM, Patrick Ohly wrote:
>>> I recently started using swtpm-native in combination with the qemu-tpm
>>> patches to simulate a virtual TPM chip in qemu. The qemu-tpm patches
>>> should go into OE-core, but currently usage is a bit cumbersome
>>> (requires root privileges and manually starting swtpm before each
>>> runqemu invocation), so at this time I only consider the meta-security
>>> changes ready and useful enough for merging.
>>>
>>> Inside the virtual machine I used tpm-tools + trousers to set up
>>> sealed keys for EVM, which required fixing a few things.
>>>
>>> These patches were based on Armin's swtpm+trousers version update
>>> series which needs to be merged first to avoid merge conflicts.
>> In staging
> How often do you promote staging to master?
usually once I double check things.
> Can this be done soon (like
> this week)?
I am getting build failures on aarch64 I want to investigate, so its 
possible.

- armin


