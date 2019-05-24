Return-Path: <harish.tg@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48595E00BAF; Fri, 24 May 2019 03:13:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 989FEE00B81
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 03:13:19 -0700 (PDT)
Received: from 10492-US-DLP002.delphiauto.net (unknown [10.201.250.14]) by
	usflmia-meg1.delphi.com with smtp
	id 1dfe_7a3f_38018b57_14a3_4b6f_b07a_a9aaa1038ccd;
	Fri, 24 May 2019 05:58:55 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP002.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	x4OA2W6L030742; Fri, 24 May 2019 06:02:33 -0400
Received: from mx0a-00275a01.pphosted.com (mx0a-00275a01.pphosted.com
	[148.163.157.133]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 571a_725e_710b86bc_7891_4302_be4a_8700c7e98a59;
	Fri, 24 May 2019 05:59:47 -0400
Received: from pps.filterd (m0109020.ppops.net [127.0.0.1])
	by mx0a-00275a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x4O9t1Q2017236; Fri, 24 May 2019 06:02:31 -0400
Received: from nam03-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam03lp2058.outbound.protection.outlook.com [104.47.41.58])
	by mx0a-00275a01.pphosted.com with ESMTP id 2spdty8772-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 24 May 2019 06:02:31 -0400
Received: from BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM (129.75.106.24) by
	BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM (129.75.106.24) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1900.18; Fri, 24 May 2019 10:02:29 +0000
Received: from BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM
	([fe80::6c86:e18e:fac4:6bf5]) by BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM
	([fe80::6c86:e18e:fac4:6bf5%8]) with mapi id 15.20.1900.020;
	Fri, 24 May 2019 10:02:29 +0000
From: "Tg, Harish" <harish.tg@aptiv.com>
To: Paul Barker <paul@betafive.co.uk>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] EXT SENDER - yocto Digest, Vol 104, Issue 95
Thread-Index: AQHVEKJktXx0yxcK9kKNv1vrSBjDyKZ4rPPggADUGwCAADwkgIAABdSAgAACn0CAAA6MsIAAKl4ggAAN4wCAAADhkA==
Date: Fri, 24 May 2019 10:02:29 +0000
Message-ID: <BN6P197MB0049968C75FA030D5575CE4DFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
	<BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<d10908a2-a6ac-5011-c629-0cf9de89cce6@gmail.com>
	<BN6P197MB00490F98551A58F58C80FAA7FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<99738dcb-c223-6a19-0f5c-3d8fb0ee31c8@gmail.com>
	<BN6P197MB00494FED4E8CA66ED4885186FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<BN6P197MB00491399D0212199DBD595BBFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<7e022cfe-3db6-428f-97bc-2bd337bf3d3e@www.fastmail.com>
In-Reply-To: <7e022cfe-3db6-428f-97bc-2bd337bf3d3e@www.fastmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [1.6.70.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4adb8af2-69ab-4ed5-247f-08d6e02eeed6
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:BN6P197MB0049; 
x-ms-traffictypediagnostic: BN6P197MB0049:
x-microsoft-antispam-prvs: <BN6P197MB004918ED3F57ABCEDB930397FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(13464003)(10533003)(18543002)(66446008)(316002)(66556008)(66476007)(6246003)(26005)(64756008)(76116006)(66946007)(6436002)(486006)(2906002)(73956011)(25786009)(3846002)(66066001)(71190400001)(71200400001)(6116002)(55016002)(476003)(68736007)(11346002)(9686003)(5660300002)(446003)(110136005)(53936002)(86362001)(8936002)(81166006)(186003)(74316002)(81156014)(229853002)(33656002)(8676002)(305945005)(478600001)(76176011)(7736002)(99286004)(256004)(7696005)(52536014)(14454004)(6506007)(102836004)(53546011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6P197MB0049;
	H:BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aptiv.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZFVS5SEw+7Cd1WnJGd4lWden9v63I1RLroibck2kKEForZ4ZFsksEqyVVMrnMdDmcHosFAihrFhdMz+jckA/MPKVbZwqbj5NWO6ym3PZfWBsZf7HDmmtCGbfyR+uIgDmBBAD0cs9i3rBIx5tNT//cgIFjvKRV6IBf/Lv57q4avX0fiYX7KHGc7chrTOFtP7n2z+yQv67s1t8s6X43q2PzjkwjpRA7k4eEa3EZ6NZMAgqERzIO5dUSJVLiPnbJ306wrprrUsXRRUJytkFCVQv8G37206QrbcexJXqxSqbwmnifZkdeS/lLzcBUZN6NpImq227rg6Ej86LPHzOY16upd34G/TSpz02mm08A5lSEiwTOwPAsU5KfdPkJL0p4pmogbpBq5KZrAbIrYbF1VxErMQrTNAa5gJGXxpKEcOtTPc=
MIME-Version: 1.0
X-OriginatorOrg: aptiv.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4adb8af2-69ab-4ed5-247f-08d6e02eeed6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 10:02:29.6990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b1311e5-123f-49db-acdf-8847c2d00bed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6P197MB0049
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-24_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905240068
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
Subject: Re: EXT SENDER - yocto Digest, Vol 104, Issue 95
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
X-List-Received-Date: Fri, 24 May 2019 10:13:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
               I understood what you are trying to say but from where does =
the Yocto pick up the contents for a directory in final rootfs image. Is th=
ere any recipe file in which I can find this. For example: do_install() etc=
.
I also came to know from you that I need a recipe for adding a file into ro=
otfs image. That's well understood. Please clarify about the particular rec=
ipe file where the contents are copied from source to the rootfs image.

Thank you for writing to me.

Regards,
Harish.

-----Original Message-----
From: Paul Barker [mailto:paul@betafive.co.uk]=20
Sent: Friday, May 24, 2019 3:26 PM
To: Tg, Harish <harish.tg@aptiv.com>; Yocto discussion list <yocto@yoctopro=
ject.org>
Subject: Re: [yocto] EXT SENDER - yocto Digest, Vol 104, Issue 95

On Fri, 24 May 2019, at 10:14, Tg, Harish wrote:
> Kindly help me out in locating the source for /usr/bin of rootfs image=20
> in yocto. I did a find but I do not see the /usr/bin and its exact=20
> contents as in the rootfs image. I need to locate this badly as this=20
> would help in adding the commands to the folder which would be finally=20
> added to the rootfs image. Your help is highly appreciated. Thanks in=20
> advance.
>=20

In a Yocto Project build, the rootfs is built from packages and the package=
s are in turn built from recipes. The supported process for adding new soft=
ware to the image is to write a recipe which creates a new package, then ad=
d the package to IMAGE_INSTALL for an image.

There isn't a location where you can just drop files for them to be include=
d in a rootfs build.

I'd recommend you search online for a tutorial on this, there's plenty of g=
ood resources available.

--
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

