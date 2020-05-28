Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web10.3075.1590626460364800670
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 17:41:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id A8E1540C14;
	Thu, 28 May 2020 00:40:59 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kY83-dilol9y; Thu, 28 May 2020 00:40:59 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 76C8F409DE;
	Thu, 28 May 2020 00:40:56 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id D16821731FF; Wed, 27 May 2020 20:40:55 -0400 (EDT)
Date: Wed, 27 May 2020 20:40:55 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Martin Jansa <Martin.Jansa@gmail.com>, TRO <thomas.roos@industronic.de>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] overwrite LAYERSERIES_COMPAT_ for different layer
Message-ID: <20200528004055.GP17660@denix.org>
References: <bMCJ.1590405446519275298.gKDM@lists.yoctoproject.org>
 <CA+chaQfeMQvS_QFY-babkxTgNSOThPh6YhDPJQxLodo-KfF=Ag@mail.gmail.com>
 <20200525132852.e2vefssv7gaqbc5u@qschulz>
MIME-Version: 1.0
In-Reply-To: <20200525132852.e2vefssv7gaqbc5u@qschulz>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 25, 2020 at 03:28:52PM +0200, Quentin Schulz wrote:
> On Mon, May 25, 2020 at 03:10:39PM +0200, Martin Jansa wrote:
> > You can add a layer which will set LAYERSERIES_COMPAT for another layer,
> > but it needs to be parsed before the layer you want to change, e.g.:
> > https://github.com/webosose/meta-webosose/blob/thud/meta-qt5-compat/conf/layer.conf
> > it's useful to use this layer also to implement whatever modifications are
> > needed to make the layer to be actually compatible with the release you're
> > using, like:
> > https://github.com/webOS-ports/meta-webos-ports/tree/zeus/meta-qt5-compat
> > 
> 
> FWIW, you could make the parsing order not matter (at least in thud,
> from a quick look, master as well). LAYERSERIES_COMPAT is resolved after
> all layer.conf have been parsed[1]. I do not know if it's on purpose or
> not, meaning it could well disappear in the near future.
> 
> So you could override it from anywhere by using __append but it has to
> be done before or during the conf/layer.conf parsing. This also makes it
> future proof wrt layer priorities and how LAYERSERIES_COMPAT is set (+=,
> =, ?= ?).
> 
> I personally have it in conf/bblayers.conf (for some reason we "ship"
> this one, though it's not best practice IIRC).

Also not recommended, you can put this in your conf/bblayers.conf:

OVERRIDES = "iamgroot"
LAYERSERIES_COMPAT_browser-layer_iamgroot = "zeus"

-- 
Denys
