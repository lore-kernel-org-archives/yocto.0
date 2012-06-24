Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E40EE01402
	for <yocto@yoctoproject.org>; Sun, 24 Jun 2012 13:31:46 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SitTE-0007AN-Ig; Sun, 24 Jun 2012 21:31:44 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1743594.b4UxPuuKdH@helios>
Date: Sun, 24 Jun 2012 21:31:41 +0100
Message-Id: <A3AB967E-1604-4206-B37F-7B2FA4FDFA77@keylevel.com>
References: <DCA17C0A-86FA-4EE3-8D86-83348F6DCF36@keylevel.com>
	<1743594.b4UxPuuKdH@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: RaspberryPi Kernel - Fails to boot when sound driver is a built-in
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 24 Jun 2012 20:31:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 24 Jun 2012, at 16:25, Paul Eggleton wrote:

> On Monday 18 June 2012 22:16:44 Chris Tapp wrote:
>> If I build the RPi kernel (SRCREV =
3fc65f9f291fb19cad434968a4a0f66ab749e637)
>> then the board boots as expected.
>>=20
>> However, if a modify the .config (either manually after -c configure, =
or by
>> -c menuconfig) so that CONFIG_SND, CONFIG_SND_TIMER, CONFIG_SND_PCM =
and
>> CONFIG_BCM2835 are set to 'y' (i.e. changed from modules) then the =
kernel
>> no longer boots.
>>=20
>> Has anyone else tried to do this? I'm trying to get a kernel that has =
ALSA
>> working out-of-the-box.
>=20
> Well, FWIW I can't even get a kernel with the default configuration =
built from=20
> meta-raspberrypi to boot - I even tried copying it to a Debian SD-card =
and it=20
> doesn't boot there either. All I get is a black screen or with the =
newer=20
> firmware I get the four-colour display which apparently indicates it =
couldn't=20
> load the kernel.
>=20
> Any suggestions would be welcome...


Firstly:
1) Are you using the SRCREVs as supplied, or have you updated them?
2) Which version of the bootfiles are you using?

Everything is in such a state of flux at the moment that it does seem to =
be difficult to be sure what works one day will work if you upgrade =
anything to use the latest versions. I can get some combinations to =
work, the most up-to-date being:

1) Use the bootfiles with SRCREV =3D =
"9308c7ed387e5422883753f7fb71a75506abd1f8"
2) Build the kernel using SRCREV =3D =
"3fc65f9f291fb19cad434968a4a0f66ab749e637"

Later kernels should be 'better', but I've not yet got any to boot. I =
use the serial port to monitor the boot and this shows nothing. Not seen =
if the color bars show as I've not looked - will do next time I have a =
play.

BTW - you need to update the .conf file for the machine to use ttyAMA0 =
if you want to use the serial port for kernel debug.

There have been a lot of changes to the kernel / bootfiles that mean you =
must update both to get a working image. Some of these relate to where =
the image is loaded, some to how the screen is activated (my config.txt =
entries to set the HDMI video mode stopped working at one point). It =
seems as if nothing is really fixed at the moment and you need to be =
prepared to 'do some digging' if you change anything. When I get a =
moment I want to suggest that a list of matched SRCREVs for 'stable' =
builds that have been verified can be kept somewhere.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




