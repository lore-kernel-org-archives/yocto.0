Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35B3DE00DE0; Thu, 20 Jun 2019 01:43:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.68.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 53426 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Jun 2019 01:43:50 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr680090.outbound.protection.outlook.com [40.107.68.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 322DBE00D39
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 01:43:50 -0700 (PDT)
Received: from CY4PR17MB0949.namprd17.prod.outlook.com (2603:10b6:903:9e::13)
	by DM5PR17MB0954.namprd17.prod.outlook.com (2603:10b6:3:31::16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1987.11;
	Thu, 20 Jun 2019 02:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=keysight.com;
	s=selector2;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=hefipSL1d2NCAGz20YoiIKxyU5pOK4jBjx4hlThFWEQ=;
	b=QwNYCDxkREeNZ2TYavnkcPGmTVfpTsp1+ttTptE/9k1h73wBScQfD5xUbv63Sq4vMKHRNf9AZiSmeRsUmOdpi43HfbRaRjBCYVdoxL32OD5VGC+bS1SCVtWOcFsdTnl+y9JdnMjam1FM9+JjMX6M6TEgQTNKg3FbmlPaXD7A4bU=
Received: from CY4PR17MB1479.namprd17.prod.outlook.com (10.173.63.150) by
	CY4PR17MB0949.namprd17.prod.outlook.com (10.173.179.13) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1987.10; Wed, 19 Jun 2019 15:19:08 +0000
Received: from CY4PR17MB1479.namprd17.prod.outlook.com
	([fe80::958c:178:8176:8d36]) by CY4PR17MB1479.namprd17.prod.outlook.com
	([fe80::958c:178:8176:8d36%6]) with mapi id 15.20.1987.014;
	Wed, 19 Jun 2019 15:19:08 +0000
From: Richard Allen <richard_allen@keysight.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: warrior with recipes AUTOREV, issues (and hangs bitbake on
	Centos )
Thread-Index: AdUmsEu8gSLg96zTSieEBbwnFrQieA==
Date: Wed, 19 Jun 2019 15:19:08 +0000
Message-ID: <CY4PR17MB1479C3706CB1F51A70CEE45CF1E50@CY4PR17MB1479.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard_allen@keysight.com; 
x-originating-ip: [192.25.52.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07f42d03-fac3-48fa-ccd2-08d6f4c97961
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4PR17MB0949; 
X-MS-TrafficTypeDiagnostic: CY4PR17MB0949:|CY4PR17MB0949:|CY4PR17MB0949:|CY4PR17MB0949:|CY4PR17MB0949:|DM5PR17MB0954:
x-microsoft-antispam-prvs: <CY4PR17MB0949772D6C4409A107C91131F1E50@CY4PR17MB0949.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(136003)(376002)(366004)(396003)(346002)(189003)(199004)(305945005)(7696005)(2501003)(6506007)(26005)(8936002)(9686003)(5640700003)(7736002)(81156014)(99286004)(8676002)(102836004)(6436002)(55016002)(76116006)(74316002)(186003)(33656002)(66946007)(1730700003)(52536014)(81166006)(53936002)(66446008)(25786009)(64756008)(66556008)(66476007)(86362001)(66066001)(2906002)(476003)(316002)(73956011)(68736007)(14454004)(256004)(14444005)(478600001)(71190400001)(2351001)(19627235002)(71200400001)(5660300002)(6916009)(486006)(3846002)(6116002)(21314003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR17MB0949;
	H:CY4PR17MB1479.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: keysight.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ot9Tp9ACxb59aK4W+bKHWEvZWcAqIUKttLIdMspL3qdg4IRNY72fFwTkPeE4IBVuJz8OVKz1EMIYOIuefFLCwO/Ca46BR2GkPb0zOoBMqepPn0IJv8jxyTKGKLN1jmTxWZSpeMcOXkpJRbVzsLowU2RyUVsqP8TNEQBzrUcMg0Y8g/Z1U1r9c/AtDRdoWUMKH1jjzCtXgpFSDmcYVEQ0eCBSdKiavi4TU+JVka8rLvF0i8BpWPaop5JKUfjleVPFMzFY53OqOvybywmf4hfbe222Z1iWFkLfYOAoWhg76pU0KI32zbQhsWEpxLxGkyZTWjgDtsfMO7o+BU6QUVdpBC7fGrGl/vE/AvAJ1a5nzvnzqITJrMqMhtDXT3azvuvzDlIAEoN7o678/ZidtqEQhGN0IrDz4kjf2i1hNhFca0M=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f42d03-fac3-48fa-ccd2-08d6f4c97961
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 15:19:08.0789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: richard_allen@keysight.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR17MB0949
X-OriginatorOrg: keysight.com
Subject: warrior with recipes AUTOREV, issues (and hangs bitbake on Centos )
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
X-List-Received-Date: Thu, 20 Jun 2019 08:43:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, during our development process, many of our recipes use AUTOREV  to get=
 latest bits

Under warrior ( bitbake 1.42?) , we are seeing failures with the follow str=
ucture
( from recipes not even used by the image, which recipe changes from bitbak=
e to bitbake)

Traceback (most recent call last):
  File "/home/rcallen/tlo-warrior/sources/openembedded-core/bitbake/lib/bb/=
fetch2/__init__.py", line 1179, in srcrev_internal_helper(ud=3D<bb.fetch2.F=
etchData object at 0x7f43640bdc88>, d=3D<bb.data_smart.DataSmart object at =
0x7f4364111588>, name=3D'default'):
         if srcrev =3D=3D "AUTOINC":
    >        srcrev =3D ud.method.latest_revision(ud, d, name)
    =20
  File "/home/rcallen/tlo-warrior/sources/openembedded-core/bitbake/lib/bb/=
fetch2/__init__.py", line 1574, in Git.latest_revision(ud=3D<bb.fetch2.Fetc=
hData object at 0x7f43640bdc88>, d=3D<bb.data_smart.DataSmart object at 0x7=
f4364111588>, name=3D'default'):
             except KeyError:
    >            revs[key] =3D rev =3D self._latest_revision(ud, d, name)
                 return rev
  File "/home/rcallen/tlo-warrior/sources/openembedded-core/bitbake/lib/bb/=
persist_data.py", line 60, in SQLTable.wrap_func(*args=3D('XXXt', '1a969ebe=
1841690d0c5c36c174aa119175c90cd6'), **kwargs=3D{}):
                             try:
    >                            return f(self, *args, **kwargs)
                             except sqlite3.OperationalError as exc:
  File "/home/rcallen/tlo-warrior/sources/openembedded-core/bitbake/lib/bb/=
persist_data.py", line 89, in SQLTable.wrap_func(*args=3D(XXX', '1a969ebe18=
41690d0c5c36c174aa119175c90cd6'), **kwargs=3D{}):
                         with contextlib.closing(self.connection.cursor()) =
as cursor:
    >                        return f(self, cursor, *args, **kwargs)
                 return wrap_func
  File "/home/rcallen/tlo-warrior/sources/openembedded-core/bitbake/lib/bb/=
persist_data.py", line 197, in SQLTable.__setitem__(cursor=3D<sqlite3.Curso=
r object at 0x7f4364180ab0>, key=3D XXX't', value=3D'1a969ebe1841690d0c5c36=
c174aa119175c90cd6'):
             else:
    >            cursor.execute("INSERT into %s(key, value) values (?, ?);"=
 % self.table, [key, value])
    =20
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression =
was ${@bb.fetch2.get_srcrev(d)} which triggered exception IntegrityError: U=
NIQUE constraint failed: BB_URI_HEADREVS.key


Most times , no problems
If I set BB_SRCREV_POLICY =3D "cache" , never a problem..

When bitbake on a ubuntu, the error is created and bitbake recovers
On a Centos, the error is created AND bitbake HANGS ( A Ctrl C will break i=
nto the bitbake , but leaves a set of processes in memory,  need to manuall=
y kill the bitbake process and all its' children processes,
	- this behavior makes centos for warrior bitbaking pretty useless .

Wondering if others are seeing this?
If so, any known 'fixes' (besides not using AUTOREV ?)
If so, will this get fixed in 'warrior' or later?

Thanks
Richard C Allen




