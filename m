Return-Path: <prvs=920c2a8ca=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4924DE00D01; Thu, 24 Jan 2019 07:36:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.133.150 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Jan 2019 07:36:28 PST
Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com
	[68.232.133.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72072E0053F
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 07:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1548344189; x=1579880189;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=CIUgcmKM8Cc0fOrZlvb24bgpfDkTgFvBgJPuVZdxhSg=;
	b=rNgtcxOmJuI88BUHqN2qk/UWQ6+TZmkkhN2pgIW9EKl5vqeZ3EFgHRXu
	8dxECOM0+chi96o0v1DLjB3ieugyk2nISQV4XA5F8OgnFLnNY/F/fq2UT
	XHaHgXvI3E84Ks0jndr5AvW5BaQisV9nQ5lC++MSnMpY63V7F/zcdF2h0 U=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
	esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 24 Jan 2019 16:35:14 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw3.muc with ESMTP/TLS;
	24 Jan 2019 16:35:14 +0100
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp)
	([160.48.96.49])
	by esabb2.muc with ESMTP/TLS; 24 Jan 2019 16:35:14 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10m.europe.bmw.corp
	(160.48.96.49) with Microsoft SMTP Server (TLS;
	Thu, 24 Jan 2019 16:35:13 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1395.000;
	Thu, 24 Jan 2019 16:35:13 +0100
From: <Mikko.Rapeli@bmw.de>
To: <joao.jfgoncalves@gmail.com>
Thread-Topic: [yocto] libstdc++fs on toolchain
Thread-Index: AQHUs/kWI3MDkh+OYUOYWnzw1LryJaW+fBWA
Date: Thu, 24 Jan 2019 15:35:13 +0000
Message-ID: <20190124153513.GY7474@hiutale>
References: <CAHXEV+n8iBw3ymYCm38CSKXS=ySgarQmrwf=XCT6yYp94FiOKg@mail.gmail.com>
In-Reply-To: <CAHXEV+n8iBw3ymYCm38CSKXS=ySgarQmrwf=XCT6yYp94FiOKg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.34]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libstdc++fs on toolchain
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
X-List-Received-Date: Thu, 24 Jan 2019 15:36:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9244F8F994837742955310E9BA26F0BC@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 24, 2019 at 03:24:00PM +0000, Jo=E3o Gon=E7alves wrote:
> Hello,
> I'm trying to build a c++ cross toolchain to compile to imx6 (armv7). But=
 I
> need libstdc++fs library, which does not come with it. Until gcc 8.0 this
> is an experimental library.
>=20
> I've tested with gcc 7.3 and with gcc 8.2 and and none have the libstdc++=
fs
> library.
> On my host machine the library is at
> /usr/lib/gcc/x86_64-linux-gnu/7/libstdc++fs.a
>=20
> Does anyone know how to include this library on a yocto generated toolcha=
in?

At least on x86 targets, it's available from gcc-runtime recipe and
libstdc++-staticdev binary package on sumo/yocto 2.5 and later.

-Mikko=

