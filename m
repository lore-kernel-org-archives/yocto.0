Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23A12E00D93; Thu, 21 Apr 2016 10:11:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBFFDE00931
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:10:58 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id v188so253239570wme.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=//O5T+blOmWqiqruMqYWO8c7M60P4O09vswankLIL58=;
	b=VXzmRL5yqVK/5zjIeUHa/2SHWhdBiF2Cw1ujKKm4NvAo0uSdqwzVqRWnHTvR+wRsNE
	BHzAJ/OWy8FCRtN8WMtnhf60G/f0oZ4UOBCY1Nl0n+EGdxr+MbezBnvGGbGIDpoczoKm
	KejT2TUZl5BgXUQ/gB12U+ts2hToos6pOmaRaTLSV6j0ZaNOdqFwYTPkC2fr3Tc38xOM
	Ty84VGZDnfiBXszB9X2k0Q9He0vPPMZZ9GnlFtqrQPrEmvxtNtu0ftabc6sP09ihEvEg
	zVQXuH+r0FljQm01wLtu+/pS7DTu4vikKfejaQDFQI/L6Cs3Rd1UWlKxsMNKOqKlGk6x
	3TGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=//O5T+blOmWqiqruMqYWO8c7M60P4O09vswankLIL58=;
	b=i0HVV0wafgcCW9BwBg3n8c08lM8b9CintqJ7nxqfLahPllNgWR2UrLxFHGKiHhaDSw
	JjSm8lPS3O7lTEVL1H7tOfWSPgNJdyEa1YkixrMvLobzAegx4tZ7Hvm8yvOf1fUZhHPO
	39jGz/hG5QkZvyH/Vm15g+hIdFGPRL/XYAicvKYigKt96fQc3MliDfeBXx5FGi9z0lYS
	XGh6/G7RsrUL7WYWxwtS7NX7pPhxIyTr0ex0QVelXK3o/y0g3d+JIsBLxdiLtkVflZEb
	NtdI54NRB9+3YQiLz8J/BqpPG77OEJ0F7Gl0xdVfcCTz2BsKu3RiCP3z80q6EX8YD2mH
	WGFA==
X-Gm-Message-State: AOPr4FU87z5+HnpjOhsUQ81DYaicoLDFfcQDWYWaAPb5dBt32Oa0+kqF/5bLU8jG4p6f+w==
X-Received: by 10.28.128.143 with SMTP id b137mr2824013wmd.57.1461258657655;
	Thu, 21 Apr 2016 10:10:57 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	186sm15913448wmk.2.2016.04.21.10.10.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 10:10:56 -0700 (PDT)
Date: Thu, 21 Apr 2016 19:10:55 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <20160421171055.GO1588@resin>
References: <5715F053.8040801@jgueytat.fr> <5716C35C.3040800@jgueytat.fr>
	<57188C1B.70804@jgueytat.fr>
MIME-Version: 1.0
In-Reply-To: <57188C1B.70804@jgueytat.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, otavio@ossystems.com.br
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
X-List-Received-Date: Thu, 21 Apr 2016 17:11:04 -0000
X-Groupsio-MsgNum: 29549
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ncX6roZrNNHXnAbh"
Content-Disposition: inline

--ncX6roZrNNHXnAbh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Julien,

On Thu, Apr 21, 2016 at 10:15:23AM +0200, Julien Gueytat wrote:
> Just to keep you informed that a bug report has been opened to Qt:
> https://bugreports.qt.io/browse/QTBUG-52739
>
> We might save some patches in layers by solving this,
> Thanks for helping,
>

Great Julien. Here is a hint - would this help your problem?
https://lists.yoctoproject.org/pipermail/yocto/2016-February/028277.html

> Le 20/04/2016 01:46, Julien Gueytat a =E9crit :
> > Hi again guys,
> >
> > after more investigations:
> >
> > I found out that the default value -lEGL comes from
> > ./mkspecs/common/linux.conf which is included in
> > ./mkspecs/linux-oe-g++/qmake.conf
> >
> > linux-oe-g++ being the only generic mkspecs that should be used in Yocto
> >
> > So! At the time the configuration enters egl.pro the content of the
> > variables LIBS and QMAKE_EGL_LIBS are still a bit weird for me :
> >
> > 1- LIBS already has the content of the QMAKE_EGL_LIBS content from the
> > result of the pkg-config command.
> > 2- QMAKE_EGL_LIBS has the content of the default value found in
> > ./mkspecs/common/linux.conf
> >
> > There are two options to have it properly working:
> > - First and easy option : remove the QMAKE_EGL_LIBS default variable in
> > ./mkspecs/linux-oe-g++/qmake.conf since the good libs seems to already
> > been present in the LIBS variable.
> > - Second option : understand why the LIBS variable is already properly
> > set and why the QMAKE_EGL_LIBS properly computed in the configure and
> > present .qmake.vars is not used. (I would say that the device spec
> > overrides the one from qmake spec... I did not dig further yet.)
> >
> > Anyway I'm pretty sure the trouble comes from meta-qt5 side now. I'm
> > pretty sure meta-raspberrypi maintainers can confirm that their master
> > branch handles pkg-config stuff now.
> >
> > Thanks advance for having a look on this guys,
> > Best Regards
> >
> >
> > Le 19/04/2016 10:46, Julien Gueytat a =E9crit :
> > > Hi,
> > >
> > > I still can't figure out the patch to apply in meta-qt5 to get EGL
> > > support with the Raspberry.
> > >
> > > The test to check EGL does not pass and fails with the following comm=
and:
> > >
> > > arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -marm -mthumb-interwork
> > > -mfloat-abi=3Dhard -mfpu=3Dneon-vfpv4 -mtune=3Dcortex-a7 --sysroot=3D=
/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels
> > > -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-O1 -o egl egl.o
> > > -lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
> > >
> > >
> > > Here is the content of the file egl.pro:
> > >
> > > $ cat egl.pro
> > > SOURCES =3D egl.cpp
> > >
> > > for(p, QMAKE_LIBDIR_EGL) {
> > >     exists($$p):LIBS +=3D -L$$p
> > > }
> > >
> > > message("In egl.pro - 1: QMAKE_LIBS_EGL =3D $$QMAKE_LIBS_EGL")
> > > message("In egl.pro - 1: LIBS =3D $$LIBS")
> > >
> > > !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH +=3D $$QMAKE_INCDIR_EGL
> > > !isEmpty(QMAKE_LIBS_EGL): LIBS +=3D $$QMAKE_LIBS_EGL
> > >
> > > message("In egl.pro - 2: QMAKE_LIBS_EGL =3D $$QMAKE_LIBS_EGL")
> > > message("In egl.pro - 2: LIBS =3D $$LIBS")
> > >
> > > CONFIG -=3D qt
> > >
> > > In the main ./configure file of qtbase:
> > >
> > > | In configure #1: QMAKE_LIBS_EGL =3D
> > > | In configure #2: QMAKE_LIBS_EGL =3D -lEGL -lGLESv2 -lbcm_host
> > > -lvchostif -lbcm_host -lvcos -lvchiq_arm -pthread
> > >
> > > The variable QMAKE_LIBS_EGL is set properly.
> > >
> > >
> > > In the ./config.tests/qpa/egl/egl.pro file:
> > >
> > > | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL =3D -lEGL
> > > | Project MESSAGE: In egl.pro - 1: LIBS =3D -lEGL -lGLESv2 -lbcm_host
> > > -lvchostif -lvcos -lvchiq_arm -pthread
> > > | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL =3D -lEGL
> > > | Project MESSAGE: In egl.pro - 2: LIBS =3D -lEGL -lGLESv2 -lbcm_host
> > > -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
> > >
> > >
> > > *What I see is that:*
> > > In the configure file the variable QMAKE_LIBS_EGL is properly set
> > > through pkg-config.
> > > In the egl.pro file... The variable LIBS gets the content of
> > > QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its
> > > default -lEGL.
> > >
> > > In the end with have -lGLESv2 before -lEGL and this does not link.
> > >
> > > I checked also the content of .qmake.vars:
> > > grep QMAKE_LIBS_EGL .qmake.vars
> > > QMAKE_LIBS_EGL =3D -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host
> > > -lvcos -lvchiq_arm -pthread
> > >
> > >
> > > The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to
> > > have his job done too late...
> > >
> > > If someone has an idea to get the proper correction done...
> > >
> > > Best Regards,
> > > Julien
> > >
> > >
> > >
> >
>

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--
Andrei Gherzan

--ncX6roZrNNHXnAbh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGQmeAAoJEHO76Gt+erfP5ukP/Ag9iFg0UqMHMAgUvMCRk5Xx
YGTQ/YH5TkrcwJWBJ+IWbz1lWSyiMNtjfFCQOIM4FuY+HPq7y9NLvd7HPdfvDkQ1
nlBgEanSWcm8oHfpEmVlYDOMajnSlti0C+VyVnI8JuzYOdtczRAHJB/699olU8of
umxG0bZPO1K9IVLYQH1xvmnCBcB1NyyLeh7qF2VW/pZ/coytE7n05A23QWORB6HY
tOk9B90xxRc/EhavoQEJYVAE9EnJ79WNBoZ5ozLxdHvZjA/RMCdqMFqflt2I0qay
59C2OyNOblcrbvAmZx17wNoKkT89Ct4NBLVpbu2H0vbi829/8eRzL95AH+cmIDId
9k+kXtbrH3/WqDjQNXNrETtkVlsL2WbYQy56F/As/fpzhF6ME18EpETfxTg1Ksml
hbcnuYbtYr3zd90dw30LT676L6gmDYla1bJUyC311F93gvjN3Jokz296NoXeQqK2
7lRPtW6YRdSHFsRBMej5xTq9DtuYdwbwtADDr/7qQ1dTFsJUKk4MEJma4jwV/oJP
EMWLgZJ/eLj4u2zB6VcDzJvSKjzhW1hCoUWtm0KnqN+wpEmih8IsrCNojlUxwMJ+
SbTGbY6DT0BeAPdZQrS5Ih9AmkYchPssZqH6oDZDQtGl0XGK4PCavNVzVrKNnkQr
t0sLz0Vklg7pCTmmTpZs
=c9Xq
-----END PGP SIGNATURE-----

--ncX6roZrNNHXnAbh--
