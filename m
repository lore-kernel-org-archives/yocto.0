Return-Path: <giuseppe.bitonti@external.magnetimarelli.com>
Received: from mx2.ex2007.fiatgroup.com (mx1.ex2007.fiatgroup.com
	[129.35.118.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC3BE0150A
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 07:32:23 -0700 (PDT)
Received: from prhu03.fgremc.it (151.92.204.59) by mx1.ex2007.fiatgroup.com
	(151.88.80.13) with Microsoft SMTP Server (TLS) id 8.3.279.5;
	Tue, 17 Sep 2013 16:32:22 +0200
Received: from MXCL21.fgremc.it ([151.92.205.90]) by prhu03.fgremc.it
	([151.92.204.59]) with mapi; Tue, 17 Sep 2013 16:31:58 +0200
From: "BITONTI Giuseppe (MM)" <giuseppe.bitonti@external.magnetimarelli.com>
To: Apelete Seketeli <apelete@seketeli.net>
Date: Tue, 17 Sep 2013 16:31:56 +0200
Thread-Topic: R: [yocto]  Kernel debugging over serial console?
Thread-Index: Ac6zr1NRDIE0/CKwS2iGKpOPm8EjZwAAv/Ag
Message-ID: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9B02@MXCL21.fgremc.it>
References: <9E1CA21291B3664A8E8F31523A10D6BE160CFB9AC3@MXCL21.fgremc.it>
	<20130917131500.GB20226@amegan>
	<9E1CA21291B3664A8E8F31523A10D6BE160CFB9ADD@MXCL21.fgremc.it>
	<20130917141153.GD20226@amegan>
In-Reply-To: <20130917141153.GD20226@amegan>
Accept-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: it-IT
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel debugging over serial console?
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
X-List-Received-Date: Tue, 17 Sep 2013 14:32:24 -0000
Content-Language: it-IT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you, I solved it.
It was my mistake, I was modifing the wrong defconfig file.
Regards,

Giuseppe

-----Messaggio originale-----
Da: Apelete Seketeli [mailto:apelete@seketeli.net]=20
Inviato: marted=EC 17 settembre 2013 16:12
A: BITONTI Giuseppe (MM)
Cc: yocto@yoctoproject.org
Oggetto: Re: R: [yocto] Kernel debugging over serial console?

On 17-Sep-13, BITONTI Giuseppe (MM) wrote:
> Thanks Apelete for your help, but the command you suggested returns the f=
ollowing:
>=20
> root@imx6qsabrelite:~# cat /sys/module/kgdboc/parameters/kgdboc
> cat: can't open '/sys/module/kgdboc/parameters/kgdboc': No such file=20
> or directory
>=20
> root@imx6qsabrelite:~# echo ttymxc1,115200 >=20
> /sys/module/kgdboc/parameters/kgdboc
> -sh: can't create /sys/module/kgdboc/parameters/kgdboc: nonexistent=20
> directory
>=20
> What I miss?

Interesting.
I am not sure how it is handled in Poky 1.4, but on a vanilla Linux distrib=
ution you should have directories in /sys/module/ for the kernel modules wh=
ich need them for their configuration.
kgdboc being such a module, it should have its own directory there.

Could you do:

root@imx6qsabrelite:~# ls -l /sys/module/kgdboc

And paste the output here ?

Cheers.
--=20
        Apelete

