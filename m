Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE0FE0030B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 03:53:07 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q06BqtdF019915;
	Fri, 6 Jan 2012 11:52:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18968-07; Fri,  6 Jan 2012 11:52:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q06Bqlkq019909
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 6 Jan 2012 11:52:48 GMT
Message-ID: <1325850767.20759.88.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
Date: Fri, 06 Jan 2012 11:52:47 +0000
In-Reply-To: <CAMvUbCzUuNw8DyUxA=tqFJqq_=8uF79j9AcOxnQ9RQrKoAHiqQ@mail.gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
	<CABcZAN=6mf4dZkXDrXDyL9UW+HWWEo6wzdLrYfRWr5MOc17WTA@mail.gmail.com>
	<CAMvUbCzUuNw8DyUxA=tqFJqq_=8uF79j9AcOxnQ9RQrKoAHiqQ@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jan 2012 11:53:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-29 at 03:12 +0100, Leon Woestenberg wrote:

> Ah, I missed this line:
> o Read-only or RAMFS root filesystem 
>
> 
> However, our recipes in many ways depend on write behaviour on first
> boot. 
> 
> When under classic OE, I always had to verify each recipe for correct
> operation for ro fs's, and did so manually.
> 
> Would be nice to cover this use case better.

We are getting much better at running postinstalls at rootfs creation
time meaning that at boot time, there is little remaining work. The
useradd code is one example of where its been hard work to get it
working but hopefully we are there with that.

Cheers,

Richard


