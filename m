Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6965E00D98; Wed,  7 Aug 2019 12:01:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [209.222.82.123 listed in list.dnswl.org]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[209.222.82.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD69E00D67
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 12:01:12 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx6.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 07 Aug 2019 19:00:50 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 7 Aug 2019 11:59:48 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 7 Aug 2019 11:59:48 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Belisko Marek <marek.belisko@gmail.com>
Thread-Topic: [yocto] U-boot enable not working for Raspberry Pi3
Thread-Index: AdVMdFsl/WD6MMNoQLOCFWV356rAjgASMIQAAA4mYrD//5aQgIAAdGJw//9T26A=
Date: Wed, 7 Aug 2019 18:59:48 +0000
Message-ID: <b84bb1042f7745e1b0b9c8e1d85975e8@sakuraus.com>
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
	<CAAfyv34M_0dKu2ML0En8QyVCV5KXscZ6gYfZwE=-yrxxHuqxYA@mail.gmail.com>
	<667c8e38a3664b2c964e978b07cb6963@sakuraus.com>
	<CAAfyv34nX0fE5Th7_cMPVTmM863wOu-okW8eFRCRNxdPX0YYWQ@mail.gmail.com>
	<016cfc58a5f44e0996f715bd64291b3b@sakuraus.com>
In-Reply-To: <016cfc58a5f44e0996f715bd64291b3b@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1565204432-893011-21815-31265-3
X-BESS-VER: 2019.1_20190806.2101
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.216988 [from 
	cloudscan19-120.us-east-2b.ess.aws.cudaops.com]
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
X-List-Received-Date: Wed, 07 Aug 2019 19:01:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marek,

I'm going to top post so you don't have to scroll to the meat of the matter=
.

I had rebuilt my system because of a failing main hard disk and had lost se=
ttings on a number of the programs that I had to re-install and didn't noti=
ce. One that has obviously caused me problems is that the editor that I use=
 I keep set to automatically save any changes on loss of focus. I had chang=
ed the local.conf file, but I didn't realize that it hadn't written out the=
 changes.

I realized yesterday that the editor wasn't working as I expected and fixed=
 the setting and went on. This morning I rebuilt my yocto system and it reb=
uilt more than I expected and when I installed it and booted, much to my su=
rprise I realized that u-boot was being executed.

So sorry for the false concern, and thank you for the help and maybe someon=
e will learn something from either my mistake or from your helpful response=
s.

Best Regards,

Greg Wilson-Lindberg=A0=20
=20
> -----Original Message-----
> From: Greg Wilson-Lindberg
> Sent: Tuesday, August 06, 2019 12:03 PM
> To: Belisko Marek <marek.belisko@gmail.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: RE: [yocto] U-boot enable not working for Raspberry Pi3
>=20
> Hi Marek,
>=20
> > -----Original Message-----
> > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > Sent: Tuesday, August 06, 2019 11:40 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] U-boot enable not working for Raspberry Pi3
> >
> > Hi Greg,
> >
> > On Tue, Aug 6, 2019 at 8:29 PM Greg Wilson-Lindberg
> > <GWilson@sakuraus.com>
> > wrote:
> > >
> > > Hi Marek,
> > >
> > > Thanks for the suggestion, that seems to be the case. What image are
> > > you
> > building so I can try that to see what I get?
> > Please don't top post ;). I'm building basic image. I worked few
> > months ago with bootqt and sometimes it was bit tricky ;). Are you
> > sure you have this variable set in local.conf?
>=20
> Here is an excerpt from my local.conf file:
>=20
> # CONF_VERSION is increased each time build/conf/ changes incompatibly an=
d is
> used to # track the version of this file when it was generated. This can =
safely be
> ignored if # this doesn't mean anything to you.
> CONF_VERSION =3D "1"
>=20
>=20
> #
> # Custom additions
> #
>=20
> # Additional dtbo's
> KERNEL_DEVICETREE_remove =3D " overlays/mcp2515-can0.dtbo
> overlays/mcp2515-can1.dtbo"
>=20
> # Fixes for inclusion of mysql
> PACKAGECONFIG_append_pn-qtbase +=3D " sql-mysql"
> QT_CONFIG_FLAGS_append_pn-qtbase +=3D " -I /usr/include/mysql"
> QT_CONFIG_FLAGS_append_pn-qtbase +=3D " -I
> ${STAGING_DIR_TARGET}/usr/include/mysql"
>=20
> RPI_USE_U_BOOT =3D "1"
>=20
> # End Custom additions
> #
>=20
> #INHERIT +=3D "rm_work"
> INHERIT +=3D "image-buildinfo"
> INHERIT +=3D "internal-build"
>=20
> I copied the line from the meta-raspberrypi documentation so I think it s=
hould be
> formatted correctly. I know the mysql stuff is working correctly.
>=20
> I tried bitbake -e core-image-minmal and I don't get it being set then ei=
ther.
>=20
> > >
> > > BR,
> > > Greg
> > >
> > > > -----Original Message-----
> > > > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > > > Sent: Tuesday, August 06, 2019 11:12 AM
> > > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > > Subject: Re: [yocto] U-boot enable not working for Raspberry Pi3
> > > >
> > > > Hi Greg,
> > > >
> > > > On Tue, Aug 6, 2019 at 7:12 PM Greg Wilson-Lindberg
> > > > <GWilson@sakuraus.com>
> > > > wrote:
> > > > >
> > > > > I'm working with a Yocto Sumo build provided with Qt's boot2qt
> > > > > system. I'm trying
> > > > to enable using Das U-boot to load Linux as a first step in trying
> > > > to enable OSTree updates.
> > > > >
> > > > > In the meta-raspberrypi documentation is says to set:
> > > > >
> > > > > RPI_USE_U_BOOT =3D "1"
> > > > Could be tha tboot2qt somehow drop your config. Please try tin run
> > > > bitbake -e <IMAGE_NAME> | grep ^RPI_USE_U_BOOT to be sure that
> > > > variable exists. I used it many times and it works perfectly fine.
> > > > >
> > > > > to enable u-boot for the raspberrypi. I have set that variable
> > > > > in the top level
> > > > local.conf file but I don't seem to be getting any changes in the
> > > > build. Nothing in the cooker log shows building u-boot, and the
> > > > start up screen doesn't show any u-boot messages.
> > > > >
> > > > > It appears that I'm missing necessary to turn u-boot on, can
> > > > > anybody shed some
> > > > light on what is going on?
> > > > >
> > > > > Regards,
> > > > >
> > > > > Greg Wilson-Lindberg
> > > > > www.sakuraus.com
> > > > > --
> > > > > _______________________________________________
> > > > > yocto mailing list
> > > > > yocto@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> > > > BR,
> > > >
> > > > marek
> > > >
> > > > --
> > > > as simple and primitive as possible
> > > > -------------------------------------------------
> > > > Marek Belisko - OPEN-NANDRA
> > > > Freelance Developer
> > > >
> > > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > > > Tel: +421 915 052 184
> > > > skype: marekwhite
> > > > twitter: #opennandra
> > > > web: http://open-nandra.com
> >
> > BR,
> >
> > marek
>=20
> BR,
> Greg

