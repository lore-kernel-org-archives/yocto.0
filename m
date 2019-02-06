Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 624E1E00C1E; Wed,  6 Feb 2019 14:05:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
X-Greylist: delayed 13311 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Feb 2019 14:05:03 PST
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04CBFE00BAB
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:05:03 -0800 (PST)
X-CrossPremisesHeadersFilteredBySendConnector: MSXBEBVT27.planar.net
Received: from webmail.planar.com (mail.planar.com [199.244.172.52]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-331-IQfP_cBuOuuLoAdcALdx5g-1; Wed, 06 Feb 2019 17:05:01 -0500
Received: from MSXBEBVT28.planar.net (172.16.10.28) by MSXBEBVT27.planar.net
	(172.16.10.27) with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Wed, 6 Feb 2019 14:04:59 -0800
Received: from MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0]) by
	MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0%12]) with mapi id
	15.00.1365.000; Wed, 6 Feb 2019 14:04:59 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: =?iso-8859-1?Q?Andreas_M=FCller?= <schnitzeltony@gmail.com>
Thread-Topic: [yocto] CMake based recipes and defining CMAKE_BUILD_TYPE
Thread-Index: AQHUvkgDVc0bTtt08kO3Rpe7lTSuEKXT0CwA//+Cu80=
Date: Wed, 6 Feb 2019 22:04:58 +0000
Message-ID: <1549490698733.2960@planar.com>
References: <1549477388545.2721@planar.com>,
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
In-Reply-To: <CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.15.0.62]
MIME-Version: 1.0
X-OrganizationHeadersPreserved: MSXBEBVT27.planar.net
X-MC-Unique: IQfP_cBuOuuLoAdcALdx5g-1
X-Mimecast-Spam-Score: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 22:05:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hi Andreas,=20=0A=0AThanks for the response, do you set build type in each =
recipe individually or is there some central .conf file or other other loca=
tion that you set it?=20=0A=0AMatt S.=20=0A________________________________=
________=0AFrom: Andreas M=FCller <schnitzeltony@gmail.com>=0ASent: Wednesd=
ay, February 6, 2019 1:31 PM=0ATo: Matt Schuckmann=0ACc: yocto@yoctoproject=
.org=0ASubject: Re: [yocto] CMake based recipes and defining CMAKE_BUILD_TY=
PE=0A=0AOn Wed, Feb 6, 2019 at 7:39 PM Matt Schuckmann=0A<Matt.Schuckmann@p=
lanar.com> wrote:=0A>=0A> I'm trying to understand why the cmake.bbclass do=
esn't make any attempt to set CMAKE_BUILD_TYPE and what the design philosop=
hy behind that is?=0A>=0A> On the surface I would expect that the default b=
uild type would be Release but I can see how that might not always be the r=
ight choice. I'm really surprised that there isn't a global variable that c=
an be set for this, am I missing something, or is it really expected that e=
ach recipe provide it if they care?=0A>=0A>=0A> FYI I started looking into =
this when I realized that NDEBUG is not set for many (if not all) of my CMa=
ke based recipes and thus asserts are still enabled in my production code. =
This appears to be known behavior for CMake if CMAKE_BUILD_TYPE is not set.=
=0A>=0A>=0A> Matt S.=0A>=0AHi Matt,=0A=0AThis is not a full answer but Rele=
ase is not a common target for us:=0Acmake will produce not containing debu=
g info. With these debugging is=0Auseless (and you'll get package qa warnin=
gs). If there is a default=0Atarget for us it is RelWithDebInfo.=0A=0AAndre=
as=0A=0A


