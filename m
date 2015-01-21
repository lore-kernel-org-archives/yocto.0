Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B84F2E008A7; Wed, 21 Jan 2015 14:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	T_HDRS_LCASE,T_MANY_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.46.173.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3614 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Jan 2015 14:32:25 PST
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1286AE0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 14:32:25 -0800 (PST)
Received: from gandalf.denix.org ([108.18.33.160]) by vms173025.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul
	16 2014))
	with ESMTPSA id <0NIJ00AF2QH2IF80@vms173025.mailsrvcs.net> for
	yocto@yoctoproject.org; Wed, 21 Jan 2015 15:31:55 -0600 (CST)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=D9vw8UVm c=1 sm=1 tr=0	a=A8KAnipHuDHkz1LiHkTZyg==:117
	a=jLWw55sr_RoA:10 a=kj9zAlcOel0A:10	a=0gcC27t9AAAA:8 a=oR5dmqMzAAAA:8
	a=-9mUelKeXuEA:10 a=YNv0rlydsVwA:10	a=0cl-pfnI1xE8gxVN0I0A:9
	a=CjuIK1q_8ugA:10
Received: by gandalf.denix.org (Postfix, from userid 1000)	id BAE572018E; Wed,
	21 Jan 2015 16:31:50 -0500 (EST)
Date: Wed, 21 Jan 2015 16:31:50 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-id: <20150121213150.GN20639@denix.org>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
	<20150121192726.GJ20639@denix.org>
	<1421875415.19798.5.camel@linuxfoundation.org>
MIME-version: 1.0
In-reply-to: <1421875415.19798.5.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org,
	Otavio Salvador <otavio@ossystems.com.br>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Wed, 21 Jan 2015 22:32:30 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Wed, Jan 21, 2015 at 09:23:35PM +0000, Richard Purdie wrote:
> On Wed, 2015-01-21 at 14:27 -0500, Denys Dmytriyenko wrote:
> > On Wed, Jan 21, 2015 at 11:23:38AM -0200, Raphael Philipe wrote:
> > > I was explained about the difference in a different way.
> > > 
> > > cross generates binary for the host architecture. But the way this
> > > binary is generated depends of the target architecture. Native
> > > generated binaries that do not depend of the target architecture.
> > 
> > Pretty much.
> > 
> > But another big difference is that -native packages do not generate IPK, RPM 
> > or DEB, while -nativesdk, -cross, -crosssdk and -cross-canadian do.
> 
> -cross and -crosssdk do not generate packages.

Yeah, I thought so initially, but then I found depmodwrapper-cross and 
qemuwrapper-cross packages in my deploy/ipk, which got me confused... They 
seem to be special cases and only have scripts and not binaries. I wonder if 
the name is misleading...


> Another way to think of this is:
> 
> "native" build once
> 
> "cross" build once per target, run on native, output code for target
> 
> "crosssdk" build once per sdk, run on native, output code for sdk
> 
> "cross-canadian" build once per sdk, run on sdk, output code for target
> 
> Whilst native.bbclass and nativesdk.bbclass are useful generally,
> cross.bbclass is only useful for GNU tool projects like
> binutils/gcc/gdb.
> 
> Cheers,
> 
> Richard
> 

