Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F9A7E009A5; Wed, 29 Apr 2015 01:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37895E00932
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 01:10:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1966027E241
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 08:10:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id C1vMcQlr9qW1 for <yocto@yoctoproject.org>;
	Wed, 29 Apr 2015 08:10:45 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-40-127.w92-150.abo.wanadoo.fr
	[92.150.31.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 74B4827E224
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 08:10:45 +0000 (UTC)
Message-ID: <55409203.2020501@dynamicdevices.co.uk>
Date: Wed, 29 Apr 2015 10:10:43 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Definition of native toolchain, support for -m32?
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
X-List-Received-Date: Wed, 29 Apr 2015 08:10:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm having some trouble building chromium which I think is due to a
definition in chromium.inc which uses the host compiler rather than the
Yocto native compile toolchain

CC_host="${BUILD_CC}" export CC_host
CXX_host="${BUILD_CXX}" export CXX_host

This seems to map to the gcc/g++ on my host system which is surely
incorrect?

Am I right in thinking that the correct way to define the Yocto native
toolchain is using something more like this from native.bbclass?

CC_host="${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}" export CC_host
CXX_host="${CCACHE}${HOST_PREFIX}g++ ${HOST_CC_ARCH}" export CXX_host

If I do this to eliminate the external dependency I run into a problem
that -m32 is not accepted by the Yocto compiler toolchain (which is
built/running on an x64 Ubuntu 14.04).

Could anybody advise on what steps I might take to have the Yocto native
compile toolchain accepting -m32?

Thanks,

Alex

