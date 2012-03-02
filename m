Return-Path: <koen@beagleboard.org>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A24E0044A
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 02:06:36 -0800 (PST)
Received: by wibhq7 with SMTP id hq7so768787wib.35
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2012 02:06:36 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@beagleboard.org designates
	10.180.92.71 as permitted sender) client-ip=10.180.92.71; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of koen@beagleboard.org
	designates 10.180.92.71 as permitted sender)
	smtp.mail=koen@beagleboard.org
Received: from mr.google.com ([10.180.92.71])
	by 10.180.92.71 with SMTP id ck7mr4547861wib.3.1330682795998 (num_hops
	= 1); Fri, 02 Mar 2012 02:06:35 -0800 (PST)
Received: by 10.180.92.71 with SMTP id ck7mr3658744wib.3.1330682795939;
	Fri, 02 Mar 2012 02:06:35 -0800 (PST)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id 9sm7568731wid.2.2012.03.02.02.06.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 02 Mar 2012 02:06:34 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <alpine.DEB.2.02.1202281723110.9200@oneiric>
Date: Fri, 2 Mar 2012 11:06:32 +0100
Message-Id: <0ED6D044-756A-4D76-AFE5-525A5D0DDCE2@beagleboard.org>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
To: Robert P. J. Day <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQkJDPEA8RMJAQ73xrM76ij7OmbIBJ+5krqGIGy0y7BOBDhFXffnBsx0o4F3UPAYf4sKfWte
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Fri, 02 Mar 2012 10:06:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 feb. 2012, om 23:28 heeft Robert P. J. Day het volgende =
geschreven:

> On Tue, 28 Feb 2012, Koen Kooi wrote:
>=20
>>=20
>> Op 28 feb. 2012, om 22:55 heeft Robert P. J. Day het volgende =
geschreven:
>>=20
>>> On Tue, 28 Feb 2012, Bruce Ashfield wrote:
>>>=20
>>>> It is true that the beagleboard is a hardware reference board in =
the
>>>> yocto consolidated kernel tree and meta-yocto layers. That means
>>>> that it gets the yocto standard QA builds and boot testing.
>>>>=20
>>>> That being said, if you are looking for the latest + specific
>>>> features then you've been pointed in a good direction .. meta-ti
>>>> will meet your needs.
>>>>=20
>>>> As for disentangling and reducing questions in this area .. rest
>>>> assured, we are working on it.
>>>=20
>>> ok, that's perfectly reasonable -- meta-yocto provides a generic,
>>> well-tested product, while the meta-ti layer provides more
>>> leading-edge content, correct?
>>=20
>> No, the amount of testing is not the difference, the amount of
>> support for the board is. Meta-ti supports the camera interfaces, 3d
>> engine, dsp, crypto engines, expansion boards, etc. Meta-yocto lacks
>> all that for beagleboard.
>=20
>  i understand that reasonably well, and i'll make one more
> observation, then i'll shut up.
>=20
>  i cloned the meta-ti layer into my yocto clone, and here's the
> majority of the meta-ti README:
>=20
> =3D=3D=3D=3D=3D start
>=20
> This layer depends on:
>=20
> URI: git://git.openembedded.org/openembedded-core
> branch: master
> revision: HEAD
>=20
> URI: git://git.openembedded.org/meta-openembedded
> branch: master
> revision: HEAD
>=20
> URI: git://git.angstrom-distribution.org/meta-angstrom
> branch: master
> revision: HEAD
>=20
> Currently meta-ti only works with the Angstrom distribution and hence
> requires the meta-angstrom layer. There are known issues when using
> gcc-4.6 based toolchain from OpenEmbedded-Core, thus gcc-4.5
> toolchain, provided by meta-openembedded, is needed. It is planned to
> fix these shortcomings in the near future and allow building the base
> BSP part of meta-ti with different distributions and layer stacks,
> such as: distro-less (only with OE-Core), with Yocto/Poky, with
> Angstrom or Arago.
>=20
> Due to the above, it is now recommended to follow the instructions at
> http://www.angstrom-distribution.org/building-angstrom
>=20
> This will set it up for the OpenEmbedded-core layout instead of the
> old "Classic" OpenEmbedded-dev layout. You can optionally tweak
> sources/layers.txt and conf/bblayers.conf to (de)select BSP layers.
>=20
> =3D=3D=3D=3D=3D end
>=20
>  by the time i'm done reading that, i'm not sure whether i've been
> told i can use yocto as long as i do the necessary prep first, or that
> i should give up on yocto and just use angstrom directly. =20

Well, if you use the angstrom setupscript you get 'yocto'. Your phrasing =
seems to suggest you are confusing 'yocto' with 'poky', which is a =
common mistake.=

