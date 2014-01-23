Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0190.outbound.protection.outlook.com [207.46.163.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C91E008B3
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 21:39:11 -0800 (PST)
Received: from DM2PR03MB399.namprd03.prod.outlook.com (10.141.84.148) by
	DM2PR03MB397.namprd03.prod.outlook.com (10.141.84.139) with Microsoft
	SMTP Server (TLS) id 15.0.847.13; Thu, 23 Jan 2014 05:39:08 +0000
Received: from DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) by
	DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) with mapi id
	15.00.0847.008; Thu, 23 Jan 2014 05:39:08 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: Re:[mcswdev] [yocto] Yocto branches policy for concurrent SDK
	releases
Thread-Index: Ac7nb754wRnh+qMzR5uPbZBHD585iAmCRTeAAqDmKdA=
Date: Thu, 23 Jan 2014 05:39:07 +0000
Message-ID: <854d659505304155b27a3150d9b48190@DM2PR03MB399.namprd03.prod.outlook.com>
References: <CA452391058F6D4E9715FB2C29D9312A0181242A@039-SN2MPN1-021.039d.mgd.msft.net>
	<1.9.2014-mgd.freescale.com-31-6352487069445086783412-5862@freescale.com>
In-Reply-To: <1.9.2014-mgd.freescale.com-31-6352487069445086783412-5862@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [123.151.195.50]
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(199002)(189002)(13464003)(377454003)(51704005)(76786001)(79102001)(74502001)(74662001)(47446002)(56776001)(81542001)(59766001)(81342001)(77982001)(76576001)(94316002)(65816001)(76796001)(74706001)(66066001)(80022001)(74876001)(69226001)(63696002)(74366001)(74316001)(85852003)(81816001)(93136001)(47736001)(51856001)(81686001)(53806001)(47976001)(83072002)(50986001)(4396001)(49866001)(46102001)(2656002)(87936001)(19580405001)(90146001)(80976001)(54316002)(33646001)(56816005)(31966008)(92566001)(93516002)(76482001)(86362001)(19580395003)(83322001)(54356001)(87266001)(85306002)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB397;
	H:DM2PR03MB399.namprd03.prod.outlook.com; CLIP:123.151.195.50;
	FPR:; RD:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [mcswdev] Yocto branches policy for concurrent SDK releases
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
X-List-Received-Date: Thu, 23 Jan 2014 05:39:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bob,=20

Sorry for the late response.=20

> -----Original Message-----
> From: Bob Cochran [mailto:yocto@mindchasers.com]
> Sent: Friday, January 10, 2014 4:25 AM
>=20
> Any plans to create a repo for meta-fsl-networking on git.yoctoproject
> for Power / QorIQ developers?
[Luo Zhenhua-B19537] meta-fsl-networking layer manages the packages maintai=
ned internally, so the layer can't be upstreamed.=20

> It would be good for yocto users, such as myself, to be able to build
> something incremental between the SDK releases using updated / patched
> recipes pulled from the yocto repos, which should include meta-fsl-
> networking.
>=20
> Say I wanted to propose a patch to a recipe like fsl-image-full, which is
> in meta-fsl-networking, how would I go about it?
[Luo Zhenhua-B19537] For such case, we will consider to move the demo image=
 recipes into meta-fsl-ppc layer.=20

> Last February (2013), you proposed an FSL Yocto layers reorg that merged
> layerscape/ARM with Power for QorIQ.  I imagine you're getting close to
> having something internally.  Can you please share the vision with us
> along with whether it will be public on the yocto project (as opposed to
> kept under wraps with incremental SDK releases)?
[Luo Zhenhua-B19537] Currently we are working on it, and will publish the s=
taffs publicly when it is ready.=20


Best Regards,

Zhenhua

