Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD5ACE0043F; Tue, 28 Aug 2018 05:36:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 310 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Aug 2018 05:36:08 PDT
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88243E003C1
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 05:36:08 -0700 (PDT)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01lp0208.outbound.protection.outlook.com
	[213.199.154.208])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w7SCa3rv000572
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Tue, 28 Aug 2018 14:36:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5KlZjZIdAVD0/XmQQEFRmLFzrKY3L13k86uX12YE5fo=;
	b=xApWvjOCxCEOzDzrGi2ZgkxhHmuDhOCQYK43O5bMj5fwWM1YnPF+NYziK9Ily3LKy46WqX0BPFD+vKqhlN4xpG9F4LQ/nuduUB3+K5+Sh+TN321viK7gZjPKlkPL6SPOv8zu3XgaCDx3SpmZhvvicNGRgHOoxfSK/ZYmbLob+0Y=
Received: from AM6PR02MB4327.eurprd02.prod.outlook.com (20.177.114.148) by
	AM6PR02MB4021.eurprd02.prod.outlook.com (20.177.112.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1080.17; Tue, 28 Aug 2018 12:36:02 +0000
Received: from AM6PR02MB4327.eurprd02.prod.outlook.com
	([fe80::a1f0:7370:ddd2:a70]) by AM6PR02MB4327.eurprd02.prod.outlook.com
	([fe80::a1f0:7370:ddd2:a70%4]) with mapi id 15.20.1080.015;
	Tue, 28 Aug 2018 12:36:02 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: "rohitj.chd" <rohitj.chd@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "anil@sysplay.in" <anil@sysplay.in>
Thread-Topic: [yocto] Porting rtc-pcf85363.c file
Thread-Index: AQHUPrxRQRHAol58NEqFgEtaewKxaqTVGbfk
Date: Tue, 28 Aug 2018 12:36:02 +0000
Message-ID: <AM6PR02MB4327E9B672C4178C7110E588CD0A0@AM6PR02MB4327.eurprd02.prod.outlook.com>
References: <fifdwqd2txkju4m028gqwx2d.1535453146632@email.android.com>
In-Reply-To: <fifdwqd2txkju4m028gqwx2d.1535453146632@email.android.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR02MB4021;
	6:T1hXJ2teycJ4iiZBflVyxGmBnIgkDzcbyixZTM9AgbVzjh/snCViAR6HOs9lJKYOG4BY0fpv8zI4guem6EnCOR+Be4O18kwtk+oG+jbC7jJ1tYwSJi6L8GikEbr7mJBE9DnaoWgBSuOAaetrD72WWFYOwWLvz37ujLv8b0EZhoLYsvmFeA6pPaSdEYUetJ5iY6BQ0ByX1fUB0CRUywo5o/n5cfH4ghGjOsiP58K5nAa/ZvOtKn1CFKkZI9Vvj++qWmCpxgY5Fe3GLy82ofofajtInT+XPiYvWoY0iocedeLHvB5ZCL8RBA/bxTMP/LZgurvYcZQ7CKVZL0E+EuOX1+t7o69bjn+1vRyQc1nJJYvku5VILl3ph6lMk3uVDHKNAsqoB4UzPv0GLTR2gaME1t7s5LZvosd4L3VcjGmuLZhMjAl7vb2HIsi5YdehdviKT38Um4eJF0zA3a5aoBonTQ==;
	5:39espvPWdqWkfoL27Dlrf49m4sV7QAQ2cJBBIQab6jqcA7kqHsDXvUnklQIXPjiyJCvYpQA5DEN6Y/MxTNtKutxosvJV5Eu5Y68qHTn5vvK12wdhFrbJp/zCJFC8Xm4YRgP3INkgA9/TH8PLzdbjgk5ih08QjpHDnrUy+Le1fL8=;
	7:h733l6No/NiI50r14XidqRXSZJbxOZ49A5LnQxD/lrGYl1BKYXXeh1K8DEGM217EiwxezLQxdvgt3+Z/2GeeKPEBtINGOh7zLW7zpRD23bK+1u7R9byRJ/y1YiAXrsq5cPQkbotJEp+axYQxCTzX7lbmyfDYcR75Kd4vPpeplplgmgFyESeXwtmW69YDD+TrKLqijS0QpWnAQ+0Dq4L733WdRBrT6wXFnreZnsJ3snlduRH2WRE4EsCkKDg/o79T
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 7ea2bbdf-8322-440a-a284-08d60ce2d0c4
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB4021; 
x-ms-traffictypediagnostic: AM6PR02MB4021:
x-microsoft-antispam-prvs: <AM6PR02MB40215EB8564C519276CBBEA4CD0A0@AM6PR02MB4021.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231311)(944501410)(52105095)(3002001)(10201501046)(149027)(150027)(6041310)(20161123564045)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(201708071742011)(7699016);
	SRVR:AM6PR02MB4021; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB4021; 
x-forefront-prvs: 077884B8B5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39840400004)(189003)(199004)(76176011)(7696005)(8936002)(229853002)(2900100001)(6506007)(54896002)(72206003)(19627405001)(186003)(5250100002)(2501003)(97736004)(9686003)(6436002)(55016002)(81166006)(33656002)(26005)(6246003)(39060400002)(102836004)(81156014)(8676002)(105586002)(53936002)(2906002)(25786009)(66066001)(80792005)(5660300001)(74316002)(110136005)(106356001)(316002)(7736002)(99286004)(478600001)(86362001)(256004)(486006)(68736007)(3846002)(2201001)(6116002)(14454004)(11346002)(446003)(558084003)(476003)(6606003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB4021;
	H:AM6PR02MB4327.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: +xM99iegj5VgyWdVHm7GrfeRYS4LualGhsFiCoxwj6fQM2WLQhfvz4cdwcRAaeaDDjGBjRIE4cqW3vprN+sVmTH9oXmgxLyHjtJjAWmUtDiZefyCp/LWdCQPn8mXdC556dxzYz8Xng542+YOmWgcmLcLUh0jJZt4CJ3KVCn7qEixew0ZohALJZ+WO5bPn5MJVnX8ajrZFa66d5+43HQPqJ9rfZJnR1Uoy/k4aqMX4WA8cwIm+6XKnt38TiyrRZJa41o0v7LnAfMHU8wuIWz4V/I+bkKxPVhmsz19JaFnnTgz+9s8v/icPd/qa7eliiFOtUSrrfoaw7PuKbyzl+EIjZKaNqmKOCqF+Je1HR9EvEg=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ea2bbdf-8322-440a-a284-08d60ce2d0c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2018 12:36:02.3724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB4021
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-28_05:, , signatures=0
Subject: Re: Porting rtc-pcf85363.c file
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
X-List-Received-Date: Tue, 28 Aug 2018 12:36:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR02MB4327E9B672C4178C7110E588CD0A0AM6PR02MB4327eurp_"

--_000_AM6PR02MB4327E9B672C4178C7110E588CD0A0AM6PR02MB4327eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> I need to port rtc-pcf85363 driver to older version of linux.

What version exactly?

--- Kosta Z

--_000_AM6PR02MB4327E9B672C4178C7110E588CD0A0AM6PR02MB4327eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">&gt;&gt;&nbsp;<span style=3D"font=
-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji=
&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&q=
uot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">I need to =
port rtc-pcf85363
 driver to older version of linux.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;">What version exactly?</s=
pan></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;">--- Kosta Z</span></p>
</div>
</body>
</html>

--_000_AM6PR02MB4327E9B672C4178C7110E588CD0A0AM6PR02MB4327eurp_--
