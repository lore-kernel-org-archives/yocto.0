Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10C67E006C7; Tue, 26 Jul 2016 04:41:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5F8E0045D
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 04:41:39 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2D78868A01C; Tue, 26 Jul 2016 12:41:38 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C5ED568A019;
	Tue, 26 Jul 2016 12:41:37 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 81D6367400DE;
	Tue, 26 Jul 2016 13:41:37 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57974C71.5080402@mlbassoc.com>
Date: Tue, 26 Jul 2016 13:41:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: Lots of errors building SDK
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
X-List-Received-Date: Tue, 26 Jul 2016 11:41:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I had a working image which I have built & rebuilt over the
last few weeks.  I have no errors or warnings when building
my main image.

Today I wanted to build an SDK for my image, so I ran:
   % bitbake production-testing-image -c populate_sdk    (my own image)
This yielded tons of errors like:
   ERROR: nativesdk-glibc-initial-2.24-r0 do_patch: Taskhash mismatch 0a527f90fe824c09fd0af5628b09721f verses 
2df1210df0097c4f54716ba1a706679c for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-core/glibc/glibc-initial_2.24.bb.do_patch
   ERROR: Taskhash mismatch 0a527f90fe824c09fd0af5628b09721f verses 2df1210df0097c4f54716ba1a706679c for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-core/glibc/glibc-initial_2.24.bb.do_patch
   ERROR: nativesdk-glibc-2.24-r0 do_patch: Taskhash mismatch ba9c1a6d1fafff0e80adc20185f4d6ad verses 
84c5b9feffbf7a6b04e85d29b4a342a5 for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb.do_patch
   ERROR: Taskhash mismatch ba9c1a6d1fafff0e80adc20185f4d6ad verses 84c5b9feffbf7a6b04e85d29b4a342a5 for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-core/glibc/glibc_2.24.bb.do_patch
   ERROR: nativesdk-linux-libc-headers-4.4-r0 do_configure: Taskhash mismatch 93c93e75b86669d736b9ef9001170e31 verses 
2179a9d0b1b9a52427aacd26b7d9f128 for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.4.bb.do_configure
   ERROR: Taskhash mismatch 93c93e75b86669d736b9ef9001170e31 verses 2179a9d0b1b9a52427aacd26b7d9f128 for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.4.bb.do_configure
   ERROR: nativesdk-linux-libc-headers-4.4-r0 do_compile: Taskhash mismatch ad40492457ea4f72cf5d7d4dbed2fecf verses 
17eaa3e604299fcdee7786829e329d48 for 
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.4.bb.do_compile
   ...

The build proceeds, but the "ERROR" lines are bothersome.
What can I do to understand why this happened and should I
worry about the result if it succeeds?

n.b. I'm doing this to help mitigate issues with customers
that don't/can't have a native python3 > 3.4.+ on their
build hosts.  Maybe there is another solution?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

