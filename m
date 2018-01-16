Return-Path: <alejandr@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 986FEE00D7E; Tue, 16 Jan 2018 01:34:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8338 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jan 2018 01:34:23 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0078.outbound.protection.outlook.com [104.47.38.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A800CE00A9C;
	Tue, 16 Jan 2018 01:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Jk8LtB9vvFkm+DimCvBMK3DwJUf8mZp8rXEXjh/kOuw=;
	b=ZCqCvbbuNM3qOwLEBBrpibjfysM6dmXXUfEsFL6vJDU4eqhv8G1pSQIO1of+0TOprGxcloCTUTPF7yV0tuQB0nUr7KRTSVe/2HgHLi8qcGxiUX0AlpAs8lB3IEFOIejyEOjCGpzxyyMvjuGg/tdEvdMUzy8+3Vtf1aqC0ONub/o=
Received: from MWHPR0201MB3401.namprd02.prod.outlook.com (10.167.161.138) by
	MWHPR0201MB3595.namprd02.prod.outlook.com (10.167.162.32) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.407.7; Tue, 16 Jan 2018 07:00:12 +0000
Received: from MWHPR0201MB3401.namprd02.prod.outlook.com
	([fe80::bca3:ef4c:ffab:e83]) by
	MWHPR0201MB3401.namprd02.prod.outlook.com
	([fe80::bca3:ef4c:ffab:e83%13]) with mapi id 15.20.0407.012;
	Tue, 16 Jan 2018 07:00:11 +0000
From: Alejandro Enedino Hernandez Samaniego <alejandr@xilinx.com>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "meta-xilinx@yoctoproject.org"
	<meta-xilinx@yoctoproject.org>
Thread-Topic: [meta-xilinx] liblzma: Memory allocation failed on do_package_rpm
Thread-Index: AdONyO7F0CbDbyZMTvmUCBS8jdjlFQAzpWQw
Date: Tue, 16 Jan 2018 07:00:11 +0000
Message-ID: <MWHPR0201MB34015DEC8B70EA929C25084EACEA0@MWHPR0201MB3401.namprd02.prod.outlook.com>
References: <BY2PR02MB347697DA9F50BFD39015C3BB9EB0@BY2PR02MB347.namprd02.prod.outlook.com>
In-Reply-To: <BY2PR02MB347697DA9F50BFD39015C3BB9EB0@BY2PR02MB347.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alejandr@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR0201MB3595;
	7:81TBd9ijqOGhuK6GbdXkOLhP8a+lOlbsjI52aNdVNOOe2KBCDeZ1UPH2byilo7e3VNKVdSUPeGvrQmlezaZlYmH/NcsxBmD9gUAy2pKtIUJ8UshU8dmsi01RQAzagrYNaajMmx2pcmmgB0Ds2zUf2+5w83PakcQ3ObxoyCpW4URB/BJxLFnUao+Pk2iHiEq3U9CktPg1l3aqgDlpwJ3Vb8ryxUF+NkItc4Vay+cuTVr6gouSSZ3WMR320hWGhcKH
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10009020)(346002)(366004)(376002)(396003)(39380400002)(39860400002)(13464003)(189003)(199004)(5890100001)(2201001)(9686003)(5660300001)(68736007)(6436002)(55016002)(25786009)(8676002)(2950100002)(81156014)(86362001)(81166006)(229853002)(26005)(97736004)(6306002)(6246003)(3846002)(8936002)(6116002)(99286004)(106356001)(5250100002)(2501003)(105586002)(2900100001)(59450400001)(3280700002)(66066001)(3660700001)(6506007)(316002)(14454004)(478600001)(966005)(305945005)(53936002)(7696005)(76176011)(53546011)(2906002)(33656002)(102836004)(110136005)(74316002)(7736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR0201MB3595;
	H:MWHPR0201MB3401.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
x-ms-office365-filtering-correlation-id: c7760aa6-f0c1-4d44-bfad-08d55caec95a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(48565401081)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR0201MB3595; 
x-ms-traffictypediagnostic: MWHPR0201MB3595:
x-microsoft-antispam-prvs: <MWHPR0201MB35959BB0FCAB9192216FCBBBACEA0@MWHPR0201MB3595.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(264703809997249);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231023)(944501161)(10201501046)(6055026)(6041268)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123560045)(6072148)(201708071742011);
	SRVR:MWHPR0201MB3595; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:MWHPR0201MB3595; 
x-forefront-prvs: 0554B1F54F
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: q+R042iuD5sUQ5m/rahOAEwKEMQGcMjxeiTmJ562YffZjWDOQfKfmt22ST/2HetL8Zr+ivJ7QXfEeZWQSwKhAQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7760aa6-f0c1-4d44-bfad-08d55caec95a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2018 07:00:11.4088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0201MB3595
X-Mailman-Approved-At: Tue, 16 Jan 2018 08:51:01 -0800
Subject: Re: [meta-xilinx] liblzma: Memory allocation failed on do_package_rpm
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
X-List-Received-Date: Tue, 16 Jan 2018 09:34:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Manju,

I'd like to see if I can reproduce this, could you please send the the step=
s you followed?

Thanks!

Alejandro

-----Original Message-----
From: meta-xilinx-bounces@yoctoproject.org [mailto:meta-xilinx-bounces@yoct=
oproject.org] On Behalf Of Manjukumar Harthikote Matha
Sent: Sunday, January 14, 2018 10:20 PM
To: openembedded-core@lists.openembedded.org; yocto@yoctoproject.org; meta-=
xilinx@yoctoproject.org
Subject: [meta-xilinx] liblzma: Memory allocation failed on do_package_rpm

All,

Has anybody seen this error?

Finished binary package job, result 0, filename (null)
error: create archive failed: cpio: write failed - Cannot allocate memory
error: liblzma: Memory allocation failederror: liblzma: Memory allocation f=
ailedFinished binary package job, result 2,

.......

RPM build errors:
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     Deprecated external dependency generator is used!
|     liblzma: Memory allocation failed    liblzma: Memory allocation faile=
d    liblzma: Memory allocation failed    liblzma: Memory allocation failed=
    liblzma: Memory allocation failed    liblzma: Memory allocation failed

This happens in do_package_rpm task on various recipes, coreutils/libgpg/di=
ffutils etc.

The host machine has good amount on memory, 256G to be exact. When I see th=
e error and issue free -h command, I still see ~120G free memory available.
This is a RHEL 7.2 machine and I am running rocko baseline.

Any reason why this would happen? Where should I look to fix this issue?

Thanks,
Manju
This email and any attachments are intended for the sole use of the named r=
ecipient(s) and contain(s) confidential information that may be proprietary=
, privileged or copyrighted under applicable law. If you are not the intend=
ed recipient, do not read, copy, or forward this email message or any attac=
hments. Delete this email message and any attachments immediately.
--=20
_______________________________________________
meta-xilinx mailing list
meta-xilinx@yoctoproject.org
https://lists.yoctoproject.org/listinfo/meta-xilinx

