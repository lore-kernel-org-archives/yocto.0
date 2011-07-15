Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2144F4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 21:53:39 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 15 Jul 2011 10:53:20 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 15 Jul 2011
	10:53:19 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Kumar Gala <galak@kernel.crashing.org>
Date: Fri, 15 Jul 2011 10:56:50 +0800
In-Reply-To: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
X-Mailer: Evolution 3.0.2 
Message-ID: <1310698610.17581.6.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 02:53:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

may be meta/conf/machine/include.

On Fri, 2011-07-15 at 10:36 +0800, Kumar Gala wrote:
> Where is the best place to ask questions and try and get support for adding some toolchain variations in?
> 
> I'm wanting to add support in for a few different flavors of PPC that are not currently supported:
> 
> * e500v2 (gcc needs --enable-e500_double, eglibc
> * e5500 (64-bit embedded ppc)
> * e5500 - multilib support for 32/64-bit
> 
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



