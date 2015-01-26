Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A747EE00837; Mon, 26 Jan 2015 12:36:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA3B1E0082D
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 12:36:40 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-mn.atk.com with ESMTP; 26 Jan 2015 14:28:34 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Mon, 26 Jan 2015 13:36:38 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: Chris Tapp <opensource@keylevel.com>, James Abernathy
	<jfabernathy@outlook.com>
Thread-Topic: [yocto] adding all the pieces of WiFi to core-image-minimal
Thread-Index: AQHQNzHOBXOT+dvbvEumcsdhxTNa8JzObX0AgARxsICAAAWRAIAAGw4AgAAHQ4CAAATJgIAAOJKAgAAPuQD//4uoAA==
Date: Mon, 26 Jan 2015 20:36:37 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73ED7A@UT40SVCWEM001.atk.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
	<B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
In-Reply-To: <B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
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
X-List-Received-Date: Mon, 26 Jan 2015 20:36:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Try building core-image-base or adding packagegroup-base-extended to your I=
MAGE_INSTALL. This should add the modules and firmware.

core-image-minimal is just that and only includes just enough to boot the s=
ystem.

P.S. if you add "wifi" to your DISTRO_FEATURES, then packagegroup-base-wifi=
 should automatically get added to the image. Checkout meta/recipes-core/pa=
ckagegroups/packagegroup-base.bb to see how that works.

Thomas

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Tapp
Sent: Monday, January 26, 2015 2:28 PM
To: James Abernathy
Cc: yocto@yoctoproject.org; Gary Thomas
Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minimal


On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com> wrote:


I get a clean build when I add:=A0CORE_IMAGE_EXTRA_INSTALL +=3D " packagegr=
oup-base-wifi"

However, I have no wireless drivers. =A0I must have to add something to add=
 the drivers and firmware to the kernel. =A0Not sure what though.

I'm not an expert here, but I think that adding kernel-modules and linux-fi=
rmware to your extra_install should give you what you need.


Jim A

On Jan 26, 2015, at 11:09 AM, James Abernathy <jfabernathy@outlook.com> wro=
te:


On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:

On 2015-01-26 08:26, James Abernathy wrote:



On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@ml=
bassoc.com>> wrote:

On 2015-01-26 06:29, James Abernathy wrote:



On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@m=
lbassoc.com>> wrote:

On 2015-01-23 10:24, Jim Abernathy wrote:

I'm starting a project mostly for self-education. =A0I have already done th=
e project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as t=
argets. =A0Now I want to see how
easy it is to move it to Yocto.

Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and core-i=
mage-sato, both built with bitbake and not the prebuilt images. However, co=
re-image-minimal doesn't have
WiFi and core-image-sato does, but I don't need all the GUI stuff. =A0It's =
a headless application.

So what is recommended; eliminating the GUI from sato or adding wifi and wp=
a-supplicant, etc to minimal?? =A0Also any pointers to how to do the adding=
/subtracting would be most
helpful.

Once this is working all I have to do is put apache-tomcat, and openjdk-7-j=
re, then my application.

We use just iw & wpa-supplicant and set up the configuration
files manually (e.g. the wpa-supplicant configurations).

Could you help with a little more details. =A0What I envision is adding an =
append statement of some kind to local.conf to load in the wireless related=
 files to core-image-minimal,
same with openjdk-7-jre and tomcat7, but my first efforts have generated so=
me unintelligible error for me. =A0So that's why I'm looking for direction =
on where to start with this.

What was the error you got? =A0I'll bet it was for 'iw' which
is a package from meta-oe, so you'll need to add that layer

Once you've added the meta-oe layer, you should be able to
put this line in your local.conf:
CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
Okay, what I don't get is the fact that without any additional layers, bitb=
ake core-image-sato builds all the WiFi features I need. =A0bitbake core-im=
age-minimal does not. =A0So I'm
thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that can jus=
t add what is needed without extra layers.

I guess it just doesn't make sense to me right now.

Try using
CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
which will bring in 'wireless-tools' and 'wpa-supplicant'.

I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
simpler to use.
Thanks, I found that I can clean build with just the wpa-supplicant added a=
nd I'm hoping that will bring in the wifi drivers. =A0If it does, all I wan=
t to do is edit the /etc/interfaces file with the Static IP of the wlan0, t=
he static IP of the eth0 and the wpa-xxx for the WKPA2_PSK information. =A0

Do I really need the tools? =A0I don't need CLI commands to change any netw=
ork parameters later.

Jim A


--=A0
------------------------------------------------------------
Gary Thomas =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| =A0Consulting=
 for the
MLB Associates =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| =A0=A0=A0Embedded w=
orld
------------------------------------------------------------
--=A0
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--=A0
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real cheap!


