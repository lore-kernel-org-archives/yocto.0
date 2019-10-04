Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00926E00DA9; Fri,  4 Oct 2019 05:24:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Oct 2019 05:24:10 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84D01E00D4A
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 05:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1570191849;
	bh=SkxMB5k4iS9ULNM2kEypcOL5aXMBTx62T8l8CAMOIf8=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=KzJE5DUojnY6QIPBLA0+ozTpd/U3LA/qhnvy9kZd2m8vauJFuquNAFI1s7X/65sdV
	uWToeo6XlHf24Acya4G4aN23a977ywRq7jQrhVX0k6ZKlM5igPpwOKLB/oyTjeOpx+
	45MW08XvYHp005IKobboVu4VlGy/r3ba5iOWqZmE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx004
	[212.227.17.190]) with ESMTPSA (Nemesis) id 1M3UUy-1iFoaG1qLa-000eZy;
	Fri, 04 Oct 2019 14:19:06 +0200
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWQxUaCcNW2GxyoO6cx1i7OFUip8y-BaBVWtB1-A=OWPRQ@mail.gmail.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <d33f7621-c00f-b8a4-83d5-728444eb8db2@gmx.de>
Date: Fri, 4 Oct 2019 14:18:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQxUaCcNW2GxyoO6cx1i7OFUip8y-BaBVWtB1-A=OWPRQ@mail.gmail.com>
X-Provags-ID: V03:K1:mtBMzq559WIGMABTsKR1J66gMezXFoCHqwmKOMizYDrKlP2zVxt
	q6Uy2Wj3vYQn0U/5XHkbupjdx0V0DmJ3SzLOROUxoNS85zIJWKu59bCSkQrg2eY6J8F2LzA
	sPWsU61ge6Ei8L94oSQ2Ku9/n1LK7wD/WHqVJ9HBiyhREOobtuR64qBUy5BTV68sZd4Abu0
	fbi1nRs2Kp8pHoxGTTDzg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0MaIJL4iVHM=:r7NjHde5pIwqZMnnOlC1kN
	B9y/WrZTrCaIY8049S0vPh+l0I4QqqOm2R5KxN8zBWerjnNXYwnyYueqztEu66gUvj1TWCKtf
	iz/vqPYwX0gE5/muk9AHjczhgENRGUQOt/ArLOC/YEAwqervVfrnGqKGfu4sZvSbbXEhughUI
	8bhCpmbrpDUpI9V0779danZ5dxIGZXyNqCSkCWLwluMwzkKK8VGph7lBuAuQ6bZWSNOdo8Yxh
	Xxcds6KLPRGR80ULuGSxH0adXZ5LLHelQwB7mhps935vD8EiUKbSBaOqCsVnkPkinA8d+Wbu/
	zIzITOPJpYBmAdIZ5duIwcrDM9mS6MIMsuLtoX6q3h1thy8DuA6pyUaGDMDplMN5/+dlhAtVn
	+1xhATvIwfA2TvJl/dkWh0vtmia+eJs8Vy+vJJcy3JEr0B9ikv3cd9BRKCqobxWjKyNLFPXvw
	7X/vtQLGLnh4uO14aHF9F3VelSvHpFf53LEJBS+GdxiNXcUepn3D1GubMwo1mGxnWO37XqxNr
	ObLcnI0MZlP4Wqzztp3kBcOJwfAykPI54w8KM6izlKMqQpV9WBSSeOSyc+kR7h6WG7q0Dn3Km
	Ihc1NaUln/oqXC89aWywbOPaW/Bnj08cUqgSvcPuQNU+7e38eM4OtrOZHeqaixKLFVyodvcEK
	9rX1fUsEV6NwYTtwXiGAMZoTA1CqpUI5jrSQjJ4fRDf9BgB8dHiRwcWa6bQWVpR9jzdoTCSr8
	AHUN/pEprzxXingZLk2fGjNAFORFaxT7Aax3NgzG5pGNl9oHJmomtwI4C4xuBCiBrvTP62VDB
	paW+jqhXbGGsHSyXHWzBVBgoDsCuQuMtk5zDlizhQ0kOSTLeDEj6OoHTOEsboZm3zNLdzhw1h
	B+ub0GZFfePWpoOv9lfh1bglkIUE7eS/my+xXF20PKNDgeV56tB4MV4OKrNt6URKSy4wIlpWn
	7YCZZnuY1dehxFZQ+Xa8SidZnzMvW87JawkQ7Eh4sSDhF9yQpFXkmvPyJqBekvKQQjf32TGlR
	nf1ouC5kKM6eaJ4l8JacrmV4J5vYxvV5JYCxGq6srjjU4ABxCmNOmU/ypaebhwmQW7RjoDZG0
	+ECG95uuxvUZaCQp8UEa7sV/zMKiqFEp3dms3X5532QKtKlA10V8NuVHwhu32DUeVuZ0V9OTW
	CRu24dNC7WvzhCvzvG9Gm5Aph9G9RTBB2otALwZqNrhwsTzMgZIgbNNExuf756S07PnENRWB9
	pg70405bb6GfMGwUY5LrpTqV/NC5LqVBSPnfTWSRQbUTmNdbZyixobJUAxyE=
Subject: Re: kernel.bbclass do_bundle_initramfs did not work
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
X-List-Received-Date: Fri, 04 Oct 2019 12:24:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hey JH,

I had a similiar problem before. What branch and revision do you have
checked out for your meta-layers ? Mine looks like the following and I
get an initramfs built into my image:

meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "warrior:01b8a8b54b=
c569e5ef3f5e6fc6abcee365ab25d9"
meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "warrior:6bd7b2edafe90e61a3a52cd089432080b82a7891"
meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D "warrior:2a5f9415e48a38f6f4eb0cf375737a2d8438e2fe"
meta-mingw=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "warrior:10695afe8cd406844e0d0dd868c11677e07557d4"
meta-initramfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "warrior:8d5dcd6522=
e9d15e68637b6d7dda0401f9bb91d0"

Further more what happens if you build only an initramfs ?

bitbake core-image-minimal-initramfs

Any error messages ? If not, how is your initramfs called ? The issue
*could* also be a misspelling in zImage-initramfs.

Best regards
Moritz

On 04.10.19 13:26, JH wrote:
> Hi,
>
> It seems to me if both INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE are
> set it should generate initramfs, but I did not get. I set up in my
> image:
>
> INITRAMFS_IMAGE =3D "zImage-initramfs"
> INITRAMFS_IMAGE_BUNDLE =3D "1"
>
> But it did not build zImage-initramfs, what I could be missing here?
>
> Thank you.
>
> Kind regards,
>
> - jh

