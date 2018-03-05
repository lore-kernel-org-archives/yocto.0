Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 807A7E00ECC; Mon,  5 Mar 2018 14:48:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7154 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 14:48:35 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0129.outbound.protection.outlook.com [104.47.2.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD40AE00823
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 14:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=lUUFbgIeGBtvUAFivuwSxXXyBI+Q0/hNebn75n2XAjo=;
	b=oKYY5zXls1/r99/I1rIMuIm8YLm/6/bMWkGpeGBXEhCYOObbTQO8IMfI8+mixQsIClFXbaQBteKFKV0ejNovANS93xky/cnJyACtRBG8Dz5LR2qRfXO4KFSvwiL7qVfy7fQS7We+E98CmiCpkNUbnKSoHLBcNToSNt6muob7HzQ=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0224.EURP192.PROD.OUTLOOK.COM (10.175.181.11) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.548.13; Mon, 5 Mar 2018 15:15:15 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0548.016;
	Mon, 5 Mar 2018 15:15:15 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bbappend file not used
Thread-Index: AdO0lMKvnpDsf3W1QXCYaWCWinyrew==
Date: Mon, 5 Mar 2018 15:15:15 +0000
Message-ID: <VI1P192MB0143C3B885E5344B5BEB65308DDA0@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0224;
	7:wA2siwcUIM8dXxubqOMeZKeBKHBFBDrAVIQ8zyDezaRH0g9dhzHgXBx9BdhKQy9kP17wtQQUzAp9IGio8djMu+SayPxC0RYhbC5wjU2J12HufEPYapEAZ5wURMHGctrOKSlQX8391r86BTmSVKB98gyxjOmV2qbuD8lTPmvNb0brK+cQAVjU9Zt9H9kRLeAlSvPc2gZALEo7v4Y2HjJQuDJ0vhgotnN0MB5AlIpn1wwz4AOwvhPZ9i/93Yr+hxaQ
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 0c82fad4-70ea-4561-d056-08d582abe5fa
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:VI1P192MB0224; 
x-ms-traffictypediagnostic: VI1P192MB0224:
x-microsoft-antispam-prvs: <VI1P192MB0224B623D98A34547DAA2AC58DDA0@VI1P192MB0224.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(10201501046)(3231220)(944501244)(52105095)(3002001)(93006095)(93001095)(6041288)(20161123560045)(20161123562045)(20161123558120)(2016111802025)(20161123564045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0224; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0224; 
x-forefront-prvs: 06022AA85F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39380400002)(39830400003)(366004)(346002)(376002)(199004)(189003)(2906002)(2351001)(2501003)(102836004)(54896002)(68736007)(97736004)(3846002)(186003)(478600001)(66066001)(5250100002)(99286004)(6506007)(106356001)(55016002)(6116002)(316002)(790700001)(53936002)(5640700003)(3280700002)(9686003)(26005)(6916009)(7696005)(6436002)(6306002)(2900100001)(7736002)(14454004)(74316002)(86362001)(8936002)(105586002)(3660700001)(5630700001)(5660300001)(33656002)(25786009)(3480700004)(81156014)(81166006)(1730700003)(8676002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0224;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ijIsPyVqgtEdcuwlz7Hl1gA2H7qQEmMJ2PzXig1F1PBlxFfISiJVmHO13GjiyqZ5ejPxsmfsuORxfDE0MSqnSZvAzBKeXE5PhkPMptIZWbfz+x4iepf/IGpiLM1Q9wdRoxBQcWeI4WkChlmTNaohLBcKaLvxYMlYTIcepW3pwvfjfA8pdhjTb9mevJmxmAjEfr2jv2BioPqXxW7iPKT7T4K4G8eKzgfcllPF36582l1+2Xl2Ax0dQ5xRhmeL5cKMwZQOdaqvZscB8/QFS0ZOZq2FIx4ezYBHM/kuoVeaXts7zVBXoG9WTwQ3KyaZGiKP4Ij4mvHE/KxcKwdUiB7qog==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c82fad4-70ea-4561-d056-08d582abe5fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2018 15:15:15.0981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0224
X-Mailman-Approved-At: Sun, 11 Mar 2018 16:02:55 -0700
Subject: bbappend file not used
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
X-List-Received-Date: Mon, 05 Mar 2018 22:48:38 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB0143C3B885E5344B5BEB65308DDA0VI1P192MB0143EURP_"

--_000_VI1P192MB0143C3B885E5344B5BEB65308DDA0VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dears,

I want to build an image using systemd and system-networkd as network manag=
er and set static ip address to eth0.

To do so, I use a bbappend file to systemd.

The problem is that the systemd_%.bbappend file does not appear when callin=
g bitbake-layers show-appends. I'm quite sure it is not processed because w=
hen a voluntary add a typo, it does not break the bitbake process.

What did I do wrong ??

Below is my "files architecture":
Yocto
 |-- Sources (Rocko 2.4.1)
  |-- myDir
        |-- build
              |-- conf
                                Local.conf
        |-- meta-myLayer
              |-- conf
              |-- recipes-core
                    |-- images
                          my-image.bb
                    |-- systemd
                          systemd_%.bbappend
                          |-- system
                                eth.network

The target is a generic x86_64 board (AAEON GENE BT 05 with J1900 processor=
).
Host system is ubuntu 16.04 LTS



Thanks

Vince

--_000_VI1P192MB0143C3B885E5344B5BEB65308DDA0VI1P192MB0143EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:874539280;
	mso-list-type:hybrid;
	mso-list-template-ids:385540596 1783932198 134807555 134807557 134807553 1=
34807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:25.5pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:61.5pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:97.5pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:133.5pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:169.5pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:205.5pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:241.5pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:277.5pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:313.5pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1272662545;
	mso-list-type:hybrid;
	mso-list-template-ids:-796888962 -730294586 134807555 134807557 134807553 =
134807555 134807557 134807553 134807555 134807557;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:90.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.0pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:198.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.0pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:306.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:342.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1858691528;
	mso-list-type:hybrid;
	mso-list-template-ids:-11217790 1220029544 134807555 134807557 134807553 1=
34807555 134807557 134807553 134807555 134807557;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:23.25pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:59.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:95.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:131.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:167.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:203.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:239.25pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:275.25pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:311.25pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1976376744;
	mso-list-type:hybrid;
	mso-list-template-ids:1373517324 -1287721530 134807555 134807557 134807553=
 134807555 134807557 134807553 134807555 134807557;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:90.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.0pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:198.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.0pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:306.0pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:342.0pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dears,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to build an image using systemd and system-ne=
tworkd as network manager and set static ip address to eth0.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To do so, I use a bbappend file to systemd.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem is that the systemd_%.bbappend file does=
 not appear when calling bitbake-layers show-appends. I&#8217;m quite sure =
it is not processed because when a voluntary add a typo, it does not break =
the bitbake process.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What did I do wrong ??<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below is my &#8220;files architecture&#8221;:<o:p></=
o:p></p>
<p class=3D"MsoNormal">Yocto<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;|-- Sources (Rocko 2.4.1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; |-- myDir<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;|-- build=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;|-- conf<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Local.conf<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;|-- meta-=
myLayer <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-- conf<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;|-- recipes-core<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |-- images<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; my-image.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |-- systemd<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;systemd_%.bbappend<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;|-- system<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eth.network<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The target is a generic x86_64 board (AAEON GENE BT =
05 with J1900 processor).<o:p></o:p></p>
<p class=3D"MsoNormal">Host system is ubuntu 16.04 LTS<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<span style=3D"font-family:&quot;Arial&quot;,s=
ans-serif;color:#222222;background:white;mso-fareast-language:EN-GB"><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Vince<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_VI1P192MB0143C3B885E5344B5BEB65308DDA0VI1P192MB0143EURP_--
