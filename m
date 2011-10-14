Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A22A9E013B2
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2011 02:02:56 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 14 Oct 2011 17:02:35 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 14 Oct 2011
	17:02:33 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Fri, 14 Oct 2011 17:02:08 +0800
In-Reply-To: <4E970517.9080207@windriver.com>
References: <1318498649.1352.11.camel@localhost.localdomain>
	<4E970517.9080207@windriver.com>
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1318582928.1352.25.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about symbol link of library
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
X-List-Received-Date: Fri, 14 Oct 2011 09:02:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

thanks! It looks like OK now.

the libx package contain symlink libx.so now.

On Thu, 2011-10-13 at 23:34 +0800, Mark Hatle wrote:
> On 10/13/11 4:37 AM, Ni Qingliang wrote:
> > hello all.
> >
> > I have added 2 packages, one is lib, and the other is bin.
> >
> > the lib will generate 2 files:
> >       libx.so.1.0.1
> >       libx.so -> libx.so.1.0.1
> > the latter linked to the other one.
> >
> > the bin package will link to the libx.so.
> >
> > compile/install are all OK, but when populate rootfs, I got error:
> > error: Failed dependencies:
> > |     libx.so is needed by bin......
> 
> I suspect your libx.so.1.0.1 is missing an SONAME.  One should be added to it
> that matches the filename of the "real" library.  (It's possible that it has an
> soname already, it just doesn't match the filename.)
> 
> Once that is done, then the dynamic linker should be able to find it w/o the
> libx.so link.
> 
> (The links should only ever be used for development.  This is a somewhat common
> bug, and a good way to find these problems.)
> 
> I'd also suggest we add a sanity check for this condition, so it will be easier
> for people to identify in the future.
> 
> --Mark
> 
> > after checked the rpm, the libx.so is located in libx-dev, but not in
> > libx.
> >
> > what is the right way to resolve this problem?
> >
> >
> >
> >
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



