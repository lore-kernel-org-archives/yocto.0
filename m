Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E696E00837; Mon, 26 Jan 2015 13:05:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2EA0E0082D
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 13:04:56 -0800 (PST)
Received: from unknown (HELO UT40SVCWEC0001.atk.com) ([146.168.70.142])
	by mx-mn.atk.com with ESMTP; 26 Jan 2015 14:56:51 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by
	UT40SVCWEC0001.atk.com ([146.168.70.142]) with mapi id 14.03.0174.001;
	Mon, 26 Jan 2015 14:04:55 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: James Abernathy <jfabernathy@outlook.com>
Thread-Topic: [yocto] adding all the pieces of WiFi to core-image-minimal
Thread-Index: AQHQNzHOBXOT+dvbvEumcsdhxTNa8JzObX0AgARxsICAAAWRAIAAGw4AgAAHQ4CAAATJgIAAOJKAgAAPuQD//4uoAIAAezgA//+KzmA=
Date: Mon, 26 Jan 2015 21:04:54 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
	<B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73ED7A@UT40SVCWEM001.atk.com>
	<BLU437-SMTP1667751EFD409D5161CADCAE350@phx.gbl>
In-Reply-To: <BLU437-SMTP1667751EFD409D5161CADCAE350@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 21:05:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For now, I'd just get everything working with the local.conf:

DISTRO_FEATURES +=3D "wifi"

bitbake core-image-base

Ultimately, you may want to make a custom machine and distro config and inc=
orporate all of the things you've specified in local.conf in those configs.=
 For example, I have a system that's an intel-based single-board computer w=
ith several expansion cards. I've created a machine configuration to define=
 the basic hardware components (features, drivers, etc). I've also created =
a custom distro because we prefer system over systemv and to include some o=
ther non-machine specific packages. Finally, I've created a custom image th=
at includes some other extras.

The power of local.conf is nice, but it's a little tricky transitioning fro=
m that to more of a BSP approach like I described above because most people=
 just say to add it to your local.conf, but that's not really how it should=
 be done at the end. Think global variables vs classes.

P.S. Never edit anything in the poky folder. If you want to modify an exist=
ing recipe, create a new layer with a bbappend and modify away.

Thomas


-----Original Message-----
From: James Abernathy [mailto:jfabernathy@outlook.com]=20
Sent: Monday, January 26, 2015 2:53 PM
To: Moore, Thomas (FtWorth)
Cc: Chris Tapp; yocto@yoctoproject.org; Gary Thomas
Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minimal


> On Jan 26, 2015, at 3:36 PM, Moore, Thomas (FtWorth) <Thomas.Moore2@ATK.C=
OM> wrote:
>=20
> Try building core-image-base or adding packagegroup-base-extended to your=
 IMAGE_INSTALL. This should add the modules and firmware.
>=20
> core-image-minimal is just that and only includes just enough to boot the=
 system.
>=20
> P.S. if you add "wifi" to your DISTRO_FEATURES, then packagegroup-base-wi=
fi should automatically get added to the image. Checkout meta/recipes-core/=
packagegroups/packagegroup-base.bb to see how that works.
>=20
> Thomas
>=20

Interesting!  are we talking about doing this in the local.conf? or are we =
talking about modifying existing recipes?  I'd like to do this cleanly and =
not mess up what's in the default files.  Maybe create my own layer??

Jim A

> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Monday, January 26, 2015 2:28 PM
> To: James Abernathy
> Cc: yocto@yoctoproject.org; Gary Thomas
> Subject: Re: [yocto] adding all the pieces of WiFi to=20
> core-image-minimal
>=20
>=20
> On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com> wrote=
:
>=20
>=20
> I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " packagegr=
oup-base-wifi"
>=20
> However, I have no wireless drivers.  I must have to add something to add=
 the drivers and firmware to the kernel.  Not sure what though.
>=20
> I'm not an expert here, but I think that adding kernel-modules and linux-=
firmware to your extra_install should give you what you need.
>=20
>=20
> Jim A
>=20
> On Jan 26, 2015, at 11:09 AM, James Abernathy <jfabernathy@outlook.com> w=
rote:
>=20
>=20
> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-01-26 08:26, James Abernathy wrote:
>=20
>=20
>=20
> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@=
mlbassoc.com>> wrote:
>=20
> On 2015-01-26 06:29, James Abernathy wrote:
>=20
>=20
>=20
> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary=
@mlbassoc.com>> wrote:
>=20
> On 2015-01-23 10:24, Jim Abernathy wrote:
>=20
> I'm starting a project mostly for self-education.  I have already done=20
> the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard =
as targets.  Now I want to see how easy it is to move it to Yocto.
>=20
> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and=20
> core-image-sato, both built with bitbake and not the prebuilt images. How=
ever, core-image-minimal doesn't have WiFi and core-image-sato does, but I =
don't need all the GUI stuff.  It's a headless application.
>=20
> So what is recommended; eliminating the GUI from sato or adding wifi=20
> and wpa-supplicant, etc to minimal??  Also any pointers to how to do the =
adding/subtracting would be most helpful.
>=20
> Once this is working all I have to do is put apache-tomcat, and openjdk-7=
-jre, then my application.
>=20
> We use just iw & wpa-supplicant and set up the configuration files=20
> manually (e.g. the wpa-supplicant configurations).
>=20
> Could you help with a little more details.  What I envision is adding=20
> an append statement of some kind to local.conf to load in the wireless re=
lated files to core-image-minimal, same with openjdk-7-jre and tomcat7, but=
 my first efforts have generated some unintelligible error for me.  So that=
's why I'm looking for direction on where to start with this.
>=20
> What was the error you got?  I'll bet it was for 'iw' which is a=20
> package from meta-oe, so you'll need to add that layer
>=20
> Once you've added the meta-oe layer, you should be able to put this=20
> line in your local.conf:
> CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
> Okay, what I don't get is the fact that without any additional layers,=20
> bitbake core-image-sato builds all the WiFi features I need.  bitbake cor=
e-image-minimal does not.  So I'm thinking that there is some CORE_IMAGE_EX=
TRA_INSTALL statement that can just add what is needed without extra layers=
.
>=20
> I guess it just doesn't make sense to me right now.
>=20
> Try using
> CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>=20
> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] simpler to=20
> use.
> Thanks, I found that I can clean build with just the wpa-supplicant added=
 and I'm hoping that will bring in the wifi drivers.  If it does, all I wan=
t to do is edit the /etc/interfaces file with the Static IP of the wlan0, t=
he static IP of the eth0 and the wpa-xxx for the WKPA2_PSK information. =20
>=20
> Do I really need the tools?  I don't need CLI commands to change any netw=
ork parameters later.
>=20
> Jim A
>=20
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>=20
> ----
> You can tell you're getting older when your car insurance gets real cheap=
!
>=20


