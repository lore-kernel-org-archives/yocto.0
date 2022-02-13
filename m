Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC094C433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 13:39:34 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web09.20953.1644759572952720238
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 05:39:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=uy0GbgTS;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version
	:Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=REFjEjqQGNDx+KhMTsHy6L2f695X/Lhigs8pSX2yLZY=; b=uy0GbgTSmvlBjJkYfgZHgNRZV5
	eyM+1OsVK+gUZ2BE+XV/E4eqJoXkeYo6jbG7HHzo5UDetA95tWrW3S9j/GIA5Jmca/9VJfknhVK1Z
	5qyR5klbzT9R+cSF1QZmdxJrFdGAPiuOWnXYbIZbZJVYHjqtjBZjHHz9uJ1tuieIrMqIufB3ZxU/V
	SnMS3Wz3J21JgkmtTR/VgYTgh9RWRVobYh3luwvTpUzcXCebUcp8olDWZDxH180helvxz34f3rKLo
	724o9FcPY8svUDb+19hjtZ+DZBDBkx/Y5XAtVR0KS1NPFpWLpzQBPXKudfQ1mSekXKN0w35uZb1kc
	O4p9TQZg==;
Received: from 89-27-79-167.bb.dnainternet.fi ([89.27.79.167]
 helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1nJF69-0004Zh-UC
	for yocto@lists.yoctoproject.org; Sun, 13 Feb 2022 15:39:29 +0200
From: Anders Montonen <Anders.Montonen@iki.fi>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_695177FE-34B7-429E-A1F9-5DEE6A5315AB"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] Building Yocto on M1 Mac
Date: Sun, 13 Feb 2022 15:39:28 +0200
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
To: yocto@lists.yoctoproject.org
In-Reply-To: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
Message-Id: <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 89.27.79.167
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 13:39:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56170


--Apple-Mail=_695177FE-34B7-429E-A1F9-5DEE6A5315AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

> On 13 Feb 2022, at 14:24, Abhijeet Tripathi =
<abhijeettripathi3003@gmail.com> wrote:
>=20
> Hello yocto-devs,
>=20
> I'm new to the yocto project and trying to set up a build environment =
on my M1 Mac which is arm64 architecture.=20
>=20
> I'm following the steps as mentioned in below link:
> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions =
<https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions>=20
>=20
> But it is always pulling up containers based on amd64 architecture. =
Are there any updated steps/link to set up a build environment specific =
to M1 Mac(arm64)?


Looking at Docker Hub, none of the published Crops containers are built =
for ARM64. You can try building the containers yourself, making sure to =
pick base distros that are available for ARM64.

Note that there are plenty of reports of Docker performing poorly on =
Macs, probably because of the file system implementation. You may be =
better off using a full VM via e.g. UTM.

-a=

--Apple-Mail=_695177FE-34B7-429E-A1F9-5DEE6A5315AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">On 13 Feb 2022, at 14:24, Abhijeet Tripathi =
&lt;<a href=3D"mailto:abhijeettripathi3003@gmail.com" =
class=3D"">abhijeettripathi3003@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hello yocto-devs,<div class=3D""><br class=3D""></div><div =
class=3D"">I'm new to the yocto project and trying to set up a build =
environment on my M1 Mac which is arm64 architecture.&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">I'm following the steps =
as mentioned in below link:</div><div class=3D""><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions=
" =
class=3D"">https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructi=
ons</a>&nbsp;<br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">But it is always pulling up containers =
based on amd64 architecture. Are there any updated steps/link to set up =
a build environment specific to M1 =
Mac(arm64)?</div></div></div></blockquote></div><div class=3D""><br =
class=3D""></div><div class=3D"">Looking at Docker Hub, none of the =
published Crops containers are built for ARM64. You can try building the =
containers yourself, making sure to pick base distros that are available =
for ARM64.</div><div class=3D""><br class=3D""></div><div class=3D"">Note =
that there are plenty of reports of Docker performing poorly on Macs, =
probably because of the file system implementation. You may be better =
off using a full VM via e.g. UTM.</div><div class=3D""><br =
class=3D""></div><div class=3D"">-a</div></body></html>=

--Apple-Mail=_695177FE-34B7-429E-A1F9-5DEE6A5315AB--

