Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BD00E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 12:11:13 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:36305
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SFVbr-0007mY-10; Wed, 04 Apr 2012 20:11:11 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <jli53s$3p3$1@dough.gmane.org>
Date: Wed, 4 Apr 2012 20:11:08 +0100
Message-Id: <B647F363-D32A-4810-B017-92A3CFC86F95@keylevel.com>
References: <4F7C1F1F.4070806@r-finger.com>	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>	<4F7C438D.5020800@windriver.com>
	<4F7C5651.60209@mlbassoc.com> <jli53s$3p3$1@dough.gmane.org>
To: gmane@reliableembeddedsystems.com
X-Mailer: Apple Mail (2.1257)
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
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 04 Apr 2012 19:11:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 4 Apr 2012, at 19:49, Robert Berger wrote:

> Garry/Andrea,
>=20
> I am currently giving a training based on the Beagle-XM an this error
> happened at the same time on 5 boards with a 3.1 kernel.
>=20
>=20
>> error pattern.  It hangs at this point:
>>  Waiting for root device /dev/mmcblk0p2...
>>  mmc0: error -110 whilst initialising SD card
>>=20
>=20
> The fix was to change the SD cards and use cards from a different
> manufacturer, so yes, it seems to be related to some funny SD card =
timings.

Not sure if it help, but the Raspberry Pi team have been having problems =
with SD cards as well. Some work, some don't - even when they have the =
same part numbers. Seems as if some silicon / firmware revision along =
the way has changed something somewhere...

Chris


