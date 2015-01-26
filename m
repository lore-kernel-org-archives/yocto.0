Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0159E00837; Mon, 26 Jan 2015 12:54:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.116.23 listed in list.dnswl.org]
X-Greylist: delayed 69 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Jan 2015 12:53:57 PST
Received: from BLU004-OMC1S12.hotmail.com (blu004-omc1s12.hotmail.com
	[65.55.116.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5743EE0082D
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 12:53:57 -0800 (PST)
Received: from BLU437-SMTP16 ([65.55.116.9]) by BLU004-OMC1S12.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 12:52:47 -0800
X-TMN: [9PZWAm2pyAhNgwuWWgw2qnYUs2d/LWoa]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU437-SMTP1667751EFD409D5161CADCAE350@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73ED7A@UT40SVCWEM001.atk.com>
Date: Mon, 26 Jan 2015 15:52:42 -0500
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
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 26 Jan 2015 20:52:46.0141 (UTC)
	FILETIME=[099026D0:01D039AA]
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
X-List-Received-Date: Mon, 26 Jan 2015 20:54:00 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable


> On Jan 26, 2015, at 3:36 PM, Moore, Thomas (FtWorth) =
<Thomas.Moore2@ATK.COM> wrote:
>=20
> Try building core-image-base or adding packagegroup-base-extended to =
your IMAGE_INSTALL. This should add the modules and firmware.
>=20
> core-image-minimal is just that and only includes just enough to boot =
the system.
>=20
> P.S. if you add "wifi" to your DISTRO_FEATURES, then =
packagegroup-base-wifi should automatically get added to the image. =
Checkout meta/recipes-core/packagegroups/packagegroup-base.bb to see how =
that works.
>=20
> Thomas
>=20

Interesting!  are we talking about doing this in the local.conf? or are =
we talking about modifying existing recipes?  I=92d like to do this =
cleanly and not mess up what=92s in the default files.  Maybe create my =
own layer??

Jim A

> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Monday, January 26, 2015 2:28 PM
> To: James Abernathy
> Cc: yocto@yoctoproject.org; Gary Thomas
> Subject: Re: [yocto] adding all the pieces of WiFi to =
core-image-minimal
>=20
>=20
> On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com> =
wrote:
>=20
>=20
> I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " =
packagegroup-base-wifi"
>=20
> However, I have no wireless drivers.  I must have to add something to =
add the drivers and firmware to the kernel.  Not sure what though.
>=20
> I'm not an expert here, but I think that adding kernel-modules and =
linux-firmware to your extra_install should give you what you need.
>=20
>=20
> Jim A
>=20
> On Jan 26, 2015, at 11:09 AM, James Abernathy =
<jfabernathy@outlook.com> wrote:
>=20
>=20
> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-01-26 08:26, James Abernathy wrote:
>=20
>=20
>=20
> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>=20
> On 2015-01-26 06:29, James Abernathy wrote:
>=20
>=20
>=20
> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>=20
> On 2015-01-23 10:24, Jim Abernathy wrote:
>=20
> I'm starting a project mostly for self-education.  I have already done =
the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard =
as targets.  Now I want to see how
> easy it is to move it to Yocto.
>=20
> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and =
core-image-sato, both built with bitbake and not the prebuilt images. =
However, core-image-minimal doesn't have
> WiFi and core-image-sato does, but I don't need all the GUI stuff.  =
It's a headless application.
>=20
> So what is recommended; eliminating the GUI from sato or adding wifi =
and wpa-supplicant, etc to minimal??  Also any pointers to how to do the =
adding/subtracting would be most
> helpful.
>=20
> Once this is working all I have to do is put apache-tomcat, and =
openjdk-7-jre, then my application.
>=20
> We use just iw & wpa-supplicant and set up the configuration
> files manually (e.g. the wpa-supplicant configurations).
>=20
> Could you help with a little more details.  What I envision is adding =
an append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal,
> same with openjdk-7-jre and tomcat7, but my first efforts have =
generated some unintelligible error for me.  So that's why I'm looking =
for direction on where to start with this.
>=20
> What was the error you got?  I'll bet it was for 'iw' which
> is a package from meta-oe, so you'll need to add that layer
>=20
> Once you've added the meta-oe layer, you should be able to
> put this line in your local.conf:
> CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
> Okay, what I don't get is the fact that without any additional layers, =
bitbake core-image-sato builds all the WiFi features I need.  bitbake =
core-image-minimal does not.  So I'm
> thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that =
can just add what is needed without extra layers.
>=20
> I guess it just doesn't make sense to me right now.
>=20
> Try using
> CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>=20
> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
> simpler to use.
> Thanks, I found that I can clean build with just the wpa-supplicant =
added and I'm hoping that will bring in the wifi drivers.  If it does, =
all I want to do is edit the /etc/interfaces file with the Static IP of =
the wlan0, the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK =
information. =20
>=20
> Do I really need the tools?  I don't need CLI commands to change any =
network parameters later.
>=20
> Jim A
>=20
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
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
> You can tell you're getting older when your car insurance gets real =
cheap!
>=20


