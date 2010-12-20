Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id D39344C80B70
	for <yocto@yoctoproject.org>; Mon, 20 Dec 2010 05:00:10 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 69FDC12EC331
	for <yocto@yoctoproject.org>; Mon, 20 Dec 2010 05:38:57 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: yocto@yoctoproject.org
In-Reply-To: <AANLkTi=YJR+3a=9MGpAq-+6DUmG3j+am-+otcSYwQSgp@mail.gmail.com>
References: <4D0A8CEC.5030709@linux.intel.com>
	<AANLkTi=YJR+3a=9MGpAq-+6DUmG3j+am-+otcSYwQSgp@mail.gmail.com>
Date: Mon, 20 Dec 2010 10:59:58 +0000
Message-ID: <1292842798.2466.4.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
X-Mailman-Approved-At: Mon, 20 Dec 2010 08:17:30 -0600
Subject: Re: Announcing poky-extras repository available
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
X-List-Received-Date: Mon, 20 Dec 2010 11:00:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2010-12-18 at 12:29 +0100, Frans Meulenbroeks wrote:
> 2010/12/16 Saul Wold <sgw@linux.intel.com>:
> >
> > Hello All,
> >
> > Recently Richard sent around an email proposing that a new repository be
> > created for hosting layers that are not part of the core Yocto Metadata.
> >
> > This new repository "poky-extras" can host different contributed layers and
> > will be open to any one.
> >
> > From Richard's proposed ground rules:
> >
> >> * it has the OE style open contributions model
> >> * consists of a set of layers, each clearly identified at the top level
> >> * each layer has a clearly named maintainer or maintainers
> >> * people respect the layer maintainers
> >> * layers are split into logical "topics" where at all possible
> >
> > The first layer contained in this new repository is the meta-linaro layer,
> > the top level repository will be removed short since it will now be
> > maintained in poky-extras.
> >
> > If you require write access to this repository, please send your request to
> > git-requests@yoctoproject.org
> 
> 
> Saul, all,
> 
> I've peeked at poky-extras. The meta-linaor layer does not have an
> identifiable maintainer (grep -ir maint . in that dir did not result
> in any hits).
> Do we have a policy on when/how to create a layer.
> My intention is to bring over some of my OE recipes (as I would love
> to be able to build my james image under poky too).

I'd suggest you forge ahead with creating a layer, it may be that some
of the recipes get moved into the core layer at some stage but I think
that the best approach is to create a layer which you control so that
you can use Yocto to achieve your goals. :-)

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


