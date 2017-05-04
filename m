Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84F16E00852; Thu,  4 May 2017 00:36:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 May 2017 00:36:07 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0055.outbound.protection.outlook.com [104.47.33.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2056E0053A
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 00:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=q+Vtl06xXDXTfSd8GgYwtGtXqCmo/4Zwoi7aQ+lx6n8=;
	b=CQ28PVD8oznmmoPiGIjerrU1UzsxbXF+hXj1ZxePeNZ2Y/QI7Nl28ivfx97p9rM47uCM1Jnae+EybhVxztLATQ189wc08a2skWk49RVKWnbxiCRRiul8jySrXP2SemNvuwArky9O5SvUoh7r+RPeI2705W6UDfL+OOO9mYSQnOY=
Received: from BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) by
	BLUPR15MB0498.namprd15.prod.outlook.com (10.163.214.28) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1075.11; Thu, 4 May 2017 07:21:02 +0000
Received: from BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) by
	BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) with mapi id
	15.01.1061.021; Thu, 4 May 2017 07:21:02 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Thread-Topic: SOLVED RE: [yocto] Recipe changes to pull/fetch the source code
	from local instead of a remote server.
Thread-Index: AdK+nZeqRgzitEp4Q3KhNXx8GvSpAwFLrpxwAAQOOwAAAplvUAAAtKgAAC9FiLA=
Date: Thu, 4 May 2017 07:21:02 +0000
Message-ID: <BLUPR15MB0500A23C56030C69BAC85564D0EA0@BLUPR15MB0500.namprd15.prod.outlook.com>
References: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
	<cd07a0e7-c106-470d-9be8-698f1c5c5832@linux.intel.com>
	<BLUPR15MB0500B226413293138C64D9E2D0160@BLUPR15MB0500.namprd15.prod.outlook.com>
	<131fa059-01f3-7f28-984d-82f530ff261c@linux.intel.com>
In-Reply-To: <131fa059-01f3-7f28-984d-82f530ff261c@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;linux.intel.com; dmarc=none action=none
	header.from=embedur.com;
x-originating-ip: [202.71.146.8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BLUPR15MB0498;
	7:jbGaq0rJB6JPjUHKdQz72r61819ugnWkuM37TdYP/xne9hRN9jxP34WpJKwhJXx4fde3oxqcYHpe6TyEV0rZhjg1Lw0pZpMI1bP5vjMqmRPu40WDDwa2mJRiYlFSdD2Smqr0CrNLDH/3KF4sL4z+sSdrA4rlrgsG1p8nK4ksrQlGBCiZ5xN2NRXH3SDvyXiXwUn2QFVbo3Ft5yqy7AeePQnh/HuN2r4N6KmLBie2oZ9+KK0+PBg72nRNy6pXU9+A3wC0tJ5hK1S291CSWSV/VNRQe4Y+6pYWwzEZcRj3iHq/+hLfWH13+PjygMqCIatyG0VQoW2lczDTSrBLasiYPA==
x-ms-office365-filtering-correlation-id: 92353987-8a5b-45a7-8406-08d492be1f14
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201702281549075);
	SRVR:BLUPR15MB0498; 
x-microsoft-antispam-prvs: <BLUPR15MB04982CFFE5D4CEA96A747DF1D0EA0@BLUPR15MB0498.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(2016111802025)(20161123560025)(20161123555025)(6072148)(6043046);
	SRVR:BLUPR15MB0498; BCL:0; PCL:0; RULEID:; SRVR:BLUPR15MB0498; 
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39400400002)(39410400002)(39840400002)(377454003)(40764003)(13464003)(24454002)(110136004)(7736002)(305945005)(38730400002)(6506006)(2906002)(53936002)(77096006)(189998001)(3660700001)(3846002)(102836003)(6116002)(3280700002)(76176999)(6436002)(54356999)(50986999)(55016002)(99286003)(9686003)(66066001)(6916009)(2950100002)(7696004)(8936002)(2900100001)(122556002)(5660300001)(86362001)(93886004)(33656002)(4326008)(74316002)(478600001)(81166006)(8676002)(53546009)(25786009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR15MB0498;
	H:BLUPR15MB0500.namprd15.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2017 07:21:02.6249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR15MB0498
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SOLVED RE: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Thu, 04 May 2017 07:36:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex, I went through all the variables and found that it is fetching the so=
urce code from the remote server.
Thanks for your help, appreciate it.

Best
-Aravindh

-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Sent: 03 May 2017 14:17
To: Aravindhlal G.S.S
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Recipe changes to pull/fetch the source code from loca=
l instead of a remote server.

On 05/03/2017 11:29 AM, Aravindhlal G.S.S wrote:
> SRC_URI =3D
> "${RDKB_CCSP_ROOT_GIT}/hal/generic;protocol=3D${RDK_GIT_PROTOCOL};branch=
=3D${CCSP_GIT_BRANCH};name=3Dhal"

Where are these variables defined? What do they say?

Where do you expect the source code to be pulled from, and where does it ac=
tually come from?

Alex


