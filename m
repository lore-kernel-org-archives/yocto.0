Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920A6E00874; Wed,  5 Nov 2014 05:01:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BEFE0082F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 05:01:21 -0800 (PST)
Received: by mail-ie0-f179.google.com with SMTP id rl12so621654iec.10
	for <yocto@yoctoproject.org>; Wed, 05 Nov 2014 05:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=nbwFLssN7vKRwwEBHq7ImjP1uZ4ffGoczcWREuda9QQ=;
	b=VKNj/IlItWj4VYGJpSdkz035ZC4evOvfuHQmH+sJED6UdS1qGiai6F8726vOU7rQKd
	KQTxF3S6l5VTzQ55nd+hnTNULYLQPM9lZXzW1FIrRijFySQOv518rd0ju/t53VFnyJtJ
	XBnmyJq5zj00gbXQSTcYhim86bwPhRTO5EQducJElKY+9Xn4mBsN8doqItjfmjoCrqLv
	GmNoCr+iIzu8qv99O+XCxuJteF39sNd6nqH7h+mSw8E/4GUhJQzN4LrQda5ET/0tz40z
	uS2PO/ADZGWIWjpFP4n3QQb2sj+lOWFsRZjR3jIidKkaeiKzV3N/GMD+DaZhajH6JPLP
	iQng==
X-Received: by 10.50.66.227 with SMTP id i3mr31502013igt.25.1415192481021;
	Wed, 05 Nov 2014 05:01:21 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7]) by mx.google.com with ESMTPSA id
	th10sm1626741igb.12.2014.11.05.05.01.19 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Nov 2014 05:01:20 -0800 (PST)
Message-ID: <545A1F9F.8080700@gmail.com>
Date: Wed, 05 Nov 2014 08:01:19 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
References: <5453CA61.5090902@gmail.com>
	<CAD0=qkKpRpoP_uuYiSdGNrN+SyrJy_sFkCw+iJhPfM7UdrWNCQ@mail.gmail.com>
	<5453D7C9.2040805@gmail.com>
	<CAGiJk9foS40b7RFM4o=P9p8e_yAmyqSzqy1ZZtXJshADJZQSmw@mail.gmail.com>
In-Reply-To: <CAGiJk9foS40b7RFM4o=P9p8e_yAmyqSzqy1ZZtXJshADJZQSmw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Angstrom Build Failing
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
X-List-Received-Date: Wed, 05 Nov 2014 13:01:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

That's fine Samuel,
I haven't the time to see if it works not due to being busy with school and kernel programming.
Cheers Nick 

On 14-11-05 07:52 AM, Samuel Stirtzel wrote:
> 2014-10-31 19:41 GMT+01:00 nick <xerofoify@gmail.com>:
>> Thanks Sven,
>> I will git pull later and see if it's up again just wasn't sure if this was
>> a network error or a misconfiguration on my part.
>> Cheers Nick
> 
> Sorry my fault,
> I have renamed the layer in gitorious in order to prevent confusion
> since there is another layer for the new KDE 5 stuff.
> 
> For KDE4 there is:
> git://gitorious.org/openembedded-core-layers/meta-kde4.git
> 
> KDE 5 / KDE Frameworks 5:
> https://github.com/e8johan/meta-kf5
> 
> 

