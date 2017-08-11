Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7390E00C7A; Fri, 11 Aug 2017 16:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1462 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Aug 2017 16:51:53 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C816E00B83
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 16:51:53 -0700 (PDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v7BNQ7LA014806; Fri, 11 Aug 2017 18:27:28 -0500
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp0115.outbound.protection.outlook.com
	[207.46.163.115])
	by mx0b-00010702.pphosted.com with ESMTP id 2c9p77g077-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 11 Aug 2017 18:27:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=cmDmVr6eNxkr45Pf6cc4NzBTx9uA6CXSRdKkBhBhh5A=;
	b=HJpEMau9DDywjkkiEAiQ+FLtMYnaUlzlQ2CsOAhW5L3qEz0hVcuJLokk6QeQnXYUrhI+Ef9op547LeP0Dmp+YK7ch6zBoicNzpxF2u/JKKQAaiBI6QYc+UwnOGGgisodlSPwjGD7lmvxQNg53WZtf21X4KD07Zp4Ga/9hO/jkKw=
Received: from CY1PR0401MB1324.namprd04.prod.outlook.com (10.161.213.16) by
	CY1PR0401MB1324.namprd04.prod.outlook.com (10.161.213.16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1320.16; Fri, 11 Aug 2017 23:27:26 +0000
Received: from CY1PR0401MB1324.namprd04.prod.outlook.com ([10.161.213.16]) by
	CY1PR0401MB1324.namprd04.prod.outlook.com ([10.161.213.16]) with
	mapi id 15.01.1320.021; Fri, 11 Aug 2017 23:27:26 +0000
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: "Andersen, Christian" <c.andersen@kostal.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] GPG signed package feeds and packages: opkg update fails
	with "No public key"
Thread-Index: AdMPYr10hZrldovBTyKk9Y9Teaz6MQCcteWA
Date: Fri, 11 Aug 2017 23:27:26 +0000
Message-ID: <1f7bf541-2df8-4a02-6323-97cd4d89868d@ni.com>
References: <ae4b039cfb244f0682956bcdbea5af0e@DEBEMAIL001.kostal.int>
In-Reply-To: <ae4b039cfb244f0682956bcdbea5af0e@DEBEMAIL001.kostal.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-imapappendstamp: CY1PR0401MB1324.namprd04.prod.outlook.com
	(15.01.1320.000)
x-originating-ip: [68.203.3.226]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1324;
	6:KUpKw+nsTa5nmnXgw5722peQNsQ/TnhBIHDPrdJWqq5J2kY7wLgjvs/I4eE3WZ7TSFF1xEdPsPGV2/Hi8wjZM7ABlnMhpu6ykNlrY39gCSv+Ahw8rOC6xwCL/vAxCwJACCBLXemSQ9BTlWgCxO3M2M74KaYAp2S+BF2us5oW8isU+exHL/HJBL4FsK0iU2tvGNA9Lf0CBnjwdtz8sqVvU12GIMbg/X9yYG5t0dLvlyBT2riMjaIXD9g1bo1C+bgzkCE20TwtTVs90mn7zPB3PNwuPxi/Wj7aAFDOUg2jCIa9WGbn/apqHJEEhF9YNgslTBxGNz448Z7s2mLVNCPzvg==;
	5:JY5pIfL5SUt09EEfP/w1BWbNbuoN6wGXhAlZExJAscuGCLdKdbFXtcQzPQtOGEWcFPUOHfXOrP1wwO7wsgClZU0iYxVkYS1HBN5cySF3GJe5U9imRXLD3363f08fixf4mlTevlnIZz801+dwGZ8dIw==;
	24:Ab/JrvvdrZ+kIwiyV2q3jY3Q+LHkkell1SOevxvljIEEghihHt+JkdF0cX2MUB5tzXX2iSsJ0mfjXjHi0Fa/ck3G82GPUuUtS2LgXp8e0Yw=;
	7:0FneiCyiLHefpvGpSIH5b48IDrOHGYZhnDcU3laVcT4DeimVViRQkpODzoFskFE1rgoUm1TYPxl+mCvxRmHqCWlwhMF80FQMJNifZGWC8kEyZzCVbLZlLOsid9oJlfGUo3bDXiG/KrgQa/uGxumy/UCnWEpLgDc2+UgzHWgQS4soxIJMAzbmptfBAn63JwnTose/MgbIiICH8e/RP6b+WlH66QY2icN4ePDRygkfWII=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: c4be6721-42fb-4bcc-fad2-08d4e1108702
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:CY1PR0401MB1324; 
x-ms-traffictypediagnostic: CY1PR0401MB1324:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <CY1PR0401MB13241E43956109C6BDD2B31286890@CY1PR0401MB1324.namprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123560025)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY1PR0401MB1324; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY1PR0401MB1324; 
x-forefront-prvs: 03965EFC76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(24454002)(377454003)(189002)(377424004)(199003)(551544002)(19625305001)(105586002)(101416001)(2950100002)(25786009)(8676002)(106356001)(81156014)(8936002)(81166006)(6506006)(33646002)(76176999)(77096006)(31686004)(6246003)(6486002)(53546010)(53936002)(36756003)(50986999)(5660300001)(229853002)(99286003)(305945005)(6306002)(10710500007)(7736002)(6512007)(54356999)(2900100001)(97736004)(2906002)(478600001)(66066001)(15650500001)(2420400007)(2501003)(966005)(14454004)(3660700001)(68736007)(31696002)(7110500001)(189998001)(3280700002)(3846002)(6436002)(6116002)(102836003)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0401MB1324;
	H:CY1PR0401MB1324.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2017 23:27:26.4584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1324
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-08-11_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1706020000 definitions=main-1708110369
Subject: Re: GPG signed package feeds and packages: opkg update fails with "No public key"
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
X-List-Received-Date: Fri, 11 Aug 2017 23:51:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <4D7607779C3CBD4EBE16F628FF2B9D62@nio365.onmicrosoft.com>
Content-Transfer-Encoding: quoted-printable



On 08/07/2017 04:51 AM, Andersen, Christian wrote:
> Hello,
>=20
> I am trying to sign our ipk-packages and the package feed using GPG. As
> far as I can tell the signatures are correctly generated using this in
> the local.conf:
>=20
> INHERIT +=3D "sign_package_feed sign_ipk"
> PACKAGE_FEED_GPG_NAME ?=3D "73CE8000"
> PACKAGE_FEED_GPG_PASSPHRASE_FILE ?=3D "/var/lib/jenkins/.gnupg/passwd.txt=
"
> IPK_GPG_NAME ?=3D "73CE8000"
> IPK_GPG_PASSPHRASE_FILE ?=3D "/var/lib/jenkins/.gnupg/passwd.txt"
> GPG_PATH ?=3D "/var/lib/jenkins/.gnupg"
>=20
> The public key is installed using opkg-keyrings and this config:
> =20
> OPKG_KEYRING_KEYS =3D "73CE8000"
>=20
> On the target I am able to verify that the public key is available:
>=20
> root@scb-anders05:~# opkg-key list
>=20
> /etc/opkg/trusted.gpg
>=20
> ---------------------
>=20
> pub   rsa2048 2017-08-04 [SC]
>       B104E37136084E68203BB2CD5676B9F373CE8000
> uid           [unknown] Company <mail@example.tld>
> sub   rsa2048 2017-08-04 [E]

Have you tried to sign using a key with non-default values? I can't see any=
thing clearly off on your config, other than your key being " [unknown] Com=
pany <mail@example.tld>"

> The opkg.conf contains:
>=20
> option check_signature 1
> #option check_pkg_signature 1
> option signature_type gpg-asc
>=20
> But when I try opkg update I get:
>=20
> root@scb-anders05:~# opkg update
> Downloading http://internalhost:8000/puck/pyro-develop/ipk/all/Packages.g=
z.
> Downloading http://internalhost:8000/puck/pyro-develop/ipk/all/Packages.a=
sc.
> Downloading
> http://internalhost:8000/puck/pyro-develop/ipk/cortexa8hf-neon/Packages.g=
z.
> Downloading
> http://internalhost:8000/puck/pyro-develop/ipk/cortexa8hf-neon/Packages.a=
sc.
> Downloading http://internalhost:8000/puck/pyro-develop/ipk/scb/Packages.g=
z.
> Downloading http://internalhost:8000/puck/pyro-develop/ipk/scb/Packages.a=
sc.
> Collected errors:
>=20
> * opkg_verify_gpg_signature: Signature status returned error: No public k=
ey
> * pkg_src_verify: Signature verification failed for all.
> * opkg_verify_gpg_signature: Signature status returned error: No public k=
ey
> * pkg_src_verify: Signature verification failed for cortexa8hf-neon.
> * opkg_verify_gpg_signature: Signature status returned error: No public k=
ey
> * pkg_src_verify: Signature verification failed for scb.
>=20
> When manually loading the Packages and Packages.asc and verify the
> signature on the target it seems to work:
>=20
> root@scb-anders05:~# opkg-key adv --verify Packages.asc Packages
>=20
> Executing: gpg --no-options --no-default-keyring --keyring
> /etc/opkg/trusted.gpg --secret-keyring /etc/opkg/secring.gpg
> --trustdb-name /etc/opkg/trustdb.gpg --verify Packages.asc Packages
>=20
> gpg: Signature made Fri Aug  4 17:00:52 2017 CEST
> gpg:                using RSA key 5676B9F373CE8000
> gpg: Good signature from "Company <mail@example.tld>" [unknown]
> gpg: WARNING: This key is not certified with a trusted signature!
> gpg:          There is no indication that the signature belongs to the
> owner.
>=20
> Primary key fingerprint: B104 E371 3608 4E68 203B  B2CD 5676 B9F3 73CE 80=
00
>=20
> Even after changing the trust-level for the public key to 5 (ultimate),
> opkg update does not accept the signature.
>=20
> Does anybody have an idea what=92s going on and how I can fix this?


--=20
Cheers,

Alejandro

