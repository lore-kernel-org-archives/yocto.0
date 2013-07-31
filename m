Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7418E013A2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 07:04:08 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Wed, 31 Jul 2013 10:04:06 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Wed, 31 Jul 2013 10:04:06 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Wed, 31 Jul 2013 10:04:06 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] recipe dependency on externally built binaries?
Thread-Index: Ac6MirQlju/4ubWnQmiu6GvRyfmo+ABambcAAADkUqA=
Date: Wed, 31 Jul 2013 14:04:05 +0000
Message-ID: <7b2f59a6492f42069a9fe4820a76f7ac@HERMES.RUSSOUND.com>
References: <0a4bf31ea87549a1bf22c3d6e740804a@HERMES.RUSSOUND.com>
	<1549593.BXXGrf3Qbm@helios>
In-Reply-To: <1549593.BXXGrf3Qbm@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.59]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe dependency on externally built binaries?
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
X-List-Received-Date: Wed, 31 Jul 2013 14:04:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

That's a better answer than I was fearing. I was starting to think that Yoc=
to/Poky was only intended to build/assemble versioned or released code.

We are still using Edison. I started going through the cycles of trying to =
upgrade us to Dylan a month or so ago, but ran into an assortment of issues=
 regarding udev (at runtime) and some issues with do_fetch/do_unpack not ex=
ecuting on an image re-build like they do in Edison. My priority list got a=
djusted a bit, and I had to abandon that effort for a while. This informati=
on definitely adds a little more to the benefit column of moving us forward=
.

Are you saying that if I were to move our build system forward to danny or =
Dylan that the dependency behavior I'm looking for in these recipes would s=
tart to work as intended? Would this behavior survive the use of the rm_wor=
k directive?

I found this reply in my SPAM this morning. While I was in there, I found y=
our response to the fetch/unpack issue that you sent a couple weeks back. I=
'll be replying to that shortly.

Thanks,
Brian



-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, July 31, 2013 5:52 AM
To: Brian Karcz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] recipe dependency on externally built binaries?

Hi Brian,

On Monday 29 July 2013 19:05:04 Brian Karcz wrote:
> I'm curious if there is a way to tell a package recipe that its=20
> resulting package output is dependent on the pieces it's assembling.=20
> The scenario I have is as follows. I created a series of recipes that=20
> assemble an externally built executable, and some configurations files=20
> that are local to the recipe:
>=20
> xyz-app.bb
>=20
>     SRC_URI =3D "file://<path to xyz-app executable> \
>                File://xyz-app.config<File:///\\xyz-app.config>"
>=20
>     do_install () {
>         <make the required directories>
>         <put the files in their places>
>     }
>=20
> abc-image.bb
>=20
>     POKY_EXTRA_INSTALL +=3D "xyz-app"
>=20
> This setup works for assembling all the pieces I need, but unless the=20
> app recipe revision gets bumped, it's not able to tell when the=20
> xyz-app executable or xyz-app.config get changed and create a new=20
> xyz-app package file. Is there a way to tell the recipe that there is=20
> a dependency for its output package on the contents of the SRC_URI=20
> line without having to bump the revision?

It depends on which version of the build system you are using. In danny (1.=
3) and later a checksum is performed on every local file referred to in SRC=
_URI (and the checksum will be refreshed if the file's mtime changes); if t=
he checksum is different then do_fetch for the recipe and all tasks that de=
pend upon it should be re-executed.

However, the fact that you refer to POKY_EXTRA_INSTALL suggests you might b=
e using an older version of the build system - the current equivalent varia=
ble is called CORE_IMAGE_EXTRA_INSTALL. Which version are you currently wor=
king with?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

