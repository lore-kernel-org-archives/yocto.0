Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57460E00D29; Tue, 10 May 2016 03:23:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 521 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 May 2016 03:23:00 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0108.outbound.protection.outlook.com [207.46.100.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E508EE00D25
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 03:23:00 -0700 (PDT)
Received: from BY2PR07CA0084.namprd07.prod.outlook.com (10.166.107.37) by
	CO2PR07MB618.namprd07.prod.outlook.com (10.141.228.149) with Microsoft
	SMTP Server (TLS) id 15.1.492.11; Tue, 10 May 2016 10:06:59 +0000
Received: from BL2FFO11OLC011.protection.gbl (2a01:111:f400:7c09::147) by
	BY2PR07CA0084.outlook.office365.com (2a01:111:e400:7bff::37) with
	Microsoft SMTP Server (TLS) id 15.1.492.11 via Frontend Transport;
	Tue, 10 May 2016 10:06:59 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.153)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.153 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1025.honeywell.com (199.61.26.153) by
	BL2FFO11OLC011.mail.protection.outlook.com (10.173.160.157) with
	Microsoft
	SMTP Server (TLS) id 15.1.492.8 via Frontend Transport; Tue, 10 May 2016
	10:06:59 +0000
Received: from de08ex5001.global.ds.honeywell.com (10.216.34.43) by
	DE08W1025.honeywell.com (10.221.248.36) with Microsoft SMTP Server id
	14.3.266.1; Tue, 10 May 2016 06:06:36 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	de08ex5001.global.ds.honeywell.com ([10.216.14.56]) with mapi id
	14.03.0266.001; Tue, 10 May 2016 06:06:37 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Chris Trobridge <christrobridge@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Formulating Recipe for out-of-tree kernel module
Thread-Index: AQHRqomPnR2HR1J0mUmoZHXsvdUXs5+x7wLg
Date: Tue, 10 May 2016 10:06:37 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>
	<DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>
In-Reply-To: <DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.130.199]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.153; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(189002)(199003)(9170700002)(77096005)(86362001)(575784001)(106466001)(15975445007)(2920100001)(2950100001)(92566002)(189998001)(107886002)(11100500001)(19625215002)(512934002)(54356999)(76176999)(19300405004)(50986999)(105586002)(8936002)(16236675004)(81166005)(33656002)(2501003)(19580405001)(19580395003)(31430400001)(15395725005)(84326002)(55846006)(106116001)(85806002)(790700001)(6116002)(102836003)(87936001)(5008740100001)(1220700001)(19617315012)(6806005)(16796002)(5003600100002)(230783001)(2906002)(5001770100001)(586003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR07MB618;
	H:DE08W1025.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11OLC011;
	1:hNq7zq1015wsgsIm6SbjOEpB8ckqVFsdYoojCuamZWRIafzFXYBDIlGoIeZI5TfO0WZk35ZJUt+WumpyJvvqc/BGPigRvn6OASJQ+I0AQlz5LhihLxt1X0gGF5wsh3PlKRXJ04CDzQ0RAh5E2UZOSFBAMsyUU0R0rmf0MtlvC6WYShIv8ene4t5v7L8mDuJkXBMSYuKVkNOkfPk2cCVQVbP6J+/gX4xx1r8PppRfvCsrXuNo4LWtqqgYf51nC2Bv2djamvRpg5ETAlQnqr9mpjC/Frq/pOa5kEGZF7YHGE81VhyWW4TC9gL0UVwfgAQLvGJuHOybQ7wnTtYoos/lM8559UcSSMOuy2LTth6qg2CcwynzdhxZttwXbN7I1VqGhBifjGFLdGE/sN9XtQdnK0CpvWWGx/8eTaWyc4+6AcZV3ZMn9ge9I9bzpiUu3BjZdYtg2xDbjsH2FkdNk0NslwjF9FliqQn+xcNkPP7j1kgDImosvDILFHG0e5Dk0LtM00Klb7Kd6LAy3lSs5sxijmVT/33MUEjuMbv7GUSUAaU=
X-MS-Office365-Filtering-Correlation-Id: 2e15b64f-1a74-46b4-7510-08d378bad34a
X-Microsoft-Exchange-Diagnostics: 1; CO2PR07MB618;
	2:pYR5S8427p+oEwNU/rFgcKu7iF0fpKyvG8TCNrCVgMydHsZAre5nDmAPWNHHo5liFXd7j2mXc7U/071aapisD5D8HgM2dyCMkmmAFKH++NsjhCRG+ZqkfOf/KbVDxq4HIx9trvJFvGAuRbR9b0WfzjsA9ZAVbKLdORWYvNd/b9YH8Q88PuPsWAQ/+ePnIaAI;
	3:k27qCWoVDnqemPyQRGrdgApBhH9/poviMqnTR6FfWSB8+RNRtHI9SvkITYRHnGNlzUJ0Eq7nvsQpfwoztKNh5NtwMsm0U71/K7JiLWCwx6kJ9gOmDHIwxdyoUED//RG2yQkSOPrwdZrzma2FDQy54s95kW6nowBFx1QiMn3xOPYjS08AK8IbO/iNWvvEjBxzl0ZKq4GdVvm4ckXvwsJZL1o1wVUS2Kdpc/zB8Jm5Urw=;
	25:P6v2k9Oygbfv0YbvzFGNXG4XJhJ/DYVmWyNciopXpnFJPh+pFm9DJ4gXvCLL/S01jOqUL3yhtIguw8+UFJNB9LxgVlq0SSNkQX5/3I91Z4CEOQFNmQlBq4LPnCVcBz+xYEwNPTYUyz1tFrd1spLYQvlvAWIT9rd9Zb5RwQWBoYoUwSYVqk1eyXVSHbmrYeKIfjdNyehyvUSrAudO5KkPoI9NUyxER4VTm/TEFgImjz834ZOckPyCYkP0Wt8YlFOuNQ99ypCVU3qenuYMx3HJk8ELysNcqwMSqa9RTBTMZVF3xi8dijrbzp6KVsFkdVj31tjQbTnCaIUxP7oHK47CfgAWpfx28XpQ/kMgSvTBMeTUYl23zh1MfbZuOrFn1MEQjyluzw8RtJgl8fsUdIS9kW32Duo95QDj03+HhNsiGZscv0402LGs5c23wcADOTX6DJjSw/rR9pIXwxsakz1pBg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CO2PR07MB618;
X-Microsoft-Exchange-Diagnostics: 1; CO2PR07MB618;
	20:ICYzR97gh0E59ZLvXbiFRlVclXyrZzJQL7XG6HOjfjlPKQm05j32sd8uytt01eJTc6vBTmPdw4EJewg1kY5mrVVbskN2KBeVLvasZ8ZzB/4Y6fEC/ltcz5X0sKuRFtR8hsmc9Z42apEKU+ICAqzoMiEDArO7jZCKfLpc2+ACLkgPmPD7WBUc5GzKVp3hkVYguaz9IMhrPVPzExCSzhTOKkzz06/p8Ic9jevkirl9h4vjN5ndZ8Nc8WTk8A2wW5uuN6gqkmwJhmFAGZmUMh9GiGAEUDWSy2oLfNEyHdM+PfBFRfCDcSQSkfFFudlG8Yj10ofnQ2wHxVWOk0uulet2j6T+tY9f+cypADu6QWdVNeJbzdbXgx0fqg99n0L56cCEMA56Q19Gd940kBT27833Lhaov/C7ZAw7wRNKoO0OyOAuSPs8hhOuMxxAqw8lNZClo8A5tikXrJtmHSYsL0u/LFhxB5g8qZxddp1WRf7B8hAIaHYSmI2o8xma2On7I/RQ
X-Microsoft-Antispam-PRVS: <CO2PR07MB6184F1CFB1869EA84ED4BE496710@CO2PR07MB618.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13015025)(13018025)(13024025)(13023025)(13017025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:CO2PR07MB618; BCL:0; PCL:0; RULEID:; SRVR:CO2PR07MB618; 
X-Microsoft-Exchange-Diagnostics: 1; CO2PR07MB618;
	4:LayeAT/+YupueB+pPhWa/lMz2HgBpp4uOfVD9wvGe7KDq1IfcfmGUNs+OuZwdodsJTmbH5fXGLCY9kGcxM0bdnV2xCwjCWTtB7pP60NhtAtTc25E9E4OKaI9hDfJ4tyyzch9Egv29uxOJ8uk3AX/DqUbPQDoLqjHTtFAEP3kfMPuTyGoeHHJl8/f9DPx2xbG31wbsTP21onmvXn7Z7yjHxlpxp0mL9QuXu/uCmzXNFrIi8oNdz76QWivMsIILM/ZS1I20c8GA2ESZdt8Y67FftLspYx6DWhcQBM7vZW/3IC2R1VWGhU3DGfDTiDlw/mLMsb1WzVvPsASjBz1zylnuqMvYRjj8ESwwpoMToeYmVXmOqQItsDVZQ6j42IEKqaDEPmoON5qVqjSkJuqf1X7/hvf/u7WyLEsOWT4PBoX7fm5cDghPhLLXGy5fdHuyQuCb8axWe0WODx6XEWMQ+y2AZA9G53ee6JnYnJtIY8tbIA=
X-Forefront-PRVS: 0938781D02
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CO2PR07MB618;
	23:W5zCo3e+Wc3nKzbq0imsVBxwqFu7b/oVvwsmtGYFWp?=
	=?us-ascii?Q?usJXICOwgRoEr7Vaq++AjNa8X7PjBmGkK8e5lgjM6/GpTQL+yd93vpJ9VvRA?=
	=?us-ascii?Q?VRu4XjXVnQ2NiFcWFOmyb88y/ut3mSv2xSpDpr0h+mjRj+r3vIgXfwgWCfHD?=
	=?us-ascii?Q?2LIZYGjayYcv6SB4oYqe05/6zohzOBfGYCTy7EQWCgmDvXZ9pbs7L6uOS8/B?=
	=?us-ascii?Q?DJvfXNS3ui7CKSeOifL1nJtJzvljwYyzfKyP12iigFUHQGUqS6A3om6gYLC2?=
	=?us-ascii?Q?u9U4SWtKGXl08vNxy04xZ/3IaT0EBhJiIIvLLPk12lwqNVs4zin5AjhqXYsL?=
	=?us-ascii?Q?97yE8jAtnvuP+AuNk8qSNb7Ny3YvjWFUDUcjhJbXhUnd4dScupJKwBq9Wc2q?=
	=?us-ascii?Q?xRaZz4Qw4ypwL8EZtGqBRKpIuF4orf3K+oloets2/H3YgRw23vTuqYjL1UMS?=
	=?us-ascii?Q?KE0Q4VtjjdwzqWDXTI+R6SRbMTo2X/ObYpAOK2lYdMRJgfQlf20Ih7I2j7Ge?=
	=?us-ascii?Q?zz3nh11TuyOyVsLkU7x1aSt+cQnEh4K9e8IBcnPWuzYCjk3o+qanvzlCE0QW?=
	=?us-ascii?Q?bpSbvsZHfkeCbd5hGDEvaGmR7pjy/1mpSAmm0h3smFFZGEdxug6hTUcaYleX?=
	=?us-ascii?Q?q7kKXd4cpEe4+rEFhl0d9KrEjpRP48i2al+kYxaJHWu+msaYpstLUVlevPPn?=
	=?us-ascii?Q?2jno1ZxL0k0Rq87JwNFaN/So2hOGhHNc3s/ACnutMfqtrz0qUHAS9EJRUNw0?=
	=?us-ascii?Q?bgedJ5a00x3/lKl0k3rry2BXo0OXeuWsAafa6z271oJ+1Xg5jUoCNnCuX0z9?=
	=?us-ascii?Q?uCcRej4mYZPYHumVn/PZMrr84mJON655j2uuWFt7vi2zsSf+2fkj1y5595P5?=
	=?us-ascii?Q?j0tH00SM6Xblw0C1VeHf+boM/hSX7xQKHqlnBN4Dbz50qfEXmdb4h6nyrI0Y?=
	=?us-ascii?Q?xf8cKcQ+cAE9C/6r7MWwFFETQd1FXCiQ2YtMrsAtFy2t/CoRYBxrKOVdmbNl?=
	=?us-ascii?Q?KtTLRoOKQetcNPYjZAPymfOSej/j/tYXM9ohSjZaBFFQYg6zJp4gj5T59XCQ?=
	=?us-ascii?Q?LknVK5/dYxqPGLgeC52otZhDa6M+0+FdrWobF4SMeSqOZY1I13QQxTyGwTFh?=
	=?us-ascii?Q?GX/ceOjq9XpQ9hrIfRHzelE33fijl9aeneITasIGjVCwMuM2RpnNytXoTKcA?=
	=?us-ascii?Q?SUOM2BmkJQD/QWYNTzDBUGxHA58c5oxJm7i4IXe7Ire4ee6Sy1+/zw1jRlan?=
	=?us-ascii?Q?n3NujVRyJuew3G94/2H++X50Tum6zTHq7Q9BY6dAyi79dKSn7MMfyfzqYpIH?=
	=?us-ascii?Q?ni+RIOSXgJd6YxdE7ARlc=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CO2PR07MB618;
	5:eBOekM4MGxIYk2NFDfToVh1sDfWh/MP/XdZKLU1xsaCJxDYVFjWevM69BKNgTnYOla41LYKiCihzvjqbaHGp8o9i05/RQvVMlemX7eB8bPE/ZEyhe6l6s3MCphAEs3buCOS6IVZnL1zqFdf8OfbAdw==;
	24:vQ8euuocdAnzw+N5Ai6kpy3fpIUGOIL9ZcXQx9UeDCIy5Ypb+mpeLn0Rjrli4YUFt5lf80324QzvUoMeSJHqB+BuydIlsrm0ozz04yj0q8Q=;
	7:FgP9MwPHY1gwmTnqYpJ4NC9D7Z5Paw1rXOtXLuyc0/rf0skq11PA3MM7dcqdyIZuQdG+qHCr3GbD7+rb83DDnQ0HACzDZCtdTdbfijAvb3Oh8+ONslLo7NbHq5ETB+gscnLB017mvz3uwqEIrUDx2Anaz3/hpWRLLPcm+GkXtu8sWpHlqNWhXkgfUbeVV2Vc
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2016 10:06:59.1310 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.153]; Helo=[DE08W1025.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR07MB618
Subject: Re: Formulating Recipe for out-of-tree kernel module
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
X-List-Received-Date: Tue, 10 May 2016 10:23:04 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253EE345DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE345DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

There is a bitbake issue that prevents building an out-of-tree module that =
is dependent of another out-of-tree module.
This issue has been fixed recently:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&id=
=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643

This fix has been released on yocto 2.1 (krogoth).
So if you are using an older Yocto project, you will have to fix two recipe=
s manually.

I hope this will help!

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

De : yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 De la part de Chris Trobridge
Envoy=E9 : mardi 10 mai 2016 08:59
=C0 : yocto@yoctoproject.org
Objet : Re: [yocto] Formulating Recipe for out-of-tree kernel module

At the risk of answering my own question...

Splitting a driver package into a module recipe and a separate recipe for u=
ser-mode utilities works in that each recipe uses the appropriate build pro=
cess and puts files in the appropriate subdirectory of /work/.

I still don't see a way to build one out-of-tree module against another.  I=
 am interested in opinion on this.  Should I try to get these drivers built=
 in tree?  They seem to be the only two out-of-tree drivers in the build at=
 present.  There is also some facility to add extra modules to the dahdi li=
nux build, although achieving this with bitbake could be challenging too.

Cheers,
Chris
________________________________
From: christrobridge@hotmail.com<mailto:christrobridge@hotmail.com>
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Date: Mon, 9 May 2016 12:15:26 +0100
Subject: [yocto] Formulating Recipe for out-of-tree kernel module
I am looking to produce a recipe for the amfeltec usb-fxs adaptor (http://a=
mfeltec.com/products/piranha-usb-fxs-adapter/), with the intention of contr=
ibuting this to the meta-telephony layer.

However, I have found a few obstacles to getting a clean recipe:

  *   The makefile produces both a kernel module and a user utility, with t=
he latter being hard-coded to build with g++.  I can produce a recipe to pr=
oduce one or other of the components but not both.  Given the structure of =
the build directories, should this be be achievable, or should I be spittin=
g up the recipe in two?
  *   Dahdi header files and Modules.symvers are required.  A header file i=
s used to deduce the version of Dahdi, Modules.symvers is required for the =
module build process.  Hence, requires the location of the Dahdi source/bui=
ld directory.  This can be set relative to the amfeltec work directory but =
this feels wrong.

In more general terms my questions are:

  *   Should I split a recipe into kernel and non-kernel components?
  *   How should one out-of-tree recipe access the headers/Module.symvers f=
rom another (should that recipe be installing them in ${STAGING_KERNEL_DIR}=
 (or somewhere else)?)

Cheers,
Chris


-- _______________________________________________ yocto mailing list yocto=
@yoctoproject.org<mailto:yocto@yoctoproject.org> https://lists.yoctoproject=
.org/listinfo/yocto

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE345DE08W1305global_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:849416387;
	mso-list-template-ids:1834109244;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:899290835;
	mso-list-template-ids:-1878068140;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1860122023;
	mso-list-template-ids:-289502328;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1991716215;
	mso-list-template-ids:-1264517352;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#400000;mso-fareast-language:EN-US">Hi,<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#400000;mso-fareast-language:EN-US"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">There is a bitbake issue that prevents building an out-of-tree module =
that is dependent of another out-of-tree module.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">This issue has been fixed recently:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3D=
master-next&amp;id=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643">http://git.y=
octoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&amp;id=3Da9cc27e=
6916e5affe8b0cc431c3e89abd7681643</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">This fix has been released on yocto 2.1 (krogoth).<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">So if you are using an older Yocto project, you will have to fix two r=
ecipes manually.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">I hope this will help!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">| Sensing and Productivity Solutions<=
o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">De&nbsp;:</span></b><span lang=3D=
"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>De la part de</b> Chris Trobridge<br>
<b>Envoy=E9&nbsp;:</b> mardi 10 mai 2016 08:59<br>
<b>=C0&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet&nbsp;:</b> Re: [yocto] Formulating Recipe for out-of-tree kernel m=
odule<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">At the risk of answering my own question...<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Splitting a driver package into a module recipe and a=
 separate recipe for user-mode utilities works in that each recipe uses the=
 appropriate build process and puts files in the
 appropriate subdirectory of /work/.<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I still don't see a way to build one out-of-tree modu=
le against another. &nbsp;I am interested in opinion on this. &nbsp;Should =
I try to get these drivers built in tree? &nbsp;They seem to be
 the only two out-of-tree drivers in the build at present. &nbsp;There is a=
lso some facility to add extra modules to the dahdi linux build, although a=
chieving this with bitbake could be challenging too.<br>
<br>
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Cheers,<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Chris<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US" =
style=3D"font-family:&quot;Calibri&quot;,sans-serif">From:
</span><a href=3D"mailto:christrobridge@hotmail.com"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif">christrobridge@hotmail.=
com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;=
,sans-serif"><br>
To: </span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org<=
/span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,san=
s-serif"><br>
Date: Mon, 9 May 2016 12:15:26 &#43;0100<br>
Subject: [yocto] Formulating Recipe for out-of-tree kernel module<o:p></o:p=
></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I am looking to produce a recipe for the amfeltec usb=
-fxs adaptor (</span><a href=3D"http://amfeltec.com/products/piranha-usb-fx=
s-adapter/" target=3D"_blank"><span lang=3D"EN-US" style=3D"font-family:&qu=
ot;Calibri&quot;,sans-serif">http://amfeltec.com/products/piranha-usb-fxs-a=
dapter/</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif">),
 with the intention of contributing this to the meta-telephony layer.<o:p><=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">However, I have found a few obstacles to getting a cl=
ean recipe:<o:p></o:p></span></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l1 level1 lfo3">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">T=
he makefile produces both a kernel module and a user utility, with the latt=
er being hard-coded to build with g&#43;&#43;. &nbsp;I can produce a recipe=
 to produce one or other of the components but not both. &nbsp;Given
 the structure of the build directories, should this be be achievable, or s=
hould I be spitting up the recipe in two?<o:p></o:p></span></li><li class=
=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
mso-list:l1 level1 lfo3">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">D=
ahdi header files and Modules.symvers are required. &nbsp;A header file is =
used to deduce the version of Dahdi,&nbsp;Modules.symvers&nbsp;is required =
for the&nbsp;module build process. &nbsp;Hence, requires the location of
 the Dahdi source/build directory. &nbsp;This can be set relative to the am=
feltec work directory but this feels wrong.<o:p></o:p></span></li></ul>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">In more general terms my questions are:<o:p></o:p></s=
pan></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l2 level1 lfo6">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">S=
hould I split a recipe into kernel and non-kernel components?<o:p></o:p></s=
pan></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;mso-list:l2 level1 lfo6">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">H=
ow should one out-of-tree recipe access the headers/Module.symvers from ano=
ther (should that recipe be installing them in ${STAGING_KERNEL_DIR} (or so=
mewhere else)?)<o:p></o:p></span></li></ul>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Cheers,<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Chris<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><br>
-- _______________________________________________ yocto mailing list </spa=
n><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org</span></a=
><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">https://lis=
ts.yoctoproject.org/listinfo/yocto</span></a><span lang=3D"EN-US" style=3D"=
font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE345DE08W1305global_--
