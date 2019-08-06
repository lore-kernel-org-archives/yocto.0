Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1E0AE00CB9; Tue,  6 Aug 2019 12:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.33 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A23AE00798
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 12:04:38 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 06 Aug 2019 19:04:33 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 6 Aug 2019 12:03:27 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 6 Aug 2019 12:03:27 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Belisko Marek <marek.belisko@gmail.com>
Thread-Topic: [yocto] U-boot enable not working for Raspberry Pi3
Thread-Index: AdVMdFsl/WD6MMNoQLOCFWV356rAjgASMIQAAA4mYrD//5aQgIAAdGJw
Date: Tue, 6 Aug 2019 19:03:27 +0000
Message-ID: <016cfc58a5f44e0996f715bd64291b3b@sakuraus.com>
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
	<CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
	<667c8e38a3664b2c964e978b07cb6963@sakuraus.com>
	<CAAfyv34nX0fE5Th7_cMPVTmM863wOu-okW8eFRCRNxdPX0YYWQ@mail.gmail.com>
In-Reply-To: <CAAfyv34nX0fE5Th7_cMPVTmM863wOu-okW8eFRCRNxdPX0YYWQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1565118272-893002-31920-32368-1
X-BESS-VER: 2019.1_20190805.2038
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.216941 [from 
	cloudscan12-185.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 19:04:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

> -----Original Message-----
> From: Belisko Marek [mailto:marek.belisko@gmail.com]
> Sent: Tuesday, August 06, 2019 11:40 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] U-boot enable not working for Raspberry Pi3
>=20
> Hi Greg,
>=20
> On Tue, Aug 6, 2019 at 8:29 PM Greg Wilson-Lindberg <GWilson@sakuraus.com=
>
> wrote:
> >
> > Hi Marek,
> >
> > Thanks for the suggestion, that seems to be the case. What image are yo=
u
> building so I can try that to see what I get?
> Please don't top post ;). I'm building basic image. I worked few months a=
go with
> bootqt and sometimes it was bit tricky ;). Are you sure you have this var=
iable set in
> local.conf?

Here is an excerpt from my local.conf file:

# CONF_VERSION is increased each time build/conf/ changes incompatibly and =
is used to
# track the version of this file when it was generated. This can safely be =
ignored if
# this doesn't mean anything to you.
CONF_VERSION =3D "1"


#
# Custom additions
#

# Additional dtbo's
KERNEL_DEVICETREE_remove =3D " overlays/mcp2515-can0.dtbo overlays/mcp2515-=
can1.dtbo"

# Fixes for inclusion of mysql
PACKAGECONFIG_append_pn-qtbase +=3D " sql-mysql"
QT_CONFIG_FLAGS_append_pn-qtbase +=3D " -I /usr/include/mysql"
QT_CONFIG_FLAGS_append_pn-qtbase +=3D " -I ${STAGING_DIR_TARGET}/usr/includ=
e/mysql"

RPI_USE_U_BOOT =3D "1"

# End Custom additions
#

#INHERIT +=3D "rm_work"
INHERIT +=3D "image-buildinfo"
INHERIT +=3D "internal-build"

I copied the line from the meta-raspberrypi documentation so I think it sho=
uld be formatted correctly. I know the mysql stuff is working correctly.

I tried bitbake -e core-image-minmal and I don't get it being set then eith=
er.

> >
> > BR,
> > Greg
> >
> > > -----Original Message-----
> > > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > > Sent: Tuesday, August 06, 2019 11:12 AM
> > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > Subject: Re: [yocto] U-boot enable not working for Raspberry Pi3
> > >
> > > Hi Greg,
> > >
> > > On Tue, Aug 6, 2019 at 7:12 PM Greg Wilson-Lindberg
> > > <GWilson@sakuraus.com>
> > > wrote:
> > > >
> > > > I'm working with a Yocto Sumo build provided with Qt's boot2qt
> > > > system. I'm trying
> > > to enable using Das U-boot to load Linux as a first step in trying
> > > to enable OSTree updates.
> > > >
> > > > In the meta-raspberrypi documentation is says to set:
> > > >
> > > > RPI_USE_U_BOOT =3D "1"
> > > Could be tha tboot2qt somehow drop your config. Please try tin run
> > > bitbake -e <IMAGE_NAME> | grep ^RPI_USE_U_BOOT to be sure that
> > > variable exists. I used it many times and it works perfectly fine.
> > > >
> > > > to enable u-boot for the raspberrypi. I have set that variable in
> > > > the top level
> > > local.conf file but I don't seem to be getting any changes in the
> > > build. Nothing in the cooker log shows building u-boot, and the
> > > start up screen doesn't show any u-boot messages.
> > > >
> > > > It appears that I'm missing necessary to turn u-boot on, can
> > > > anybody shed some
> > > light on what is going on?
> > > >
> > > > Regards,
> > > >
> > > > Greg Wilson-Lindberg
> > > > www.sakuraus.com
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > > BR,
> > >
> > > marek
> > >
> > > --
> > > as simple and primitive as possible
> > > -------------------------------------------------
> > > Marek Belisko - OPEN-NANDRA
> > > Freelance Developer
> > >
> > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > > Tel: +421 915 052 184
> > > skype: marekwhite
> > > twitter: #opennandra
> > > web: http://open-nandra.com
>=20
> BR,
>=20
> marek

BR,
Greg

