Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42BA6E0083A; Mon, 26 Jan 2015 14:44:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.30 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC1S19.hotmail.com (bay004-omc1s19.hotmail.com
	[65.54.190.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 908D4E00836
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 14:43:59 -0800 (PST)
Received: from BAY169-W12 ([65.54.190.61]) by BAY004-OMC1S19.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Mon, 26 Jan 2015 14:43:59 -0800
X-TMN: [YHUQo18PyrLYVm4rhjhseN0GrwGQLBxh]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W129DD6E28530EB5ECFF1F3AE350@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "Moore, Thomas FtWorth" <thomas.moore2@atk.com>
Date: Mon, 26 Jan 2015 17:43:59 -0500
Importance: Normal
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0D@UT40SVCWEM001.atk.com>
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
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>,
	<BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDDB@UT40SVCWEM001.atk.com>,
	<BAY169-W852BAB9A641A6AC4CE5E43AE350@phx.gbl>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0D@UT40SVCWEM001.atk.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 26 Jan 2015 22:43:59.0473 (UTC)
	FILETIME=[932DCE10:01D039B9]
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
X-List-Received-Date: Mon, 26 Jan 2015 22:44:05 -0000
Content-Type: multipart/alternative;
	boundary="_82a4839d-b016-422d-83a2-a27c6d496cdf_"

--_82a4839d-b016-422d-83a2-a27c6d496cdf_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I was just coming to the realization that core-image-minimal isn't what I=
=0A=
 wanted.  So I'll experiment with core-image-base and a minimal set of =0A=
local.conf statements that give me what I need.  Thanks=2C

Jim A


From: Thomas.Moore2@ATK.COM
To: jfabernathy@outlook.com
CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.com
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
Date: Mon=2C 26 Jan 2015 22:23:12 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
core-image-base installs packagegroup-base-extended=2C whereas core-image-m=
inimal doesn=92t. packagegroup-base-extended adds things like kernel module=
s and other=0A=
 package groups that you=92ll want for a more full-featured system.=0A=
 =0A=
=0A=
Thomas=0A=
=0A=
 =0A=
=0A=
=0A=
From: Jim Abernathy [mailto:jfabernathy@outlook.com]=0A=

=0A=
Sent: Monday=2C January 26=2C 2015 3:54 PM
=0A=
To: Moore=2C Thomas (FtWorth)
=0A=
Cc: Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas
=0A=
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal=0A=
=0A=
=0A=
 =0A=
=0A=
 =0A=
=0A=
=0A=
=0A=
=0A=
From: Thomas.Moore2@ATK.COM
=0A=
To: jfabernathy@outlook.com
=0A=
CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.com
=0A=
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
=0A=
Date: Mon=2C 26 Jan 2015 21:51:47 +0000=0A=
=0A=
Looks like you also need to add ipv4 to the DISTRO_FEATURES:=0A=
 =0A=
DISTRO_FEATURES +=3D "ipv4 wifi"=0A=
 =0A=
Might be worth trying.=0A=
 =0A=
=0A=
Thomas=0A=
=0A=
 =0A=
I'll test with it=2C but why core-image-base vs. core-image-minimal?=0A=
 =0A=
Jim A=0A=
=0A=
=0A=
From: Jim Abernathy [mailto:jfabernathy@outlook.com]=0A=

=0A=
Sent: Monday=2C January 26=2C 2015 3:38 PM
=0A=
To: Moore=2C Thomas (FtWorth)
=0A=
Cc: Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas
=0A=
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal=0A=
=0A=
=0A=
 =0A=
=0A=
 =0A=
=0A=
> From: Thomas.Moore2@ATK.COM
=0A=
> To: jfabernathy@outlook.com
=0A=
> CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.co=
m
=0A=
> Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
=0A=
> Date: Mon=2C 26 Jan 2015 21:04:54 +0000
=0A=
>=20
=0A=
> For now=2C I'd just get everything working with the local.conf:
=0A=
>=20
=0A=
> DISTRO_FEATURES +=3D "wifi"
=0A=
>=20
=0A=
> bitbake core-image-base
=0A=
>=20
=0A=
> Ultimately=2C you may want to make a custom machine and distro config and=
 incorporate all of the things you've specified in local.conf in those conf=
igs. For example=2C I have a system that's an intel-based single-board comp=
uter with several expansion cards. I've=0A=
 created a machine configuration to define the basic hardware components (f=
eatures=2C drivers=2C etc). I've also created a custom distro because we pr=
efer system over systemv and to include some other non-machine specific pac=
kages. Finally=2C I've created a custom=0A=
 image that includes some other extras.
=0A=
>=20
=0A=
> The power of local.conf is nice=2C but it's a little tricky transitioning=
 from that to more of a BSP approach like I described above because most pe=
ople just say to add it to your local.conf=2C but that's not really how it =
should be done at the end. Think global=0A=
 variables vs classes.
=0A=
>=20
=0A=
> P.S. Never edit anything in the poky folder. If you want to modify an exi=
sting recipe=2C create a new layer with a bbappend and modify away.
=0A=
>=20
=0A=
> Thomas
=0A=
>=20
=0A=
>=20
=0A=
I tried just adding DISTRO_FEATURES +=3D "wifi" to the local.conf and bitba=
king core-image-base=2C but I got a lot of errors:
=0A=

=0A=
NOTE: Resolving any missing task queue dependencies
=0A=
ERROR: Nothing PROVIDES 'glibc'
=0A=
ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in DI=
STRO_FEATURES)
=0A=
ERROR: Required build target 'core-image-base' has no buildable providers.
=0A=
Missing or unbuildable dependency chain was: ['core-image-base'=2C 'glibc']
=0A=

=0A=
So I got it working with core-image-minimal as I mentioned earlier just bef=
ore your reply.
=0A=

=0A=
> -----Original Message-----
=0A=
> From: James Abernathy [mailto:jfabernathy@outlook.com]=0A=

=0A=
> Sent: Monday=2C January 26=2C 2015 2:53 PM
=0A=
> To: Moore=2C Thomas (FtWorth)
=0A=
> Cc: Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas
=0A=
> Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minimal
=0A=
>=20
=0A=
>=20
=0A=
> > On Jan 26=2C 2015=2C at 3:36 PM=2C Moore=2C Thomas (FtWorth) <Thomas.Mo=
ore2@ATK.COM> wrote:
=0A=
> >=20
=0A=
> > Try building core-image-base or adding packagegroup-base-extended to yo=
ur IMAGE_INSTALL. This should add the modules and firmware.
=0A=
> >=20
=0A=
> > core-image-minimal is just that and only includes just enough to boot t=
he system.
=0A=
> >=20
=0A=
> > P.S. if you add "wifi" to your DISTRO_FEATURES=2C then packagegroup-bas=
e-wifi should automatically get added to the image. Checkout meta/recipes-c=
ore/packagegroups/packagegroup-base.bb to see how that works.
=0A=
> >=20
=0A=
> > Thomas
=0A=
> >=20
=0A=
>=20
=0A=
> Interesting! are we talking about doing this in the local.conf? or are we=
 talking about modifying existing recipes? I'd like to do this cleanly and =
not mess up what's in the default files. Maybe create my own layer??
=0A=
>=20
=0A=
> Jim A
=0A=
>=20
=0A=
> > From: yocto-bounces@yoctoproject.org=0A=

=0A=
> > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
=0A=
> > Sent: Monday=2C January 26=2C 2015 2:28 PM
=0A=
> > To: James Abernathy
=0A=
> > Cc: yocto@yoctoproject.org=3B Gary Thomas
=0A=
> > Subject: Re: [yocto] adding all the pieces of WiFi to=20
=0A=
> > core-image-minimal
=0A=
> >=20
=0A=
> >=20
=0A=
> > On 26 Jan 2015=2C at 19:31=2C James Abernathy <jfabernathy@outlook.com>=
 wrote:
=0A=
> >=20
=0A=
> >=20
=0A=
> > I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " package=
group-base-wifi"
=0A=
> >=20
=0A=
> > However=2C I have no wireless drivers. I must have to add something to =
add the drivers and firmware to the kernel. Not sure what though.
=0A=
> >=20
=0A=
> > I'm not an expert here=2C but I think that adding kernel-modules and li=
nux-firmware to your extra_install should give you what you need.
=0A=
> >=20
=0A=
> >=20
=0A=
> > Jim A
=0A=
> >=20
=0A=
> > On Jan 26=2C 2015=2C at 11:09 AM=2C James Abernathy <jfabernathy@outloo=
k.com> wrote:
=0A=
> >=20
=0A=
> >=20
=0A=
> > On Jan 26=2C 2015=2C at 10:52 AM=2C Gary Thomas <gary@mlbassoc.com> wro=
te:
=0A=
> >=20
=0A=
> > On 2015-01-26 08:26=2C James Abernathy wrote:
=0A=
> >=20
=0A=
> >=20
=0A=
> >=20
=0A=
> > On Jan 26=2C 2015=2C at 8:49 AM=2C Gary Thomas <gary@mlbassoc.com <mail=
to:gary@mlbassoc.com>> wrote:
=0A=
> >=20
=0A=
> > On 2015-01-26 06:29=2C James Abernathy wrote:
=0A=
> >=20
=0A=
> >=20
=0A=
> >=20
=0A=
> > On Jan 23=2C 2015=2C at 12:37 PM=2C Gary Thomas <gary@mlbassoc.com <mai=
lto:gary@mlbassoc.com>> wrote:
=0A=
> >=20
=0A=
> > On 2015-01-23 10:24=2C Jim Abernathy wrote:
=0A=
> >=20
=0A=
> > I'm starting a project mostly for self-education. I have already done=20
=0A=
> > the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboar=
d as targets. Now I want to see how easy it is to move it to Yocto.
=0A=
> >=20
=0A=
> > Starting with the NUC=2C I can boot Dizzy 1.7.1 core-image-minimal and=
=20
=0A=
> > core-image-sato=2C both built with bitbake and not the prebuilt images.=
 However=2C core-image-minimal doesn't have WiFi and core-image-sato does=
=2C but I don't need all the GUI stuff. It's a headless application.
=0A=
> >=20
=0A=
> > So what is recommended=3B eliminating the GUI from sato or adding wifi=
=20
=0A=
> > and wpa-supplicant=2C etc to minimal?? Also any pointers to how to do t=
he adding/subtracting would be most helpful.
=0A=
> >=20
=0A=
> > Once this is working all I have to do is put apache-tomcat=2C and openj=
dk-7-jre=2C then my application.
=0A=
> >=20
=0A=
> > We use just iw & wpa-supplicant and set up the configuration files=20
=0A=
> > manually (e.g. the wpa-supplicant configurations).
=0A=
> >=20
=0A=
> > Could you help with a little more details. What I envision is adding=20
=0A=
> > an append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal=2C same with openjdk-7-jre and tomcat7=
=2C but my first efforts have generated some unintelligible error for me. S=
o that's why I'm looking for direction=0A=
 on where to start with this.
=0A=
> >=20
=0A=
> > What was the error you got? I'll bet it was for 'iw' which is a=20
=0A=
> > package from meta-oe=2C so you'll need to add that layer
=0A=
> >=20
=0A=
> > Once you've added the meta-oe layer=2C you should be able to put this=20
=0A=
> > line in your local.conf:
=0A=
> > CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
=0A=
> > Okay=2C what I don't get is the fact that without any additional layers=
=2C=20
=0A=
> > bitbake core-image-sato builds all the WiFi features I need. bitbake co=
re-image-minimal does not. So I'm thinking that there is some CORE_IMAGE_EX=
TRA_INSTALL statement that can just add what is needed without extra layers=
.
=0A=
> >=20
=0A=
> > I guess it just doesn't make sense to me right now.
=0A=
> >=20
=0A=
> > Try using
=0A=
> > CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
=0A=
> > which will bring in 'wireless-tools' and 'wpa-supplicant'.
=0A=
> >=20
=0A=
> > I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] simpler to=20
=0A=
> > use.
=0A=
> > Thanks=2C I found that I can clean build with just the wpa-supplicant a=
dded and I'm hoping that will bring in the wifi drivers. If it does=2C all =
I want to do is edit the /etc/interfaces file with the Static IP of the wla=
n0=2C the static IP of the eth0 and the=0A=
 wpa-xxx for the WKPA2_PSK information.=20
=0A=
> >=20
=0A=
> > Do I really need the tools? I don't need CLI commands to change any net=
work parameters later.
=0A=
> >=20
=0A=
> > Jim A
=0A=
> >=20
=0A=
> >=20
=0A=
> > --
=0A=
> > ------------------------------------------------------------
=0A=
> > Gary Thomas | Consulting for the
=0A=
> > MLB Associates | Embedded world
=0A=
> > ------------------------------------------------------------
=0A=
> > --
=0A=
> > _______________________________________________
=0A=
> > yocto mailing list
=0A=
> > yocto@yoctoproject.org
=0A=
> > https://lists.yoctoproject.org/listinfo/yocto
=0A=
> >=20
=0A=
> > --
=0A=
> > _______________________________________________
=0A=
> > yocto mailing list
=0A=
> > yocto@yoctoproject.org
=0A=
> > https://lists.yoctoproject.org/listinfo/yocto
=0A=
> >=20
=0A=
> > --
=0A=
> > _______________________________________________
=0A=
> > yocto mailing list
=0A=
> > yocto@yoctoproject.org
=0A=
> > https://lists.yoctoproject.org/listinfo/yocto
=0A=
> >=20
=0A=
> > --
=0A=
> >=20
=0A=
> > Chris Tapp
=0A=
> > opensource@keylevel.com
=0A=
> > www.keylevel.com
=0A=
> >=20
=0A=
> > ----
=0A=
> > You can tell you're getting older when your car insurance gets real che=
ap!
=0A=
> >=20
=0A=
> =0A=
=0A=
=0A=
=0A=
=0A=
=0A=
 		 	   		  =

--_82a4839d-b016-422d-83a2-a27c6d496cdf_
Content-Type: text/html; charset="Windows-1252"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I was just coming to the realiza=
tion that core-image-minimal isn't what I=0A=
 wanted.&nbsp=3B So I'll experiment with core-image-base and a minimal set =
of =0A=
local.conf statements that give me what I need.&nbsp=3B Thanks=2C<br><br>Ji=
m A<br><br><br><div><hr id=3D"stopSpelling">From: Thomas.Moore2@ATK.COM<br>=
To: jfabernathy@outlook.com<br>CC: opensource@keylevel.com=3B yocto@yoctopr=
oject.org=3B gary@mlbassoc.com<br>Subject: RE: [yocto] adding all the piece=
s of WiFi to core-image-minimal<br>Date: Mon=2C 26 Jan 2015 22:23:12 +0000<=
br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass a:link=2C .ExternalClass span.ecxMsoHyperlink {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxMsoHyperlinkFollowed {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxMsoAcetate=2C .ExternalClass li.ecxMsoAcetate=2C .Exter=
nalClass div.ecxMsoAcetate {=0A=
font-size:8.0pt=3B=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal=2C .ExternalClass li.ecxmsonormal=2C .Externa=
lClass div.ecxmsonormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsoacetate=2C .ExternalClass li.ecxmsoacetate=2C .Exter=
nalClass div.ecxmsoacetate {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault=2C .ExternalClass li.ecxmsochpdefault=2C =
.ExternalClass div.ecxmsochpdefault {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink {=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed {=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle18 {=0A=
}=0A=
=0A=
.ExternalClass span.ecxballoontextchar {=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal1=2C .ExternalClass li.ecxmsonormal1=2C .Exter=
nalClass div.ecxmsonormal1 {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink1 {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed1 {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsoacetate1=2C .ExternalClass li.ecxmsoacetate1=2C .Ext=
ernalClass div.ecxmsoacetate1 {=0A=
font-size:8.0pt=3B=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle181 {=0A=
font-family:"Calibri"=2C"sans-serif"=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxballoontextchar1 {=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault1=2C .ExternalClass li.ecxmsochpdefault1=
=2C .ExternalClass div.ecxmsochpdefault1 {=0A=
font-size:10.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle32 {=0A=
font-family:"Calibri"=2C"sans-serif"=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxBalloonTextChar {=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-size:10.0pt=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
--></style>=0A=
=0A=
=0A=
<div class=3D"ecxWordSection1">=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">core-=
image-base installs packagegroup-base-extended=2C whereas core-image-minima=
l doesn=92t. packagegroup-base-extended adds things like kernel modules and=
 other=0A=
 package groups that you=92ll want for a more full-featured system.</span><=
/p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Thoma=
s</span><span style=3D"font-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B"></span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #B5C4DF 1.0pt=3Bpadding:3.0pt =
0in 0in 0in=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:10.0pt=3Bfont-family:=
&quot=3BTahoma&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:</span></b><sp=
an style=3D"font-size:10.0pt=3Bfont-family:&quot=3BTahoma&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"> Jim Abernathy [mailto:jfabernathy@outlook.com]=
=0A=
<br>=0A=
<b>Sent:</b> Monday=2C January 26=2C 2015 3:54 PM<br>=0A=
<b>To:</b> Moore=2C Thomas (FtWorth)<br>=0A=
<b>Cc:</b> Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas<br>=0A=
<b>Subject:</b> RE: [yocto] adding all the pieces of WiFi to core-image-min=
imal</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B</span></p>=0A=
<div>=0A=
<div class=3D"ecxMsoNormal" style=3D"text-align:center=3B" align=3D"center"=
><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&qu=
ot=3B=3B">=0A=
<hr id=3D"ecxstopSpelling" size=3D"2" width=3D"100%" align=3D"center">=0A=
</span></div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From: Thomas.Moore2@ATK.COM<b=
r>=0A=
To: jfabernathy@outlook.com<br>=0A=
CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbassoc.com<=
br>=0A=
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal<br=
>=0A=
Date: Mon=2C 26 Jan 2015 21:51:47 +0000</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Looks=
 like you also need to add ipv4 to the DISTRO_FEATURES:</span><span style=
=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></=
span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">DISTR=
O_FEATURES +=3D "ipv4 wifi"</span><span style=3D"font-family:&quot=3BCalibr=
i&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Might=
 be worth trying.</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=
=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Thoma=
s</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-s=
erif&quot=3B=3B"></span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">I'll =
test with it=2C but why core-image-base vs. core-image-minimal?</span><span=
 style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=
=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B</span></p>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-size:11.0pt=3Bfont=
-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497=
D=3B">Jim A</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quo=
t=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #B5C4DF 1.0pt=3Bpadding:3.0pt =
0in 0in 0in=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:10.0pt=3Bfont-family:=
&quot=3BTahoma&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:</span></b><sp=
an style=3D"font-size:10.0pt=3Bfont-family:&quot=3BTahoma&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"> Jim Abernathy [mailto:jfabernathy@outlook.com]=
=0A=
<br>=0A=
<b>Sent:</b> Monday=2C January 26=2C 2015 3:38 PM<br>=0A=
<b>To:</b> Moore=2C Thomas (FtWorth)<br>=0A=
<b>Cc:</b> Chris Tapp=3B yocto@yoctoproject.org=3B Gary Thomas<br>=0A=
<b>Subject:</b> RE: [yocto] adding all the pieces of WiFi to core-image-min=
imal</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsan=
s-serif&quot=3B=3B"></span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&gt=3B From: Thomas.Moore2@ATK.COM<br>=
=0A=
&gt=3B To: jfabernathy@outlook.com<br>=0A=
&gt=3B CC: opensource@keylevel.com=3B yocto@yoctoproject.org=3B gary@mlbass=
oc.com<br>=0A=
&gt=3B Subject: RE: [yocto] adding all the pieces of WiFi to core-image-min=
imal<br>=0A=
&gt=3B Date: Mon=2C 26 Jan 2015 21:04:54 +0000<br>=0A=
&gt=3B <br>=0A=
&gt=3B For now=2C I'd just get everything working with the local.conf:<br>=
=0A=
&gt=3B <br>=0A=
&gt=3B DISTRO_FEATURES +=3D "wifi"<br>=0A=
&gt=3B <br>=0A=
&gt=3B bitbake core-image-base<br>=0A=
&gt=3B <br>=0A=
&gt=3B Ultimately=2C you may want to make a custom machine and distro confi=
g and incorporate all of the things you've specified in local.conf in those=
 configs. For example=2C I have a system that's an intel-based single-board=
 computer with several expansion cards. I've=0A=
 created a machine configuration to define the basic hardware components (f=
eatures=2C drivers=2C etc). I've also created a custom distro because we pr=
efer system over systemv and to include some other non-machine specific pac=
kages. Finally=2C I've created a custom=0A=
 image that includes some other extras.<br>=0A=
&gt=3B <br>=0A=
&gt=3B The power of local.conf is nice=2C but it's a little tricky transiti=
oning from that to more of a BSP approach like I described above because mo=
st people just say to add it to your local.conf=2C but that's not really ho=
w it should be done at the end. Think global=0A=
 variables vs classes.<br>=0A=
&gt=3B <br>=0A=
&gt=3B P.S. Never edit anything in the poky folder. If you want to modify a=
n existing recipe=2C create a new layer with a bbappend and modify away.<br=
>=0A=
&gt=3B <br>=0A=
&gt=3B Thomas<br>=0A=
&gt=3B <br>=0A=
&gt=3B <br>=0A=
I tried just adding DISTRO_FEATURES +=3D "wifi" to the local.conf and bitba=
king core-image-base=2C but I got a lot of errors:<br>=0A=
<br>=0A=
NOTE: Resolving any missing task queue dependencies<br>=0A=
ERROR: Nothing PROVIDES 'glibc'<br>=0A=
ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in DI=
STRO_FEATURES)<br>=0A=
ERROR: Required build target 'core-image-base' has no buildable providers.<=
br>=0A=
Missing or unbuildable dependency chain was: ['core-image-base'=2C 'glibc']=
<br>=0A=
<br>=0A=
So I got it working with core-image-minimal as I mentioned earlier just bef=
ore your reply.<br>=0A=
<br>=0A=
&gt=3B -----Original Message-----<br>=0A=
&gt=3B From: James Abernathy <a href=3D"mailto:[mailto:jfabernathy@outlook.=
com]">[mailto:jfabernathy@outlook.com]</a>=0A=
<br>=0A=
&gt=3B Sent: Monday=2C January 26=2C 2015 2:53 PM<br>=0A=
&gt=3B To: Moore=2C Thomas (FtWorth)<br>=0A=
&gt=3B Cc: Chris Tapp=3B <a href=3D"mailto:yocto@yoctoproject.org">yocto@yo=
ctoproject.org</a>=3B Gary Thomas<br>=0A=
&gt=3B Subject: Re: [yocto] adding all the pieces of WiFi to core-image-min=
imal<br>=0A=
&gt=3B <br>=0A=
&gt=3B <br>=0A=
&gt=3B &gt=3B On Jan 26=2C 2015=2C at 3:36 PM=2C Moore=2C Thomas (FtWorth) =
&lt=3B<a href=3D"mailto:Thomas.Moore2@ATK.COM">Thomas.Moore2@ATK.COM</a>&gt=
=3B wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Try building core-image-base or adding packagegroup-base-exte=
nded to your IMAGE_INSTALL. This should add the modules and firmware.<br>=
=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B core-image-minimal is just that and only includes just enough=
 to boot the system.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B P.S. if you add "wifi" to your DISTRO_FEATURES=2C then packag=
egroup-base-wifi should automatically get added to the image. Checkout meta=
/recipes-core/packagegroups/packagegroup-base.bb to see how that works.<br>=
=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Thomas<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B <br>=0A=
&gt=3B Interesting! are we talking about doing this in the local.conf? or a=
re we talking about modifying existing recipes? I'd like to do this cleanly=
 and not mess up what's in the default files. Maybe create my own layer??<b=
r>=0A=
&gt=3B <br>=0A=
&gt=3B Jim A<br>=0A=
&gt=3B <br>=0A=
&gt=3B &gt=3B From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.org</a>=0A=
<br>=0A=
&gt=3B &gt=3B <a href=3D"mailto:[mailto:yocto-bounces@yoctoproject.org]">[m=
ailto:yocto-bounces@yoctoproject.org]</a> On Behalf Of Chris Tapp<br>=0A=
&gt=3B &gt=3B Sent: Monday=2C January 26=2C 2015 2:28 PM<br>=0A=
&gt=3B &gt=3B To: James Abernathy<br>=0A=
&gt=3B &gt=3B Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a>=3B Gary Thomas<br>=0A=
&gt=3B &gt=3B Subject: Re: [yocto] adding all the pieces of WiFi to <br>=0A=
&gt=3B &gt=3B core-image-minimal<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On 26 Jan 2015=2C at 19:31=2C James Abernathy &lt=3B<a href=
=3D"mailto:jfabernathy@outlook.com">jfabernathy@outlook.com</a>&gt=3B wrote=
:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D=
 " packagegroup-base-wifi"<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B However=2C I have no wireless drivers. I must have to add som=
ething to add the drivers and firmware to the kernel. Not sure what though.=
<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B I'm not an expert here=2C but I think that adding kernel-modu=
les and linux-firmware to your extra_install should give you what you need.=
<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Jim A<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On Jan 26=2C 2015=2C at 11:09 AM=2C James Abernathy &lt=3B<a =
href=3D"mailto:jfabernathy@outlook.com">jfabernathy@outlook.com</a>&gt=3B w=
rote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On Jan 26=2C 2015=2C at 10:52 AM=2C Gary Thomas &lt=3B<a href=
=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt=3B wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On 2015-01-26 08:26=2C James Abernathy wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On Jan 26=2C 2015=2C at 8:49 AM=2C Gary Thomas &lt=3B<a href=
=3D"mailto:gary@mlbassoc.com%20%3cmailto:gary@mlbassoc.com">gary@mlbassoc.c=
om &lt=3Bmailto:gary@mlbassoc.com</a>&gt=3B&gt=3B wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On 2015-01-26 06:29=2C James Abernathy wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On Jan 23=2C 2015=2C at 12:37 PM=2C Gary Thomas &lt=3B<a href=
=3D"mailto:gary@mlbassoc.com%20%3cmailto:gary@mlbassoc.com">gary@mlbassoc.c=
om &lt=3Bmailto:gary@mlbassoc.com</a>&gt=3B&gt=3B wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B On 2015-01-23 10:24=2C Jim Abernathy wrote:<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B I'm starting a project mostly for self-education. I have alre=
ady done <br>=0A=
&gt=3B &gt=3B the project using Ubuntu Server 14.04 using a Intel NUC and a=
 Pandaboard as targets. Now I want to see how easy it is to move it to Yoct=
o.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Starting with the NUC=2C I can boot Dizzy 1.7.1 core-image-mi=
nimal and <br>=0A=
&gt=3B &gt=3B core-image-sato=2C both built with bitbake and not the prebui=
lt images. However=2C core-image-minimal doesn't have WiFi and core-image-s=
ato does=2C but I don't need all the GUI stuff. It's a headless application=
.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B So what is recommended=3B eliminating the GUI from sato or ad=
ding wifi <br>=0A=
&gt=3B &gt=3B and wpa-supplicant=2C etc to minimal?? Also any pointers to h=
ow to do the adding/subtracting would be most helpful.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Once this is working all I have to do is put apache-tomcat=2C=
 and openjdk-7-jre=2C then my application.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B We use just iw &amp=3B wpa-supplicant and set up the configur=
ation files <br>=0A=
&gt=3B &gt=3B manually (e.g. the wpa-supplicant configurations).<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Could you help with a little more details. What I envision is=
 adding <br>=0A=
&gt=3B &gt=3B an append statement of some kind to local.conf to load in the=
 wireless related files to core-image-minimal=2C same with openjdk-7-jre an=
d tomcat7=2C but my first efforts have generated some unintelligible error =
for me. So that's why I'm looking for direction=0A=
 on where to start with this.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B What was the error you got? I'll bet it was for 'iw' which is=
 a <br>=0A=
&gt=3B &gt=3B package from meta-oe=2C so you'll need to add that layer<br>=
=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Once you've added the meta-oe layer=2C you should be able to =
put this <br>=0A=
&gt=3B &gt=3B line in your local.conf:<br>=0A=
&gt=3B &gt=3B CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"<br>=0A=
&gt=3B &gt=3B Okay=2C what I don't get is the fact that without any additio=
nal layers=2C <br>=0A=
&gt=3B &gt=3B bitbake core-image-sato builds all the WiFi features I need. =
bitbake core-image-minimal does not. So I'm thinking that there is some COR=
E_IMAGE_EXTRA_INSTALL statement that can just add what is needed without ex=
tra layers.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B I guess it just doesn't make sense to me right now.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Try using<br>=0A=
&gt=3B &gt=3B CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"<br>=
=0A=
&gt=3B &gt=3B which will bring in 'wireless-tools' and 'wpa-supplicant'.<br=
>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] si=
mpler to <br>=0A=
&gt=3B &gt=3B use.<br>=0A=
&gt=3B &gt=3B Thanks=2C I found that I can clean build with just the wpa-su=
pplicant added and I'm hoping that will bring in the wifi drivers. If it do=
es=2C all I want to do is edit the /etc/interfaces file with the Static IP =
of the wlan0=2C the static IP of the eth0 and the=0A=
 wpa-xxx for the WKPA2_PSK information. <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Do I really need the tools? I don't need CLI commands to chan=
ge any network parameters later.<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Jim A<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B --<br>=0A=
&gt=3B &gt=3B ------------------------------------------------------------<=
br>=0A=
&gt=3B &gt=3B Gary Thomas | Consulting for the<br>=0A=
&gt=3B &gt=3B MLB Associates | Embedded world<br>=0A=
&gt=3B &gt=3B ------------------------------------------------------------<=
br>=0A=
&gt=3B &gt=3B --<br>=0A=
&gt=3B &gt=3B _______________________________________________<br>=0A=
&gt=3B &gt=3B yocto mailing list<br>=0A=
&gt=3B &gt=3B <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>=0A=
&gt=3B &gt=3B <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B --<br>=0A=
&gt=3B &gt=3B _______________________________________________<br>=0A=
&gt=3B &gt=3B yocto mailing list<br>=0A=
&gt=3B &gt=3B <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>=0A=
&gt=3B &gt=3B <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B --<br>=0A=
&gt=3B &gt=3B _______________________________________________<br>=0A=
&gt=3B &gt=3B yocto mailing list<br>=0A=
&gt=3B &gt=3B <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>=0A=
&gt=3B &gt=3B <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B --<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B Chris Tapp<br>=0A=
&gt=3B &gt=3B <a href=3D"mailto:opensource@keylevel.com">opensource@keyleve=
l.com</a><br>=0A=
&gt=3B &gt=3B <a href=3D"http://www.keylevel.com" target=3D"_blank">www.key=
level.com</a><br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B &gt=3B ----<br>=0A=
&gt=3B &gt=3B You can tell you're getting older when your car insurance get=
s real cheap!<br>=0A=
&gt=3B &gt=3B <br>=0A=
&gt=3B </span></p>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div></div> 		 	   		  </div></body>
</html>=

--_82a4839d-b016-422d-83a2-a27c6d496cdf_--
