Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77E794C800C1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:12:44 -0500 (CDT)
Received: by wwf4 with SMTP id 4so1496922wwf.11
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 12:12:43 -0700 (PDT)
Received: by 10.227.58.65 with SMTP id f1mr3483058wbh.3.1310757162772;
	Fri, 15 Jul 2011 12:12:42 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id eo18sm1296612wbb.12.2011.07.15.12.12.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Jul 2011 12:12:41 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E208803.3050306@linux.intel.com>
Date: Fri, 15 Jul 2011 21:12:35 +0200
Message-Id: <596D642B-8887-4A7B-8FEB-E9830351EABC@dominion.thruhere.net>
References: <4E205D20.2060106@ll.mit.edu> <4E208803.3050306@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: Color ghosting on BeagleBoard xM rev C
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
X-List-Received-Date: Fri, 15 Jul 2011 19:12:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 jul 2011, om 20:33 heeft Darren Hart het volgende geschreven:

> Jason, Koen,
>=20
> Does anything spring to mind as an obvious fix for this? Perhaps some
> kernel parameter initialization string for the graphics hardware?

I've never seen it in angstrom, so you'd have to see what meta-yocto is =
doing different. In other news, for beagleboard please use the meta-ti =
layer for that, it's the offcial upstream for beagle and is known to =
work.

>=20
> --
> Darren
>=20
> On 07/15/2011 08:30 AM, Jeff Mitchell wrote:
>> Darren Hart suggested I send this to the list...
>>=20
>> Attached is a picture of my screen running Terminal. This is on a=20
>> BeagleBoard xM rev C connected via its HDMI out to a DVI adapter and=20=

>> then into a Dell UltraSharp monitor. Angstrom doesn't display these=20=

>> problems, so the setup should be fine.
>>=20
>> I'm not quite sure what is causing this. The resolution is also =
fairly=20
>> low, and I haven't had any success using boot parameters (either the=20=

>> older video=3Domapfb:mode variant or the newer DSS2 omapfb.mode =
variant).
>>=20
>> Thanks,
>> Jeff
>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel


