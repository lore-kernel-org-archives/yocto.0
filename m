Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.3737.1583912614467944019
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 00:43:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=linuxpower); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1jBw1c-0002am-Is; Wed, 11 Mar 2020 08:43:32 +0100
Message-ID: <4734dd8b227d1c9870e4528ebb68feb3786fe829.camel@delisys.ch>
Subject: Re: [yocto] Uboot NetBoot IMX8
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Wed, 11 Mar 2020 08:43:32 +0100
In-Reply-To: <CH2PR13MB33689C78CFAB378C4CB7011CD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: 
	<CH2PR13MB33689C78CFAB378C4CB7011CD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
User-Agent: Evolution 3.36.0 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1583912614;6f249a33;
X-HE-SMSGID: 1jBw1c-0002am-Is
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-11 at 00:39 +0000, Trevor wrote:
> > Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can
> > use "--types" option (effective UID is 1000)
> 
> 
> The mount error seems prevalent across all the errors.  somehow UID
> is 1000 when it should be 0 during boot?

By googling the error message I found a thread where somebody has the
same question, but I wouldn't recommend following the advice there
(running the yocto build as root). How do you extract the root
filesystem to your NFS directory? Maybe something is wrong there and
the files get extracted with UID 1000 as owner. For reference, I use
this command which seems to work fine:

sudo tar --strip-components=1 -C /srv/nfs/rootfs -xf images/apalis-
imx6-mainline/Apalis-iMX6-Mainline_Image.rootfs.tar.xz

Also check that there are no setuid/setgid bits set.

> On the Host side, here are the /etc/exports options for NFS:
>  *(rw,sync,insecure,no_subtree_check,no_root_squash)

I'm using pretty much the same NFS options, the only difference I could
spot is an additional 'fsid=root' in my exports which is NFSv4
specific.

