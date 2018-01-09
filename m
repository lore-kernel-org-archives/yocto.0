Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1B0E00DE0; Tue,  9 Jan 2018 10:45:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0056.outbound.protection.outlook.com [104.47.40.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C68D6E00CE8
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 10:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=dphViEL3LvHzcYknpgUbfq/l3pgNAzL/gzmk/lDoHO8=;
	b=o1WbSdd2RilO9LP+zb8XJWbdxx7bQL9INLlSgbcyfneaqyPV8AQevmd/poixuxo+jb0UeYqB0yCaD9Y5tdIDPRvlObGAOwFobzS4NdFXMILp21qX2IkdMLpzH7L/cKRHYa7CvpmzkU4O6PsdK9Mw7RwKwOizdUj0EOxPUE6+GEg=
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) by
	CY1PR0401MB1337.namprd04.prod.outlook.com (10.161.213.17) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Tue, 9 Jan 2018 18:45:02 +0000
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) by
	CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) with
	mapi id 15.20.0386.008; Tue, 9 Jan 2018 18:45:02 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] rdepends = "python3-modules" in recipe does not install
	python3-modules in image
Thread-Index: AQHThkNHEfNse791uk6L+QtsR952xqNlnByAgAGH36aAATCWAIADkfzX
Date: Tue, 9 Jan 2018 18:45:02 +0000
Message-ID: <CY1PR0401MB13409392C7732CE7F482D774B0100@CY1PR0401MB1340.namprd04.prod.outlook.com>
References: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
	<51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
	<63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>,
	<8e0714cd-97e9-6980-2128-1ce6fb0c7b4a@linux.intel.com>
In-Reply-To: <8e0714cd-97e9-6980-2128-1ce6fb0c7b4a@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1337;
	7:hYAI/WBZabrow21fEVo9numRyQb7a0FLgdFrSTTVcHiVS52W1fn2o3ZCqgnjfVcchQrWUyE1PvXDNFAueZJ0qaqkWUDHJQV6rzDPgse9tTTsNLy3hqCWczB645rzc11Z6wlTEV7wE08TlfKqhKYge4qumxAzVhHl8liaRhFlgY5KMSS+9C8THoNayrxB3wiTxgcR5hPrd5bC/UXaFDu30TAIPZnLwhmxqJcYKMjCoA6OvgWLUrAUzhWiKXpVJhUx
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 5aad2d15-315d-48a0-650f-08d5579117eb
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(3008032)(4534020)(4602075)(4603075)(4627115)(201702281549075)(2017052603307)(7153060)(7193020);
	SRVR:CY1PR0401MB1337; 
x-ms-traffictypediagnostic: CY1PR0401MB1337:
x-microsoft-antispam-prvs: <CY1PR0401MB133740B166A82EAC014D1BAFB0100@CY1PR0401MB1337.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(3231023)(944501075)(10201501046)(6041268)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123560045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1337; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY1PR0401MB1337; 
x-forefront-prvs: 0547116B72
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(39380400002)(396003)(39830400003)(366004)(376002)(24454002)(189003)(199004)(7696005)(4326008)(229853002)(25786009)(77096006)(33656002)(6436002)(6246003)(5660300001)(6916009)(97736004)(2950100002)(55016002)(6506007)(9686003)(7736002)(76176011)(102836004)(305945005)(316002)(74316002)(53546011)(93886005)(53936002)(99286004)(14454004)(478600001)(106356001)(105586002)(3660700001)(8676002)(3280700002)(86362001)(6116002)(3846002)(68736007)(8936002)(66066001)(81156014)(81166006)(2900100001)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0401MB1337;
	H:CY1PR0401MB1340.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: gF34ONE3a1GXik1aTe4KNC3HPfI8kB2MWqTdRImgF5NINdrEGLjkyWNFS3o+SSz5cIF/Ut5ilZAVVntPTWOVVQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aad2d15-315d-48a0-650f-08d5579117eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2018 18:45:02.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1337
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rdepends = "python3-modules" in recipe does not install python3-modules in image
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
X-List-Received-Date: Tue, 09 Jan 2018 18:45:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For this recipe the base package is called users.rpm and I can see it in th=
e RPM. Using 'bitbake users -e | grep PN' I was able to find that PN is als=
o set to users, which seems correct.

However the recipe does not install python3-modules even though it's specif=
ied in RDEPENDS. I can get it to work by forcing python3-modules in the IMA=
GE_INSTALL variable, but this is not how I expect yocto to work based on th=
e documentation.

________________________________________
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Sent: Sunday, January 7, 2018 5:10:46 AM
To: Matt Schepers
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] rdepends =3D "python3-modules" in recipe does not inst=
all python3-modules in image

On 01/06/2018 08:00 PM, Matt Schepers wrote:
> How do I check what PN is set to? I can see users-dbg.rpm and
> users-doc.rpm in the rpm folder. The recipe name is users.bb

If the recipe is named users, then PN is most likely users as well.

-doc and -dbg are supplementary packages. What is the main package
called? You can look for it in the rpm directory for example.

Alex

