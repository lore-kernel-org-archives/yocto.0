Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1398E0044D
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 09:42:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Mar 2012 09:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141979233"
Received: from unknown (HELO helios.localnet) ([10.252.123.195])
	by fmsmga002.fm.intel.com with ESMTP; 20 Mar 2012 09:42:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 20 Mar 2012 16:42:12 +0000
Message-ID: <1864039.T6V9d7o7RK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CA+Z6RkU9b9zAobZWXwMs6mRKMtcJEmq65eUxpZVWsABC9ywwQw@mail.gmail.com>
References: <CA+Z6RkU9b9zAobZWXwMs6mRKMtcJEmq65eUxpZVWsABC9ywwQw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Praveen Vk <Praveen.VK@lnties.com>
Subject: Re: Problem in Compiling Qt-4.6.3
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
X-List-Received-Date: Tue, 20 Mar 2012 16:42:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 20 March 2012 12:07:37 Navani Srivastava wrote:
> >> "db2.cpp:42:20: fatal error: sqlcli.h: No such file or directory"
> >> "oci.cpp:42:17: fatal error: oci.h: No such file or directory"

The above errors are just passed through from the configure tests and despite 
saying "fatal" they actually aren't.

The real problem appears to be this error:

> | sed: can't read
> 
> /home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/q
> t4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/translations/Make
> file: No such file or directory

> On removing
> "sed -e '/QMAKE_TARGET /d' -e '/TARGET /d' -i ${S}/translations/Makefile"
> from qt-4.6.3.inc and this error got resolved. But I don't think this is
> the correct way.

It's not obvious, but looking through Qt 4.6.3's configure script, it seems 
that if you specify a "-make xxx" option you won't get the default items 
("libs tools examples demos docs translations") unless you state them 
explicitly, although "-nomake xxx" will not trigger this. Thus by having "-
make libs" in your configure command line it has disabled all of the other 
defaults including translations.

So I think you have two options to fix this:

a) Remove the "-make libs" option and add "-nomake xxx" for anything you don't 
want in the default items listed above, or

b) Add "-make translations" and possibly "-make xxx" for anything other than 
libs from the above list that you do want.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

