Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DBC3E004D2; Wed,  8 Mar 2017 09:17:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 977CEE0030B
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 09:17:45 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id 77so15403777pgc.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 09:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=lwPK03wUHcUiwbG6AQbPL02yT6y0qmssbtj8Sw46k28=;
	b=tkqDvx7+15EORwe2ObQNJuQ79nJClqeX5ReIoD6NDQgoq7c1AXcCVHsNwpGLTT6lfo
	FYXSBAbrFMT7yn6E4fKX6sei8JO7jOuJ6uKr5z3cA2p81jD6fbLEU8Y45PN/csSkWlsc
	3g5Aq9JpKH5JLtW/SWscq/crGFZBlCd9YsA1pYtqMjZWLo0poEl7R6PVfOkvVFlvAlu7
	m8vxoGVM5LbOqvj3ZGQlMd8ClCVZ0zhvbJQUcRyDxHI9ntGnz0g/1iGD16SL/OpVwNZs
	u0D6aD1oYK8OC3d7dP1AJU6Xom0yf7RHL4nSAEqAKGkJI+t1/YD5Ql+Dn+8fkqemY8aN
	1OiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=lwPK03wUHcUiwbG6AQbPL02yT6y0qmssbtj8Sw46k28=;
	b=Mo+OG833sKmUDUrC2IERpWNaqW42NA913JVzAr4OidXMZPlrsJxugBzoKegpx5OiA2
	GU+Ux5i/W24Qy2Auhv8CoZB4He9Md0RKmKL2Izc9Q+8RW9fL5zriJqGHqRJwvuR4V11C
	DoXPhEdiSmMtXH6hA3f1rnXSKcF1sCOMYNGAB1W+YqwguPztNreAYD46F0lE1PLnJvU3
	Jx9c5Wn4sKL728X9yDKB8F3qCJnzh4dqPxwTvOlmdhhKRjIyje63md9zqNrfF5Aik/Dn
	EZ9PwFKZd7clt8I/GS+RiJf8/8N3nf9dAEsYUfBYXcm7Obc80wXsptBWlaeQnQijywCf
	pGqA==
X-Gm-Message-State: AMke39n2U5TmcoFI9HduPSN257uo26io6qTRnNn/qunKLaAvnvqoC60NZ7KzXZHtowZWeA==
X-Received: by 10.84.171.195 with SMTP id l61mr10122552plb.84.1488993464730;
	Wed, 08 Mar 2017 09:17:44 -0800 (PST)
Received: from haswell (c-76-102-32-192.hsd1.ca.comcast.net. [76.102.32.192])
	by smtp.gmail.com with ESMTPSA id
	t189sm7353988pfb.81.2017.03.08.09.17.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 09:17:44 -0800 (PST)
Date: Wed, 8 Mar 2017 09:17:42 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Steve Plant <steove@hotmail.com>
Message-ID: <20170308171742.GC2586@haswell>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Wed, 08 Mar 2017 17:17:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 17-03-08 12:40:51, Steve Plant wrote:
> Hi All,
> 
> 
> Very new to all this linux world, and especially Yocto.
> 
> 
> I'm working on a embedded project at the moment using a raspberry pi2 board.
> 
> 
> I have used toaster with Morty 2.2 to compile an image using"rpi-basic-image", to this I have added the following bitbake variables:
> 
> Bitbake variables
> 
> DISTRO
> poky
> DL_DIR
> /home/steve/poky/downloads
> IMAGE_FSTYPES
> ext3 jffs2 tar.bz2 rpi-sdimg
> IMAGE_INSTALL_append
> packagegroup-core-x11-base packagegroup-lxde-base connman
> PACKAGE_CLASSES
> package_rpm
> SSTATE_DIR
> /home/steve/poky/sstate-cache
> 
> DISABLE_OVERSCAN
> 1
> GPU_MEM_1024
> 512
> 
> I have dd'ed the image to an SD card increased the sdb2 partition to the max size and powered up the rpi. Everything looks fine to start with, as it displays the four raspberrys in the top left, then the white "Yocto Project" splash screen complete with small blue dot to the side appears, the progress bar moves across to 100 percent, then the screen turns black with a white cursor in the middle and it appears to freeze with only a very dim one second flash of the "act" led.
> 
> 
> I have then connected the 7" touchscreen and apart from the added multicolored square at the very beginning I get the exact same boot up problem, hangs on the black screen with white cursor (good to see its all resized correctly for the TfT through!!)
> 
> 
> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base I successfully copied over and ran the rpi-basic-image with no problem, ending up with a usable console.
> 
> 
> Looking for any help here, I'm thinking I've missed adding a package, or some type of local.conf instruction. any suggestions would be appreciated.............

Can you send the content of /var/log/Xorg.log file ?

> 
> 
> 
> Regards, Steve.

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


