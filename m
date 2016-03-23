Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE83E00863; Wed, 23 Mar 2016 08:58:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_BL_SPAMCOP_NET,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.97 listed in list.dnswl.org]
	* 1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
	bl.spamcop.net
	* [Blocked - see <http://www.spamcop.net/bl.shtml?111.93.218.67>]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3653 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Mar 2016 08:58:17 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0097.outbound.protection.outlook.com [65.55.169.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A39E0048B
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 08:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Lq90XpWHxCmQyDQxSujdg/cjfzxtTHlD/VVI5BxZdPk=;
	b=E26+eQqXGxgwy0VMUi7JndxEwBGKlCEvLXeipnVHgUKfZtVrW+7ltNTuYHBfnXLZNfTuamyvlcgKFyeyRWDzkQbIqMvGSEwh0bOAEdd7f3sBL8moAsvEdSiAmYe4oPyNm/40ntDBdUS7J9l/XYdBxJw1tjgE4jc0CgwOARLPKzQ=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1595.namprd07.prod.outlook.com (10.162.110.149) with
	Microsoft
	SMTP Server (TLS) id 15.1.434.16; Wed, 23 Mar 2016 14:24:31 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0434.021; Wed, 23 Mar 2016 14:24:31 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Query] Process of Up-streaming a new meta layer 
Thread-Index: AQHRhQ+3qK3K+J+xxE65zXXT6RN/uw==
Date: Wed, 23 Mar 2016 14:24:31 +0000
Message-ID: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [111.93.218.67]
x-ms-office365-filtering-correlation-id: 0857b57b-1816-419b-dbd5-08d35326d9a2
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1595;
	5:muTjiiuzjzxzrnGRM0+CrqDKmHTNOqOaIh8G+OE1zagkA8fSBKFKgRahYHXesxWeGQ/PsV/8Sj6WgbrTIccAvRNM1FXIJrx3J+g7htxsJTHxU2rLeT5yC9R69/d7MSWEQV4bdQWAmi8dFYl3F6dbVw==;
	24:lcaA9XFwSyPxZrvRTxL9v/6CRqSweiW4R+SU2gmcCKef+O9PFSsUOtd1Lsx0PksWuVkoh2EgGhSfZEredZ8RoHwvVn6Pj6LX3Fk8PdeSUHI=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1595;
x-microsoft-antispam-prvs: <BY1PR0701MB159561062D22C2554AD2CC6CE1810@BY1PR0701MB1595.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:BY1PR0701MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1595; 
x-forefront-prvs: 08902E536D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(6009001)(53754006)(107886002)(110136002)(189998001)(92566002)(87936001)(86362001)(54356999)(50986999)(66066001)(74316001)(76576001)(77096005)(2900100001)(81156013)(81166005)(5008740100001)(5640700001)(450100001)(5002640100001)(5003600100002)(33656002)(11100500001)(1730700002)(122556002)(106116001)(2906002)(102836003)(6116002)(3846002)(1096002)(1220700001)(586003)(558084003)(99286002)(2501003)(3660700001)(3280700002)(5004730100002)(10400500002)(229853001)(2351001)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1595;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2016 14:24:31.3626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1595
X-Mailman-Approved-At: Thu, 24 Mar 2016 10:56:29 -0700
Subject: [Query] Process of Up-streaming a new meta layer
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
X-List-Received-Date: Wed, 23 Mar 2016 15:58:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello All,

What is the process of upstreaming a new meta layer ?
The layer is specific to cavium thunderx and it can be named as meta-cavium

Is this the correct mailing list to upstream ?

Regards,=20
Manish Jaggi    =

