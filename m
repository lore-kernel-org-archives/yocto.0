Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A22E00B68; Fri,  9 May 2014 03:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6454E00B66
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 03:39:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9AA7C27E006
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 10:39:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 5KB4OI68cYyX for <yocto@yoctoproject.org>;
	Fri,  9 May 2014 10:38:57 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8036E27E019
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 10:38:57 +0000 (UTC)
Message-ID: <536CB03F.1020005@dynamicdevices.co.uk>
Date: Fri, 09 May 2014 11:38:55 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Issue with download cache tarball uniqueness?
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
X-List-Received-Date: Fri, 09 May 2014 10:39:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm putting together a simple example recipe and have run into an issue
with an incorrect tarball being used from the download cache.

e.g. I have some code committed to github here

https://github.com/DynamicDevices/bbexample/

It's tagged v1.0 so github generates a source tarball for me here

https://github.com/DynamicDevices/bbexample/archive/bbexample-v1.0.tar.gz

I use a SRC_URI in my recipe something like this

SRC_URI =
"https://github.com/DynamicDevices/bbexample/archive/${PN}-v${PV}.tar.gz"

That should result in the file being downloaded, or pulled from cache,
unpacked and so forth.

When I build this recipe I get the wrong source code unpacked (from a
mono-helloworld project I created a while ago)

The mono-helloworld project is also at github and also tagged v1.0

https://github.com/DynamicDevices/mono-helloworld

https://github.com/DynamicDevices/mono-helloworld/archive/v1.0.tar.gz

If I look in my downloads folder I see there is a v1.0.tar.gz file and a
corresponding .done file.

This contains the mono-helloworld sources.

Thus I believe that bitbake is incorrectly assuming that the
mono-helloworld tarball is the cached bbexample tarball as there's no
URI information there.

I was able to show this by removing the v1.0.tar.gz file containing the
mono-helloworld sources in which case a rebuild of my bbexample recipe
results in the correct sources being pulled down, although of course
then the mono-helloworld recipe is broken

...

It doesn't seem unreasonable to use github or the simple vX.X tagging
mechanism, but if I understand what is happening correctly it seems this
will result in cache collisions with downloaded tarballs because of the
naming convention employed by github and the lack of full URI
information in the download cache?

Alex





