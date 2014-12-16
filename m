Return-Path: <VIVEK.VERMA@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19785E00928; Tue, 16 Dec 2014 07:22:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.170.140.61 listed in list.dnswl.org]
Received: from APAC01-HK1-obe.outbound.protection.outlook.com
	(mail-hk1on0061.outbound.protection.outlook.com [134.170.140.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049DAE008F6;
	Tue, 16 Dec 2014 07:21:57 -0800 (PST)
Received: from SIXPR03CA007.apcprd03.prod.outlook.com (10.242.58.27) by
	HKXPR03MB0807.apcprd03.prod.outlook.com (25.161.182.13) with Microsoft
	SMTP Server (TLS) id 15.1.36.22; Tue, 16 Dec 2014 15:21:55 +0000
Received: from AM1FFO11FD026.protection.gbl (2a01:111:f400:7e00::134) by
	SIXPR03CA007.outlook.office365.com (2a01:111:e400:2000::27) with
	Microsoft
	SMTP Server (TLS) id 15.1.36.23 via Frontend Transport; Tue, 16 Dec 2014
	15:21:54 +0000
Received: from KCHJEXMBX03.kpit.com (115.113.150.154) by
	AM1FFO11FD026.mail.protection.outlook.com (10.174.64.215) with
	Microsoft SMTP Server (TLS) id 15.1.26.17 via Frontend Transport;
	Tue, 16 Dec 2014 15:21:52 +0000
Received: from KCHJEXMBX02.kpit.com (10.10.170.13) by KCHJEXMBX03.kpit.com
	(10.10.170.12) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Tue, 16 Dec 2014 20:51:38 +0530
Received: from KCHJEXMBX02.kpit.com ([10.201.1.12]) by KCHJEXMBX02.kpit.com
	([10.201.1.12]) with mapi id 15.00.0775.031;
	Tue, 16 Dec 2014 20:51:38 +0530
From: VIVEK VERMA <VIVEK.VERMA@kpit.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>, Otavio Salvador
	<otavio@ossystems.com.br>
Thread-Topic: meta-fsl-ppc uses Openssl 1.0.1g in master
Thread-Index: AQHQGUI45ZFl06GD0U6N03npJSCerZySVJpE
Date: Tue, 16 Dec 2014 15:21:38 +0000
Message-ID: <7fefff1d862f4e9d8039fe81909a2de2@KCHJEXMBX02.kpit.com>
References: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
	<CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>,
	<3230301C09DEF9499B442BBE162C5E48257EAAEC@SESTOEX04.enea.se>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48257EAAEC@SESTOEX04.enea.se>
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
	SFS:(10009020)(6009001)(288314003)(189002)(53754006)(377454003)(57704003)(199003)(51704005)(4396001)(54356999)(76176999)(21056001)(107046002)(99396003)(64706001)(46406003)(33646002)(97756001)(106116001)(53416004)(105606002)(2900100001)(46102003)(2950100001)(31966008)(50986999)(16796002)(20776003)(47776003)(85426001)(69596002)(92566001)(66066001)(77096005)(92726002)(15975445007)(102836002)(77156002)(6806004)(19580395003)(50466002)(120916001)(62966003)(23726002)(108616004)(19580405001)(106466001)(81156004)(2656002)(230783001)(86362001)(87936001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HKXPR03MB0807;
	H:KCHJEXMBX03.kpit.com; FPR:; SPF:Fail; MLV:sfv;
	PTR:115.113.150.154.static-pune.vsnl.net.in; MX:1; A:1; LANG:en;
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:HKXPR03MB0807;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:(601004);
	SRVR:HKXPR03MB0807; 
X-Forefront-PRVS: 04270EF89C
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:HKXPR03MB0807;
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2014 15:21:52.8217 (UTC)
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3539451e-b46e-4a26-a242-ff61502855c7;
	Ip=[115.113.150.154]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HKXPR03MB0807
X-Mailman-Approved-At: Tue, 16 Dec 2014 08:53:38 -0800
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"Paul Eggleton	\(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Tue, 16 Dec 2014 15:22:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using gstreamer to play wma files but  I am getting the error as follo=
ws.

root@imx6dlsabresd:~# gst-launch -v playbin2 uri=3Dfile:///ano.wma
Setting pipeline to PAUSED ...
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: ring-buffer-max-size =
=3D 0
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-size =3D -1
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-duration =3D -=
1
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: use-buffering =3D FAL=
SE
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: download =3D FALSE
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: uri =3D "file:///ano.=
wma"
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: connection-speed =3D =
0
/GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: source =3D (GstFileSr=
c) source
ERROR: Pipeline doesn't want to pause.
ERROR: from element /GstURIDecodeBin:uridecodebin0/GstFileSrc:source: Resou=
rce not found.
Additional debug info:
/home/kpit/Desktop/imx6_buildsetup/poky-daisy-11.0.1/build/tmp/work/cortexa=
9hf-vfp-neon-poky-linux-gnueabi/gstreamer/0.10.36-r2/gstreamer-0.10.:
No such file "/ano.wma"
Setting pipeline to NULL ...
Freeing pipeline ...


I have compiled gstreamer good , gstreamer bad , and ugly in my root file s=
ystem.

What do I need to do to play wma files.

Anticipating for reply .

Thanks and Regards
________________________________________
From: meta-freescale-bounces@yoctoproject.org <meta-freescale-bounces@yocto=
project.org> on behalf of Sona Sarmadi <sona.sarmadi@enea.com>
Sent: Tuesday, December 16, 2014 8:38 PM
To: Otavio Salvador
Cc: Paul Eggleton       (paul.eggleton@linux.intel.com); Saul Wold (sgw@lin=
ux.intel.com); yocto@yoctoproject.org; meta-freescale@yoctoproject.org
Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master

 Hi Otavio,

> I agree; it should be removed in my opinion.
>
> Could you prepare a patch and send? So it goes over the usual review
> process while Luo enquire internally if there is any reason to not upgrad=
e?

Sure, I will do this.

/Sona
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

