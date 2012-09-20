Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90D20E01304
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 15:30:46 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TEpGb-000ABV-Fj; Thu, 20 Sep 2012 22:30:41 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8KMUbvl030885
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Thu, 20 Sep 2012 17:30:38 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX19k7kDv6tV8MamvT3PHiW09HawhbsPxmkA=
Message-ID: <1348180233.4394.2.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: William Mills <wmills@ti.com>
Date: Thu, 20 Sep 2012 17:30:33 -0500
In-Reply-To: <505B7D59.3020306@ti.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<505A5FB9.4010802@mlbassoc.com>
	<CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>
	<4100342.qsm4CZIotx@helios>
	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
	<CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
	<505B7D59.3020306@ti.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with	meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 22:30:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Simple: tags aren't guaranteed to not change what it references, the
hash is guaranteed to always point to the same thing.  Thus, git is
double checking that the meaning of the tag hasn't changed.


On Thu, 2012-09-20 at 16:32 -0400, William Mills wrote:
> On 09/20/2012 04:08 PM, Evade Flow wrote:
> > To bring this full circle... if you want to build behind a restrictive
> > firewall using pre-mirrored sources and BB_NO_NETWORK, be aware that
> > recipes which:
> >
> >    1. Specify a git repo as the source, and,
> >
> >    2. Specify the revision to be built using a tag name
> >
> >
> > will cause your build to abort when bitbake tries to run 'git ls-remote'
> > to resolve the tag name.  So don't specify SRC_URI like this:
> >
> >
> >    SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v${PV}"
> >
> > Instead, use:
> >
> >    SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=8885ced062131214448fae056ef453f094303805;branch=master"
> >
> >
> > I added a note about this to the Wiki:
> >
> >    - http://wiki.yoctoproject.org/wiki/How_do_I#Non-networked_Builds_and_Cached_Git_Respositories
> >
> > I'm still new to Yocto, so someone please chime in if any of this
> > information is incorrect...
> >
> 
> If true, this seems very unfortunate.  This seems to push people in the 
> wrong direction.  Is there a reason the fetchers don't pull down the 
> tags when they mirror in the first place?
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



