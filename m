Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 294B24C800A9
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:16:39 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 13 Jul 2011 10:16:30 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 13 Jul 2011
	10:16:28 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 13 Jul 2011 10:19:53 +0800
In-Reply-To: <1310522900.2162.26.camel@scimitar>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
X-Mailer: Evolution 3.0.2 
Message-ID: <1310523594.2527.35.camel@localhost.localdomain>
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
X-List-Received-Date: Wed, 13 Jul 2011 02:16:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

/usr/bin/env python2 
/usr/bin/env python2.7
both of them are ok for archlinux, but I don't know which is ok for
other distributions, maybe both are not.

maybe we can make a shell script to detect the python version, and make
a symbollink to the right one in some directory, and add the directory
into env var "PATH".


On Wed, 2011-07-13 at 10:08 +0800, Joshua Lock wrote:
> On Wed, 2011-07-13 at 09:15 +0800, NiQingliang wrote:
> > I think Archlinux is the preferred choice.-_-
> > Just joke.
> >
> > I doubt why the bitbake need python2.x but just use /bin/env python. I
> > think If it need a specific version python, it should write it in the
> > shebang. e.g. /bin/env python2.6
> 
> I looked at this but not enough of the distributions we care to support
> have a python2.6 binary:
> 
> joshual@scimitar:~
> $ /usr/bin/env python2
> Python 2.7.1 (r271:86832, Apr 12 2011, 16:16:18)
> [GCC 4.6.0 20110331 (Red Hat 4.6.0-2)] on linux2
> Type "help", "copyright", "credits" or "license" for more information.
> >>>
> joshual@scimitar:~
> $ /usr/bin/env python2.6
> /usr/bin/env: python2.6: No such file or directory
> 
> I'd love to support Arch more thoroughly but they aren't making it easy
> for us ;-)
> 
> Cheers,
> Joshua
> --
> Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



