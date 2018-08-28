Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 752BAE0043F; Tue, 28 Aug 2018 05:45:59 -0700 (PDT)
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
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B411E003C1
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 05:45:57 -0700 (PDT)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
	(mail-db3eur04lp0152.outbound.protection.outlook.com
	[23.103.133.152])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w7SCUtbc030007
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Tue, 28 Aug 2018 14:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=wH6OSoUXX2pF2G/zhLcGSB1R1k6y0mwyKsRXizRCoTA=;
	b=hLeNKhLFsQWDt6IYZSuJh7EoPGTG/sH60UPWUViPn0ycU/BK/KH/DCGD3qGOpN4Qyp2QSEQZpzzkrBissJTYcmzbZhZqSRGvPu+EOGOGk+IXwu0AkN8rdDoojObE6jHq126Sy6Ky1vlJ/+cNJiBjf4KwzxZCoidFdLgDYRYFwgI=
Received: from AM6PR02MB4327.eurprd02.prod.outlook.com (20.177.114.148) by
	AM6PR02MB3992.eurprd02.prod.outlook.com (20.177.112.141) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1080.17; Tue, 28 Aug 2018 12:30:54 +0000
Received: from AM6PR02MB4327.eurprd02.prod.outlook.com
	([fe80::a1f0:7370:ddd2:a70]) by AM6PR02MB4327.eurprd02.prod.outlook.com
	([fe80::a1f0:7370:ddd2:a70%4]) with mapi id 15.20.1080.015;
	Tue, 28 Aug 2018 12:30:54 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Jacob Kaddoura <jkaddoura@sbimagingsystems.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] gRPC: grpc_cpp_plugin is not included in host sysroot
	for standard sdk
Thread-Index: AdPhp4xrJxudNE/dTRmoP930y76OVBdI0Syv
Date: Tue, 28 Aug 2018 12:30:54 +0000
Message-ID: <AM6PR02MB4327853D7F7E9AB856F60B66CD0A0@AM6PR02MB4327.eurprd02.prod.outlook.com>
References: <26270F9260A36F4CB337236612DB479EC7DA09@ORD2MBX13B.mex05.mlsrvr.com>
In-Reply-To: <26270F9260A36F4CB337236612DB479EC7DA09@ORD2MBX13B.mex05.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR02MB3992;
	6:/KFHKKEeT0FVWDUl7B8jFgNzaRHfyVJfPBKsaPzMQThhyDHe/4opolvzlA2EgP3HkXr4M8HGo8pr75EGfq/kgZVeiLSvKWFM+vbL8E85vDxz8e0dPTqHaWFJ6GE7crOM8da4FUsejaPbTshoUYQ3gF/mqfoP5SPuorxpEF1DAT8h30l0tn9phizmE9GGUh3hr486yJYIkmMqRooj5x9pQRms2by8bLUhd3TO6pi555GLqLwJ4XEWYH3J7E6rEYF5ELmcJM/K+AJf7QeRtHtjeGC4Q2cw2bUpGjshFNf/K4lRYvdRK1qBDTyIhTK5LU0aaavf0wTqjwetEYDfTJe09qqXi2F1Er3JksbUvKwuqBQMEqgkn6mTGeVpx4Ngk9Y4qE2SJVYVxO9/OFZ1KdRzyJD5vXK9hgryZMyLp9Va4n/86rF3FlSgTufLp27Y/oGEGDjhxwvjrKYkhoY+dTfiBg==;
	5:j5+fekPLE291I9CUNMAfEEkCtwsg1+fEo7u7CIpDxY9TKE5vGYemMgadTxoWlwhar/s4PrcIlhnf+cXSEHsLMbTaimnVeEYmbeUj9iGmI10qVpQ9Pv1kHU9yMtwls9ui1n5tRr+P/RC4QyGPMX+wj69tOkX6FfRy1fVr5XWEOuU=;
	7:XF35W+xJwVmaOkq2g6kJ4vcH9Gz9U9Y3hKnWsfn/lvshdboBUIBROuzgaoLbQDrEHXfNVwm5nUEKwpCFppmmKgPwMmEaj2apfd0MnCW0bP2AHZC1L7rQo+YJLBs436s0Z7zpztvNFacquZL5O/y6Do0P3ZEe5HtfUS38A7aleaylCuTARVXRhzf7bi7kzhIBpxS0OpzmKnGHsGbdZozROAXx2qGKRAV0Bi9zn/D+QvSyjj1fvYrS0Dbh5g4auTD/
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 1e08da6e-e1b9-43ce-70a5-08d60ce21946
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB3992; 
x-ms-traffictypediagnostic: AM6PR02MB3992:
x-microsoft-antispam-prvs: <AM6PR02MB3992B7E4A40A03D6EDBC1765CD0A0@AM6PR02MB3992.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(201708071742011)(7699016);
	SRVR:AM6PR02MB3992; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB3992; 
x-forefront-prvs: 077884B8B5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(80792005)(68736007)(99286004)(7696005)(76176011)(14454004)(25786009)(2501003)(5250100002)(3846002)(6246003)(53936002)(256004)(33656002)(7736002)(6116002)(229853002)(74316002)(6436002)(2906002)(54896002)(55016002)(9686003)(486006)(81156014)(19627405001)(2900100001)(102836004)(81166006)(86362001)(11346002)(316002)(446003)(558084003)(6506007)(72206003)(5660300001)(8936002)(26005)(476003)(105586002)(106356001)(186003)(478600001)(97736004)(110136005)(66066001)(6606003)(8676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB3992;
	H:AM6PR02MB4327.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: FJLp+RLVZKOuuejSGLYXrlr2iNQf/tkKq0Y4tsUEhJ5M/xgS/U0xSovD8oI2XJAGQyHr0pF/aLZZNAhEhvZJ2X0Wu6zdRuShIeQCgkE4p7X7U12I0ItguVS+R4qpIhxsqIThIyH4DYGu4CVS0SsxM8dfukrupDzImFEoDtIevOaj9s2+Pb21z48+ckdyiEC0NqVBijCiDnHuBlTNyj3B4zF644QHrYyYV/PhbDOqBCv7geJdL8le+12NbZ7SnWNMjeu6nLxMVnY6G3HgiZau/whcs7BTLXhuB9AcS5AcxpIeLkFZ70vcJ56enBul0AHS8qULdxi7tkDEfwSqwG/o+HqyUWH23RKOt7NpVIU77D4=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e08da6e-e1b9-43ce-70a5-08d60ce21946
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2018 12:30:54.4911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB3992
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-28_05:, , signatures=0
Subject: Re: gRPC: grpc_cpp_plugin is not included in host sysroot for standard sdk
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
X-List-Received-Date: Tue, 28 Aug 2018 12:45:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR02MB4327853D7F7E9AB856F60B66CD0A0AM6PR02MB4327eurp_"

--_000_AM6PR02MB4327853D7F7E9AB856F60B66CD0A0AM6PR02MB4327eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I think it is a very sensible approach to first check in the latest branch.

If it is supported in the latest branch - then port it.

So - is this thing supported in the latest poky branch?

--_000_AM6PR02MB4327853D7F7E9AB856F60B66CD0A0AM6PR02MB4327eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I think it is a very sensible app=
roach to first check in the latest branch.</p>
<p style=3D"margin-top:0;margin-bottom:0">If it is supported in the latest =
branch - then port it.</p>
<p style=3D"margin-top:0;margin-bottom:0">So - is this thing supported in t=
he latest poky branch?</p>
</div>
</body>
</html>

--_000_AM6PR02MB4327853D7F7E9AB856F60B66CD0A0AM6PR02MB4327eurp_--
