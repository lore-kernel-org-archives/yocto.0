Return-Path: <adam.oleksy@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3638AE007C2; Wed, 11 Jan 2017 11:29:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0136.outbound.protection.outlook.com [104.47.2.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FFC5E003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 11:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=iNYxdBuxlZ7jft9jUMaq5ztKopkCtfXr++kakDeHTOk=;
	b=X1lBwcGG20mVTq7WAANksHpde21h0YevyFfxqlSb6JSWk9JQo0VC5WFl3smMJQIR6dkH4NoI8v9emBTcb7CkWhHRPecnx2YGptkDJbHq+YPRKODLCyIWwih/0VFd6ONL1nfqX7yXU+k4VWkNnNX2G09VddiuAwoBfwzMP2Ro4Rw=
Received: from HE1PR0701MB2409.eurprd07.prod.outlook.com (10.168.128.16) by
	HE1PR0701MB2411.eurprd07.prod.outlook.com (10.168.128.18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.6; Wed, 11 Jan 2017 19:29:31 +0000
Received: from HE1PR0701MB2409.eurprd07.prod.outlook.com ([10.168.128.16]) by
	HE1PR0701MB2409.eurprd07.prod.outlook.com ([10.168.128.16]) with
	mapi id 15.01.0845.012; Wed, 11 Jan 2017 19:29:31 +0000
From: "Oleksy, Adam (Nokia - PL/Wroclaw)" <adam.oleksy@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: opkg.conf in sdk and custom URIs
Thread-Index: AQHSbECq8+PXOtyiJkOs/AfRO4oM9A==
Date: Wed, 11 Jan 2017 19:29:31 +0000
Message-ID: <HE1PR0701MB2409A495CFB3ECDC695FD543F7660@HE1PR0701MB2409.eurprd07.prod.outlook.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=adam.oleksy@nokia.com; 
x-originating-ip: [25.167.184.4]
x-ms-office365-filtering-correlation-id: 2716639e-ccf5-474b-9dd8-08d43a582a99
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:HE1PR0701MB2411; 
x-microsoft-exchange-diagnostics: 1; HE1PR0701MB2411;
	7:dOxb8ti+yVa80wtcrlx7mWaGKJYZMkQ0JvLcEaq7jw0ek+AJZFiz2RHwY9mRdNIkyPbD4vpTxIikxw0UbpOaHClI9s5EJ/+RAn/YMZddSmfhFhuC5m7TqTQpyXsAwneIrPFfmUdCNLfcQM/iH0nWlLs7XhyVTFnpjAaRdufGUj+RhPl7UHQh+cyw9mjz9iL1t9m6uC+ER0I4oXa25D/Ntc/rD2uA54DMEfxYtRp589QiUrTyoBdyYvt35r+qbt+HkHC+fe1TH+7217bUKPi+ryOSgQXFFEWhRCd1BZqQ1uaHlL3FuXRX75sDYBWjby0Mzk9Zfg0XyTYO+Gdw/5ziQNx+5m3xVHWSDYvscXzbpbf3UwXD0EVCseGDZTQOzSBKSiK69jVEokCqYXNdQU6uPqDsswJ3ip+g1nvuA3k/z+JkrJ3Rw17lzLw1jWJekiRhdq3O0+gKgqqdGyms1uBi3A==
x-microsoft-antispam-prvs: <HE1PR0701MB2411F0D7DD51298935CBE221F7660@HE1PR0701MB2411.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148);
	SRVR:HE1PR0701MB2411; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0701MB2411; 
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(6009001)(7916002)(39450400003)(39850400002)(39840400002)(39860400002)(39410400002)(189002)(53754006)(199003)(2501003)(450100001)(3660700001)(122556002)(97736004)(92566002)(66066001)(74316002)(305945005)(2900100001)(107886002)(3280700002)(8936002)(2906002)(33656002)(7736002)(189998001)(101416001)(81166006)(81156014)(38730400001)(6116002)(3846002)(8676002)(102836003)(1730700003)(5660300001)(6916009)(99286003)(54356999)(68736007)(6436002)(50986999)(77096006)(6506006)(55016002)(105586002)(9686003)(86362001)(110136003)(106116001)(25786008)(5640700003)(2351001)(7696004)(106356001)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0701MB2411;
	H:HE1PR0701MB2409.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2017 19:29:31.0604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0701MB2411
Subject: opkg.conf in sdk and custom URIs
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
X-List-Received-Date: Wed, 11 Jan 2017 19:29:36 -0000
Content-Language: pl-PL
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi all,
I've found that SDK produced by recipe meta-toolchain contains opkg.conf fi=
le with paths to the tmp/deploy/ipk/<architecture> directories.
In our company all the ipk files are also stored on the http server. I've p=
repared recipe which produce our flavor of the opkg.conf (opkg_http.conf), =
which is installed in the SDK, and alias for the opkg command to use this c=
onfiguration file. I don't know whether this approach is correct. Maybe the=
re is a better way to do it, e.g. configure yocto to change the content of =
the opkg.conf produced by meta-toolchain?
I've tried following variables: PACKAGE_FEED_ARCHS, PACKAGE_FEED_BASE_PATHS=
, PACKAGE_FEED_URIS, but it seems they are for opkg configuration for the t=
arget (not for sdk). Do you have any advices?
Thanks
=20
.....................
 Best Regards,
 Adam Oleksy=

