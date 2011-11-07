Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 831B3E012F3
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 02:22:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA7AMWaD017594;
	Mon, 7 Nov 2011 10:22:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16639-06; Mon,  7 Nov 2011 10:22:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA7AMOtW017588
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 Nov 2011 10:22:24 GMT
Message-ID: <1320661346.23708.9.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 07 Nov 2011 10:22:26 +0000
In-Reply-To: <20111104160759.GX9949@jama.jama.net>
References: <alpine.DEB.2.02.1111041153170.6678@localhost6.localdomain6>
	<20111104160759.GX9949@jama.jama.net>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why do numerous .bb files set "PARALLEL_MAKE"?
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
X-List-Received-Date: Mon, 07 Nov 2011 10:22:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-11-04 at 17:07 +0100, Martin Jansa wrote:
> On Fri, Nov 04, 2011 at 11:57:46AM -0400, Robert P. J. Day wrote:
> > 
> >   stumbled over this so i did a more thorough search:
> > 
> > $ grep -w PARALLEL_MAKE $(find . -name *.bb)
> > ./meta/recipes-qt/qt-apps/qmmp_0.5.1.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/eggdbus/eggdbus_0.6.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/gettext/gettext_0.16.1.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-core/gettext/gettext_0.18.1.1.bb:#PARALLEL_MAKE = ""
> > ./meta/recipes-bsp/pciutils/pciutils_3.1.7.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/sat-solver/sat-solver_git.bb:PARALLEL_MAKE=""
> > ./meta/recipes-extended/bash/bash_3.2.48.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb:PARALLEL_MAKE = ""
> > ./meta/recipes-extended/groff/groff_1.20.1.bb:PARALLEL_MAKE = ""
> > ... more snipped ...
> > 
> >   why are individual recipes setting PARALLEL_MAKE to the empty
> > string?  it's a *build* option, why would it have any relevance to
> > individual .bb files?
> 
> because some projects fail to build in parallel and we don't have
> manpower to fix them all?

Just for reference we have actually fixed a lot of these in other
places, particularly where they're on the critical path. The situation
is a lot better than it ever used to be although obviously still room
for improvement!

Cheers,

Richard


