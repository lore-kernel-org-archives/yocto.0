Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F52BE00D12; Tue,  6 Dec 2016 23:05:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f172.google.com (mail-wj0-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D567DE00D08
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 23:05:05 -0800 (PST)
Received: by mail-wj0-f172.google.com with SMTP id tk12so55524412wjb.3
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 23:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=KU2uJkqquhEObQIbnWmh04buJxsyfpSmm1fZrRU7Wjo=;
	b=ncaGcFZ7vlS2+9iDBHdNRlwrQV/bT9Z6Z9wcWpakYBb6c/z27iW97s9OMsnVkFcs3b
	irxAzRVUs44c0oY1qGMvE8FrlqBWGLu/3zXju34vV5CarCM2jl6WF3tv408113Oh//Dk
	g4Gz0jrhrMUji/fPRugtHQLG6IjAvFyhPvnV7yV/OekpG4OZE044/N1nIi4hV2niNoTe
	Xy1ar6+DVBWvdK9obYvAdzNbSwz+8nmhYp+RDmPuPPGxaMv1u8vUvrV96FjJtvFq72ip
	mbGMoGGtOjxml+FI5IzXpgQ7n6tAKQSkfRHUYIch18HgrTa+YTYMbkxhvMW7rkzOmK8S
	mG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=KU2uJkqquhEObQIbnWmh04buJxsyfpSmm1fZrRU7Wjo=;
	b=Tdrl+9udeTb7OAkg6RyGsFS8x15AzOHZoife3V91siJxj/8EPHuOtNMyrMel+IoKeC
	LjLKvUWzuyqtkEBnkmCPDHdo453ZXw1XEpUsIedQlSbLP47cMdj4KEMLMg3AhzsdUa2Q
	zbD9MjXcRF1NeSeXFo5EWBuF2UPxb5IlDkOsshmiVzxJXqB+jTTCD0QPqmVbq19ayJC3
	LUxWcRvQDnB4bgueeHt9IleGqRc1Sm3Odb8lVG+3mG43S3+s2iNDnne/DI3oOZXYkMIr
	28gSjLbWMgDwG3Jn+OlJHqXPpyoSANgH7LiBg+BuDrndzJNrHIlH57RLugxjssHHWjcO
	c62Q==
X-Gm-Message-State: AKaTC028fAQskkzyHTMc4NyHAJx6DFy6Enw/hD2qu+Ngbe9PUlbow17iL1GlUAhcclSY1Q==
X-Received: by 10.25.212.211 with SMTP id l202mr25646046lfg.89.1481094304198; 
	Tue, 06 Dec 2016 23:05:04 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	c77sm4394969lfg.29.2016.12.06.23.05.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 23:05:03 -0800 (PST)
To: Stefano Babic <sbabic@denx.de>, Philip Balister <philip@balister.org>,
	"Lopez, Mariano" <mariano.lopez@linux.intel.com>,
	Patrick Ohly <patrick.ohly@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <032e0043-5662-8f07-2ea9-51c973ab03fc@mender.io>
Date: Wed, 7 Dec 2016 08:05:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
Cc: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, yocto@yoctoproject.org,
	"Lopez, Mariano" <mariano.lopez@intel.com>
Subject: Re: update mechanisms
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
X-List-Received-Date: Wed, 07 Dec 2016 07:05:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 06/12/16 23:38, Stefano Babic wrote:
> On 06/12/2016 19:45, Philip Balister wrote:
>> I just skimmed the page and the table format isn't working well with the
>> length of the blocks of text.
>>
> 
> Agree - I think it is better to have a section per project.

And now I added yet another one, Mender, to
https://wiki.yoctoproject.org/wiki/System_Update.

-- 
Kristian

