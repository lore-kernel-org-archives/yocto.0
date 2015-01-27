Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60A2CE00894; Mon, 26 Jan 2015 17:09:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C40AE0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 17:09:37 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56660984"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 27 Jan 2015 09:06:05 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0R18sOH031223
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 09:08:54 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Tue, 27 Jan 2015 09:09:36 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] When I build kernel with toolchain comes from yocto,	I
	met an issue
Thread-Index: AdA2tU0l1qhs1koNTQqCHmZax6Ag0QDGJJoA
Date: Tue, 27 Jan 2015 01:09:42 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAE7122@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.48]
MIME-Version: 1.0
Subject: Re: When I build kernel with toolchain comes from yocto, I met an issue
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
X-List-Received-Date: Tue, 27 Jan 2015 01:09:48 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

ping


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Lei, Maohui
> Sent: Friday, January 23, 2015 10:37 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] When I build kernel with toolchain comes from yocto, I m=
et
> an issue
>=20
> Hi all,
>=20
> I compiled my kernel by toolchain that supported by yocto 1.7.
> The following is my steps:
> 1. Run the following command to install the toolchain.
>    # ./poky-lsb-glibc-x86_64-meta-toolchain-ppce500v2-toolchain-1.7.sh
>=20
> 2. Set up the cross-development environment:
>    # . /opt/poky-lsb/1.7/environment-setup-ppce500v2-poky-linux-gnuspe
>=20
> And then, I compiled the kernel source. But an error occurred:
> -------------------------------------------------------------------------=
-
> --
> powerpc-poky-linux-gnuspe-ld: unrecognized option '-Wl,-O1'
> powerpc-poky-linux-gnuspe-ld: use the --help option for usage information
> make[1]: *** [init/mounts.o] Error 1
> make: *** [init] Error 2
> -------------------------------------------------------------------------=
-
> --
>=20
> I have to unset "LDFLAGS" to continue the build.
>=20
> Is there some wrong with my step? Is there some good method to build a ke=
rnel
> source by the toolchain?
>=20
> Cheers
>=20
> Lei Maohui
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

