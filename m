Received: from mailrelay2-2.pub.mailoutpod1-cph3.one.com (mailrelay2-2.pub.mailoutpod1-cph3.one.com [46.30.212.1])
 by mx.groups.io with SMTP id smtpd.web09.3254.1575237438486415945
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Dec 2019 13:57:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=20191106 header.b=wudg99Bb;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.1, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20191106;
	h=content-transfer-encoding:content-type:mime-version:date:message-id:subject:
	 from:to:from;
	bh=/HJYxx8sKX8h24nD8dQBFFsUhoUdXZ+nNtmxktyDi9w=;
	b=wudg99Bbp8wtqN7kTJ7AJlaFo2gG7Ok2lgmxJRD2atQV57QThtEEXGoTwMmIumWN6Es/0xpiyPpI9
	 QjuFIdi394EUXorWaSRFvDKlSetBk590u35G/BZdY2z8mRzzafEhUqWCTCoL7DM6PVCmq8ADW3UNHC
	 tll7AQ9benNnUs0ZPB532dXGoGsCSu+Ty2ohn12f2/HbIrbe3U1HXNjW3b7I5z3Se37quZGke0+khP
	 aBZm/WsuRcnmhPUv3fikTieZA6EOVsDWeqzS89C1gIKnG8r4MZrDzcp06hgMnRG/iaQn3et7KpFn3/
	 PvnAY9fojf6FBJcl9xjFv8eZ6Le93Lg==
X-HalOne-Cookie: f7e2ba4503e880de8e250766f392dabb894e3b48
X-HalOne-ID: 891872cd-1485-11ea-ba02-d0431ea8a290
Received: from [192.168.100.119] (unknown [83.250.5.252])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 891872cd-1485-11ea-ba02-d0431ea8a290;
	Sun, 01 Dec 2019 21:57:15 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: "Peter Bergin" <peter@berginkonsult.se>
Subject: linux-libc-headers - how to handle for older kernels?
Message-ID: <93249840-e25f-bb2d-39af-325c15ae7afe@berginkonsult.se>
Date: Sun, 1 Dec 2019 22:57:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I'm currently working in a project using Yocto 2.6 (thud) release. It 
has default kernel v4.18 and also linux-libc-headers from kernel v4.18. 
In my project we will use kernel v4.1. I would like advice how to handle 
the linux-libc-headers package for my project, should I use the v4.18 
headers or should I use the v4.1 header files which matches the running 
kernel?

From https://www.kernel.org/doc/html/latest/kbuild/headers_install.html:
"Kernel headers are backwards compatible, but not forwards compatible. 
This means that a program built against a C library using older kernel 
headers should run on a newer kernel (although it may not have access to 
new features), but a program built against newer kernel headers may not 
work on an older kernel."

With the information from the quote above I would directly use v4.1 
headers as my linux-libc-headers. But then reading the information in 
the file meta/recipes-kernel/linux-libc-headers/linux-libc-headers.inc 
makes me think another round. It states:

"
# You're probably looking here thinking you need to create some new copy
# of linux-libc-headers since you have your own custom kernel. To put
# this simply, you DO NOT.
...
# There can also be a case where your kernel extremely old and you want
# an older libc ABI for that old kernel. The headers installed by this
# recipe should still be a standard mainline kernel, not your own custom
# one.
"

The first part states that I should not change linux-libc-headers. But 
when I read the last part I'm not sure about the interpretation and it 
could be for my case. Just a matter of definition if v4.1 is extremely 
old compared to v4.18.

Then another thing comes in to the equation; the LIBC ABI. When I look 
into the configuration of the glibc package it uses the configure switch 
"--enable-kernel=3.2" which means it shall be compatible with all kernel 
newer than v3.2. Then probably glibc is fine if it is compiled with 
v4.18 and run on v4.1?

If building all applications against v4.18 headers but run on v4.1 
kernel. I have a feeling that there potentially can be problems here.

Please help me with some information about this and share your opinions? 
Are there any risks at all to use v4.1 as linux-libc-headers in my Yocto 
build? The only drawback I see is that it will be a new configuration 
not well tested by the community. Are there other risks or drawbacks 
using your own version of linux-libc-headers?

Best regards,
/Peter
