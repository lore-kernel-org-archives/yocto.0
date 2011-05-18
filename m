Return-Path: <wangyang01@cn.panasonic.com>
Received: from smtp.mei.co.jp (smtp.mei.co.jp [133.183.100.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6174E4C80FCF
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 19:53:10 -0500 (CDT)
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
	by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
	p4I0qvJV014254; Wed, 18 May 2011 09:52:57 +0900 (JST)
Received: from bjsm01.cn.panasonic.com ([10.192.224.17])
	by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id
	p4I0qvV32766; Wed, 18 May 2011 09:52:57 +0900
Received: from bjma01.cn.panasonic.com ([10.192.224.16])
	by bjsm01.cn.panasonic.com (Lotus Domino Release 6.5.6FP3)
	with ESMTP id 2011051808530082-101614 ;
	Wed, 18 May 2011 08:53:00 +0800 
Received: from sc1wangyang01 ([10.194.147.111])
	by bjma01.cn.panasonic.com (Lotus Domino Release 6.5.6FP3HF321)
	with ESMTP id 2011051808524892-43910 ;
	Wed, 18 May 2011 08:52:48 +0800 
From: "wangyang" <wangyang01@cn.panasonic.com>
To: "'Gary Thomas'" <gary@mlbassoc.com>
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
	<4DD0CDCE.4000108@intel.com> <4DD1084E.30509@mlbassoc.com>
	<000401cc1430$9cd014d0$6f93c20a@psdcd.local>
	<4DD257D8.6070207@mlbassoc.com>
Date: Wed, 18 May 2011 08:52:48 +0800
Message-ID: <000001cc14f5$e8b4fc60$6f93c20a@psdcd.local>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
In-Reply-To: <4DD257D8.6070207@mlbassoc.com>
Thread-Index: AcwUgzUJ5myGOhZaR427VpW0annQAAAcpAAg
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3664
X-MIMETrack: Itemize by SMTP Server on BJMA01/SERVER/CMM(Release 6.5.6FP3HF321
	| April 27, 2010) at 2011-05-18 08:52:49,
	Serialize by Router on BJMA01/SERVER/CMM(Release 6.5.6FP3HF321 | April
	27, 2010) at 2011-05-18 08:52:53,
	Serialize complete at 2011-05-18 08:52:53,
	Itemize by SMTP Server on BJSM01/SERVER/CMM(Release 6.5.6FP3|March 27,
	2008) at 2011-05-18 08:53:00,
	Serialize by Router on BJSM01/SERVER/CMM(Release 6.5.6FP3|March 27,
	2008) at 2011-05-18 08:53:04,
	Serialize complete at 2011-05-18 08:53:04
Cc: yocto@yoctoproject.org
Subject: Re: about how to port YOCTO
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
X-List-Received-Date: Wed, 18 May 2011 00:53:11 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset="us-ascii"

Mr Gary:
Thank you for your answer.

> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: Tuesday, May 17, 2011 7:11 PM
> To: wangyang
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] about how to port YOCTO
> 
> On 05/16/2011 07:20 PM, wangyang wrote:
> >> Remember that Yocto is
> >> just packaging for a Linux kernel and the user tools that surround
> >> it.
> >
> > In other words, if I want to use Yocto to package Linux kernel and the user
> > tools for new MCU,I must port Linux kernel and toolchain and GLIBC, etc. It
is
> > right?
> >
> > What Yocto do is just packaging mainstream Linux kernel(from
> > http://www.kernel.org/) and something with it for different needs, it is
right?
> 
> Correct.  Yocto isn't really for porting the tools to a platform,
> but rather something to help you build [embedded] systems to run
> on the platform.
> 
> n.b. it's polite to keep such discussions on the mailing list so that
> everyone benefits.
> 
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------


