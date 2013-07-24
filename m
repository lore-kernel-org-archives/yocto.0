Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2BBE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 06:56:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E5400F811F5; Wed, 24 Jul 2013 07:56:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4ADB7F811F4;
	Wed, 24 Jul 2013 07:56:24 -0600 (MDT)
Message-ID: <51EFDD09.3030909@mlbassoc.com>
Date: Wed, 24 Jul 2013 07:56:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Packaging questions
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
X-List-Received-Date: Wed, 24 Jul 2013 13:56:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm [still] trying to set up a package for Amanda.  I'd like
the end result to match how it's done on other systems, e.g.
my desktop Fedora box.  However, this layout is causing some
QA errors which I don't know how to fix, e.g.

ERROR: QA Issue: non debug package contains .debug directory: amanda path 
/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/perl/5.14.2/auto/Amanda/MainLoop/.debug/libMainLoop.so
ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so: amanda path 
'/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'

I understand the first one but don't know the workaround.  How
do I tell bitbake that the directory /usr/lib/perl/5.14.2/auto/Amanda/MainLoop
contains executable code (and that's OK)?

The second issue I think is one of philosophy.  The symbolic link
is important to the package - how can I set this up to be OK?

Thanks for any pointers

Note: of course there are many of each of these classes of errors,
this is just a representative example.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

