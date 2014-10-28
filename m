Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B7F9E0089E; Tue, 28 Oct 2014 07:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.205.24.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-210.mimecast.com
	(us-smtp-delivery-210.mimecast.com [216.205.24.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0718E0087E
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:33:02 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-3.us.mimecast.lan; Tue, 28 Oct 2014 10:33:01 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 28 Oct 2014 07:33:00 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Date: Tue, 28 Oct 2014 07:32:58 -0700
Thread-Topic: How to get fw_env.config installed
Thread-Index: Ac/yvBLHxHbQfjgDTeGzC45IFaajtQ==
Message-ID: <0E03FD61-9946-46F3-9B92-A103691A00F4@planar.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E668C086DB39@kihagwinex01.int.kistler.com>
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E668C086DB39@kihagwinex01.int.kistler.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: 3XHyel4xTWuMdEmhlBNBMw-1
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to get fw_env.config installed
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
X-List-Received-Date: Tue, 28 Oct 2014 14:33:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable



Matt S.=20
Sent from my pocket

> On Oct 28, 2014, at 12:03 AM, Isak Lichtenstein <Isak.Lichtenstein@kistle=
r.com> wrote:
>=20
> Hi Matt,
>=20
>> I'm working on including the u-boot fw utility tools in my image, specif=
ically
>> fw_printenv and fw_setenv.
>> For these to work the file fw_env.config needs to be placed at /etc/fw_e=
nv.config.
>>=20
>> I can see in oe-core/meta/recipes-bsp/u-boot/u-boot.inc there is a test =
that if
>> fw_env.config is in the working dir it will be installed in ${sysconfdir=
} and I can see
>> in the meta-ti/recipes-bsp/u-boot/u-boot-beagleboard_2011.09.bb they sim=
ply
>> include file://fw_env.conf in the SRC_URI list to get the file in the wo=
rking dir.
>>=20
>> So I created a bbappend file for the ti u-boot recipe (u-boot-ti-staging=
_2013.10.bb)
>> that I'm using and build and I don't get the file in my image root files=
ystem.
>>=20
>> If I run bitbake -c install virtual/bootloader I can see that the file d=
oes get copied
>> into u-boot's working dir image/etc directory but it never makes it into=
 the final root
>> filesystem.
>>=20
>> What am I missing?
>=20
> The u-boot.inc file is looking for  a ".config" file, not ".conf".
>=20
Thanks Isak, I'm aware of that I just miss typed it in that one sentence in=
 my e-mail. I got it right everywhere else including my code. Can I ask hav=
e you used this mechanism and does it work for you?

Matt S.=20

> BR
>=20
> Isak
>=20
>>=20
>> Thanks,
>> Matt S.
>>=20
>> PS I should note that I'm working Dylan branch with the TI Arago layer.
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


