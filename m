Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAA46E007D6; Wed, 22 Oct 2014 15:25:12 -0700 (PDT)
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
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA296E00790
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 15:25:10 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id uq10so1834635igb.8
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 15:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=BWYlZbziW5ANTBA8chLFrVoHA+ELvpKZy2ngBpqrw8k=;
	b=uCYNzpxG6Ygm5o9oP0t9KOzIF5yupfsOKA3fIMR687P41lk968vbAyb++6Yoqo6Ocj
	6XQTMFQOTgyudsEZz1rMqaRrCUlHnAD/yduYaMUQgFTOvaXcEVVuj6/m243okcP43UXa
	6vyUsnRHXLPUG2LZPVGigkTLHax66dnsUa/tTUIUldUwyTnu5VYUyVuttiR68LXKKugE
	zJ382KkIksC3GoYUZvSgzl61fDbFeUM5YIZYTbotbDnWVQAOkj5oyK2NrPv2lB+pbiSF
	eSQrYnxMYjo5qJpsuJcNzMA4vsUoaOMEwZbRn9qHNBFR5N+/RjdRKe0fjR06OYiwkYnP
	cmew==
X-Received: by 10.42.94.131 with SMTP id b3mr4050990icn.92.1414016710389;
	Wed, 22 Oct 2014 15:25:10 -0700 (PDT)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id gb12sm1386427igd.0.2014.10.22.15.25.09
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 22 Oct 2014 15:25:09 -0700 (PDT)
Message-ID: <54482EC4.6090901@gmail.com>
Date: Wed, 22 Oct 2014 18:25:08 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <54457446.5090809@gmail.com>
	<6C4C72C1-9016-4C6B-80D5-16572BE7A9ED@keylevel.com>
In-Reply-To: <6C4C72C1-9016-4C6B-80D5-16572BE7A9ED@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Time To Build Yocto
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
X-List-Received-Date: Wed, 22 Oct 2014 22:25:12 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Thanks Chris,
I was wondering if a i7 was worth it seems it is and yes for the matter, I did have issues with the kernel
community and trying to work then out.
Nick

On 14-10-22 03:59 PM, Chris Tapp wrote:
> 
> On 20 Oct 2014, at 21:44, nick <xerofoify@gmail.com> wrote:
> 
>> I am wondering from your experience how long is the largest build you have ever seen and what was it building. I am 
>> considering a high powered build system for Yocto and want to known about build times in order to help me with
>> purchasing decisions.
> 
> There was a recent thread discussing this - have a look at https://lists.yoctoproject.org/pipermail/yocto/2014-October/021808.html
> 
> You need to start by working out what you'll be spending most of your time doing - full image builds, incremental images, single recipes, etc.
> 
> My build system has an i7-3820 overclocked to 4.6 GHz with 16 GB RAM and SSDs. It takes about an hour to build an X11 image from scratch (no shared state, source already downloaded). I could reduce the build time to about 25 minutes by upgrading to a new CPU (12 core, 24 threads) for $2700 - once you have your use-case you can do the math to work out what the payback time will be ;-)
> 
> --
> 
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
> 
> ----
> You can tell you're getting older when your car insurance gets real cheap!
> 

