Return-Path: <VIVEK.VERMA@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6DABE00A62; Tue, 16 Dec 2014 06:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [134.170.140.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 945 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Dec 2014 06:42:27 PST
Received: from APAC01-HK1-obe.outbound.protection.outlook.com
	(mail-hk1on0078.outbound.protection.outlook.com [134.170.140.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78CC9E00A10;
	Tue, 16 Dec 2014 06:42:27 -0800 (PST)
Received: from SIXPR03CA003.apcprd03.prod.outlook.com (10.242.58.23) by
	HK2PR03MB0803.apcprd03.prod.outlook.com (25.161.188.12) with Microsoft
	SMTP Server (TLS) id 15.1.26.15; Tue, 16 Dec 2014 14:26:40 +0000
Received: from DB3FFO11FD012.protection.gbl (2a01:111:f400:7e04::120) by
	SIXPR03CA003.outlook.office365.com (2a01:111:e400:2000::23) with
	Microsoft
	SMTP Server (TLS) id 15.1.36.22 via Frontend Transport; Tue, 16 Dec 2014
	14:26:39 +0000
Received: from KCHJEXMBX03.kpit.com (115.113.150.154) by
	DB3FFO11FD012.mail.protection.outlook.com (10.47.216.168) with
	Microsoft SMTP Server (TLS) id 15.1.26.17 via Frontend Transport;
	Tue, 16 Dec 2014 14:26:37 +0000
Received: from KCHJEXMBX02.kpit.com (10.10.170.13) by KCHJEXMBX03.kpit.com
	(10.10.170.12) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Tue, 16 Dec 2014 19:55:49 +0530
Received: from KCHJEXMBX02.kpit.com ([10.201.1.12]) by KCHJEXMBX02.kpit.com
	([10.201.1.12]) with mapi id 15.00.0775.031;
	Tue, 16 Dec 2014 19:55:49 +0530
From: VIVEK VERMA <VIVEK.VERMA@kpit.com>
To: Otavio Salvador <otavio@ossystems.com.br>, Sona Sarmadi
	<sona.sarmadi@enea.com>
Thread-Topic: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
Thread-Index: AdAZN1Z4a+Q6OnPDSp63F686y6cGpv//qE+AgABdxHw=
Date: Tue, 16 Dec 2014 14:25:48 +0000
Message-ID: <fd736c49fc534fe699d48c26c1d753eb@KCHJEXMBX02.kpit.com>
References: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>,
	<CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>
In-Reply-To: <CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [103.243.224.45]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: Fail (protection.outlook.com: domain of kpit.com does not
	designate 115.113.150.154 as permitted sender)
	receiver=protection.outlook.com; client-ip=115.113.150.154;
	helo=KCHJEXMBX03.kpit.com;
Authentication-Results: spf=fail (sender IP is 115.113.150.154)
	smtp.mailfrom=VIVEK.VERMA@kpit.com; 
X-Forefront-Antispam-Report: CIP:115.113.150.154; CTRY:IN; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(377454003)(189002)(53754006)(24454002)(51704005)(85426001)(81156004)(106466001)(16601075003)(77156002)(62966003)(97756001)(77096005)(50986999)(54356999)(76176999)(19580395003)(6806004)(46406003)(69596002)(2900100001)(19580405001)(2656002)(87936001)(46102003)(99396003)(230783001)(53416004)(107046002)(23726002)(33646002)(86362001)(120916001)(50466002)(47776003)(21056001)(92566001)(16796002)(4396001)(31966008)(20776003)(66066001)(105606002)(102836002)(15975445007)(92726002)(2950100001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HK2PR03MB0803;
	H:KCHJEXMBX03.kpit.com; FPR:; SPF:Fail; MLV:sfv;
	PTR:115.113.150.154.static-pune.vsnl.net.in; A:1; MX:1; LANG:en;
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:HK2PR03MB0803;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:(601004);
	SRVR:HK2PR03MB0803; 
X-Forefront-PRVS: 04270EF89C
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HK2PR03MB0803;
X-OriginatorOrg: kpit.com
X-Mailman-Approved-At: Tue, 16 Dec 2014 08:53:38 -0800
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Tue, 16 Dec 2014 14:42:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI All,

I am trying to use gstreamer library to play wma file. In my rootfs I do ha=
ve compiled gstreamer plug-ins for good ,bad and ugly.

I am using the command  to play the wma file
________________________________________
From: meta-freescale-bounces@yoctoproject.org <meta-freescale-bounces@yocto=
project.org> on behalf of Otavio Salvador <otavio@ossystems.com.br>
Sent: Tuesday, December 16, 2014 7:37 PM
To: Sona Sarmadi
Cc: Paul Eggleton (paul.eggleton@linux.intel.com); Saul Wold (sgw@linux.int=
el.com); yocto@yoctoproject.org; meta-freescale@yoctoproject.org
Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master

Hello Sona,

On Tue, Dec 16, 2014 at 11:58 AM, Sona Sarmadi <sona.sarmadi@enea.com> wrot=
e:
>
> Is there any specific reason why openssl 1.0.1g is used by default? Yocto=
 is using 1.0.1j in master to address some security issues (SSLv3 protocol =
vulnerability). If there is a strong reason to stay on 1.0.1g, I suggest we=
 apply sslv3 patches  otherwise we just remove this line.
>
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine=
/include/qoriq-default-versions.inc
>
> PREFERRED_VERSION_openssl =3D "1.0.1g"

I agree; it should be removed in my opinion.

Could you prepare a patch and send? So it goes over the usual review
process while Luo enquire internally if there is any reason to not
upgrade?

--
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
--
_______________________________________________
meta-freescale mailing list
meta-freescale@yoctoproject.org
https://lists.yoctoproject.org/listinfo/meta-freescale
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

