Return-Path: <marc.ferland@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6696FE0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 13:37:07 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id e21so9285001vbm.35
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 13:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=TB59G1qvKgZmcPPg9JVex8e5cCLw5/1m5BzBWvxlNYE=;
	b=g6znjwsxpF0dt+vWdRoGFVJ6gZJREtoDKB1FeFAUBJIUmVHRFpE51OD1QjKUpnGIW8
	dCz3z1YGAk1ni9HtbqHmx69vf7Fa6P1Ye4eryMaXn7xs2eKCupJfAOP+rAx94H4Voj9v
	sa2If+T8S0vIvJuVL4/u0ABvntLoZqVTfXtLc2rT6zy9cyE0RP87QuKDEOIb2MYyvSUq
	rGBiXZh3eIsuaXM/PRyn5XPFHp47HZIrVeF+spchgKZ8j8g2JgzkRadZId3D8IBKJzs1
	cWep5wKlEUeSDol2ypOtP+FrDTOyhR6QeKclb1ws49lLodQGQhkj0cLLUCcWME+yhTjV
	iCPQ==
Received: by 10.52.70.115 with SMTP id l19mr5821874vdu.127.1350506224368;
	Wed, 17 Oct 2012 13:37:04 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id b8sm1857497veq.1.2012.10.17.13.37.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 17 Oct 2012 13:37:02 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 17 Oct 2012 16:37:04 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios> <87vceal3m1.fsf@sonatest.com>
	<DDDB9E6645DE24488B8485B41A051F471D961A0A@Mercury.usurf.usu.edu>
	<87d30ie0gr.fsf@sonatest.com>
	<DDDB9E6645DE24488B8485B41A051F471D965625@Mercury.usurf.usu.edu>
Date: Wed, 17 Oct 2012 16:37:04 -0400
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D965625@Mercury.usurf.usu.edu>
	(Jonathan Haws's message of "Wed, 17 Oct 2012 20:21:35 +0000")
Message-ID: <877gqo96of.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lm-sensors not available as a package?
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
X-List-Received-Date: Wed, 17 Oct 2012 20:37:07 -0000
Content-Type: text/plain

Jonathan Haws <Jonathan.Haws@sdl.usu.edu> writes:

> Marc,
>
> If you have a working recipe, I would love to see it.  Maybe you have
> already solved some of the issues I have been seeing.
>
> I have a recipe that installs the software, however, I would like to
> have it run sensors-detect on first boot as well as install the
> lm_sensors.init script to /etc/init.d.  My recipe now looks like this:
>
Hi Jonathan,

I have posted a firt version of my recipe to the oe-core mailing
list. You can try this.

http://lists.linuxtogo.org/pipermail/openembedded-core/2012-October/031002.html

I'll probably post a revised version by the end of the week to the
meta-oe mailing list as suggested by Paul and Martin.

Enjoy!

Marc

