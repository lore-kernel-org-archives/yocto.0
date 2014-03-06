Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0204.outbound.protection.outlook.com [207.46.163.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9379E00789
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 05:43:54 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB182.namprd05.prod.outlook.com (10.255.190.142) with Microsoft
	SMTP Server (TLS) id 15.0.893.10; Thu, 6 Mar 2014 13:43:41 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.158]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.247]) with mapi id
	15.00.0888.003; Thu, 6 Mar 2014 13:43:41 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane
	parser/UI
Thread-Index: AQHPOKDIunCAF+f4D0+UwEdSmDKTuJrUBBHw
Date: Thu, 6 Mar 2014 13:43:40 +0000
Message-ID: <9e3dd03777e746aa8f3bd01f69d9a873@BLUPR05MB037.namprd05.prod.outlook.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
	<3beb0e18e2659a8266e9fe1c705c8fe263aae387.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <3beb0e18e2659a8266e9fe1c705c8fe263aae387.1394042358.git.elizabeth.flanagan@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 003E99720069FA003E9ABF
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(199002)(189002)(377454003)(51704005)(13464003)(164054003)(90146001)(56816005)(85852003)(83072002)(51856001)(46102001)(53806001)(93516002)(77096001)(56776001)(86362001)(97336001)(97186001)(95666003)(66066001)(80022001)(65816001)(33646001)(79102001)(77982001)(59766001)(63696002)(81342001)(224313003)(224303002)(81542001)(47976001)(81686001)(74706001)(50986001)(47736001)(74876001)(87266001)(15975445006)(69226001)(83322001)(15202345003)(19580395003)(19580405001)(49866001)(81816001)(2656002)(80976001)(95416001)(87936001)(54316002)(93136001)(74502001)(47446002)(92566001)(94316002)(74316001)(54356001)(31966008)(76482001)(74366001)(74662001)(85306002)(76576001)(94946001)(4396001)(76786001)(76796001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB182;
	H:BLUPR05MB037.namprd05.prod.outlook.com; CLIP:98.100.91.242;
	FPR:FCFAF928.BF2DCE6.79DCB78F.4FC7FD6D.202F6; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane	parser/UI
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
X-List-Received-Date: Thu, 06 Mar 2014 13:43:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Beth,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Elizabeth Flanagan
> Sent: Wednesday, March 05, 2014 1:23 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] [AB PATCH 06/27] Autobuilder.py/Buildset.py: More sane
> parser/UI
>=20
> From: Beth Flanagan <elizabeth.flanagan@intel.com>
>=20
> The parser for Autobuilder.py didn't dive very deep on triggered builds. =
If it
> found one, it just grabbed it's properties and then displayed them on the=
 UI.
> This allowed us to mix and match repos/branches/commits.
>=20

I'm a little unclear what functionality is being removed.  After this commi=
t, are we still able to specify a different repo/branch/commit for each lay=
er?  Or was the previous functionality to mix and match repo/branch/commits=
 within a layer?  For example, would a buildset still be able to specify th=
e repos as follows:

repos: [{'poky':=20
            {'repourl':'git://git.yoctoproject.org/poky',=20
             'branch':'dora'}},
        {'meta-openembedded':=20
            {'repourl':'git://git.openembedded.org/meta-openembedded',=20
             'branch':'dora'}}]

which have a different repository for each layer?  Or do something like:
repos: [{'poky':=20
            {'repourl':'git://git.yoctoproject.org/poky',=20
             'branch':'dora'}},
        {'meta-openembedded':=20
            {'repourl':'git://git.openembedded.org/meta-openembedded',=20
             'branch':'master'}}]

to specify different branches for each layer?  Granted, probably not a good=
 idea for poky and meta-openembedded, but would be necessary for private la=
yers that don't follow the same branch naming scheme.=20

And as you had stated this is a fairly large patchset with some interface c=
hanges.  What are the plans (short-term and long-term) for the Autobuilder =
documentation?  Is the plan just to update the README files, or are there p=
lans to move toward an HTML document under http://www.yoctoproject.org/docu=
mentation?  Either way, the Autobuilder documentation is pretty sparse and =
as an Autobuilder user I'm willing to extend the documentation.  If there a=
re specific sections you are looking to document first, let us know.

Thanks,
Bryan

