Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.193540.1598271435678530093
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 05:17:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.200, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.137
Received: from localhost (80-110-110-137.cgn.dynamic.surfer.at [80.110.110.137])
	(Authenticated sender: foss@0leil.net)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1F97520008;
	Mon, 24 Aug 2020 12:17:12 +0000 (UTC)
Date: Mon, 24 Aug 2020 14:17:11 +0200
In-Reply-To: <Nffe.1598270546825143039.KBHO@lists.yoctoproject.org>
References: <Nffe.1598270546825143039.KBHO@lists.yoctoproject.org>
MIME-Version: 1.0
Subject: Re: [yocto] Yocto uses older PV instead of newest - how to figure out why?
To: yocto@lists.yoctoproject.org,Oliver Westermann <oliver.westermann@cognex.com>
From: "Quentin Schulz" <foss@0leil.net>
Message-ID: <3EA5AD9F-F4A7-486C-8429-491ED754B7C0@0leil.net>
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



Hi Oliver,

On August 24, 2020 2:02:26 PM GMT+02:00, Oliver Westermann <oliver=2Eweste=
rmann@cognex=2Ecom> wrote:
>Hey,
>
>we're porting our yocto from an older NXP iMX release to their newest
>BSP, upgrading yocto in the process from sumo to zeus=2E
>Using their current setup, the layers provide one recipe in two
>versions - 0=2E2 and 1=2E0=2E imx-boot to be precise=2E
>
>I assumed yocto would use the newer version, but it uses 0=2E2 for some
>reason and I can't figure out why: I 'grep'ed' everything and could not
>find any reference to this package which has some version requirements=2E
>Are there any tips to figure out why yocto is not using the 1=2E0 recipe?
>

Everything I wanted to say is in this stack overflow answer: https://stack=
overflow=2Ecom/a/37180291

If what Robert just answered isn't helping, this will (worth a read at lea=
st =F0=9F=98=89)=2E If all have been checked but you still couldn't figure =
it out, at least we got the obvious out of the way =F0=9F=99=82

BR,
Quentin
--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
