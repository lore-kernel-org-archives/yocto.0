Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46A3BE00C8B; Wed, 30 May 2018 21:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3147 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 May 2018 21:10:50 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0100.outbound.protection.outlook.com [104.47.36.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC286E00AD8
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 21:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=keysighttech.onmicrosoft.com; s=selector1-keysight-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=c/ClIGlS9qKziTOMW+Js4Hm5/wpXGd7oA3mWvhXyYFY=;
	b=Ij0XjQZTBLEiUOLW4lYC6hOb/W1Q9bkHDwLyhh9YYM/YeOUcQD4pZw6HMBPGVIihUsDE00m5/bmhFV26cE4W7ywrMCIEE/zXE1jGxoPipLVf1kmltLNunAViza8o3WC6cM39ttiZreQKPPpHjgST9eQZgoiJaQgDNRVOc+RIBHI=
Received: from DM5PR17MB1084.namprd17.prod.outlook.com (10.168.116.139) by
	DM5PR17MB1211.namprd17.prod.outlook.com (10.173.133.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.797.11; Wed, 30 May 2018 23:47:54 +0000
Received: from DM5PR17MB1084.namprd17.prod.outlook.com
	([fe80::cc15:b922:bc0d:2cfc]) by
	DM5PR17MB1084.namprd17.prod.outlook.com
	([fe80::cc15:b922:bc0d:2cfc%14]) with mapi id 15.20.0797.017;
	Wed, 30 May 2018 23:47:55 +0000
From: <richard_allen@keysight.com>
To: <yocto@yoctoproject.org>
Thread-Topic: bootchart2 OLDPATH not set in /sbin/bootchartd.bootchart2, 
Thread-Index: AdP4cCEBoNfgnGBMRt+TY2+pITnSDg==
Date: Wed, 30 May 2018 23:47:55 +0000
Message-ID: <DM5PR17MB10844CFE9E1A7AF9E5209060F16C0@DM5PR17MB1084.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard_allen@keysight.com; 
x-originating-ip: [192.25.52.194]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR17MB1211;
	7:jHNoaTMojK6J99Sy29uICfb3fBWOrNxQareKOs0CaOCU2fjQq0yQL4eT/hIOd2vmpZnRkJbXcxQ4CdmvcZAroq+1jj7Nw9Io1/xAFAAK/5rBz2d/IlpADVnyIKaue7Nh3f2STYmkbw80BLQZuMRvEHO77+xVuPijzPMSzP+lgX53J+hi7hCaBf8GszLadsE+5kNhOCzHO2h2xdpTHK/qLiRw5Zl3Y2D4OpU1ssSiTdWZAndOWpbvtuYNCb8gQ/Yw;
	23:r6g6ZGYtUuBud/vg1zp8AGQT/Ksy3CbioJg03z6TT2LCAPr/iL229gND5lH5Y8PyAjZJlxhW4aBhNIXK39WIZgmG1gDldNjcKc+1+rlrZ3eroXqjwpnV2D25AbGiybKTXRpsL8EcG5ZF7453plAruA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR17MB1211; 
X-MS-TrafficTypeDiagnostic: DM5PR17MB1211:|DM5PR17MB1211:
x-microsoft-antispam-prvs: <DM5PR17MB1211C1A0845613C42ECF761FF16C0@DM5PR17MB1211.namprd17.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231254)(944501410)(52105095)(10201501046)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(20161123558120)(20161123562045)(6072148)(201708071742011)(7699016);
	SRVR:DM5PR17MB1211; BCL:0; PCL:0; RULEID:; SRVR:DM5PR17MB1211; 
x-forefront-prvs: 0688BF9B46
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(396003)(366004)(376002)(39860400002)(39380400002)(189003)(199004)(55016002)(59450400001)(186003)(5250100002)(66066001)(478600001)(2501003)(305945005)(7736002)(7696005)(2906002)(5660300001)(102836004)(25786009)(53936002)(9686003)(26005)(3846002)(5640700003)(68736007)(86362001)(33656002)(97736004)(6506007)(2900100001)(316002)(6116002)(3280700002)(99286004)(486006)(81156014)(105586002)(14454004)(106356001)(8936002)(74316002)(1730700003)(6436002)(4743002)(2351001)(81166006)(8676002)(3660700001)(6916009)(476003)(188563004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR17MB1211;
	H:DM5PR17MB1084.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: keysight.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: y8o4FVw6wtnMuj7x4XC9+Pu+NN/dYMHJNpeU0Ryp5ed3cjCMZYIjyss52jpdBFmnWYwelAOfuGhnAioGvNwsXYrmIehLeEy4NvZ+9aECfOyyK1Ka901UGGYFdRpxQoPqlQjqEV+UoEpt9tjVtVlvfiQqLMlblJo+YjNowPAECOyVNSSVzCAdMKsKqSGNSSoW
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 0dfc6d3f-4280-4cb9-e6ee-08d5c687c3d9
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dfc6d3f-4280-4cb9-e6ee-08d5c687c3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2018 23:47:55.0890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR17MB1211
X-OriginatorOrg: keysight.com
Subject: bootchart2 OLDPATH not set in /sbin/bootchartd.bootchart2,
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
X-List-Received-Date: Thu, 31 May 2018 04:10:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I been trying to use bootchart2 and have it daisy chain into the orginal /s=
bin/init
But looks like the /sbin/bootchartd.bootchart2 attempts to restore the PATH=
 from OLDPATH

export PATH=3D$OLDPATH
=09
exec $init $*

But OLDPATH was never set.
The /sbin/init I have then has serious issues , It PATH is now "" ..

I can fix my /sbin/init to test for this but would be good to have bootchar=
t2 fixed.

Thanks


Richard C. Allen
richard_allen@Keysight.com



