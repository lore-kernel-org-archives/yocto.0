Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8CABE0087C; Sat, 21 Feb 2015 01:23:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C0F3E0078E
	for <yocto@yoctoproject.org>; Sat, 21 Feb 2015 01:22:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1L9KI1j024547; Sat, 21 Feb 2015 09:22:45 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jXFV5HVMY4fT; Sat, 21 Feb 2015 09:22:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1L9MULw024580
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 21 Feb 2015 09:22:41 GMT
Message-ID: <1424510550.11836.66.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Sat, 21 Feb 2015 09:22:30 +0000
In-Reply-To: <1424455387.11836.57.camel@linuxfoundation.org>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<1424455387.11836.57.camel@linuxfoundation.org>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Sat, 21 Feb 2015 09:23:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2015-02-20 at 18:03 +0000, Richard Purdie wrote:
> On Mon, 2015-02-02 at 02:02 -0800, Khem Raj wrote:
> > I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
> > upcoming ) on  a contrib branch ( top 2 patches) its has not got much
> > testing besides x86 qemu thus far.
> > 
> > http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-glibc-upgrade
> > 
> > I would like to request some help in testing these out in your
> > respective environments and please report any issues you see so we can
> > start sorting them out at earlier and making its way into OE-Core.
> > 
> > Thanks for your help
> 
> For info, I've now merged the glibc part of this change now too.
> 
> Khem: Thanks for the work on this!

New issue that caught my eye:

https://autobuilder.yoctoproject.org/main/builders/nightly-qa-logrotate/builds/204/steps/Running%20Sanity%20Tests/logs/stdio

segfault in init within libc :/.

Cheers,

Richard


