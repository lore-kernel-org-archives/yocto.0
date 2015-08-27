Return-Path: <Viktor.Lenivyy@author.kiev.ua>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B127EE00BC6; Thu, 27 Aug 2015 01:25:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.164.133.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay.incom.ua (relay.incom.ua [46.164.133.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F9D9E009C3
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 01:25:42 -0700 (PDT)
Received: from [10.7.0.95] (helo=mail.incom.ua) by relay.incom.ua with esmtps
	(envelope-from <Viktor.Lenivyy@author.kiev.ua>) id 1ZUsV9-000O7h-Ai
	for yocto@yoctoproject.org; Thu, 27 Aug 2015 11:25:39 +0300
From: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to recreate rootfs image
Thread-Index: AQHQ4KHzHc0Su54xUkCv+WfUTZWhhA==
Date: Thu, 27 Aug 2015 08:25:38 +0000
Message-ID: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
Accept-Language: uk-UA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Subject: How to recreate rootfs image
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
X-List-Received-Date: Thu, 27 Aug 2015 08:25:47 -0000
Content-Language: uk-UA
Content-Type: text/plain; charset="windows-1251"
Content-Transfer-Encoding: quoted-printable

> In your kernel recipe are you using SRC_URI to fetch from a git=0A=
> repository (e.g. git:// URI) or from a local directory?=0A=
=0A=
This kernel is fetched from local directory.=0A=
=0A=
> I guess that if you're using a local path, there can be either some=0A=
> uncommitted changes, or a stale git index.=0A=
=0A=
No, because kernel built from sources in local directory doesn=92t have =93=
-dirty=94 in version string.=0A=
=0A=
> You can try just for the experiment to add your current kernel sources=0A=
> to a test git repo and point the SRC_URI to it, so bitbake can clone=0A=
> the repo by git revision (SRCREV =3D "${AUTOREV}" will skip the need to=
=0A=
> update the recipe revision constantly during development). This should=0A=
> work fine, without the "-dirty" version suffix.=0A=
=0A=
I can try this, but it doesn't answer main question:=0A=
how can I recreate rootfs image starting from the point after fetching Linu=
x sources, so Yocto=92s copy will remain intact?=0A=
=0A=
Regards,=0A=
Nikolay=

