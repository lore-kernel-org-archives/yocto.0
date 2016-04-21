Return-Path: <pkonopel@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FCA8E00948; Thu, 21 Apr 2016 10:58:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.144 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1981 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Apr 2016 10:58:26 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0144.outbound.protection.outlook.com [157.56.112.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2E6E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=X3t84P/zEVqhzxATbsBRxW2zgk3+UDYAWq/I0xrIWVs=;
	b=PaWX5GSEoQO3gfpHiEtQ3B3JkjMph9cYjBuvJMmYsJ2f2KV9/rQFdi1175WFoE+3AalOdmZMieGBVL5yN1+M8vI/bLJWbSyVx755ZESkaepWGf6XSAp0H6xzr54CpREBHSMxg6ZS2Aw8KA8AO61Pb3qYITmjqmnrixG0HbJbTzM=
Received: from HE1PR06MB1210.eurprd06.prod.outlook.com (10.162.253.151) by
	HE1PR06MB1209.eurprd06.prod.outlook.com (10.162.253.150) with Microsoft
	SMTP Server (TLS) id 15.1.453.26; Thu, 21 Apr 2016 17:25:22 +0000
Received: from HE1PR06MB1210.eurprd06.prod.outlook.com ([10.162.253.151]) by
	HE1PR06MB1210.eurprd06.prod.outlook.com ([10.162.253.151]) with mapi id
	15.01.0453.032; Thu, 21 Apr 2016 17:25:22 +0000
From: "Konopelko, Pavel (P.)" <pkonopel@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Using Java-based code generator in bitbake recipes
Thread-Index: AdGb8XGbkZ50ppwYQmywucHAfYn4qQ==
Date: Thu, 21 Apr 2016 17:25:21 +0000
Message-ID: <HE1PR06MB12100E33E0936B3B0AA14AFFC56E0@HE1PR06MB1210.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=visteon.com;
x-originating-ip: [91.212.132.127]
x-ms-office365-filtering-correlation-id: db7b57b1-933f-455f-8316-08d36a09eb22
x-microsoft-exchange-diagnostics: 1; HE1PR06MB1209;
	5:9M7Jot08rWQ0BFbTdfeadduZ4lNWxEZFhyvZdy/S8oAkOZD+7wxYvtcE2Czfd0JUXv/Xsm2K/Yo9C5vtCJ4gJYlfB2V86RlQeq0EeMINSpZZe1o6OCXS/T2AWd8+D2mszrWYc+qhmcgdIt+XAyDycA==;
	24:6ZKAHTKlzklml8xXk0DbLQfzpj/ipyvlGSplF6O7ZT/jeZfttI6lVExQUDXXUP5DeDtR31A4LQyjzffXQsOKpG/MRj0vFlc3PfkNJh7EPLw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR06MB1209;
x-microsoft-antispam-prvs: <HE1PR06MB120990EEBDD0E4823FBED22DC56E0@HE1PR06MB1209.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521026)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:HE1PR06MB1209; BCL:0; PCL:0; RULEID:; SRVR:HE1PR06MB1209; 
x-forefront-prvs: 091949432C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(53754006)(11100500001)(5004730100002)(66066001)(107886002)(92566002)(2900100001)(5008740100001)(2501003)(189998001)(76576001)(2351001)(6116002)(3846002)(102836003)(77096005)(586003)(3660700001)(5002640100001)(54356999)(86362001)(10400500002)(74316001)(9686002)(1096002)(3280700002)(229853001)(5640700001)(2906002)(450100001)(81166005)(1730700002)(33656002)(122556002)(1220700001)(5003600100002)(87936001)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR06MB1209;
	H:HE1PR06MB1210.eurprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2016 17:25:21.9498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR06MB1209
Subject: Using Java-based code generator in bitbake recipes
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
X-List-Received-Date: Thu, 21 Apr 2016 17:58:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

I need to write bitbake recipes for applications that rely on code generati=
on as a part of their build.  The generator is an Eclipse RCP application t=
hat is available as a pre-built binary.  The latter can also be built from =
the source code with Maven.  The pre-built binary is self-contained and inc=
ludes executable launchers for several platforms including linux-x86_64 and=
 linux-x86 as well as .jar files.  The launchers only depend on JRE that mu=
st be installed on the build host.

So far I was able to create working bitbake recipes for application build s=
cripts that are based on either autotools or CMake and expect the generator=
 to be reachable through the PATH.  In order to make sure that the generato=
r is available on the build host, the recipes add 'generator-native' to the=
 value of their DEPENDS variables.  The recipe generator-native includes th=
e line 'inherit native', fetches pre-built binaries and installs them into =
${D}.

The above works as long as (a) the build host has a right version of the JR=
E installed and (b) the required version of the pre-built generator binarie=
s is available.  Now my questions are:

1) What would be the recommended way to make sure that (a) is fulfilled?  S=
hould the generator-native recipe test the presence of the right JRE versio=
n on the build host and just fail if this pre-requisite is not fulfilled?  =
Or should it rather install the JRE (e.g., by using meta-java or meta-java-=
oracle)?

2) Would it be feasible/sane to support building the generator as a part of=
 bitbake build?  This would help to fulfill (b) through building the genera=
tor from sources, which would also be handy during the generator developmen=
t.  This would require that the build host also includes Maven, but I was u=
nable to find an existing native recipe for it.  I also wonder how well a M=
aven build can be contained by the bitbake build environment.  Any hints on=
 what is involved in making this work would be appreciated.


Thanks,
--Pavel Konopelko


