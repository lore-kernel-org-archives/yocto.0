Return-Path: <denis@denix.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD9E1C433FE
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 20:06:56 +0000 (UTC)
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.3191.1643314015447886113
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 12:06:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64,
 mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 5175F40B13;
	Thu, 27 Jan 2022 20:06:54 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1HmdcC90ReR; Thu, 27 Jan 2022 20:06:54 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net
 [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 241F240429;
	Thu, 27 Jan 2022 20:06:51 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 5E149174728; Thu, 27 Jan 2022 15:06:50 -0500 (EST)
Date: Thu, 27 Jan 2022 15:06:50 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial
 commit: add license, readme and layer config.
Message-ID: <20220127200650.GX26229@denix.org>
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 20:06:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56003

On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
> A question specifically to Denys, how can I actually get this into the
> mixin repo, and have commit rights to the branch? We've tested this quite
> well in private, and there are further enhancements coming up.

Michael,

Would it be possible to create 2 additional branches in the meta-lts-mixins 
repository at https://git.yoctoproject.org/meta-lts-mixins/ called 
"dunfell/go" and also "dunfell/docker" and give Alex push rights to them?

Please let us know, thanks a lot!

-- 
Denys


> On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via lists.yoctoproject.org
> <alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:
> 
> > Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
> > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > ---
> >  COPYING.MIT     | 17 +++++++++++++++++
> >  README          | 23 +++++++++++++++++++++++
> >  conf/layer.conf | 19 +++++++++++++++++++
> >  3 files changed, 59 insertions(+)
> >  create mode 100644 COPYING.MIT
> >  create mode 100644 README
> >  create mode 100644 conf/layer.conf
> >
> > diff --git a/COPYING.MIT b/COPYING.MIT
> > new file mode 100644
> > index 0000000..fb950dc
> > --- /dev/null
> > +++ b/COPYING.MIT
> > @@ -0,0 +1,17 @@
> > +Permission is hereby granted, free of charge, to any person obtaining a
> > copy
> > +of this software and associated documentation files (the "Software"), to
> > deal
> > +in the Software without restriction, including without limitation the
> > rights
> > +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> > +copies of the Software, and to permit persons to whom the Software is
> > +furnished to do so, subject to the following conditions:
> > +
> > +The above copyright notice and this permission notice shall be included
> > in
> > +all copies or substantial portions of the Software.
> > +
> > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
> > OR
> > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
> > THE
> > +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> > FROM,
> > +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> > +THE SOFTWARE.
> > diff --git a/README b/README
> > new file mode 100644
> > index 0000000..5b22b72
> > --- /dev/null
> > +++ b/README
> > @@ -0,0 +1,23 @@
> > +"Mixin" layer for adding latest Go toolchain versions into the Yocto
> > Project LTS.
> > +
> > +At the time Dunfell was released in April 2020, Go 1.14 was the latest
> > version
> > +and officially Dunfell supports only that. This thin special-purpose mixin
> > +layer is meant to address this issue by backporting Go recipes from the
> > master
> > +branch of openembedded-core.
> > +
> > +You can see what Go versions are provided by listing recipes-devtools/
> > content.
> > +
> > +Including the layer automatically picks up the latest Go version;
> > different versions
> > +need to be set explicitly by adding the following line to your distro
> > config
> > +or local.conf:
> > +
> > +GOVERSION = "1.16%"
> > +
> > +Please note: enabling these newer Go versions makes docker from dunfell
> > branch
> > +of meta-virtualization unbuildable as it is too old. If you need a
> > working docker
> > +recipe, you can use the supplementary 'dunfell/docker' layer from this
> > meta-lts-mixin
> > +repository.
> > +
> > +
> > +Maintainers:
> > +Alexander Kanavin <alex@linutronix.de>
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > new file mode 100644
> > index 0000000..5f74224
> > --- /dev/null
> > +++ b/conf/layer.conf
> > @@ -0,0 +1,19 @@
> > +# We have a conf and classes directory, append to BBPATH
> > +BBPATH .= ":${LAYERDIR}"
> > +
> > +# We have a recipes directory, add to BBFILES
> > +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
> > +
> > +BBFILE_COLLECTIONS += "lts-go-mixin"
> > +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
> > +BBFILE_PRIORITY_lts-go-mixin = "6"
> > +
> > +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
> > +
> > +LAYERDEPENDS_lts-go-mixin = " \
> > +    core \
> > +"
> > +
> > +GOVERSION ?= "1.17%"
> > +PREFERRED_PROVIDER_go-native = "go-binary-native"
> > +
> > --
> > 2.20.1

