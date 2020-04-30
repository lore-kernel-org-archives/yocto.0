Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.2535.1588230612193699161
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 00:10:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=linuxpower); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1jU3Kj-0001NY-Jp; Thu, 30 Apr 2020 09:10:09 +0200
Message-ID: <2823ea3424755ef149b90d28c835f64fcb3afdc4.camel@delisys.ch>
Subject: Re: [yocto] Which recipe for Linux tools to run u-boot command inside Linux?
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Thu, 30 Apr 2020 09:10:09 +0200
In-Reply-To: <CAA=hcWSXzf7SOc4d3tg97O3aORLdFrrD3q1D4y=z2WtqPvfdCQ@mail.gmail.com>
References: 
	<CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
	 <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com>
	 <CAA=hcWSFY+hWiHQxx9q8eqcaaFZYJaQ1ZfzZx9cTfFjW2XO5fA@mail.gmail.com>
	 <CAA=hcWSXzf7SOc4d3tg97O3aORLdFrrD3q1D4y=z2WtqPvfdCQ@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1588230612;c72389bc;
X-HE-SMSGID: 1jU3Kj-0001NY-Jp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-30 at 16:34 +1000, JH wrote:
> Hi Yann,
> 
> Thanks for the tips, I have run to add libubootenv, but got so many
> errors, I can build a good Yocto image before adding libubootenv,
> what
> was it going on? Does that mean I need to add all kernel modules and
> to rebuild kernel configure?

Hi JH,

on Zeus it's very likely _not_ libubootenv that you need, you should
try to install u-boot-fw-utils. As Yann wrote, the tools are in
libubootenv since Dunfell, which is newer than Zeus.

