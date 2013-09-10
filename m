Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F0A8E01549
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:42:05 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id q58so5130409wes.5
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:42:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=HcAUyCQVx+HnwWoOzIieqCvg0nYWaAxOJXApFGYA8pI=;
	b=U0cfJ1n/tByYsr0u3BVOpSy7YZqK7Zq437Hn4OKC4HXk/hS6L79VGR3iKYuZBlU3ox
	YvqO0cNwtExn3opmr6IrUFb97zgDcLz2owL+pfBNvRbGUXH8yMV4J4Mf9u9IpXMGVOND
	UnBJ0C/sNbKq4DLmXB5IAkyfufxxpdiPAvjJCpk0MNRrM/HCJbJWLAkRMU/620rukBQm
	2yWHO7fGL7O8AxjG8JXhdHL4JWC1CtRqUQMCIet4z4AcYpriYRjBQtwTJ4s6Ms2MrbEB
	fXAy0DIq3GuXRHbQaE9Q+H8JfNfONjE2unQjqRd+T3j7Kh3FCZVMyiByfC+GDnd6J1yP
	RxEA==
X-Gm-Message-State: ALoCoQlMiDqCsFm39+76w0qjO20OIbGJXK5EXYNOlWuNuWNgdmsSVW2clx/gqWk6mHKm7VblE7Qc
X-Received: by 10.180.99.100 with SMTP id ep4mr12308834wib.1.1378798924309;
	Tue, 10 Sep 2013 00:42:04 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id b13sm1371347wiv.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Sep 2013 00:42:03 -0700 (PDT)
Message-ID: <522ECD47.8020704@vtkloud.com>
Date: Tue, 10 Sep 2013 09:41:59 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yi Zhao <yi.zhao@windriver.com>
References: <522E227C.1080700@vtkloud.com> <522ECA37.1080302@windriver.com>
In-Reply-To: <522ECA37.1080302@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with SmartPM install from file
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
X-List-Received-Date: Tue, 10 Sep 2013 07:42:06 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/09/2013 09:28, Yi Zhao wrote:
>
> 于 2013年09月10日 03:33, JC 写道:
>> Hi,
>>
>> I'm trying to get a better hand on how smart work. I've been 
>> successful to create a repo, update and install from it. Now I want 
>> to go further. Let's assume:
>> - I have a working repo and a working device
>> - I build a new recipe (here, git) and update my repo
>> - I "smart update" on my device
>> Now instead of installing, I choose to "download" the package :
>>
>> # smart download git
>>
>> It's successful. Now I want to install it :
>>
>> # smart install ./git-1.8.1.4-r0.armv6_vfp.rpm
>> Loading cache...
>> error: Unable to create channel for file: ./git-1.8.1.4-r0.armv6_vfp.rpm
>
> That because there is no rpm-sys channel in your target. You could run 
> "smart channel --show" to check it.
>
> # smart channel --show
> [rpmsys]
> type = rpm-sys
>
> The rpm-sys channel is a default channel. It should be created when 
> build the rootfs.
>

It is present :(


Jay


