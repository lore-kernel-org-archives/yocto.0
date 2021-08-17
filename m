Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web08.36161.1629185608028763375
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 00:33:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mFtbC-0006Jd-19; Tue, 17 Aug 2021 09:33:26 +0200
Message-ID: <bda465af76bb762fa209c61627cc01b107320285.camel@delisys.ch>
Subject: Re: [yocto] execute a python code in raspberrypi #python
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
Date: Tue, 17 Aug 2021 09:33:25 +0200
In-Reply-To: <3KuX.1628847638267810897.s0Lo@lists.yoctoproject.org>
References: <3KuX.1628847638267810897.s0Lo@lists.yoctoproject.org>
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1629185608;1e6721f9;
X-HE-SMSGID: 1mFtbC-0006Jd-19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-08-13 at 02:40 -0700, yasminebenghozzi6@gmail.com wrote:
> Hello beautiful people, 
> 
> I successfully executed helloworld.py on the raspberrypi by making a
> layer. BUt now i need to add a whole python code with classes etc,
> which exists in different files like the picture, I wanna know please
> how to add them to be able to run the code on the raspberrypi. THey re
> all related together and i need to run the main-SF.py so the code will
> be executed.
> 

I recommend putting your whole python project into a repository (e.g.
with git) and then create a recipe that fetches the git repository and
installs the files to a sensible location.

You should be able to follow the documentation on writing a new recipe
to some degree:

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#new-recipe-writing-a-new-recipe

To run your script on boot, I would create an init script / systemd
service, depending on what init system your image is using. See here
for more information:

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#new-recipe-enabling-system-services

> THank you .


