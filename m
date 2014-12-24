Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61F19E00953; Wed, 24 Dec 2014 09:21:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA46E002F9
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 09:20:50 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id rd18so7470969iec.8
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 09:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=k3HdMd6vdDeTogoAM+ZZgLiNq70gtyxj6L1L5JJRbuE=;
	b=MqJevDnWBJa7FZeo6cJNw4EANdxqndC7C0RSZw6teLUwBfNCVrDe17oOiXZJJlQx6I
	VL2tOM8eMEczN0DV0BADLS7oi9/1YHdI+2tci3JWNJFRZjT6MIuJEaRs2BzoEJKo/5An
	HRVNzClIRexv68Xj6p/0JmwJEYJ7SOqYvLZw+nupfDxRCUYLOsA0dl0xLHfzv9XgZK5K
	TLkTXCEsa9B/qXmCbHk7i1LsosWwcCbQIhtpBnnmg6Are+4iIFcU1y2xNr8UXFN8t8DP
	OepKEtAXx/Q50KoDQt38zIoNfi38fn3TBMX79m195240BNEwaqPCI/WmOSUxrishSgJ4
	hePg==
X-Received: by 10.50.102.4 with SMTP id fk4mr27175846igb.28.1419441650037;
	Wed, 24 Dec 2014 09:20:50 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id m11sm8049052igt.7.2014.12.24.09.20.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Dec 2014 09:20:48 -0800 (PST)
Message-ID: <549AF5EE.1020700@gmail.com>
Date: Wed, 24 Dec 2014 12:20:46 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <549865D2.2090803@gmail.com>
	<CAJTo0LZPmwUbgxJurjnROr0jk4WGs7BwZHvSgoL6_AyxHMvscA@mail.gmail.com>
In-Reply-To: <CAJTo0LZPmwUbgxJurjnROr0jk4WGs7BwZHvSgoL6_AyxHMvscA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Server Questions?
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
X-List-Received-Date: Wed, 24 Dec 2014 17:21:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Boris,
I am thinking of at least 32 cores or 2 e5 xeons and 64 GB of ram.
Is this enough or should I accept for even more CPU cores?
Nick

On 2014-12-22 03:07 PM, Burton, Ross wrote:
> On 22 December 2014 at 18:41, nick <xerofoify@gmail.com> wrote:
>>
>> I am wondering if a build server is a good idea for Yocto Builds. In
>> addition what specs are good for
>> a build server if I am to purchase one. Further more I am assuming as many
>> cores as possible for making
>> the build be parallel and faster. I was also  thinking as much ram as
>> possible too, 64 GB as a minimum.
>>
> 
> This has been discussed repeatedly on this list, but the rule of thumb is a
> well-rounded server: as much of everything as possible, and don't bother
> with SSDs.
> 
> Ross
> 

