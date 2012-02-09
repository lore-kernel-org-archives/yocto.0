Return-Path: <davidsmoot@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DFC5E0123C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 19:08:06 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so2480857obb.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 19:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=eozD31e0YJsmXXyb2SyZnY7/42/HBKFJ0qPdQKmyw/0=;
	b=C+cawXyxEqHsSkRXYQvMFWK+zXoIeNLWn6/ZO2bnRcynVX66veTiTWLde4weo2ciGI
	Rq7Pdpug0kPiKEk34gyGe/CCkjLVdZck8uCVhiennjn2HNBaS/Yfwe8eBV0TDwYMoKDO
	jw0CkxQO/HDhZbLWsMu373g03qs9v+Lkb6tQA=
Received: by 10.182.231.100 with SMTP id tf4mr28510838obc.56.1328756885776;
	Wed, 08 Feb 2012 19:08:05 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id s6sm1314048obq.0.2012.02.08.19.08.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Feb 2012 19:08:04 -0800 (PST)
From: David Smoot <davidsmoot@gmail.com>
Date: Wed, 8 Feb 2012 21:08:03 -0600
Message-Id: <FC61EC5F-CAF2-4024-9E88-BE7F1F8EDA81@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: applying a custom kernel configuration to the "built in" routerstation pro bsp?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Feb 2012 03:08:06 -0000
Content-Type: multipart/alternative; boundary=Apple-Mail-1-409848664

--Apple-Mail-1-409848664
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I want to change some of the kernel configuration options for my =
routerstation pro.  I have a .config from a 2.6.37 kernel running on my =
routerstation pro that was not built in Yocto that has the options I =
want to build in Yocto.  I am attempting to follow the instructions at =
http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h=
tml#bsp-filelayout-kernel. But I am confused. =20

Since I am using the routerstation pro, I do not have a separate BSP, it =
is "built in".  So I know I need to modify a .bbappend file to point to =
my config file, but I am not sure which bbappend where.

Thanks for your time.
David Smoot
davidsmoot@gmail.com




--Apple-Mail-1-409848664
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">I want to change some of the kernel configuration options for my routerstation pro. &nbsp;I have a .config from a 2.6.37 kernel running on my routerstation pro that was not built in Yocto that has the options I want to build in Yocto. &nbsp;I am attempting to follow the instructions at&nbsp;<a href="http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#bsp-filelayout-kernel">http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#bsp-filelayout-kernel</a>. But I am confused. &nbsp;<div><br></div><div>Since I am using the routerstation pro, I do not have a separate BSP, it is "built in". &nbsp;So I know I need to modify a .bbappend file to point to my config file, but I am not sure which bbappend where.</div><div><br></div><div>Thanks for your time.<br><div>
<div style="font-size: 12px; ">David Smoot</div><div style="font-size: 12px; "><a href="mailto:davidsmoot@gmail.com">davidsmoot@gmail.com</a></div><div style="font-size: 12px; "><br></div><br class="Apple-interchange-newline">
</div>
<br></div></body></html>

--Apple-Mail-1-409848664--
