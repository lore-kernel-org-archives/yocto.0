Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.31099.1590413336096360137
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 06:28:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49Vybp08Wtz5tlK;
	Mon, 25 May 2020 15:28:53 +0200 (CEST)
Date: Mon, 25 May 2020 15:28:52 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: TRO <thomas.roos@industronic.de>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] overwrite LAYERSERIES_COMPAT_ for different layer
Message-ID: <20200525132852.e2vefssv7gaqbc5u@qschulz>
References: <bMCJ.1590405446519275298.gKDM@lists.yoctoproject.org>
 <CA+chaQfeMQvS_QFY-babkxTgNSOThPh6YhDPJQxLodo-KfF=Ag@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+chaQfeMQvS_QFY-babkxTgNSOThPh6YhDPJQxLodo-KfF=Ag@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 25, 2020 at 03:10:39PM +0200, Martin Jansa wrote:
> You can add a layer which will set LAYERSERIES_COMPAT for another layer,
> but it needs to be parsed before the layer you want to change, e.g.:
> https://github.com/webosose/meta-webosose/blob/thud/meta-qt5-compat/conf/layer.conf
> it's useful to use this layer also to implement whatever modifications are
> needed to make the layer to be actually compatible with the release you're
> using, like:
> https://github.com/webOS-ports/meta-webos-ports/tree/zeus/meta-qt5-compat
> 

FWIW, you could make the parsing order not matter (at least in thud,
from a quick look, master as well). LAYERSERIES_COMPAT is resolved after
all layer.conf have been parsed[1]. I do not know if it's on purpose or
not, meaning it could well disappear in the near future.

So you could override it from anywhere by using __append but it has to
be done before or during the conf/layer.conf parsing. This also makes it
future proof wrt layer priorities and how LAYERSERIES_COMPAT is set (+=,
=, ?= ?).

I personally have it in conf/bblayers.conf (for some reason we "ship"
this one, though it's not best practice IIRC).

[1] https://git.yoctoproject.org/cgit.cgi/poky/tree/bitbake/lib/bb/cookerdata.py?h=thud#n399

Cheers,
Quentin
