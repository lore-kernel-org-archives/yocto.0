Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF544E0085E; Sun, 21 Dec 2014 07:19:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B40E004F2;
	Sun, 21 Dec 2014 07:19:32 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:53530
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1Y2iI0-003dJo-4O; Sun, 21 Dec 2014 15:19:28 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <F8B8BFD4-CD6C-4716-9916-101BCE9AF412@keylevel.com>
Date: Sun, 21 Dec 2014 15:19:25 +0000
Message-Id: <3609D6CB-72A4-403D-99A4-63E675EE2AB3@keylevel.com>
References: <F8B8BFD4-CD6C-4716-9916-101BCE9AF412@keylevel.com>
To: meta-intel@yoctoproject.org,
 Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Re: Sound over HDMI for ASrock IMB-151 (valleyisland)
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
X-List-Received-Date: Sun, 21 Dec 2014 15:19:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I think I've worked this one out. It looks as if the kernel patch at =
http://mailman.alsa-project.org/pipermail/alsa-devel/2013-October/067530.h=
tml needs to be included so that the ValleyView HDMI codec is detected.

Adding it manually before compiling the kernel gives me audio over HDMI.

Chris

On 14 Dec 2014, at 13:04, Chris Tapp <opensource@keylevel.com> wrote:

> I'm having trouble getting audio out of the HDMI connector on an =
ASrock IMB-151 board.
>=20
> aplay -l reports:
>=20
> **** List of PLAYBACK Hardware Devices ****
> card 0: PCH [HDA Intel PCH], device 0: ALC662 rev1 Analog [ALC662 rev1 =
Analog]
>  Subdevices: 1/1
>  Subdevice #0: subdevice #0
> card 0: PCH [HDA Intel PCH], device 1: ALC662 rev1 Digital [ALC662 =
rev1 Digital]
>  Subdevices: 1/1
>  Subdevice #0: subdevice #0
> card 0: PCH [HDA Intel PCH], device 3: ID 2882 Digital [ID 2882 =
Digital]
>  Subdevices: 1/1
>  Subdevice #0: subdevice #0
>=20
> and aplay -L gives:
>=20
> null
>    Discard all samples (playback) or generate zero samples (capture)
> sysdefault:CARD=3DPCH
>    HDA Intel PCH, ALC662 rev1 Analog
>    Default Audio Device
> front:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    Front speakers
> surround40:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    4.0 Surround output to Front and Rear speakers
> surround41:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    4.1 Surround output to Front, Rear and Subwoofer speakers
> surround50:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    5.0 Surround output to Front, Center and Rear speakers
> surround51:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    5.1 Surround output to Front, Center, Rear and Subwoofer speakers
> surround71:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Analog
>    7.1 Surround output to Front, Center, Side, Rear and Woofer =
speakers
> iec958:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ALC662 rev1 Digital
>    IEC958 (S/PDIF) Digital Audio Output
> hdmi:CARD=3DPCH,DEV=3D0
>    HDA Intel PCH, ID 2882 Digital
>    HDMI Audio Output
>=20
> Running
>=20
>  aplay -D plug:hdmi /usr/share/sounds/alsa/Front_Center.wav
>=20
> gives nothing out of the hdmi. And
>=20
>  speaker-test -D hdmi
>=20
> gives:
>=20
> speaker-test 1.0.27.2
>=20
> Playback device is hdmi
> Stream parameters are 48000Hz, S16_LE, 1 channels
> Using 16 octaves of pink noise
> Channels count (1) not available for playbacks: Invalid argument
> Setting of hwparams failed: Invalid argument
>=20
> I've not been able to find anything on the internet that gives me a =
clue to what's wrong, and alsa is not an area I'm familiar with!
>=20
> Anyone got an idea where I need to look?
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
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


