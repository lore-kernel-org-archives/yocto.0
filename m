Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B87E00BC4; Wed, 21 Jun 2017 01:38:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.14 listed in list.dnswl.org]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF65E00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:38:37 -0700 (PDT)
Received: from [216.82.250.51] by server-14.bemta-12.messagelabs.com id
	52/D1-01720-C803A495; Wed, 21 Jun 2017 08:38:36 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRWlGSWpSXmKPExsVySpdNU7fHwCv
	S4N8afovz21+yWUx6uYbNgclj8Z6XTB7tJ/rYApiiWDPzkvIrElgzlrz+wVqwXbDiwaIVbA2M
	z/m6GDk5hAS2Mkr8WJnYxcgFZG9hlOhoXssK4exllFh29gAjSBWbgI7E4w93WEFsEQEtid4nP
	SwgNrOAqcTkGS3MILawgK3Elf3PmCFq7CQO7FrFAmG7Sbx+vAOsl0VAVeLHgm1gNq+Au8SXdd
	+glv1klNiy+TBYM6eAq0Tfiw3sIDajgJjE91NrmCCWiUvcejIfzJYQEJBYsuc8M4QtKvHy8T9
	WCNtAYuvSfSwQtoLEyu4GNgjbWmL/vKWsEHN0JBbs/sQGYWtLLFv4mhniIEGJkzOfsECCRVli
	z6MGxgmMErOQrJ6FpH0WkvZZSNoXMLKsYtQoTi0qSy3SNTHSSyrKTM8oyU3MzNE1NDTSy00tL
	k5MT81JTCrWS87P3cQIjMd6BgbGHYwXF0YfYpTkYFIS5b0g6xUpxJeUn1KZkVicEV9UmpNafI
	hRhoNDSYJ3vj5QTrAoNT21Ii0zB5gYYNISHDxKIrxnVYHSvMUFibnFmekQqVOMilLivJtB+gR
	AEhmleXBtsGR0iVFWSpiXkYGBQYinILUoN7MEVf4VozgHo5Iw702QKTyZeSVw018BLWYCWvzi
	iAfI4pJEhJRUA6Nw6c+UfakCLk8fqzApumxtOKM1V+qtFN/jH3953id+v1qyh1fo9Nanv56re
	RpdnreM6fneqVvv7Q3+4pB3LJPbnFuIVYJXTjd6w+zNd75PXc801fyFykT2V1XvLuYo9az3TU
	pMtpxY+Y5xy56lFpKBhj+Uj726OkM/YL3cppLLOUtOnDZht5mqxFKckWioxVxUnAgA9OawfkE
	DAAA=
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-9.tower-108.messagelabs.com!1498034249!120710924!14
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13987 invoked from network); 21 Jun 2017 08:38:35 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-9.tower-108.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 21 Jun 2017 08:38:35 -0000
Received: from HIBDWSMB06.ad.harman.com (10.99.236.96) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 21 Jun 2017 14:08:32 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB06.ad.harman.com (10.99.236.96) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Wed, 21 Jun 2017 14:08:32 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Wed, 21 Jun 2017 14:08:32 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "Maxin B. John" <maxin.john@intel.com>
Thread-Topic: [EXTERNAL] Re: [yocto] Openjdk-8 fetcher failure
Thread-Index: AdLowktVj4abpQzDTAGInlO0fa2utgADIaWAAGAVdRD//9XpgP//oRVw
Date: Wed, 21 Jun 2017 08:38:31 +0000
Message-ID: <038bfef1f460474680baae13f7746278@HIBDWSMB03.ad.harman.com>
References: <2ea62f0ed3fc4c94960c6ac199d94061@HIBDWSMB03.ad.harman.com>
	<20170619130653.GA12563@mbabyjoh-desk.ger.corp.intel.com>
	<02df48fb23e74cdd8889b6b521782f62@HIBDWSMB03.ad.harman.com>
	<20170621082725.GA2471@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20170621082725.GA2471@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Openjdk-8 fetcher failure
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
X-List-Received-Date: Wed, 21 Jun 2017 08:38:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, I tried multiple times, but face same issue.

And when I tried=20
"wget http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.t=
ar.bz2;name=3Dhotspot;unpack=3Dfalse"
Then it Is not working.

Only
"wget http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a.t=
ar.bz2"
Is working.
=20

Best Regards
Alok Pawar
Sr. Engineer Product Development

-----Original Message-----
From: Maxin B. John [mailto:maxin.john@intel.com]=20
Sent: Wednesday, June 21, 2017 1:57 PM
To: Pawar, Alok <Alok.Pawar3@harman.com>
Cc: yocto@yoctoproject.org
Subject: Re: [EXTERNAL] Re: [yocto] Openjdk-8 fetcher failure

Hi,

On Wed, Jun 21, 2017 at 05:28:39AM +0000, Pawar, Alok wrote:
> HI John,=20
>=20
> Using the 'wget',  I am able to download the file.

That could be a temporary issue then. Have you tried the build
openjdk-8 again to verify it ?

> Best Regards
> Alok Pawar
> Sr. Engineer Product Development

Warm Regards,
Maxin

> -----Original Message-----
> From: Maxin B. John [mailto:maxin.john@intel.com]=20
> Sent: Monday, June 19, 2017 6:37 PM
> To: Pawar, Alok <Alok.Pawar3@harman.com>
> Cc: yocto@yoctoproject.org
> Subject: [EXTERNAL] Re: [yocto] Openjdk-8 fetcher failure
>=20
> Hi Alok,
>=20
> On Mon, Jun 19, 2017 at 06:11:20AM +0000, Pawar, Alok wrote:
> >=20
> >Hi All,
> >
> > I am using yocto 2.1.2 krogoth, and I added meta-java in it, but when I=
 tried to bitbake. I faced fetcher failure, following are the Error :
> >
> >ERROR: openjdk-8-102b14-r0 do_fetch: Fetcher failure: Fetch command fail=
ed with exit code 4, output:
> >
> >  Read error (Connection timed out) in headers.
> >
> >  Read error (Connection timed out) in headers.
> >
> >ERROR: openjdk-8-102b14-r0 do_fetch: Function failed: Fetcher failure fo=
r URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193a=
.tar.bz2;name=3Dhotspot;unpack=3Dfalse'. Unable to fetch URL from any sourc=
e.
> >
> >Please give your inputs.
>=20
> This could be related to the network configuration in your build machine.
>=20
> Have you tried to fetch that file manually using wget from your machine ?
> ie:
> # wget http://hg.openjdk.java.net/jdk8u/jdk8u/hotspot/archive/ac29c9c1193=
a.tar.bz2
>=20
>=20
> Best Regards,
> Maxin

