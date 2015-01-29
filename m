Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54C4BE00827; Wed, 28 Jan 2015 19:46:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79458E00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 19:46:46 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56798150"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 29 Jan 2015 11:43:11 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0T3k0gA001515;
	Thu, 29 Jan 2015 11:46:00 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Thu, 29 Jan 2015 11:46:45 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] When I build kernel with toolchain comes from yocto, I
	met an issue
Thread-Index: AdA2tU0l1qhs1koNTQqCHmZax6Ag0QDMoiYAAGOPSuA=
Date: Thu, 29 Jan 2015 03:46:52 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAE7A18@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
	<474124614.TO7y8lYJLD@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <474124614.TO7y8lYJLD@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.48]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 29 Jan 2015 03:46:52 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi Paul


I got it. Thank you very much.


Cheers
Lei



> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Tuesday, January 27, 2015 8:15 PM
> To: Lei, Maohui/=1B$BMk=1B(B =1B$BLP7E=1B(B
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] When I build kernel with toolchain comes from yocto,=
 I
> met an issue
>=20
> On Friday 23 January 2015 02:36:30 Lei, Maohui wrote:
> > I compiled my kernel by toolchain that supported by yocto 1.7.
> > The following is my steps:
> > 1. Run the following command to install the toolchain.
> >    # ./poky-lsb-glibc-x86_64-meta-toolchain-ppce500v2-toolchain-1.7.sh
> >
> > 2. Set up the cross-development environment:
> >    # . /opt/poky-lsb/1.7/environment-setup-ppce500v2-poky-linux-gnuspe
> >
> > And then, I compiled the kernel source. But an error occurred:
> > ----------------------------------------------------------------------
> > ------
> > powerpc-poky-linux-gnuspe-ld: unrecognized option '-Wl,-O1'
> > powerpc-poky-linux-gnuspe-ld: use the --help option for usage
> > information
> > make[1]: *** [init/mounts.o] Error 1
> > make: *** [init] Error 2
> > ----------------------------------------------------------------------
> > ------
> >
> > I have to unset "LDFLAGS" to continue the build.
> >
> > Is there some wrong with my step? Is there some good method to build a
> > kernel source by the toolchain?
>=20
> We generally expect the linker to be gcc rather than ld, hence our defaul=
t value
> of LDFLAGS, so I think for building those bits of software that use ld di=
rectly
> (such as the kernel) it is expected that you need to either unset LDFLAGS=
 or
> set it to a value that is appropriate for passing directly to ld (i.e. by=
 removing
> -Wl, prefixes from all options).
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

