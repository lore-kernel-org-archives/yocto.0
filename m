Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12ECE4C810E3
	for <yocto@yoctoproject.org>; Tue, 25 Jan 2011 16:15:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMH2rR005321; Tue, 25 Jan 2011 22:17:02 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id V0VKvjXPAkwg; Tue, 25 Jan 2011 22:17:02 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMGvWV005308
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 22:16:59 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D3F24FF.8050400@windriver.com>
References: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
	<4D3F24FF.8050400@windriver.com>
Date: Tue, 25 Jan 2011 22:14:40 +0000
Message-ID: <1295993680.27814.154.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Lorenzati,
	Marcelo" <marcelo.lorenzati@intel.com>
Subject: Re: ulibc instead of glibc
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
X-List-Received-Date: Tue, 25 Jan 2011 22:15:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2011-01-25 at 13:31 -0600, Mark Hatle wrote:
> On 1/25/11 12:36 PM, Lorenzati, Marcelo wrote:
> > Hi all,
> > 
> >                 I wanted to know if it’s feasible to build Yocto with ulibc
> > instead of glibc and if someone have tried.
> > 
> > In a really constrained system could be the difference between selecting RT
> > Linux or another real time OS.
> > 
> 
> So far uclibc has not been a goal of the Yocto project.  With the minimum size
> of flash parts these days, the configurability of eglibc and the mklibs library
> optimizer... the use-case for uclibc is quickly going away.
> 
> (eglibc configuration is not yet implemented in Yocto.  Mklibs is currently
> being implemented.)
> 
> We have built (at Wind River) eglibc filesystems, single application systems, in
> foot prints of less then 2 MB of disk space required.  As far as I know,
> currently the smallest flash parts you can get for new designs are in the 4 MB
> range, and quickly those are being replaced by 16 MB (and larger) parts...
> 
> eglibc also has the advantage (over uclibc) of better support for a wide range
> of existing Open Source projects.
> 
> With that all said, yes it should be feasible to add uclibc to Yocto... but it's
> not already there as far as I know.

Right, we do have old uclibc recipes in Poky still I believe although
they would need updating after the recent toolchain bootstrap changes. I
do know people using uclibc actively in OE and this may be something
people want to add to oe-core so it might end up happening but its not
currently on the officially supported by Yocto list. 

Cheers,

Richard



