Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50063E00C81; Sat, 19 Nov 2016 07:10:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EABFCE00C75
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 07:10:21 -0800 (PST)
Received: from [10.1.1.92] (c-4ab0e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.176.74]) by mx.zohomail.com
	with SMTPS id 1479568211808258.5968763935949;
	Sat, 19 Nov 2016 07:10:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Martin Bergek <martin@spotwise.com>
In-Reply-To: <alpine.LFD.2.20.1611190923180.6794@localhost.localdomain>
Date: Sat, 19 Nov 2016 16:10:05 +0100
Message-Id: <0E8BE743-5DC2-48BD-8E0D-C1F5DE844F15@spotwise.com>
References: <alpine.LFD.2.20.1611190923180.6794@localhost.localdomain>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.3251)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any yocto-supported ARM boards out there with BLE/BT?
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
X-List-Received-Date: Sat, 19 Nov 2016 15:10:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

How about Raspberry Pi 3? It has both Bluetooth 4.1 and LE support in =
hardware at least and the board is cheap and should be widely available. =
I just added the bluez5 package to my build but haven=E2=80=99t had time =
to test it out yet.

Good luck!

BR,
Martin Bergek


> On 19 Nov 2016, at 15:28, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:
>=20
>=20
>  hoping someone can give me pointers ... i'm teaching an OE/yocto
> class in january, client would prefer buying a bunch of
> yocto-supported ARM boards that have BLE (bluetooth low energy) for
> the students in the class.
>=20
>  any suggestions? the boards need to be available, well, pretty much
> now, and buyable from a major distributor. BLE is not a deal-breaker,
> just would be nice.
>=20
>  suggestions?
>=20
> rday
>=20
> --=20
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



