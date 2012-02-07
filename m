Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3ECAE011D1
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 21:14:46 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Tue, 7 Feb 2012 13:14:41 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Tue, 7 Feb 2012
	13:14:37 +0800
Message-ID: <1328591569.1065.24.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Feb 2012 13:12:49 +0800
In-Reply-To: <20120207044211.GA7746@sakrah.homelinux.org>
References: <1328589016.1065.18.camel@localhost.localdomain>
	<20120207044211.GA7746@sakrah.homelinux.org>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: does udev must depends glib-2.0?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Feb 2012 05:14:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

does the dependency you said can be found in the bb file?
I only found glib-2.0 in the udev's dependency in udev.inc.

and in hob, it said that: the glib-2.0 is brought in by udev-utils,
udev-acl, udev-cache, udev.

maybe the problem is how to caclulate the dependency (besides DEPENDS)?

On Tue, 2012-02-07 at 12:42 +0800, Khem Raj wrote:
> On (07/02/12 12:30), Ni Qingliang wrote:
> > hello, All:
> >
> > I'm trying to build my own image-lsb-core, and making LFS as reference.
> >
> > In LFS, there is not glib-2.0, in other words, udev can be used without
> > glib-2.0.
> >
> > What can I do if I want use udev without glib2?
> 
> its udev-acl and udev-consolekit which needs it. You can avoid that in your image
> dependencies

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


