Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2513EE00B67; Fri,  9 May 2014 03:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29BA9E00B60
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 03:50:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id D3DB327E019
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 10:50:31 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id WFHEFMM_m1ZV for <yocto@yoctoproject.org>;
	Fri,  9 May 2014 10:50:08 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7733127E006
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 10:50:08 +0000 (UTC)
Message-ID: <536CB2DE.1000101@dynamicdevices.co.uk>
Date: Fri, 09 May 2014 11:50:06 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <536CB03F.1020005@dynamicdevices.co.uk>
In-Reply-To: <536CB03F.1020005@dynamicdevices.co.uk>
X-Enigmail-Version: 1.6
Subject: Re: Issue with download cache tarball uniqueness?
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
X-List-Received-Date: Fri, 09 May 2014 10:50:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 09/05/2014 11:38, Alex J Lennon wrote:
> Hi,
>
> I'm putting together a simple example recipe and have run into an issue
> with an incorrect tarball being used from the download cache.
>
> e.g. I have some code committed to github here
>
> https://github.com/DynamicDevices/bbexample/
>
> It's tagged v1.0 so github generates a source tarball for me here
>
> https://github.com/DynamicDevices/bbexample/archive/bbexample-v1.0.tar.gz
>

Correction:

https://github.com/DynamicDevices/bbexample/archive/v1.0.tar.gz

vs

https://github.com/DynamicDevices/mono-helloworld/archive/v1.0.tar.gz

