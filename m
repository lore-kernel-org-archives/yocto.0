Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80A9FE00D79; Fri,  5 Jan 2018 08:49:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 153849 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Jan 2018 08:49:40 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0088.outbound.protection.outlook.com [104.47.36.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A9DDE00D55
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 08:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=V5t0dyA39NT4H+xnGYYmASV3d9Ktv0Z0t+dPo3WK5Qw=;
	b=AwL6foflXJ0GNs4/M9WES5dnbeb/GC5m975UbUupbVPN40iV9DXs9v/IuY+mYOS+WPIB8rPBrGTmQIA9o2nuiluRM8VSAOtpr7eFDPImEnLjHzu0zDzenpBuf1v+SaG5g1GY7OnNC1pexoX4cn+7z+QqY5VKYHgCG/4zF8jcDkI=
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) by
	CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Fri, 5 Jan 2018 16:34:23 +0000
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) by
	CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) with
	mapi id 15.20.0386.006; Fri, 5 Jan 2018 16:34:23 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: adding users to image with standalone recipe
Thread-Index: AQHThkLxSqdZa3dGuUKf/ABmexAQ5g==
Date: Fri, 5 Jan 2018 16:34:23 +0000
Message-ID: <CY1PR0401MB13401E8D4DB96EED30D1F48BB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1340;
	7:b/hK3PFLuhVdQz7cSdhtw/ryIjaGESTfw49378TGiz1PFJ7IX4Q/G5Q1mBrDXZpjP3+RVmRSkDtcz1I3nfEEWdglt0NMfqt/488ktQjeOZ/JlqtQ8IbVyssST3E5ow98oEugaDUJ7yfGIn5y36Ib3JrFH5FGWE+Dgjxe4lOKsfVo8LAj4LDzac9WejiK1i2dNXvkiRQnCGZzOVk1wzfEbfYkK3ahQiFvVYalkSsSuPel9PXda5xKfYwhyx//LAnt
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 608f4655-0140-4806-616a-08d5545a2dd6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4603075)(4627115)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060);
	SRVR:CY1PR0401MB1340; 
x-ms-traffictypediagnostic: CY1PR0401MB1340:
x-microsoft-antispam-prvs: <CY1PR0401MB1340830254525F3F6C8DF72EB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(3231023)(944501075)(3002001)(10201501046)(93006095)(93001095)(6041268)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6043046)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1340; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY1PR0401MB1340; 
x-forefront-prvs: 05437568AA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(366004)(39830400003)(39380400002)(396003)(346002)(199004)(189003)(6436002)(3660700001)(8936002)(77096006)(6116002)(3846002)(551544002)(81166006)(55016002)(59450400001)(7736002)(86362001)(8676002)(53936002)(316002)(81156014)(1730700003)(9686003)(6916009)(5640700003)(66066001)(7696005)(6506007)(3280700002)(2351001)(68736007)(99286004)(14454004)(25786009)(106356001)(478600001)(33656002)(105586002)(2906002)(102836004)(74316002)(97736004)(5660300001)(305945005)(2501003)(2900100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0401MB1340;
	H:CY1PR0401MB1340.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: pizCBIZvPrW667cJmywxYmsqCW/blqhTzj71nnReNtm+aPa7hbCrTCHMaN21hehtiNs9IMbKC8HJ3XC9V3uZEA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 608f4655-0140-4806-616a-08d5545a2dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2018 16:34:23.4357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1340
Subject: adding users to image with standalone recipe
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
X-List-Received-Date: Fri, 05 Jan 2018 16:49:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Folks,

I am trying to add users to my rootfs.=20


When I add this to the image recipe it works:
---------
ROOT_PASSWORD =3D "secret"
IGU_PASSWORD =3D  "secret"

EXTRA_USERS_PARAMS =3D "\
		    groupadd igu; \
		    useradd -p `openssl passwd ${IGU_PASSWORD}` igu; \
		    useradd -g igu igu; \
		    usermod -p `openssl passwd ${ROOT_PASSWORD}` root; \
		    "
---------


When I create a separate .bb file called 'users.bb' and append 'users' to I=
MAGE_INSTALL I get a build error:
specifically, 'users.bb' creates two packages 'users-dbg.rpm' and 'users-do=
c.rpm', but not a 'users.rpm'. The build fails because it cant find a 'user=
s.rpm'

This is my 'users.bb' file:
---------
LICENSE =3D "CLOSED"

inherit extrausers

ROOT_PASSWORD =3D "secret"
IGU_PASSWORD =3D  "secret"

EXTRA_USERS_PARAMS =3D "\
		    groupadd igu; \
		    useradd -p `openssl passwd ${IGU_PASSWORD}` igu; \
		    useradd -g igu igu; \
		    usermod -p `openssl passwd ${ROOT_PASSWORD}` root; \
		    "
---------


My question is: Why can't this be a separate recipe?




