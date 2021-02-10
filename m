Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web08.5562.1612965199089958878
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 05:53:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97] helo=[192.168.0.56]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1l9pvf-0002jw-9B; Wed, 10 Feb 2021 14:53:15 +0100
Message-ID: <0a4d978da4e731ccc39cc83a83a2b24c81111885.camel@delisys.ch>
Subject: Re: [yocto] Duplictae files gets created on opening any file in yocto for rpi cm3 #cm3 #dunfell
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: prashantsingh@dialtronics.com, yocto@lists.yoctoproject.org
In-Reply-To: <aXo3.1612934555982306502.Xi3q@lists.yoctoproject.org>
References: <aXo3.1612934555982306502.Xi3q@lists.yoctoproject.org>
Date: Wed, 10 Feb 2021 14:53:14 +0100
MIME-Version: 1.0
User-Agent: Evolution 3.38.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1612965199;1e1a26b1;
X-HE-SMSGID: 1l9pvf-0002jw-9B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-02-09 at 21:22 -0800, prashantsingh@dialtronics.com wrote:
> Dear team,
> 
> I'm using yocto-dunfell for generating for my rpi-cm3.
> it is working fine, but one issue I'm facing that when ever I'm
> trying to open any file, that gets duplicated with it's name and then
> ~ sign.
> e.g. I'm open hello.sh file, then on saving this file one file will
> be automatically generated with the name hello.sh~ .
> This thing unnecessarily consuming memory in my file-system.

Are you using vim to edit the files? If yes, then take a look at
"backup files":

https://vimhelp.org/editing.txt.html#backup
Be aware that vim possibly creates swap and undo files, too.
https://vimhelp.org/recover.txt.html#swap-file
https://vimhelp.org/undo.txt.html#undo-persistence

> Please assist me some method to get rid with this.
> 
> Thanks and Regards.
> Prashant Singh
> 
> 
> 

