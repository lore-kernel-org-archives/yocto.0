Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46610E00BC2; Sun, 31 Jan 2016 11:18:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	T_HDRS_LCASE,T_MANY_HDRS_LCASE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [206.46.173.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
	* 0.0 T_MANY_HDRS_LCASE Odd capitalization of multiple message headers
X-Greylist: delayed 3609 seconds by postgrey-1.32 at yocto-www;
	Sun, 31 Jan 2016 11:18:33 PST
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C56E00B68
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 11:18:33 -0800 (PST)
Received: from gandalf.denix.org ([100.15.86.14]) by vms173023.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul 16
	2014)) with ESMTPSA id <0O1T00A80XIN7MF0@vms173023.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 31 Jan 2016 12:18:23 -0600 (CST)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=WcjxEBVX c=1 sm=1 tr=0	a=xDJgBcBrK5EN9DJ6g74wNQ==:117
	a=kj9zAlcOel0A:10 a=7aQ_Q-yQQ-AA:10	a=CCpqsmhAAAAA:8
	a=uSALV2TtMtaISeJ-p08A:9
	a=CjuIK1q_8ugA:10	a=Mn8Mk4gtqVEA:10 a=66zSKFQpzMcA:10
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 14610161E4D; Sun,
	31 Jan 2016 13:18:23 -0500 (EST)
Date: Sun, 31 Jan 2016 13:18:23 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Khem Raj <raj.khem@gmail.com>
Message-id: <20160131181823.GI1652@denix.org>
References: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Glibc 2.24 _might_ require minimum kernel version 3.2
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
X-List-Received-Date: Sun, 31 Jan 2016 19:18:39 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Jan 31, 2016 at 09:41:17AM -0800, Khem Raj wrote:
> Hi
> 
> This is FYI, as I have sent a RFT for glibc 2.24, there might be another change
> coming which is under discussion on glibc mailing lists which is on
> supported minimum
> kernel version bump to 3.2 since 2.6.32 will be EOLed this summer [1]
> 
> If anyone is planning on using upcoming yocto/OE release and sticking
> to kernels older than  3.2 then please plan for upgrading your kernel.
> 
> Thanks
> -Khem
> 
> [1] - https://sourceware.org/ml/libc-alpha/2016-01/msg00885.html

What about our timeline - is glibc 2.24 planned for the next 2.1 release?

-- 
Denys

