Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA88AE00E1F; Wed, 13 Nov 2019 08:12:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.76.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-eopbgr760054.outbound.protection.outlook.com [40.107.76.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8673DE00DFC
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 08:12:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Q1kmbsLsRnHy59bRqXyZOalVM0MuVzqdmNE7PbRLHtxd/9LxfvUsx5LOactRdC2EH1xQi4qYYlPSM/yM5Z/wB5sz5Z3d5DnjG9b5S+7OsevuEfA+WdEvDV69BYkzVroe2HsFZ8AsxXKBqcbWmFL9+viIHM8Jg9LNKW3MHVcIhhi69CAYHSwxEuL4TaaMtwt+AIe2qp9a9+Co0X2WqjG1rrWAxcV1S0xF1x0xinIJCETviydakMli0fRLWmSdYSoJpcHZu+v1YkS9+RvCnJyGELMqxVRTHjm0NCWg28tw/iMUG2KxosDicJ5AFkC8WZousOCF0LpzqdXI7J8CvVAfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=BynpyPsQNIf1L2IEg2o1p3UjaN4SJDFtEJ8zx/Xvx1A=;
	b=IVXNinQhzuvn1lXQq9c+d8Rah+KWysQCUqF+JB0uyYNkYNae/Gd2O6ORzGDZh3Tqi5VxtpSrx1KEXTq1P31JAMLw/+lti0wVROYRonga3ZShJaD+v1uSatrZ+0gcPxyf8iD8+/boKWrUX9VwA6ny1BO+DjDIkCdaro76Dx56lr2WP1Fl1fmwgA53U/+89F0qrQVRbilxCOU9/tizFykqddAf3gwpwxI7HIqqDdHbHkqU4nNS0btSawxn2NhGvyZHZocIm/od+1lugAqxTraJVnMsDoolt25YhmTjikWFeQlMuT4AMlR4BbPOb4E4JEM+wtBDMf4huz1M/P0uCBZUag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=telspandata.com; dmarc=pass action=none
	header.from=telspandata.com; dkim=pass header.d=telspandata.com;
	arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector2-telspandata-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=BynpyPsQNIf1L2IEg2o1p3UjaN4SJDFtEJ8zx/Xvx1A=;
	b=gI5TPxP5KFvcgvludxWEA56tjFOwrSytiZGGO4aMmGD/HLMhAjv7gLVsevIrBUM5ljzKgfUWsuqQvaPpIgdfSX8LrGIDipluoxjgoxV1dS43pX+nnAWsAY5OLPX1u1GXto/uUwgam/pLXwM7/EJ9MV8IGIKPeicehrF6IH/xmnQ=
Received: from DM6PR16MB2665.namprd16.prod.outlook.com (20.177.217.12) by
	DM6PR16MB2555.namprd16.prod.outlook.com (20.177.220.13) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2430.22; Wed, 13 Nov 2019 16:12:49 +0000
Received: from DM6PR16MB2665.namprd16.prod.outlook.com
	([fe80::ad5a:a3f7:308c:61af]) by
	DM6PR16MB2665.namprd16.prod.outlook.com
	([fe80::ad5a:a3f7:308c:61af%6]) with mapi id 15.20.2430.027;
	Wed, 13 Nov 2019 16:12:49 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake <image> -c populate_sdk generates locale error
Thread-Index: AQHVmj0x4qmec3didEG61NlhTGgDEQ==
Date: Wed, 13 Nov 2019 16:12:49 +0000
Message-ID: <DM6PR16MB266559B45615FC4236E9561CB0760@DM6PR16MB2665.namprd16.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79f0e77b-4c56-46d4-39aa-08d76854541f
x-ms-traffictypediagnostic: DM6PR16MB2555:
x-microsoft-antispam-prvs: <DM6PR16MB2555FC88E94C6E18440A3934B0760@DM6PR16MB2555.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(39830400003)(346002)(136003)(366004)(149574003)(199004)(189003)(6506007)(102836004)(66066001)(71200400001)(71190400001)(8936002)(8676002)(14454004)(26005)(66946007)(81166006)(1730700003)(25786009)(7696005)(316002)(99286004)(81156014)(64756008)(66556008)(66476007)(476003)(66446008)(486006)(86362001)(256004)(2351001)(186003)(74316002)(508600001)(33656002)(2906002)(3846002)(76116006)(7736002)(5660300002)(305945005)(6116002)(6436002)(5640700003)(52536014)(6916009)(14444005)(2501003)(9686003)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR16MB2555;
	H:DM6PR16MB2665.namprd16.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t7G3J8WndyK0D9oCf4vkc7+tKlMtVau6/n6I0rrCpjqeQ4yPVCDHl2NB69vuK+chw7vs1f8qi+K+9Osmf8vA8mTdES5L1rtU0kY106gKg7ANoSSAp4T6epJ6bwou9L6hjwl6qRYpqNeSiBtRUmF9/ycjxiYHo+osBddWDWs9PFyjjMZVeQKT2gBTJzksdnwbr5qSJXyhwQE6Co0jGvxm2mEayQyVB67B5nL+vhKPi8MVEyUMax/zA9+Xj7hQ8aPSWTIO3fSKw6QeMvti9rrMq1QoXxX+/5RnAHWt6cnaJcGD+KFH38c/IBbnwvZ6Cm1qxdxfp2pMJf2BZ5h1WuhVt31mCVgx2OQkydsoPpPC+QBXzcat4iiNq5hueFtIWqiom0WBggeI6dGX7jUfnGl0AUP0l34b0IvuKqtS2sVNhhlPcnNpXQ4vYQBSYNOdtrIh
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f0e77b-4c56-46d4-39aa-08d76854541f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 16:12:49.1959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QshLZjPi6pUlzI/vpYSnR0xIWCAM+suECaGQvDlT0UqMAOUlZWojEWJvpQuenYs5vaevpxlOvDzS7GHQ9C4Vyhtr3wuCxEp7wRccK138lFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR16MB2555
Subject: bitbake <image> -c populate_sdk generates locale error
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
X-List-Received-Date: Wed, 13 Nov 2019 16:12:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
When I run 'bitbake <image> -c populate_sdk' I get an error about the local=
e not being found. I have tried setting the locale in local.conf but that d=
idn't seem to help. The odd thing is that 'bitbake <image>' works just fine=
.=0A=
=0A=
Respectfully,=0A=
Matt Schepers=0A=
=0A=
ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Error executing a python functio=
n in exec_python_func() autogenerated:=0A=
=0A=
The stack trace of python calls that resulted in this exception/failure was=
:=0A=
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>=0A=
     0001:=0A=
 *** 0002:do_populate_sdk(d)=0A=
     0003:=0A=
File: '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/classes/popu=
late_sdk_base.bbclass', lineno: 152, function: do_populate_sdk=0A=
     0148:=0A=
     0149:    populate_sdk(d)=0A=
     0150:=0A=
     0151:fakeroot python do_populate_sdk() {=0A=
 *** 0152:    populate_sdk_common(d)=0A=
     0153:}=0A=
     0154:SSTATETASKS +=3D "do_populate_sdk"=0A=
     0155:SSTATE_SKIP_CREATION_task-populate-sdk =3D '1'=0A=
     0156:do_populate_sdk[cleandirs] =3D "${SDKDEPLOYDIR}"=0A=
     ....=0A=
     ....=0A=
     ....=0A=
File: '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/lib/oe/sdk.p=
y', lineno: 45, function: generate_locale_archive=0A=
     0041:    # Need to set this so cross-localedef knows where the archive=
 is=0A=
     0042:    env =3D dict(os.environ)=0A=
     0043:    env["LOCALEARCHIVE"] =3D oe.path.join(localedir, "locale-arch=
ive")=0A=
     0044:=0A=
 *** 0045:    for name in os.listdir(localedir):=0A=
     0046:        path =3D os.path.join(localedir, name)=0A=
     0047:        if os.path.isdir(path):=0A=
     0048:            try:=0A=
     0049:                cmd =3D ["cross-localedef", "--verbose"]=0A=
Exception: FileNotFoundError: [Errno 2] No such file or directory: '/home/m=
schepers/dh3_yocto/yocto/build/tmp/work/dh3a10-poky-linux-gnueabi/telspan-d=
h3/1.0-r0/sdk/image/opt/poky/2.5.2/sysroots/x86_64-telspan-linux/usr/lib/lo=
cale'=0A=
=0A=
ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Function failed: do_populate_sdk=
=0A=
ERROR: Logfile of failure stored in: /home/mschepers/dh3_yocto/yocto/build/=
tmp/work/dh3a10-poky-linux-gnueabi/telspan-dh3/1.0-r0/temp/log.do_populate_=
sdk.27826=0A=
ERROR: Task (/home/mschepers/dh3_yocto/yocto/build/../meta/meta-telspan/rec=
ipes-core/images/telspan-dh3.bb:do_populate_sdk) failed with exit code '1'=
=0A=

