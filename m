Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 095ECE00A16; Sat, 11 Mar 2017 02:15:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5530E009B9
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:15:35 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id o126so13478040pfb.1
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=bQ+Mi0jFJWqDHho4MMF9iA7avS/of46H90l9TQkFbQs=;
	b=LAxBVRYjvKMUZzice/tMq7SoNrQtaUzJaiCvvc0Sean8hEzzqD07KC+VVPgLKiEFbz
	jbXkth3NWF72mxvy6vdkitIEKsqjhyN7LfGNGIgvJsqzH9MImwyhXQ7KTFT3IwBOlzgn
	fEKTHMXTjE/FCjtTP3au5ey8Eim+66113nxhRuW9ZPNhwJOMz8c2BS153D9jZN9DXxN3
	bT8UIZX7Px1WcRIu0YR9JuK5dNxrvWPEp/nlnwEOLXgMem6OIeJ3yoIP6E8+9/Ryrddw
	kS/rEkbSLI3Mz8ttz29gXUYVl/G7p4VpWi7UtNELBzsXMKG8pe3Bk3/P0yXUgFzULxFa
	6plg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=bQ+Mi0jFJWqDHho4MMF9iA7avS/of46H90l9TQkFbQs=;
	b=SSLKfayLMR7a3Eu8vP0QuMZ73PZo+EnVb/mjR4h5pwZ/rxyi5j37wdsvekD9Decog6
	tKfBDjoIyeolqnX8fTDOkYjCbzcLxNa8XVi51etWxo/TYHOUlzwObTnwlvlxnYclIYvi
	hqqqx56KtzOe+ZJlXOaXqtImtxGja9yV9mSZcN6keWPt2+Sg7UDvMISE8o2dHGqtsUwY
	fuWVqOU0h8+mOUnE3caG95WWEPxabA4aT/aRxrg3K17RNcNapK/JdZLh5gccIpG1mKD8
	QH55B0Hn1bMsU2uueagrT28opy9g/2B/bEzB1mQKtHL8Ny1MsaTU7hKLJZ2NkpeBrhJb
	pPxg==
X-Gm-Message-State: AMke39kq5jJdDtzDAf1J0uw5HvT8WHKCITxiRb9l6tff8tRFKDz3Y+Y5kl26UuYCnUV0Hw==
X-Received: by 10.99.217.17 with SMTP id r17mr25694186pgg.140.1489227334809;
	Sat, 11 Mar 2017 02:15:34 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:51e9:1748:d935:c39a])
	by smtp.gmail.com with ESMTPSA id
	e13sm23493939pgf.48.2017.03.11.02.15.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Mar 2017 02:15:34 -0800 (PST)
To: Paul Barker <paul@paulbarker.me.uk>
References: <20170213233243.16688-1-paul@paulbarker.me.uk>
	<fe276ffa-0a4d-82e5-1a90-f9d3147cdfae@gmail.com>
	<20170311100145.4e5b0f68@lap0>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <55147ad0-0fd5-ce9b-6e7e-e2c036f4e220@gmail.com>
Date: Sat, 11 Mar 2017 02:15:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <20170311100145.4e5b0f68@lap0>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.48
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
X-List-Received-Date: Sat, 11 Mar 2017 10:15:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 3/11/17 2:01 AM, Paul Barker wrote:
> On Fri, 10 Mar 2017 17:55:25 -0800
> Khem Raj <raj.khem@gmail.com> wrote:
> 
>> Hi Paul
>>
>> On 2/13/17 3:32 PM, paul@paulbarker.me.uk wrote:
>>> From: Paul Barker <paul@paulbarker.me.uk>
>>>
>>> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
>>> ---
>>>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
>>> b/recipes-kernel/linux/linux-raspberrypi_4.4.bb index
>>> 0f78225..b235772 100644 ---
>>> a/recipes-kernel/linux/linux-raspberrypi_4.4.bb +++
>>> b/recipes-kernel/linux/linux-raspberrypi_4.4.bb @@ -1,8 +1,8 @@
>>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>  
>>> -LINUX_VERSION ?= "4.4.43"
>>> +LINUX_VERSION ?= "4.4.48"
>>>    
>>
>> There is 4.4.50 with rpi0 support. Can you resent this patchset with
>> the updated rev
>>
> 
> I've got a patch for that ready to send, I just haven't had chance to
> boot test it as I've been away all week. I'm now back home though :)
> 
> I'll rebase my outstanding patches on top of your kraj/master branch,
> give them a quick test and get them sent.

Fantastic

> 
> Cheers,
> Paul
> 

