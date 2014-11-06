Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6CACE0080D; Thu,  6 Nov 2014 00:00:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.49.77.148 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FA43E007A0
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 23:59:55 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.07,324,1413237600"; d="scan'208";a="12962298"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	06 Nov 2014 08:59:51 +0100
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Thu,  6 Nov 2014 08:59:50 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.07,324,1413237600"; 
   d="scan'208";a="2123576"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES128-SHA; 06 Nov 2014 08:59:50 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%15]) with mapi
	id 14.03.0181.006; Thu, 6 Nov 2014 08:59:16 +0100
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "'Vuille, Martin (Martin)'" <vmartin@avaya.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Added package to RDEPENDS in packagegroup, image that
	IMAGE_INSTALLs packagegroup not rebuilt
Thread-Index: AQHP+RcJUBLHja1YtUOW5jKVM6Pw3pxTOKLw
Date: Thu, 6 Nov 2014 07:59:15 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E668C086FFA4@kihagwinex01.int.kistler.com>
References: <30C2D590D16A5C46ADFE6521910377984115A3E1@AZ-US1EXMB03.global.avaya.com>
	<3767317.YZ2G7oXJFq@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B321@AZ-US1EXMB03.global.avaya.com>
	<1843797.y7lrT8GqOk@peggleto-mobl5.ger.corp.intel.com>
	<30C2D590D16A5C46ADFE6521910377984115B37B@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984115B37B@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Added package to RDEPENDS in packagegroup, image that IMAGE_INSTALLs packagegroup not rebuilt
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
X-List-Received-Date: Thu, 06 Nov 2014 08:00:10 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Martin,


> -----Urspr=FCngliche Nachricht-----
> Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g]
> Im Auftrag von Vuille, Martin (Martin)
> Gesendet: 05 November 2014 17:39
> An: Paul Eggleton
> Cc: yocto@yoctoproject.org
> Betreff: Re: [yocto] Added package to RDEPENDS in packagegroup, image tha=
t
> IMAGE_INSTALLs packagegroup not rebuilt
>=20
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: November 05, 2014 11:04 AM
> >
> > OK, so this kind of explains it. To be perfectly honest the bitbake
> > memory resident functionality (which Toaster uses behind the scenes)
> > does have some holes in picking up changes, but I hadn't realised it
> > would manifest in this particular manner. It seems like at the moment
> > you'd need to stop and restart Toaster to be sure that the change gets =
picked
> up.
> >
>=20
> - Stopped Toaster
> - Removed the two cache directories
> - bitbake <packagegroup>
>=20

I've spent yesterday morning trying to debug a similar problem. I had INHER=
IT +=3D "rm_work" enabled in my local.conf file, and when removing it, I go=
 the following error.:
ERROR: No such task: do_rm_work
ERROR: Task 10 (/home/user/branches/dev/yocto/meta-libtest/recipes-support/=
libtest/libtest_1.0.bb, do_rm_work) failed with exit code '1'.

bitbake -e libtest | grep INHERIT showed me that rm_work was still around d=
espite having removed it from my local.conf .
	INHERIT=3D" rm_work own-mirrors buildhistory toaster poky-sanity package_i=
pk image-mklibs image-prelink debian devshell sstate license blacklist sani=
ty toaster buildhistory"


Eventually I worked out that it was because I had Toaster running that the =
changes in local.conf where only partially picked up, and that's what creat=
ed the error.

I'm not sure if this bug is related to the one you're seeing, but in case i=
t is, it's definitely easier to reproduce than deleting/renaming the cache =
directories.

BR

Isak=20

> is working. It is running do_package on each of the packages in the
> packagegroup.
>=20
> Thanks for your time debugging this.
>=20
> MV
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

