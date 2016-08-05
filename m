Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7073AE00E39; Thu,  4 Aug 2016 19:28:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41751E00E29
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 19:28:49 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g202so19319766pfb.1
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2016 19:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=/7eQyeZfP5cc7eEyoa133B+L/E9xpP4zkOPCrR0uw5Q=;
	b=k/OR88VZZJnb4uxs19oAexM4h2bCkwHZvr6gdlAgiWNEebXCtf7cNICNEDMfUv0Liv
	IDwHYcOyhtO2cyVz1Z7bIbEb78HKuNMY/bgYq52+ZuIlwXRyHRyOdBJD8k4c+ej56pjF
	S5C2oQOWW6i36dbIu52jgXTcGSczVLHVMAgmP5INg78pfvpjLCbL95+HiRXNN0rldp3L
	5Nf4D+YaewBqGW0yCc6YcS3LggsxWWWAZRb0ZMjb+OAmt8gzE/7SqzwBBeVkYLhtWRmR
	QIltkSbh47fewRhgb7aSyfCcZV0zXhfLM5ls/qLKadAycj+nxeT1V8brPBsg/yGJWcWR
	5iVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=/7eQyeZfP5cc7eEyoa133B+L/E9xpP4zkOPCrR0uw5Q=;
	b=TdUfgIOAVvbtELxzEy9qxzSN69bkrDVLmYeeewPotOXOb6qfMCxTTXc0OsRqx7W7XL
	lDQX64Dq6p+ZjuzfpETQxFW0DOdOJ2Y+LswwGrEz9tst5XJpXMQFfbuPtWWZG3hH1h5i
	Vexss2HgH/E4ZiPrYbNOM5gkR30YubRoluyIUe3P+q1rO3HdNwwxPNxrso6ZmqwZUfwp
	XKLthkHkdWkoaa01QQ+mnvMfmDmVoFGe5+WFqPWAC0sLEd4OIvLqEB1BXliSWOYr6cdx
	JclnV5EoWO3BAjluFfGYBgF5cuSq6TmZGGYvHPphVYq42Y/1gwdh/N9DVd/m+ebCQyg7
	ixiQ==
X-Gm-Message-State: AEkoouuMF3l+8WZty2+23k55va75BxyqP+kYJvPbVrJ4cw0fT3so7h9dxU3miaeM7klZdA==
X-Received: by 10.98.33.72 with SMTP id h69mr130795331pfh.28.1470364129189;
	Thu, 04 Aug 2016 19:28:49 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4ce8:4a2:83d6:3a55])
	by smtp.gmail.com with ESMTPSA id i7sm23355522paf.9.2016.08.04.19.28.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Aug 2016 19:28:47 -0700 (PDT)
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
	<CAD4b0_Js_XrQSGLbzqbGO5ihN9x-LkdYBz7vM-BTEdeGfh-0hA@mail.gmail.com>
	<1470329247657.58080@seescan.com>
	<e760618d-7be9-8351-6d57-557c27ae6357@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <0ed9b71a-e35b-248a-d0ec-4dd8781e8602@gmail.com>
Date: Thu, 4 Aug 2016 19:29:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <e760618d-7be9-8351-6d57-557c27ae6357@mlbassoc.com>
Subject: Re: where to find license files?
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
X-List-Received-Date: Fri, 05 Aug 2016 02:28:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 8/4/16 10:32 AM, Gary Thomas wrote:
> On 2016-08-04 18:47, Fred Ollinger wrote:
>> I'm working on getting a list of license files and I don't know where
>> to get the exact text of each license.
>>
>> Is there a place where this is provided by yocto?
>>
>> For example, is there some directory which has all the license files?
>>
>> I see there's an md5sum for each file so I assume this is the case.
> 
> After you build an image, look in <BUILD>/tmp/deploy/licenses/*
> 
> These are the exact licenses used by your image
> 

You may not be able to say exact since, in some cases, it will copy a
template text of a given license from common templates. so you should
inspect them manually. see the image license manifest and determine
which all packages made into your image and review each one of them

