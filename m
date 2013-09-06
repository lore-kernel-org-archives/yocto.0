Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0AECE013AD
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 01:26:09 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r868dHIq010058; Fri, 6 Sep 2013 09:39:17 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lNWmhI3JoQxj; Fri,  6 Sep 2013 09:39:17 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r868dCwa010050
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 6 Sep 2013 09:39:14 +0100
Message-ID: <1378455954.32427.92.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Fri, 06 Sep 2013 09:25:54 +0100
In-Reply-To: <CAFyqS9rJG0T1EAVZ=eTBpoOhO-FVjs28S8eWRtohF3hLzZg1+A@mail.gmail.com>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
	<CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
	<CAFyqS9rQ8vNtCtQO-MYQ2Jbr8xHmH-k1JjS6D__ic6PrOfN5Dg@mail.gmail.com>
	<CAFyqS9o+HWcMBBD_=E4Bm-XSO5U0yKmJRtE4RbotiKCdABWO2Q@mail.gmail.com>
	<CAFyqS9rvkdVYnAb2tJdaNaoxav5_5QcPNG0-mxrWN1-qamHcKw@mail.gmail.com>
	<CAFyqS9rJG0T1EAVZ=eTBpoOhO-FVjs28S8eWRtohF3hLzZg1+A@mail.gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Fri, 06 Sep 2013 08:26:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2013-09-05 at 17:44 +0200, Hans Beckérus wrote:
> I have now prepared a patch that will fix this problem i Yocto. Since
> no one (so far) commented on this issue I interpreted the silence as
> that nothing has been done about this bug. 

I think that coming up to release, we've all be focusing on that. Once
you'd identified a specific issue like this, filing a bug report in the
bugzilla can be a good way of getting people's attention, particularly
when you have a patch.

The key question is the help message:

 --with-libtool-sysroot=DIR Search for dependent libraries within DIR
                       (or the compiler's sysroot if not specified).

so yes, this sounds like a genuine bug in libtool. Would you like to
send a patch to the OE-Core mailing list which adds your patch, along
with a description of the problem in the commit messages, a proper patch
header (description and Upstream-Status:) and signed-off-by line?

If you do, I think we'll likely include it. If not, it will need to wait
for someone to turn this into a full commit which might take a little
longer but it does look like a good change.

Cheers,

Richard



> But I am very surprised, to
> say the least, that this problem has passed unnoticed!
> The patch goes into meta/recipes-development/libtool/libtool. This
> patch *must* be applied after Khems patch that renames --with-sysroot
> to --with-libtool-sysroot (rename-with-sysroot.patch).
> After applying the patch (and added it to libtool-2.4.2.inc) the
> populated SDK toolchain works as expected also when
> --with-libtool-sysroot is not provided, instead it is picked up from
> $CC --print-sysroot. I have filed a bug report to bug-libtool since
> the real problem is in libtool itself, not Yocto.




