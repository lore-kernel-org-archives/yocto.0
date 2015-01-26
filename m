Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF5BE0083A; Mon, 26 Jan 2015 13:37:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC1S21.hotmail.com (bay004-omc1s21.hotmail.com
	[65.54.190.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471C8E00836
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 13:37:39 -0800 (PST)
Received: from BAY169-W57 ([65.54.190.59]) by BAY004-OMC1S21.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Mon, 26 Jan 2015 13:37:38 -0800
X-TMN: [wZ8Z2nlhkn4w9YLASw5RzHLm9xniOcAc]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "Moore, Thomas FtWorth" <thomas.moore2@atk.com>
Date: Mon, 26 Jan 2015 16:37:37 -0500
Importance: Normal
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>,
	<54C286DC.2030708@mlbassoc.com>,
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>,
	<54C645E4.9090801@mlbassoc.com>,
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>,
	<54C662AD.5070209@mlbassoc.com>,
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>,
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>,
	<B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73ED7A@UT40SVCWEM001.atk.com>,
	<BLU437-SMTP1667751EFD409D5161CADCAE350@phx.gbl>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 26 Jan 2015 21:37:38.0124 (UTC)
	FILETIME=[4E1C28C0:01D039B0]
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
X-List-Received-Date: Mon, 26 Jan 2015 21:37:43 -0000
Content-Type: multipart/alternative;
	boundary="_117d7fde-84e9-4808-baaf-fe2d6c179fa5_"

--_117d7fde-84e9-4808-baaf-fe2d6c179fa5_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> From: Thomas.Moore2@ATK.COM
> To: jfabernathy@outlook.com
> CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.co=
m
> Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
> Date: Mon=2C 26 Jan 2015 21:04:54 +0000
>=20
> For now=2C I'd just get everything working with the local.conf:
>=20
> DISTRO_FEATURES +=3D "wifi"
>=20
> bitbake core-image-base
>=20
> Ultimately=2C you may want to make a custom machine and distro config and=
 incorporate all of the things you've specified in local.conf in those conf=
igs. For example=2C I have a system that's an intel-based single-board comp=
uter with several expansion cards. I've created a machine configuration to =
define the basic hardware components (features=2C drivers=2C etc). I've als=
o created a custom distro because we prefer system over systemv and to incl=
ude some other non-machine specific packages. Finally=2C I've created a cus=
tom image that includes some other extras.
>=20
> The power of local.conf is nice=2C but it's a little tricky transitioning=
 from that to more of a BSP approach like I described above because most pe=
ople just say to add it to your local.conf=2C but that's not really how it =
should be done at the end. Think global variables vs classes.
>=20
> P.S. Never edit anything in the poky folder. If you want to modify an exi=
sting recipe=2C create a new layer with a bbappend and modify away.
>=20
> Thomas
>=20
>=20
I tried just adding DISTRO_FEATURES +=3D "wifi" to the local.conf and bitba=
king core-image-base=2C but I got a lot of errors:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'glibc'
ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in DI=
STRO_FEATURES)
ERROR: Required build target 'core-image-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-base'=2C 'glibc']

So I got it working with core-image-minimal as I mentioned earlier just bef=
ore your reply.

> -----Original Message-----
> From: James Abernathy [mailto:jfabernathy@outlook.com]=20
> Sent: Monday=2C January 26=2C 2015 2:53 PM
> To: Moore=2C Thomas (FtWorth)
> Cc: Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas
> Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minimal
>=20
>=20
> > On Jan 26=2C 2015=2C at 3:36 PM=2C Moore=2C Thomas (FtWorth) <Thomas.Mo=
ore2@ATK.COM> wrote:
> >=20
> > Try building core-image-base or adding packagegroup-base-extended to yo=
ur IMAGE_INSTALL. This should add the modules and firmware.
> >=20
> > core-image-minimal is just that and only includes just enough to boot t=
he system.
> >=20
> > P.S. if you add "wifi" to your DISTRO_FEATURES=2C then packagegroup-bas=
e-wifi should automatically get added to the image. Checkout meta/recipes-c=
ore/packagegroups/packagegroup-base.bb to see how that works.
> >=20
> > Thomas
> >=20
>=20
> Interesting!  are we talking about doing this in the local.conf? or are w=
e talking about modifying existing recipes?  I'd like to do this cleanly an=
d not mess up what's in the default files.  Maybe create my own layer??
>=20
> Jim A
>=20
> > From: yocto-bounces@yoctoproject.org=20
> > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> > Sent: Monday=2C January 26=2C 2015 2:28 PM
> > To: James Abernathy
> > Cc: yocto@yoctoproject.org=3B Gary Thomas
> > Subject: Re: [yocto] adding all the pieces of WiFi to=20
> > core-image-minimal
> >=20
> >=20
> > On 26 Jan 2015=2C at 19:31=2C James Abernathy <jfabernathy@outlook.com>=
 wrote:
> >=20
> >=20
> > I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " package=
group-base-wifi"
> >=20
> > However=2C I have no wireless drivers.  I must have to add something to=
 add the drivers and firmware to the kernel.  Not sure what though.
> >=20
> > I'm not an expert here=2C but I think that adding kernel-modules and li=
nux-firmware to your extra_install should give you what you need.
> >=20
> >=20
> > Jim A
> >=20
> > On Jan 26=2C 2015=2C at 11:09 AM=2C James Abernathy <jfabernathy@outloo=
k.com> wrote:
> >=20
> >=20
> > On Jan 26=2C 2015=2C at 10:52 AM=2C Gary Thomas <gary@mlbassoc.com> wro=
te:
> >=20
> > On 2015-01-26 08:26=2C James Abernathy wrote:
> >=20
> >=20
> >=20
> > On Jan 26=2C 2015=2C at 8:49 AM=2C Gary Thomas <gary@mlbassoc.com <mail=
to:gary@mlbassoc.com>> wrote:
> >=20
> > On 2015-01-26 06:29=2C James Abernathy wrote:
> >=20
> >=20
> >=20
> > On Jan 23=2C 2015=2C at 12:37 PM=2C Gary Thomas <gary@mlbassoc.com <mai=
lto:gary@mlbassoc.com>> wrote:
> >=20
> > On 2015-01-23 10:24=2C Jim Abernathy wrote:
> >=20
> > I'm starting a project mostly for self-education.  I have already done=
=20
> > the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboar=
d as targets.  Now I want to see how easy it is to move it to Yocto.
> >=20
> > Starting with the NUC=2C I can boot Dizzy 1.7.1 core-image-minimal and=
=20
> > core-image-sato=2C both built with bitbake and not the prebuilt images.=
 However=2C core-image-minimal doesn't have WiFi and core-image-sato does=
=2C but I don't need all the GUI stuff.  It's a headless application.
> >=20
> > So what is recommended=3B eliminating the GUI from sato or adding wifi=
=20
> > and wpa-supplicant=2C etc to minimal??  Also any pointers to how to do =
the adding/subtracting would be most helpful.
> >=20
> > Once this is working all I have to do is put apache-tomcat=2C and openj=
dk-7-jre=2C then my application.
> >=20
> > We use just iw & wpa-supplicant and set up the configuration files=20
> > manually (e.g. the wpa-supplicant configurations).
> >=20
> > Could you help with a little more details.  What I envision is adding=20
> > an append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal=2C same with openjdk-7-jre and tomcat7=
=2C but my first efforts have generated some unintelligible error for me.  =
So that's why I'm looking for direction on where to start with this.
> >=20
> > What was the error you got?  I'll bet it was for 'iw' which is a=20
> > package from meta-oe=2C so you'll need to add that layer
> >=20
> > Once you've added the meta-oe layer=2C you should be able to put this=20
> > line in your local.conf:
> > CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
> > Okay=2C what I don't get is the fact that without any additional layers=
=2C=20
> > bitbake core-image-sato builds all the WiFi features I need.  bitbake c=
ore-image-minimal does not.  So I'm thinking that there is some CORE_IMAGE_=
EXTRA_INSTALL statement that can just add what is needed without extra laye=
rs.
> >=20
> > I guess it just doesn't make sense to me right now.
> >=20
> > Try using
> > CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
> > which will bring in 'wireless-tools' and 'wpa-supplicant'.
> >=20
> > I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] simpler to=20
> > use.
> > Thanks=2C I found that I can clean build with just the wpa-supplicant a=
dded and I'm hoping that will bring in the wifi drivers.  If it does=2C all=
 I want to do is edit the /etc/interfaces file with the Static IP of the wl=
an0=2C the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK informat=
ion. =20
> >=20
> > Do I really need the tools?  I don't need CLI commands to change any ne=
twork parameters later.
> >=20
> > Jim A
> >=20
> >=20
> > --
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >=20
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >=20
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >=20
> > --
> >=20
> > Chris Tapp
> > opensource@keylevel.com
> > www.keylevel.com
> >=20
> > ----
> > You can tell you're getting older when your car insurance gets real che=
ap!
> >=20
>=20
 		 	   		  =

--_117d7fde-84e9-4808-baaf-fe2d6c179fa5_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div>&gt=3B From: Thomas=
.Moore2@ATK.COM<br>&gt=3B To: jfabernathy@outlook.com<br>&gt=3B CC: opensou=
rce@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.com<br>&gt=3B S=
ubject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal<br>=
&gt=3B Date: Mon=2C 26 Jan 2015 21:04:54 +0000<br>&gt=3B <br>&gt=3B For now=
=2C I'd just get everything working with the local.conf:<br>&gt=3B <br>&gt=
=3B DISTRO_FEATURES +=3D "wifi"<br>&gt=3B <br>&gt=3B bitbake core-image-bas=
e<br>&gt=3B <br>&gt=3B Ultimately=2C you may want to make a custom machine =
and distro config and incorporate all of the things you've specified in loc=
al.conf in those configs. For example=2C I have a system that's an intel-ba=
sed single-board computer with several expansion cards. I've created a mach=
ine configuration to define the basic hardware components (features=2C driv=
ers=2C etc). I've also created a custom distro because we prefer system ove=
r systemv and to include some other non-machine specific packages. Finally=
=2C I've created a custom image that includes some other extras.<br>&gt=3B =
<br>&gt=3B The power of local.conf is nice=2C but it's a little tricky tran=
sitioning from that to more of a BSP approach like I described above becaus=
e most people just say to add it to your local.conf=2C but that's not reall=
y how it should be done at the end. Think global variables vs classes.<br>&=
gt=3B <br>&gt=3B P.S. Never edit anything in the poky folder. If you want t=
o modify an existing recipe=2C create a new layer with a bbappend and modif=
y away.<br>&gt=3B <br>&gt=3B Thomas<br>&gt=3B <br>&gt=3B <br>I tried just a=
dding DISTRO_FEATURES +=3D "wifi" to the local.conf and bitbaking core-imag=
e-base=2C but I got a lot of errors:<br><br>NOTE: Resolving any missing tas=
k queue dependencies<br>ERROR: Nothing PROVIDES 'glibc'<br>ERROR: glibc was=
 skipped: missing required distro feature 'ipv4' (not in DISTRO_FEATURES)<b=
r>ERROR: Required build target 'core-image-base' has no buildable providers=
.<br>Missing or unbuildable dependency chain was: ['core-image-base'=2C 'gl=
ibc']<br><br>So I got it working with core-image-minimal as I mentioned ear=
lier just before your reply.<br><br>&gt=3B -----Original Message-----<br>&g=
t=3B From: James Abernathy [mailto:jfabernathy@outlook.com] <br>&gt=3B Sent=
: Monday=2C January 26=2C 2015 2:53 PM<br>&gt=3B To: Moore=2C Thomas (FtWor=
th)<br>&gt=3B Cc: Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas<br>&g=
t=3B Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minim=
al<br>&gt=3B <br>&gt=3B <br>&gt=3B &gt=3B On Jan 26=2C 2015=2C at 3:36 PM=
=2C Moore=2C Thomas (FtWorth) &lt=3BThomas.Moore2@ATK.COM&gt=3B wrote:<br>&=
gt=3B &gt=3B <br>&gt=3B &gt=3B Try building core-image-base or adding packa=
gegroup-base-extended to your IMAGE_INSTALL. This should add the modules an=
d firmware.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B core-image-minimal is just t=
hat and only includes just enough to boot the system.<br>&gt=3B &gt=3B <br>=
&gt=3B &gt=3B P.S. if you add "wifi" to your DISTRO_FEATURES=2C then packag=
egroup-base-wifi should automatically get added to the image. Checkout meta=
/recipes-core/packagegroups/packagegroup-base.bb to see how that works.<br>=
&gt=3B &gt=3B <br>&gt=3B &gt=3B Thomas<br>&gt=3B &gt=3B <br>&gt=3B <br>&gt=
=3B Interesting!  are we talking about doing this in the local.conf? or are=
 we talking about modifying existing recipes?  I'd like to do this cleanly =
and not mess up what's in the default files.  Maybe create my own layer??<b=
r>&gt=3B <br>&gt=3B Jim A<br>&gt=3B <br>&gt=3B &gt=3B From: yocto-bounces@y=
octoproject.org <br>&gt=3B &gt=3B [mailto:yocto-bounces@yoctoproject.org] O=
n Behalf Of Chris Tapp<br>&gt=3B &gt=3B Sent: Monday=2C January 26=2C 2015 =
2:28 PM<br>&gt=3B &gt=3B To: James Abernathy<br>&gt=3B &gt=3B Cc: yocto@yoc=
toproject.org=3B Gary Thomas<br>&gt=3B &gt=3B Subject: Re: [yocto] adding a=
ll the pieces of WiFi to <br>&gt=3B &gt=3B core-image-minimal<br>&gt=3B &gt=
=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B On 26 Jan 2015=2C at 19:31=2C James=
 Abernathy &lt=3Bjfabernathy@outlook.com&gt=3B wrote:<br>&gt=3B &gt=3B <br>=
&gt=3B &gt=3B <br>&gt=3B &gt=3B I get a clean build when I add: CORE_IMAGE_=
EXTRA_INSTALL +=3D " packagegroup-base-wifi"<br>&gt=3B &gt=3B <br>&gt=3B &g=
t=3B However=2C I have no wireless drivers.  I must have to add something t=
o add the drivers and firmware to the kernel.  Not sure what though.<br>&gt=
=3B &gt=3B <br>&gt=3B &gt=3B I'm not an expert here=2C but I think that add=
ing kernel-modules and linux-firmware to your extra_install should give you=
 what you need.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Jim A<=
br>&gt=3B &gt=3B <br>&gt=3B &gt=3B On Jan 26=2C 2015=2C at 11:09 AM=2C Jame=
s Abernathy &lt=3Bjfabernathy@outlook.com&gt=3B wrote:<br>&gt=3B &gt=3B <br=
>&gt=3B &gt=3B <br>&gt=3B &gt=3B On Jan 26=2C 2015=2C at 10:52 AM=2C Gary T=
homas &lt=3Bgary@mlbassoc.com&gt=3B wrote:<br>&gt=3B &gt=3B <br>&gt=3B &gt=
=3B On 2015-01-26 08:26=2C James Abernathy wrote:<br>&gt=3B &gt=3B <br>&gt=
=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B On Jan 26=2C 2015=2C at 8:49=
 AM=2C Gary Thomas &lt=3Bgary@mlbassoc.com &lt=3Bmailto:gary@mlbassoc.com&g=
t=3B&gt=3B wrote:<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B On 2015-01-26 06:29=2C=
 James Abernathy wrote:<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B <br>&gt=3B &gt=
=3B <br>&gt=3B &gt=3B On Jan 23=2C 2015=2C at 12:37 PM=2C Gary Thomas &lt=
=3Bgary@mlbassoc.com &lt=3Bmailto:gary@mlbassoc.com&gt=3B&gt=3B wrote:<br>&=
gt=3B &gt=3B <br>&gt=3B &gt=3B On 2015-01-23 10:24=2C Jim Abernathy wrote:<=
br>&gt=3B &gt=3B <br>&gt=3B &gt=3B I'm starting a project mostly for self-e=
ducation.  I have already done <br>&gt=3B &gt=3B the project using Ubuntu S=
erver 14.04 using a Intel NUC and a Pandaboard as targets.  Now I want to s=
ee how easy it is to move it to Yocto.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B S=
tarting with the NUC=2C I can boot Dizzy 1.7.1 core-image-minimal and <br>&=
gt=3B &gt=3B core-image-sato=2C both built with bitbake and not the prebuil=
t images. However=2C core-image-minimal doesn't have WiFi and core-image-sa=
to does=2C but I don't need all the GUI stuff.  It's a headless application=
.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B So what is recommended=3B eliminating =
the GUI from sato or adding wifi <br>&gt=3B &gt=3B and wpa-supplicant=2C et=
c to minimal??  Also any pointers to how to do the adding/subtracting would=
 be most helpful.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Once this is working a=
ll I have to do is put apache-tomcat=2C and openjdk-7-jre=2C then my applic=
ation.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B We use just iw &amp=3B wpa-suppli=
cant and set up the configuration files <br>&gt=3B &gt=3B manually (e.g. th=
e wpa-supplicant configurations).<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Could =
you help with a little more details.  What I envision is adding <br>&gt=3B =
&gt=3B an append statement of some kind to local.conf to load in the wirele=
ss related files to core-image-minimal=2C same with openjdk-7-jre and tomca=
t7=2C but my first efforts have generated some unintelligible error for me.=
  So that's why I'm looking for direction on where to start with this.<br>&=
gt=3B &gt=3B <br>&gt=3B &gt=3B What was the error you got?  I'll bet it was=
 for 'iw' which is a <br>&gt=3B &gt=3B package from meta-oe=2C so you'll ne=
ed to add that layer<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Once you've added t=
he meta-oe layer=2C you should be able to put this <br>&gt=3B &gt=3B line i=
n your local.conf:<br>&gt=3B &gt=3B CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-=
supplicant"<br>&gt=3B &gt=3B Okay=2C what I don't get is the fact that with=
out any additional layers=2C <br>&gt=3B &gt=3B bitbake core-image-sato buil=
ds all the WiFi features I need.  bitbake core-image-minimal does not.  So =
I'm thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that can=
 just add what is needed without extra layers.<br>&gt=3B &gt=3B <br>&gt=3B =
&gt=3B I guess it just doesn't make sense to me right now.<br>&gt=3B &gt=3B=
 <br>&gt=3B &gt=3B Try using<br>&gt=3B &gt=3B CORE_IMAGE_EXTRA_INSTALL +=3D=
 " packagegroup-base-wifi"<br>&gt=3B &gt=3B which will bring in 'wireless-t=
ools' and 'wpa-supplicant'.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B I prefer 'iw=
' to 'wireless-tools' as it is newer and [IMO] simpler to <br>&gt=3B &gt=3B=
 use.<br>&gt=3B &gt=3B Thanks=2C I found that I can clean build with just t=
he wpa-supplicant added and I'm hoping that will bring in the wifi drivers.=
  If it does=2C all I want to do is edit the /etc/interfaces file with the =
Static IP of the wlan0=2C the static IP of the eth0 and the wpa-xxx for the=
 WKPA2_PSK information.  <br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Do I really ne=
ed the tools?  I don't need CLI commands to change any network parameters l=
ater.<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Jim A<br>&gt=3B &gt=3B <br>&gt=3B =
&gt=3B <br>&gt=3B &gt=3B --<br>&gt=3B &gt=3B ------------------------------=
------------------------------<br>&gt=3B &gt=3B Gary Thomas                =
 |  Consulting for the<br>&gt=3B &gt=3B MLB Associates              |    Em=
bedded world<br>&gt=3B &gt=3B ---------------------------------------------=
---------------<br>&gt=3B &gt=3B --<br>&gt=3B &gt=3B ______________________=
_________________________<br>&gt=3B &gt=3B yocto mailing list<br>&gt=3B &gt=
=3B yocto@yoctoproject.org<br>&gt=3B &gt=3B https://lists.yoctoproject.org/=
listinfo/yocto<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B --<br>&gt=3B &gt=3B _____=
__________________________________________<br>&gt=3B &gt=3B yocto mailing l=
ist<br>&gt=3B &gt=3B yocto@yoctoproject.org<br>&gt=3B &gt=3B https://lists.=
yoctoproject.org/listinfo/yocto<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B --<br>&g=
t=3B &gt=3B _______________________________________________<br>&gt=3B &gt=
=3B yocto mailing list<br>&gt=3B &gt=3B yocto@yoctoproject.org<br>&gt=3B &g=
t=3B https://lists.yoctoproject.org/listinfo/yocto<br>&gt=3B &gt=3B <br>&gt=
=3B &gt=3B --<br>&gt=3B &gt=3B <br>&gt=3B &gt=3B Chris Tapp<br>&gt=3B &gt=
=3B opensource@keylevel.com<br>&gt=3B &gt=3B www.keylevel.com<br>&gt=3B &gt=
=3B <br>&gt=3B &gt=3B ----<br>&gt=3B &gt=3B You can tell you're getting old=
er when your car insurance gets real cheap!<br>&gt=3B &gt=3B <br>&gt=3B <br=
></div> 		 	   		  </div></body>
</html>=

--_117d7fde-84e9-4808-baaf-fe2d6c179fa5_--
