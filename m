Return-Path: <prvs=99693d098=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A48BE00C49; Wed, 10 Apr 2019 02:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.133.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa2.bmw.c3s2.iphmx.com (esa2.bmw.c3s2.iphmx.com
	[68.232.133.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B1B4E00C14
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 02:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1554890363; x=1586426363;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=fJS3Uz4P/9/z9EXIMrxkXgICw/6OJx6R+PPvOBTuNFg=;
	b=Gu3HUr/Ozzx0w2Ns/Qo23d21KHCX7/wJPLiukdHDXzs8HH4dhTc3KyAx
	Yh8km7T0da4I2qtyjjt84XApEPYrGl/vjhpm+HbF9Z32d0y/hpNBRAj/s
	/LQvQP8ao2akg5vGw+riZgocJY2RYzT+kkEs7KUqO7R5t9D7S3IGVH1/K A=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
	esa2.bmw.c3s2.iphmx.com with ESMTP/TLS; 10 Apr 2019 11:59:21 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw4.muc with ESMTP/TLS;
	10 Apr 2019 11:59:19 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp)
	([160.48.96.49])
	by esabb6.muc with ESMTP/TLS; 10 Apr 2019 11:59:20 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10m.europe.bmw.corp
	(160.48.96.49) with Microsoft SMTP Server (TLS;
	Wed, 10 Apr 2019 11:59:20 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.003;
	Wed, 10 Apr 2019 11:59:20 +0200
From: <Mikko.Rapeli@bmw.de>
To: <mauro@faresoftware.it>
Thread-Topic: [yocto] Changing IMAGE_NAME [yocto krogoth]
Thread-Index: AQHU74MW5BzbLwhGukSax+/SsMOhr6Y1B5OA
Date: Wed, 10 Apr 2019 09:59:20 +0000
Message-ID: <20190410095919.GQ20077@hiutale>
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
In-Reply-To: <72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.35]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing IMAGE_NAME [yocto krogoth]
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
X-List-Received-Date: Wed, 10 Apr 2019 09:59:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11103FC5E4D199498C648A9E6918944E@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 10, 2019 at 11:47:42AM +0200, Mauro Ziliani wrote:
> Hi all.
>=20
> I need to change the default IMAGE_NAME of my image recipe.
>=20
> I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
> and image (tar) with the name
>=20
> mysystem-image-1.0-<datetime>.tar
>=20
>=20
> So I setup
>=20
> IMAGE_NAME :=3D "{IMAGE_BASENAME}-${PV}-${DATETIME}"

Should be:

IMAGE_NAME :=3D "${IMAGE_BASENAME}-${PV}-${DATETIME}"

note the added $. I guess that's the bit which confuses bitbake. Been there=
, done that
too :)

Hope this helps,

-Mikko=

