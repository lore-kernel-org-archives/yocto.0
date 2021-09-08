Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web08.8184.1631084377551541358
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 23:59:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mNrYT-00058I-Hi; Wed, 08 Sep 2021 08:59:33 +0200
Message-ID: <3ba5f7a2b2992751c07ba6bc4ff2afdecc22adc5.camel@delisys.ch>
Subject: Re: [yocto] Inactive service of hello world #yocto
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, yasminebenghozzi6@gmail.com
Cc: Yocto <yocto@lists.yoctoproject.org>
Date: Wed, 08 Sep 2021 08:59:33 +0200
In-Reply-To: <CAPxNcnf11pBQtfuQ9COipkOASuz6rjorHOTk+35bzHAtwUi-Bg@mail.gmail.com>
References: <TdLw.1631035233691526967.49VF@lists.yoctoproject.org>
	 <CAPxNcnf11pBQtfuQ9COipkOASuz6rjorHOTk+35bzHAtwUi-Bg@mail.gmail.com>
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1631084377;bbd324a0;
X-HE-SMSGID: 1mNrYT-00058I-Hi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-09-07 at 10:43 -0700, Rudolf J Streif wrote:
> What does your 'Hello World' service do? Just print 'Hello World' to
> the console and then exit?
> 
> If so that would be the reason why it is inactive. Systemd starts it
> and then it exits. Typically, services keep running (except for some
> special cases) once they are started. That's what makes them a service.
> To stop them 'systemctl stop <service>' is used. By default systemctl
> sends SIGTERM to tell the service to clean up and terminate itself.
> 

To piggyback on that, it is possible to set Type=oneshot[1] for the
service so that systemd considers the service to be up after it exited.
I find it useful for init or migration scripts that another service can
then depend upon.

[1]:
https://www.freedesktop.org/software/systemd/man/systemd.service.html#Type=


> :rjs
> 
> 
> On Tue, Sep 7, 2021, 10:20 <yasminebenghozzi6@gmail.com> wrote:
> > Hi everyone, 
> > 
> > I wanted to run the helloworld service, but it keeps telling that its
> > inactive , I really cant find why, I changed the service many times
> > but no solution.
> > I m sorry I ant copy paste from putty
> > 
> > 
> > 
> 
> 
> 


