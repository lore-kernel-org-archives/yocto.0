Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A8FE00CCC; Tue, 19 Sep 2017 18:52:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7455 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Sep 2017 18:52:50 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0049.outbound.protection.outlook.com [104.47.42.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF742E00C14
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 18:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=5kEd1rqhh7Pl3YvL5aL0Av9q6lWXq7RRX0vxA+JyY00=;
	b=yZeXaUXOfhWMIFjThedKNmSzIuiFCjTqEyWNLE0dVt3Hyls3ZCjZIQZMWI9SQboAsboxEhZUhh54b2KoJvNLmomX5mqz7bkj4tfNgvwXscGQdz4AOWmKADFk5blZfOHNiBKCH2kBbxUEYQ9oYqYgZqzPNfw3DHE/V6C0jz4zUYQ=
Received: from BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) by
	BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.56.11; Tue, 19 Sep 2017 21:14:55 +0000
Received: from BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903]) by BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903%14]) with mapi id 15.20.0056.016;
	Tue, 19 Sep 2017 21:14:55 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: "Richard.Schmitt@commscope.com" <Richard.Schmitt@commscope.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto]  Kernel Build Failures with Shared SSTATE
Thread-Index: AdL8s+LQRo/RwkUISx+LkNQoGtuBCw0wvCqg
Date: Tue, 19 Sep 2017 21:14:55 +0000
Message-ID: <BL2PR02MB21632E15DB408984D29FD183B9600@BL2PR02MB2163.namprd02.prod.outlook.com>
References: <CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0@CY4PR06MB2616.namprd06.prod.outlook.com>
In-Reply-To: <CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0@CY4PR06MB2616.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR02MB2163;
	6:VRORn06YhXziRIWpgW81MxzOK+xzOg5apVM77sAcne7IPoIXpdJJ4d+lWiD5K97See58/qj4iI+C5gJGL3phvEXVfytsyWLQ0yCh4pxGMkZj/KAG5ymMEvGwSsKy0pAwJkCPAB+dZZ6zRXaxdwkqgLArxM4uO+3xVVg+9r2eMTvsQbZBErOyHafxEgTF171mwh8WpPs/90usZoObrrn2wtVgvTbXG8elnvSilJ90B27Uaob/yW/i0CRkTR8sdKV8IDd4TvzG8ti3IbBfhRUEc/njquJ4kCO77IP30W4O1Zy4zlj/jd18tLPfPr+PrbfBKCyPGrTnXlg784npi+R+yw==;
	5:0DUq+Lhircv7rmG3FHcoFDSLFBnXyUgb4oGm1uGFlvbQ1AzH8F0AxUBaKtXAkg8lncISoqxX5JStuhOVEqBrF3Rc7bqtSNPPESFM+56iyELCojn9ef2eNxGrXCm85WG//haGBUwlmztFK6xdsJB4Yg==;
	24:409yz9kYP/sUkjT98PYk1s6KCIwdlrJa7rPf4LmKRO3O6e9cxVebNwWcWQX1epdaWQfu8PY6V3LpT3tX9WAovXyHxxJTkGvX4E5lYqlOGu4=;
	7:tz+Sah676UMyCV/bAdgTmAK9TqxvmC7VS6hle1h1XkjefWg799uCHQg1bTYR/xlqwzkHXuvYOMoTIEpFr+mh6CVpJlSE7lwEqSXCPdNrG5sRsNrrym/42xKe/OMZ8dh1/KUnOwNd21gEJFbd6XJ19BU4qN3+uUTkTrmBuVMiAbGY+xkF5p16UReMoW9Ql9SSh1ktuUV/n5Dxjj3jYSIRVv+JNQPB1ohzYFFE+G8xjL8=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-office365-filtering-correlation-id: a9213999-018d-47db-61db-08d4ffa379e7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(48565401081)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BL2PR02MB2163; 
X-MS-TrafficTypeDiagnostic: BL2PR02MB2163:|BL2PR02MB2163:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <BL2PR02MB216307FA00A3C8893B810622B9600@BL2PR02MB2163.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(3002001)(93006095)(93001095)(10201501046)(6055026)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(20161123562025)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL2PR02MB2163; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL2PR02MB2163; 
x-forefront-prvs: 04359FAD81
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(39860400002)(346002)(13464003)(189002)(199003)(377454003)(3660700001)(72206003)(3280700002)(33656002)(50986999)(105586002)(53546010)(54356999)(478600001)(68736007)(101416001)(106356001)(3846002)(6116002)(14454004)(5660300001)(8676002)(81166006)(229853002)(2950100002)(7696004)(25786009)(74316002)(66066001)(81156014)(102836003)(76176999)(7736002)(6506006)(6436002)(6246003)(53936002)(9686003)(2906002)(55016002)(2501003)(99286003)(189998001)(2900100001)(316002)(97736004)(8936002)(5250100002)(110136005)(305945005)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR02MB2163;
	H:BL2PR02MB2163.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2017 21:14:55.3697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR02MB2163
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB2163;
	23:6T/gHL/4d4ELkOWBMxwgg566f4Vuko5IeIJbHHYV5w9v4u/udEawPvC+pNCHSEpZPIwOCxmxT1dVinDLfEdHUitckpiDTLPU46/ILCIJg6xfEd9dxn+IrA1HUiqeMz/IddQ7T7kJ/RBh1G5+kv9VTg==
X-OriginatorOrg: xilinx.com
X-Mailman-Approved-At: Wed, 20 Sep 2017 08:30:38 -0700
Subject: Re: Kernel Build Failures with Shared SSTATE
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
X-List-Received-Date: Wed, 20 Sep 2017 01:52:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Schmitt, Richard
> Sent: Friday, July 14, 2017 8:23 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Kernel Build Failures with Shared SSTATE
>=20
> Hi,
>=20
>=20
>=20
> I had been running into kernel build failures on the morty branch when us=
ing a shared
> state.  First I'll describe the error, and then my solution.
>=20
>=20
>=20
> The first build that initializes the sstate cache works fine.  Subsequent=
 clean builds
> will fail.  The failure
>=20
> would occur in the do_compile_kernelmodules task.  The error would indica=
te a
> failure because tmp/work-shared/<machine>/kernel-build-artifacts was miss=
ing.
>=20
>=20
>=20
> My analysis concluded that the kernel build was restored from the cache, =
but it did
> not restore the kernel-build-artifacts needed by the do_compile_kernelmod=
ules task.
>=20
>=20
>=20
> My solution was to include the following in a bbappend file for the kerne=
l:
>=20
>=20
>=20
> SSTATETASKS +=3D "do_shared_workdir"
>=20
>=20
>=20
> do_shared_workdir[sstate-plaindirs] =3D "${STAGING_KERNEL_BUILDDIR}"
>=20
>=20
>=20
> python do_shared_workdir_setscene () {
>=20
>     sstate_setscene(d)
>=20
> }
>=20
>=20
>=20
> I assume the correct way to fix this would be to update the
> meta/classes/kernel.bbclass.  It looks like there was some attempt to do =
something
> with the shared_workdir because there is a do_shared_workdir_setscene rou=
tine,
> but right now it just returns a 1.  Is that intentional.  It seems wrong.
>=20

Even I am facing the same issue, but seen only few instances of failures. N=
ot able to concretely figure out exact steps to replicate the issue.
Is it better to remove the addtask shared_workdir_setscene ?
If you see do_deploy task in kernel.bbclass, it doesn't handle the setscene=
 task either

Thanks,
Manju


