Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E19BE00E44; Wed, 20 Apr 2016 14:06:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4F1DE00F1A
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:06:27 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id u206so101469706wme.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=hLHcPPWkfRvy2I/R1Ey1SBjj24tsyLt5S2O3pdrMZ5U=;
	b=eS8/hpteG4/abuR+6BZNvtrT0Heh7FjEhJeO3qU0270AYoYLSbc5UTCe3DQ6JAQDKi
	UmbFBh1iEU2rcM5NiJSFuSJqCBK1mszqTWstJJpod+JiY6lvfZGBVCGrsR5KjTo10kiT
	rU8rEOoZ3IiizoiOz99fCPPiHq7+vDDcYXb/vX06o0UeFCO2YYs8hL5rd7D482zSlVfa
	OOGE1d7sm1dXMbDm+ZweCVFmFzWIzRMAWSociges3Fg3dREedzG6SMmTelFYjeLTZJX+
	Rt47KwD5SHlcgKAtrAEEIy5MFxK83LXWti9YU/gqY2YJhIgUWpnDu/UlCs3w1BBKLROa
	qSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=hLHcPPWkfRvy2I/R1Ey1SBjj24tsyLt5S2O3pdrMZ5U=;
	b=KFffoM99gQbPDjm4JklKAQ8w4doS4nJLcDhcnKGpuOCvqYR8XLTsxg6qVTKS2i3yxI
	dHQr6L6F7OOAKdp6jwkJ78hW57kZfqrQBOe5Kc89nOLGE2gpcv2dVCwgq6Hi2golrcTr
	a0acujCmR015gYPOoleGCXTbDtlo+oayUhuKZqGL7FfHXxHlTkJx7cJxnAshpp9o7H/1
	pOaAQELmNnw+hszS4Y3MqqUiJk7ArNPHMLjH/koAPxk5dkzHbGcycZsNS1eZ950TcQ0w
	cDnR3FDn/vLkmrZXXD4JKTWwC7suj5foBMRfTR8GyOz0KTVGL/ZqU+GZC3yfaweJlMRU
	lqhQ==
X-Gm-Message-State: AOPr4FWxFb0UbxnEmE7sWJ6O7n/JLjp16zatYUvMWTCeX4TpMILOYRyjUK8Y6atkBISm4Q==
X-Received: by 10.28.55.139 with SMTP id e133mr11244373wma.98.1461186386519;
	Wed, 20 Apr 2016 14:06:26 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	by7sm7437820wjc.18.2016.04.20.14.06.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Apr 2016 14:06:25 -0700 (PDT)
Date: Wed, 20 Apr 2016 23:06:24 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <20160420210624.GM1588@resin>
References: <5715F053.8040801@jgueytat.fr>
 <20160420210501.GK1588@resin>
MIME-Version: 1.0
In-Reply-To: <20160420210501.GK1588@resin>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Wed, 20 Apr 2016 21:06:54 -0000
X-Groupsio-MsgNum: 29533
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HL3CiL6n73+IAdG4"
Content-Disposition: inline

--HL3CiL6n73+IAdG4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 20, 2016 at 11:05:01PM +0200, Andrei Gherzan wrote:
> On Tue, Apr 19, 2016 at 10:46:11AM +0200, Julien Gueytat wrote:
> > Hi,
> >
> > I still can't figure out the patch to apply in meta-qt5 to get EGL support
> > with the Raspberry.
> >
> > The test to check EGL does not pass and fails with the following command:
> >
> > arm-poky-linux-gnueabi-g++  -march=armv7-a -marm  -mthumb-interwork
> > -mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7 --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels
> > -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o -lGLESv2
> > -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
> >
> >
> > Here is the content of the file egl.pro:
> >
> > $ cat egl.pro
> > SOURCES = egl.cpp
> >
> > for(p, QMAKE_LIBDIR_EGL) {
> >     exists($$p):LIBS += -L$$p
> > }
> >
> > message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
> > message("In egl.pro - 1: LIBS = $$LIBS")
> >
> > !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
> > !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
> >
> > message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
> > message("In egl.pro - 2: LIBS = $$LIBS")
> >
> > CONFIG -= qt
> >
> > In the main ./configure file of qtbase:
> >
> > | In configure #1: QMAKE_LIBS_EGL =
> > | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif
> > -lbcm_host -lvcos -lvchiq_arm -pthread
> >
> > The variable QMAKE_LIBS_EGL is set properly.
> >
> >
> > In the ./config.tests/qpa/egl/egl.pro file:
> >
> > | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL
> > | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host
> > -lvchostif -lvcos -lvchiq_arm -pthread
> > | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL
> > | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host
> > -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
> >
> >
> > *What I see is that:*
> > In the configure file the variable QMAKE_LIBS_EGL is properly set through
> > pkg-config.
> > In the egl.pro file... The variable LIBS gets the content of QMAKE_LIBS_EGL
> > and the variable QMAKE_LIBS_EGL gets back to its default -lEGL.
> >
> > In the end with have -lGLESv2 before -lEGL and this does not link.
> >
> > I checked also the content of .qmake.vars:
> > grep QMAKE_LIBS_EGL .qmake.vars
> > QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host -lvcos
> > -lvchiq_arm -pthread
> >
> >
> > The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to have his
> > job done too late...
> >
> > If someone has an idea to get the proper correction done...
> >
> > Best Regards,
> > Julien
> >
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> Merged to master. Thanks.
>

Ignore this message. Sorry for the noise but I replied to the wrong
email.

> --
> Andrei Gherzan



--
Andrei Gherzan

--HL3CiL6n73+IAdG4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXF+9PAAoJEHO76Gt+erfPeZoP/1EgBr04I5KJLAw5MwxDq63L
SeOu9vGRRdNs4IMKDOxw0lLvAessJ+roJVekuzwgEf3grb2es2Svvw82LJOfO20r
HE6ObxIj1KikmVqluUC8cPC0LUHWFxtlnqIFEvLeE6OuFqiYjkveLQqqmLROwDur
TqN4zogOJ5MIZ5AwkElblQ/L+RpkERMaHFfOUxh5gcuLamHknqkQwQ3tOETnt6vD
C+62bv5NY/th+gnJYFGte/8CS/5rFDwHLQ3tJcY6nfxRDhCjNQJIBkesZzMjBiR8
y+bIp7cIRhnJeFpVPI4HLuz6IQeGEAXsqTherPFyd0FQ5Hj0jiYJoRyEknMDRJ2A
F+OZf3abx1KZ8ZuQ/8qamfmnhBdyrFWENoJcskiSQayogJvs90z8LUITwrHO6hP0
+7UeHpqCbJALFFbH96QumrgCN2/JeNtqwVPr6Jnq8j6kgNeP/l6Bd0T4J3e+6VCX
+bKkrdNTtZMyTfoTM/eHGfX1Y1+NNfBdWOCxWG01GrmF/CD0q8wasrxTRwlFMqMI
PUBbd8qDVRMkaUrMcKZ9hHXgLcZfx6NMAO7G55l3wHIUwEv8PRYDTZDPOPhMEdyO
Ue0ZTjRRrsLXzvjlSYxBp8VaOnNcib8NYSibrA0xmicwOqFQCS4tnZFsaMO7mWyf
+ebh7OxfuuGMRkgBgD5s
=ZPJa
-----END PGP SIGNATURE-----

--HL3CiL6n73+IAdG4--
