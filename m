Return-Path: <prvs=15959234d6=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EE25E00E39; Sun, 25 Feb 2018 23:41:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.218 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 186 seconds by postgrey-1.32 at yocto-www;
	Sun, 25 Feb 2018 23:41:50 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D20E00DC3
	for <yocto@yoctoproject.org>; Sun, 25 Feb 2018 23:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1519630909;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:References:
	Message-ID:Subject:Cc:To:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=tb083u1fnhtTwhY3dPLxl08UsAzR3XXohvVIDnv5u9Y=;
	b=YkZF+o4fw6jej4KgH4pmXK6g6ygqz415qRWZk5goVXzUyprM38dm4KyE0gamQRBS9V
	eHsGENZZQ/ogLo74KodYqTOn9otbWmabu8DjTTIXc1f/BUJxJ5b07jKuY48+ZrnxqHgI
	PMvTlHjw/sz7EJg9sTpvBh+GACd6YfQX0MRieyB/gb8AFHq6B/Uym9BWPRgk0GKCp277
	VTk0Ft8r/mYIFnh4w+8uRCKo1GgbyYb2fw7bA7vIbdSFu2/nQsHWGz32HplxCMqarhqQ
	b5AZShdCpIr163bTItk25e57ccrqivgtuW+MPsw5yN3p7RJS5LCr7jG3vLV2xzJUgMNa
	lIQA==
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de (p50933415.dip0.t-ipconnect.de
	[80.147.52.21]) by smtp.strato.de (RZmta 42.18 AUTH)
	with ESMTPSA id U05045u1Q7ch48P
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 26 Feb 2018 08:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1519630721; x=1520235521;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=tb083u1fnhtTwhY3dPLxl08UsAzR3XXohvVIDnv5u9Y=; b=U
	1UutYDHrukS9Mi+ySBE+VEGQK4WkqFTB+oRlmyTyrLeRiyzMWKm7DpZsFP8zLVSX
	Qdyk/Pmky1l18A+ZI/a2Mf/nOYyAPOEFtDS+UeVsJ0GpxmKpnSqFRhb/+waZfI2s
	fZ4CvutLNOFL87gagvlc2/PuEj72y/9KW7iwVqhOa0=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.5.2) with ESMTPSA id
	md50000046781.msg; Mon, 26 Feb 2018 08:38:41 +0100
X-MDArrival-Date: Mon, 26 Feb 2018 08:38:41 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=15959234d6=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Mon, 26 Feb 2018 08:38:40 +0100
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Laigui Qin <qinlaigui@126.com>
Message-ID: <20180226073840.om5dssrykh3s2af3@jholzmayr.localdomain>
References: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
MIME-Version: 1.0
In-Reply-To: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
User-Agent: NeoMutt/20171215
Cc: yocto@yoctoproject.org
Subject: Re: [Meta-Raspberrypi] Yocto apt sources.list for Raspberry Pi
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Feb 2018 07:41:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello!

On Sun, Feb 25, 2018 at 09:38:52PM +0800, Laigui Qin wrote:
> I am building the GNU Linux with Yocto for Raspberry Pi using meta-raspberrypi. Everything is good (with help of google search and yocto manual) until I added apt support to the image. As I am a little confused which Repository URL I should put in the sources.list, I tried the Raspbian repository. However, when I do apt-get upgrade I got following error which is not expected. Any idea on this effort?

Unless you are planning to run your own repository server: none. There
is certainly support for doing that, look for topic on "package feeds"
in the Yocto documentation.

Your snippet below looks like you are trying to use the raspbian
repositories, which certainly won't work. You have to understand that
what you have built is *NOT* a replacement for a raspbian installation
that will just fill in - it is a whole separated, custom distribution
and in no way related to any package repository thats out there. So if
you actually want to use those, then you have also to use their base
distribution.

If you want to stick with Yocto, your two choices are:
- just include everything you need in the build. (thats the common one)
- run a custom package feed server (can be done, but probably you're
  better off with already existing solutions then.

Greetz Joe

> 
> root@raspberrypi-cm3:~# sudo apt-get upgrade
> Reading package lists... Done
> Building dependency tree       
> Reading state information... Done
> Calculating upgrade... Done
> The following packages have been kept back:
>   base-files cpp diffutils g++ gcc git initscripts libcap2 libgcc1 libgmp10 libsysfs2 libusb-1.0-0 libwbclient0 netcat ntp procps samba-common usbutils
> The following packages will be upgraded:
>   busybox ethtool sysfsutils
> 3 upgraded, 0 newly installed, 0 to remove and 18 not upgraded.
> Need to get 562 kB of archives.
> After this operation, 1114 kB of additional disk space will be used.
> Do you want to continue? [Y/n] 
> Get:1 http://archive.raspbian.org/raspbian wheezy/main armhf busybox armhf 1:1.20.0-7 [438 kB]
> Get:2 http://archive.raspbian.org/raspbian wheezy/main armhf ethtool armhf 1:3.4.2-1 [98.7 kB]
> Get:3 http://archive.raspbian.org/raspbian wheezy/main armhf sysfsutils armhf 2.1.0+repack-2 [24.5 kB]
> Fetched 562 kB in 5s (96.0 kB/s)       
> (Reading database ... 16225 files and directories currently installed.)
> Preparing to unpack .../busybox_1%3a1.20.0-7_armhf.deb ...
> Unpacking busybox (1:1.20.0-7) over (1.24.1-r0) ...
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or directory
> dpkg-deb: error: subprocess tar returned error exit status 2
> dpkg: error processing archive /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or directory
> dpkg-deb: error: subprocess tar returned error exit status 2
> dpkg: error processing archive /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> Errors were encountered while processing:
>  /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb
>  /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)

-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


