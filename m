Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web12.11563.1592723516606882504
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jun 2020 00:11:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=kzMm8/yg;
 spf=pass (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=tnjz=ac=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 49qNyJ3z13z3Y;
	Sun, 21 Jun 2020 09:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1592723513;
	bh=qey2ygDOi4wAATRGAV6kfXv6PUSV9d1WiRE+kJXYFuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kzMm8/ygASZIi28+Sr9Bu6PWVKjNfcE9/nRlx0cT2XnH4DoUQimuBc6Gm4Apms/2P
	 NI0xqrugoP2UE9/uTIRe+d1X2Hp+gOypRlPoPIwqTQPHGObYAwOLsKrtxNcPNDdaT/
	 LLdlelvj4zFNrUc/5w/luNIfJNOQBFwaNIpx7egSwAwI3KeJaNXuZAVlnscgjiunLJ
	 6wNsfsDuKWAIl7/N3HHMozxxGtfyc9zu/WCuC3psD6NQYZZF4KtCzoZiOiiiiViyS6
	 EwaD0dh5+BN2T6KyRNJ/Ps91AmSXPROHeUhpNTRXUaVvYjOE0908iP3NNWNuTNe4+X
	 DvTwiUkamZZrt60pLQskK5AfwEnuOVngZWMla1HK1q41pU5lw7Y5jX/n9VKbcje3uc
	 27vB3B6UChYy62CSlFShR+4w420Tx6zGYyArqoobDfdMU+bC/ZlSVFVnp5hl3NyQyD
	 Kfjkbuerh5nvT5YXv7dF5s020AkTCPGzZqaydehmxQCNtkvLFOcbQqhG+JQGazHf06
	 y4frVGMqXBBOfg2vHMm0FbTqB59dAGMeJaZFKdpIQVd1GymGXVmUfl/xNDxfsr7e0e
	 g2gDg5CwPLVT+cdQyFDdwtheH/JHqkdYikBxHi/e6JDiA7Sq9UqcJDm3F18LunzD0t
	 KCHYhLAJ00HDFAvv9mXalgAw=
Date: Sun, 21 Jun 2020 10:11:50 +0300
From: "Adrian Bunk" <bunk@stusta.de>
To: csimmonds <chris@2net.co.uk>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Distro upgrade strategies
Message-ID: <20200621071150.GC6921@localhost>
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
 <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
MIME-Version: 1.0
In-Reply-To: <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri, Jun 19, 2020 at 03:35:33PM +0100, csimmonds wrote:
> I would like to add that this is a design decision. Package updates, be
> they based on rpm, deb, or ipk, are not atomic. Which means that if you
> power off during an update the system will usually not boot afterwards.

This is not true, package manager like dpkg are trying very very hard to 
make things atomic where they have to be and allow recovery from any 
kind of interruption.

I do not recall anyone ever describing such a problem with Debian
(or Ubuntu) in over 20 years as Debian user/administrator/developer.

>...
> OpenEmbedded/Yocto
> Project expect the update will be done by programming a new root
> filesystem image.
>...

Note that what you write would imply that package management must not
ever be used on OpenEmbedded/Yocto devices.

If there is any potential problem, it would equally apply to the 
situation where you are upgrading just one package for a security
update.

> HTH,
> Chris

cu
Adrian
