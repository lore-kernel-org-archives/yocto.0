Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.29228.1620638284346084281
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 02:18:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97] helo=[192.168.0.56]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1lg237-0006jn-Cc; Mon, 10 May 2021 11:18:01 +0200
Message-ID: <003b4d91f0f044ffdc2a88c8cee34099878a8a05.camel@delisys.ch>
Subject: Re: [yocto] Improving NPM recipe build speed
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>, 
	yocto@lists.yoctoproject.org
In-Reply-To: <AUF9.1619479753480261275.rjGo@lists.yoctoproject.org>
References: <AUF9.1619479753480261275.rjGo@lists.yoctoproject.org>
Date: Mon, 10 May 2021 11:18:01 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.40.1 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1620638284;7e5fa9b8;
X-HE-SMSGID: 1lg237-0006jn-Cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-04-26 at 16:29 -0700, Alessandro Tagliapietra wrote:
> Hi everyone,

Hi Alessandro,

> I'm making an image that includes the node-red recipe from meta-iot-
> cloud.
> The whole process takes about 30+ minutes for that recipe alone (most
> of the time spent in do_configure).
> Now I want to override the recipe systemd service file and create a
> nodered user. Every time I change my bbappend file I have to wait 30+
> minutes to have the result even for a small systemd file change.
> 
> Is it possible to speed up the process somehow?
> 

I never worked with node-red in yocto, so I can't speak specifically
for that, but I encountered similar situations before. Here is what I
usually do when I need to change a file in a recipe that takes a really
long time to compile or triggers a rebuild of a ton of other recipes.

This only works for files that don't need to be compiled, like
configuration files, systemd service files, udev rules etc. I usually
replace the file in the rootfs directly on the device (or boot from NFS
and edit the file in the NFS export). For example if I need to change a
systemd service file, I change the file on my host, copy it with scp to
the device and check if everything is working as expected. When I'm
finished, I reintegrate my edits with a bbappend file and check again
if it works.

> Thanks in advance

