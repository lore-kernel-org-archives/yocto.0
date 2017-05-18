Return-Path: <prvs=0311042b42=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F80BE00B28; Thu, 18 May 2017 06:33:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0508E00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:33:05 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:13456)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1dBLXa-0005FJ-25; Thu, 18 May 2017 14:32:30 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Thu, 18 May 2017 14:32:23 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f%18]) with mapi id
	15.00.0847.030; Thu, 18 May 2017 14:32:23 +0100
From: Alan Levy <alan.levy@plextek.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem using Subversion in Pyro
Thread-Index: AdLPyt4Pb9k/DAD2TOCCDYM1/+ec1gAALnIAAAKX14D///SdAP//6z8g
Date: Thu, 18 May 2017 13:32:22 +0000
Message-ID: <c25f572148604379a1ff1893e41f1c64@PLEXTEK-EXCH1.plextek.lan>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
	<b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
	<d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
	<026d9904-42bf-3314-24c9-dff2acc317cb@linux.intel.com>
In-Reply-To: <026d9904-42bf-3314-24c9-dff2acc317cb@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.12.154]
MIME-Version: 1.0
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 13:33:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I want to assign SRCREV to PV, which is perfectly legitimate, so that I can=
 capture the SVN revision number used to build the code. Here's a simple re=
cipe which exhibits the problem:

DESCRIPTION =3D "Recipe to test SVN"
PACKAGE_ARCH =3D "${MACHINE_ARCH}"
LICENSE =3D "CLOSED"
PV =3D "${SRCPV}"
SRCREV =3D "${AUTOREV}"
SRC_URI =3D "svn://server/path;module=3Dmy_module"

If you comment out the line referring to SRCPV all is well, if you include =
it bitbake blows up, even if I just perform cleansstate.

ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com





-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Sent: 18 May 2017 14:14
To: Alan Levy; yocto@yoctoproject.org
Subject: Re: [yocto] Problem using Subversion in Pyro

On 05/18/2017 04:04 PM, Alan Levy wrote:
> It does get built, and it apparently does get used to do the actual=20
> fetching, just not for miscellaneous functions such as populating=20
> SRCREV which rely on the svn executable being on the PATH. This=20
> appears to be deliberate since there is a FETCHCMD_svn variable in=20
> bitbake.conf. The simplest way for me to force an svn executable onto=20
> PATH was to add it to HOSTTOOLS but that may not be what is really=20
> intended.

SRCREV is supposed to be hardcoded in the recipe. What is the reason you ne=
ed to use svn to set it? Can you show how it's specifically done in your re=
cipe?


Alex

