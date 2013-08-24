Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ECC1E003D2
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 01:48:34 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7O90V45013809; Sat, 24 Aug 2013 10:00:31 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id PS2VYjp3YdCB; Sat, 24 Aug 2013 10:00:31 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7O90R1M013805
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Sat, 24 Aug 2013 10:00:29 +0100
Message-ID: <1377334097.6762.164.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
Date: Sat, 24 Aug 2013 09:48:17 +0100
In-Reply-To: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio.salvador@gmail.com>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Sat, 24 Aug 2013 08:48:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-08-23 at 21:36 -0400, Trevor Woerner wrote:
> When I try to include "qtwebkit" in my image from the "dylan" branch I end up
> with the following QA do_package_qa error [note that this does not happen
> with "master"]:
> 
> ERROR: QA Issue: package qtwebkit contains bad RPATH /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib in file /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
> 
> 
> And the QA test is correct. When I "objdump -x" this binary I get:
> 
> Dynamic Section:
>   NEEDED               libQt5WebKitWidgets.so.5
>   NEEDED               libQt5WebKit.so.5
>   NEEDED               libQt5Widgets.so.5
>   NEEDED               libQt5Core.so.5
>   NEEDED               libstdc++.so.6
>   NEEDED               libc.so.6
>   RPATH                /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
> 
> 
> Can anyone suggest any fixes or patches? Note I'm using 5.0.2.

Check the compile logs. Somewhere, something is passing a -rpath value
to the linker which results in this. You'll have to find out where it
gets passed in, then trace it back to the source of the problem.
Sometimes this can get added by libtool but there will still be
something on the commandline which triggers libtool to do that.

Cheers,

Richard





