Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E986DE00830; Thu, 30 Oct 2014 06:52:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28293E0079E
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 06:51:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9UDpEMP013479; Thu, 30 Oct 2014 13:51:14 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xS6WN7xtUXI3; Thu, 30 Oct 2014 13:51:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9UDp8sr013476
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 30 Oct 2014 13:51:09 GMT
Message-ID: <1414677103.7649.59.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Thu, 30 Oct 2014 13:51:43 +0000
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD87F98A8@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87F98A8@MSXBEBVT12.planar.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Help me understand Openembedded variable expansion
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
X-List-Received-Date: Thu, 30 Oct 2014 13:52:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-10-28 at 10:11 -0700, Matt Schuckmann wrote:
> So there is something I just don't get about how variables get
> created, expanded, interpreted, etc in Bitbake
> 
> For example I'm trying to copy some of the techniques in the Poky Tiny
> distribution to reduce my image size and build time. 
> One of the fragments is this one. 
> 
> # The mtrace script included by eglibc is a perl script. This means
> the system
> # will build perl in case this package is installed. Since we don't
> care about
> # this script, remove the dependency from here.
> RDEPENDS_${PN}-mtrace_pn-eglibc = ""
> 
> I put this in my distribution .conf file and I doesn't seem to do
> anything perl is still getting built. 
> Of course it doesn't help that I don't understand what does,
> especially in the context of the distribution .conf file. 
> 
> I also see hints in the code in debug output that the machine, image,
> or distribution names can automatically get appended to paths, or
> variables but I don't really understand how that works. 
> 
> I'm not even sure how to phrase a question around this, immediately
> I'd like to figure out why Perl is still getting built but ultimately
> I'd like to understand the variable rules better so I that I can
> better take advantage of this power tool. 

Perhaps have a look at "overrides" in the bitbake manual.

You can split RDEPENDS_${PN}-mtrace_pn-eglibc into components. Starting
on the RHS, "_pn-eglibc" is an override that applies to recipes where PN
= "eglibc". In those recipes, the variable becomes:

RDEPENDS_${PN}-mtrace = ""

and is basically overriding a dependency on perl that would other be
there, something like:

RDEPENDS_${PN}-mtrace = "perl".

Does that help?

Cheers,

Richard


