Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web09.36172.1629185256748301244
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 00:27:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mFtVU-0003HU-NS; Tue, 17 Aug 2021 09:27:32 +0200
Message-ID: <a1438bb8d61f36b3461029b028dd1f2e8b92bdeb.camel@delisys.ch>
Subject: Re: [yocto] best way to get feature of systemd v248 in yocto-hardknott (systemd v247)?
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Bill Plunkett <bill@plunkware.com>, yocto@lists.yoctoproject.org
Date: Tue, 17 Aug 2021 09:27:32 +0200
In-Reply-To: <CALLsHzjuD4=k2bZsO-MRS5HXqc+=bES9bSXyxj76mZ2VBF7PrQ@mail.gmail.com>
References: 
	<CALLsHzjuD4=k2bZsO-MRS5HXqc+=bES9bSXyxj76mZ2VBF7PrQ@mail.gmail.com>
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1629185257;a7e4d18b;
X-HE-SMSGID: 1mFtVU-0003HU-NS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-08-13 at 15:31 -0600, Bill Plunkett wrote:
> I'd like to use a systemd DHCP client feature that became available
> in v248 in my yocto-hardknott system.  Is there any hope of using the
> complete v249.1 recipe from the oe master branch?
> 

To backport a newer version, I usually just take the trial and error
route by copying the recipe to a custom layer and then, if necessary,
resolving missing or outdated dependencies on the go. This works most
of the time, but it could get a bit more complicated for systemd if
something fundamentally changed.

> Bill


