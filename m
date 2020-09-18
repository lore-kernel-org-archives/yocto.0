Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.7011.1600410413084063560
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 23:26:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=linuxpower); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1kJ9r8-0002IP-0x; Fri, 18 Sep 2020 08:26:50 +0200
Message-ID: <554d231986639cbe9b6a77c36b41a9947e0458a3.camel@delisys.ch>
Subject: Re: [yocto] Yocto recipe for Tailscale #yocto #golang
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: mthompson@dustyrobotics.com, yocto@lists.yoctoproject.org
Date: Fri, 18 Sep 2020 08:26:49 +0200
In-Reply-To: <hlTM.1600407825617855882.TjgV@lists.yoctoproject.org>
References: <hlTM.1600407825617855882.TjgV@lists.yoctoproject.org>
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1600410413;7d3087fe;
X-HE-SMSGID: 1kJ9r8-0002IP-0x
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Mike,

On Thu, 2020-09-17 at 22:43 -0700, Mike Thompson via
lists.yoctoproject.org wrote:
> Does anyone know if there is an existing bitbake recipe for building
> the Tailscale client daemon and CLI tool from the following source? 
> A search on Google yielded no obvious links.
> 
> https://github.com/tailscale/tailscale

I usually search on the OpenEmbedded layer index: 
http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tailscale

Seems like you are right, there seems to be no recipe available. Be
aware that not all recipes/layers are listed there, but the majority
are.

> 
> The Tailscale client for Linux looks to be built using the Go
> language which is a complete unknown to me. I've built very simple
> recipes before for basic Makefile and Automake built software, but I
> suppose Go brings a new set of challenges.
> 
> If an existing recipe is not available, any words of wisdom before I
> get started on this?

I never used Go in the Yocto/OpenEmbedded environment, but I'm sure
somebody else who has more experience will be able to help. To get
started with writing a new recipe I usually get my inspiration from
similar recipes (similar language, build system, dependencies, etc.).

> Thanks,
> 
> Mike Thompson

