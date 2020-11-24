Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.51912.1606224758291063395
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 05:32:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1khYQt-0000ar-Om; Tue, 24 Nov 2020 14:32:35 +0100
Message-ID: <7d843f3905293096b9cd63490cd683aaa5e3ca1c.camel@delisys.ch>
Subject: Re: [yocto] How to add python application into the build. #python #toolchain
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Tue, 24 Nov 2020 14:32:35 +0100
In-Reply-To: <aByZ.1606221203093588719.qZD6@lists.yoctoproject.org>
References: <aByZ.1606221203093588719.qZD6@lists.yoctoproject.org>
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1606224758;41c362c9;
X-HE-SMSGID: 1khYQt-0000ar-Om
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2020-11-24 at 04:33 -0800, vijayrakeshmunganda@gmail.com wrote:
> Hi, 

Hi Vijay

> I'm new to the Yocto Project, trying to include my python application
> into the build. Can anyone guide me how to write a bitbake recipe .bb
> file or any example recipe would be helpful. 

Reading and following the section about "Writing a New Recipe" in the
manual is probably a good starting point:

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#new-recipe-writing-a-new-recipe

I usually look at related recipes that already exist (in your case some
other python recipe) and try to start with a minimal recipe and fix
build errors/missing dependencies/etc. iteratively.

> Thank & Regards,
> Vijay.
> 
> 
> 


