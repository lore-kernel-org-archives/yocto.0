Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 575FDE00D54; Tue, 12 Apr 2016 19:51:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C17E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:51:51 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id u206so51925674wme.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=AqxPPnpMLP86qymyEirGzp8/WI3iF5K1EQ3RD0Bhhx4=;
	b=Lz2N9obx6Y6p2oauJG5vtRqsyJD149r4n/3z9q0nxQoSBhuHiQzz7K/hfFBn7nLAj9
	XB0fj10gcJZg/QUZKO2pX/uuzIEOlE3QqWHBPzvGXgiEmQf147oRUUqbp9PI19LggmNs
	y6rMmvsXWnw5y9ooD30+zlaWIpb5hGicOCSvsNr0z3NPkygJOkdUX0RkCscit1+3+WXl
	DPOktND3aXjn/6XuiiZ5tDBmYXg7dYl41tJIMkgFwYRvZoLPQPfMDYYmPK8JO2lx1ZBi
	yGr8sTpDZkPrF2nzfYZZJ5Rj02l1agg1AzdmPrwR1QY5Wn4THUzf2uwmq8Jzh84Zk15H
	2oOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=AqxPPnpMLP86qymyEirGzp8/WI3iF5K1EQ3RD0Bhhx4=;
	b=j3HzIqO5G42IevIbPNdSpXdE7LGV4+v2eJbvkvdGVC6qYYc9j95LDD7g+VJ6rg7Lp8
	N+T6r+cAfoFaHAmwTebNDykmn08MvM2K1IA9viwSKxUL4ZSCvxFzFiKbS31dSERlvdQ3
	HNFPup2mapKbK7EnojNvACRc7yd9WLbOsFZM///tnXerVN/JkkNd/JqffW8dSO0zW7XK
	j8W9CCb0DIB/wLLzkPnv/PGAaRzj58PHBfPfrn1IMs8S6jeTZsW0sxuxJ2g36ekIduZP
	tpwUmVoM9Y0k7zWdmObWR6kTAIbr+9dmK0I6OzTVe/scrANo+1Wim+KcZa5rpRWg0PQT
	uGOg==
X-Gm-Message-State: AOPr4FXBJ4IO2fSK+SutfLZjPmWHh4qabYf82P1dmvfuCE/184bdO0G9bIUgxr6427wseQ==
X-Received: by 10.194.192.36 with SMTP id hd4mr6639351wjc.85.1460515910253;
	Tue, 12 Apr 2016 19:51:50 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	k125sm25481569wmb.14.2016.04.12.19.51.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 19:51:48 -0700 (PDT)
Date: Wed, 13 Apr 2016 04:51:47 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160413025147.GE22139@resin>
References: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
	<1460411685-12573-2-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460411685-12573-2-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 2/2] raspberrypi3: set core frequency
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
X-List-Received-Date: Wed, 13 Apr 2016 02:51:57 -0000
X-Groupsio-MsgNum: 29395
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n+lFg1Zro7sl44OB"
Content-Disposition: inline

--n+lFg1Zro7sl44OB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 11, 2016 at 05:54:45PM -0400, Trevor Woerner wrote:
> Pegging the core frequency at 250 avoids any fluctuations of the baud rate on
> the console.
>
> See:
> 	https://www.raspberrypi.org/forums/viewtopic.php?f=107&t=138223
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/raspberrypi3.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> index cb6056e..81301c3 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -9,3 +9,4 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
>  include conf/machine/raspberrypi2.conf
>
>  SERIAL_CONSOLE = "115200 ttyS0"
> +CORE_FREQ = "250"

I think it would be better to use enable_uart in config.txt for this
situation. Setting it to 1 would work on all the rpi versions with
current firmware (to be tested).

--
Andrei Gherzan

--n+lFg1Zro7sl44OB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDbRCAAoJEHO76Gt+erfPLGoQAIp/CbyGuj+7KvoL4Z+UTYKZ
HTbxy3qZ7onep2ao3IhC0x3yIPDevcSzy234aKJzoAMMVGWymWnzkLq7rj/fBmKl
6TGF+4nuGdgEuHYMfg2D1rdw9wDMyP5P81rNSSUQ4uz25qRtMOAVltPNNPfmo38x
hx3LNytxKEQ+9Fwcj+yHI/f9HoEXJJd4SCgdFUrrzSIMFENe4UQPT+tWBynbvAz6
b4VM/zi4rQOa/4O1iF3jubnzuGtqsrrFoSdErG3kNMF+QEdK2KyCKpnA9j3/BtCF
Ufoan8ySEUmqPqv6vOEHVR9H0VKJAXLhMuAXjKc/MgQpg0rpy9i41Ys2hcGMt2J9
gqOkMCA3cIUcua71DQOy+Wz02DmFw1kCdzw05kzyDUZ5yC4REfyjnsLIWIbwFO8i
2w3Tft6QU3DRvvidL0XZLT5fRPUR9VcLZ/Yq0Q/RSHi2ymgR3RG6n0T2qLRbRGzS
gZ+FBfpACEyPOJxmlMnza5com7/3IZ6bZ3hMTc3k/E+CUBZYl7tZSHi6493XPBCe
u4lODdo4xYBVfyjj3iH8K51YxUG9rv7MBpOATkxbEwhn4DT0et0XhC9IUF79MBF2
AY+znN3wSpg/D9dSmBxCwa2iBOMT+nGc6gKIDN43I9l+2IcCdF0b1WtYvA1g43qo
wyfhhsSPQyEtUFgm/Irx
=zm1F
-----END PGP SIGNATURE-----

--n+lFg1Zro7sl44OB--
