Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E7AE00D5F; Fri,  5 Jan 2018 10:56:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0076.outbound.protection.outlook.com [104.47.36.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C27DE008FB
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 10:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hCoueoAFHDeDh5daEzZ6zNxXSM004mssUmZ4F/Cs15U=;
	b=JGskapQDLa37OJPT7PvCQprk2bbfdpX7IKiBbR3F78//k9AquKWNcmOWIBUY2BrVFe6ETm+HYGvUgu67lOmK2AQPcpftBKQgLqzw2cpypkNXC342WadzsH9AnRmHKKoL1cbmvadHgH5VZHzf5vrkCAlDLFw828guAMaHxJOe0J0=
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) by
	CY1PR0401MB1339.namprd04.prod.outlook.com (10.161.213.19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Fri, 5 Jan 2018 16:22:49 +0000
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) by
	CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) with
	mapi id 15.20.0386.006; Fri, 5 Jan 2018 16:22:49 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: Giordon Stark <kratsg@gmail.com>
Thread-Topic: [yocto] recipe for custom python package not on pypi
Thread-Index: AQHThN7SBKD3pjkcs06YLvdrfS22caNi0EWAgAKoyeQ=
Date: Fri, 5 Jan 2018 16:22:48 +0000
Message-ID: <CY1PR0401MB1340ECC58D926AE6443175D1B01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
References: <CY4PR04MB1177EB647EAD05243A54BD28B01E0@CY4PR04MB1177.namprd04.prod.outlook.com>,
	<CAFzUWG=8XZCbd=Ooc93KCYH3waxkrrwDDqaXo9WU2MT+5ZtE=g@mail.gmail.com>
In-Reply-To: <CAFzUWG=8XZCbd=Ooc93KCYH3waxkrrwDDqaXo9WU2MT+5ZtE=g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1339;
	7:RA3iLmuvgoBJJLBasGvdlRVru1CWE0IqtwC+7WdcoBfjR9v1C613wEjCIGeVfzZxlqmbRk16euqnCyJk6AS1kk1R6zLny8N3TkV/P3Y6McMAR075r6MQ9Jj2B92sMe37pfG01hu7rBkQUuLBVJLGH8E/euLlVMJ6Eg96SDt1khBxs9bsLFIIfHRPSmz/tLJatn3Lvb4kpq3+ZIofgUNVCp1j4hhstLBCcWZqRx0YuQvW3sjW7eg4fwtZ5p1+SQqS
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 99e485b5-8962-48ff-320e-08d554588fde
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4603075)(4627115)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060);
	SRVR:CY1PR0401MB1339; 
x-ms-traffictypediagnostic: CY1PR0401MB1339:
x-microsoft-antispam-prvs: <CY1PR0401MB133910F95CE1B9E731A0D1FFB01C0@CY1PR0401MB1339.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(48706222282353);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(3231023)(944501075)(3002001)(10201501046)(93006095)(93001095)(6041268)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6043046)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1339; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY1PR0401MB1339; 
x-forefront-prvs: 05437568AA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400003)(376002)(39380400002)(396003)(366004)(346002)(189003)(24454002)(199004)(2950100002)(33656002)(3280700002)(6506007)(6916009)(7696005)(2900100001)(66066001)(39060400002)(81166006)(53546011)(53936002)(3660700001)(105586002)(81156014)(8676002)(97736004)(5660300001)(316002)(8936002)(76176011)(102836004)(99286004)(106356001)(966005)(14454004)(86362001)(77096006)(74316002)(25786009)(305945005)(6436002)(68736007)(7736002)(1411001)(229853002)(6306002)(478600001)(9686003)(6116002)(55016002)(3846002)(6246003)(2906002)(4326008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0401MB1339;
	H:CY1PR0401MB1340.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 9t1/DXEuuxAOfXd7gcDbfMRTdYX0Eq4UwFUvU8+CI7Spg5HAyDD0SRKqY5U6zH5Y7rPCW+9JLlMNqdljkdNolQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e485b5-8962-48ff-320e-08d554588fde
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2018 16:22:48.9570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1339
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe for custom python package not on pypi
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
X-List-Received-Date: Fri, 05 Jan 2018 18:56:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you. This worked!

________________________________________
From: Giordon Stark <kratsg@gmail.com>
Sent: Wednesday, January 3, 2018 4:45:59 PM
To: Matt Schepers
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] recipe for custom python package not on pypi

Hi,

https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/python/pytho=
n-ironman_0.2.13.bb - this is an example recipe for python.

You simply need to change the SRC_URI to point to where your python package=
 is (tarball generally preferred) by something like

file://path/to/tarball.tar.gz

Giordon

On Wed, Jan 3, 2018 at 6:39 PM Matt Schepers <mschepers@telspandata.com<mai=
lto:mschepers@telspandata.com>> wrote:
Folks,

I'm looking for a recipe that will install a custom python package to the p=
ython site-packages on the rootfs. The Python package uses setuptools and t=
he standard setup.py and is not available on pypi because I wrote it. In ge=
neral I am having difficulty finding a recipe for a custom package outside =
of the ones available on pypi.

Can someone point me in the right direction?

Thanks,
Matt
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

