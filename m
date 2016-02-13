Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05CB3E00CF8; Sat, 13 Feb 2016 09:28:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3059BE00CF2
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 09:28:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1DHSOJD019670; Sat, 13 Feb 2016 17:28:24 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TanTbs7npXkD; Sat, 13 Feb 2016 17:28:24 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1DHSLH2019667
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 13 Feb 2016 17:28:22 GMT
Message-ID: <1455384501.16142.372.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jens Rehsack <rehsack@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 13 Feb 2016 17:28:21 +0000
In-Reply-To: <2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
	<2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Sat, 13 Feb 2016 17:28:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2016-02-13 at 15:30 +0100, Jens Rehsack wrote:
> > Am 11.02.2016 um 15:32 schrieb Burton, Ross <ross.burton@intel.com>
> > :
> > 
> > 
> > On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org>
> > wrote:
> > Possibly a little early - Debian 7 will be going onto LTS security
> > support for
> > two years, starting some time this month.  Quoting from
> > https://wiki.debian.org/LTS
> > 
> > Ah yes, I'd forgotten about the LTS project and was looking at the
> > security team.
> > 
> > This does make it less clear, but it's still an old release and we
> > can't support/test on everything.
> 
> Sure, but are there some serious/expensive maintaining efforts
> continuing support Debian 7?
> Or is it an approach to kick Debian from list of supported
> distributions for (above?) reasons?
> 
> Since I run some build instances on a Debian 7 machine which is not
> going to be upgraded that
> soon (don't want Debian 8, but don't want to reinstall from scratch
> and migrate my Xen VM's ...),
> dropping support for "it's just time to move on" is more a Desktop
> philosophy, not for embedded/datacenter
> approaches ...

For example, we'd like to use the sparse option when building rootfs:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=9099

This support isn't available in the version of dd in debian 7. Our
options are:

* Build a dd -native
* Check the version of dd and error if too old
* Don't bother with sparse support

We're seeing a few issues like this with debian 7 and the general
feeling is we're better off concentrating on newer distros. We simply
don't have the time/resources to fix/support things like "dd-native" or
more paths through the sanity code.

This doesn't mean you won't be able to make debian 7 work with
something like the buildtools tarball or through other means, it does
mean we're not going to make sure it works out the box though.

So no, its not just "its time to move on".

Cheers,

Richard

