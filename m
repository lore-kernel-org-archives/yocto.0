Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 311204C80BEE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:46:58 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 13 Jul 2011 10:46:48 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 13 Jul 2011
	10:46:48 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 13 Jul 2011 10:50:13 +0800
In-Reply-To: <1310524300.2162.28.camel@scimitar>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
	<1310523594.2527.35.camel@localhost.localdomain>
	<1310524300.2162.28.camel@scimitar>
X-Mailer: Evolution 3.0.2 
Message-ID: <1310525413.2527.38.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 02:46:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

OK, I will do it.:)

On Wed, 2011-07-13 at 10:31 +0800, Joshua Lock wrote:
> On Wed, 2011-07-13 at 10:19 +0800, NiQingliang wrote:
> > /usr/bin/env python2
> > /usr/bin/env python2.7
> 
> These are both valid on Fedora 15, iirc before distributions started
> shipping Python 3 they were less common though...
> 
> > both of them are ok for archlinux, but I don't know which is ok for
> > other distributions, maybe both are not.
> >
> > maybe we can make a shell script to detect the python version, and make
> > a symbollink to the right one in some directory, and add the directory
> > into env var "PATH".
> 
> Patches welcome :-)
> 
> I looked at it briefly and the work would require more time than I have
> spare right now just to ensure it worked on all required distributions.
> 
> If you'd like to work on a patch I'd be happy to help test and review.
> 
> Cheers,
> Joshua
> --
> Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre
> 

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



