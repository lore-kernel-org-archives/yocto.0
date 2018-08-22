Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4696E0079D; Wed, 22 Aug 2018 08:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.116.106 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-me1aus01on0106.outbound.protection.outlook.com
	[104.47.116.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B9CCE00566
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=QL8Uv8FNrjH4tf0gQn4ZvowlfZgFnobSHvbaGHVI2Ww=;
	b=e87rp53RNRu/2HTB6z3huRAaxT60xMg1Azxu91O2/4w2L5dY7+bstcq8vrCCZR2QXUuZETmRY0j3KalOc1VgCUaLzAy2tqc613H63nSKZMMASBFta2wwZTdTgva2h8PxE6dZnppw6mBYtgwjxBhiPY3FHkMrISC/Rz2T1afr+ug=
Received: from ME2PR01CA0088.ausprd01.prod.outlook.com (2603:10c6:201:2d::28)
	by ME1SPR8EMB03.ausprd01.prod.outlook.com (2a01:111:e400:5153::14)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1080.14;
	Wed, 22 Aug 2018 14:46:55 +0000
Received: from SG2APC01FT038.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebe::209) by ME2PR01CA0088.outlook.office365.com
	(2603:10c6:201:2d::28) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1080.14 via
	Frontend Transport; Wed, 22 Aug 2018 14:46:55 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	SG2APC01FT038.mail.protection.outlook.com (10.152.251.98) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.1080.9 via Frontend Transport; Wed, 22 Aug 2018 14:46:54 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1365.1; Thu, 23 Aug 2018 02:46:52 +1200
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1365.000; Thu, 23 Aug 2018 02:46:52 +1200
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe re-build when variable in local.conf changes
Thread-Index: AdQ6Jm4qgqmHj+myRjuhyeKUhjLbHQ==
Date: Wed, 22 Aug 2018 14:46:51 +0000
Message-ID: <4b0fd208e0cf4fb3a1d1518047a47359@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.30.102]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:CAL; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(346002)(396003)(376002)(136003)(2990300002)(438002)(40764003)(189003)(199004)(26826003)(2906002)(478600001)(9326002)(7696005)(108616005)(24736004)(86362001)(6916009)(2351001)(72206003)(66066001)(2900100001)(5660300001)(16586007)(106002)(2501003)(316002)(84326002)(5250100002)(5024004)(14444005)(106466001)(14454004)(53936002)(8936002)(55016002)(54896002)(7736002)(81166006)(1730700003)(81156014)(98436002)(486006)(260700001)(126002)(9456002)(476003)(336012)(356003)(8676002)(790700001)(6116002)(97736004)(3846002)(26005)(186003)(102836004)(68736007)(6306002)(426003)(5640700003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:ME1SPR8EMB03; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; SG2APC01FT038;
	1:v2bxqrEsQd2kWJZ5hrlHhwUB3Q4H8eWC8Q8DE2k47QpIuUxxCfj5qpxOzG2dhZ9Vcs2aL8Gy5I7W0cJYHugQu0ygBXUJ0D93Hv5JTlQHPEtezEmj1yIzTJ2zzt3K4tyh
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3d63c11-5828-4309-e8ca-08d6083e1ac0
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:ME1SPR8EMB03; 
X-Microsoft-Exchange-Diagnostics: 1; ME1SPR8EMB03;
	3:buq6qiZfj1cr8HETYKty32XzxxnbrMoVAFmtGwhgUXIo1sXkPm3J0hgob9YdZbqDv7LMs/XZ2Oa7v26eHPS4cAz90vX0HrAeqEZ61BKDdMITNapKm80QsWf47uTVS6ifcU4JHqdnPhvAuLETyvKeCpW2R4Jfvtv4vCFtQHpA13NxECqGhJKTY5L4q+REqdTjujwsZvZxo6l+fWJljA8KSDtmHkm+Dr0l4K4c7oZQtNPNMdptDX1dWEiqZiz2XoT2j/nYjyNjqC85G/uTdkN8Y6n6vG/bsg1MExUFcY2nDxLlPfn1Ub+/1fKzJEugBZGBCmNNWrAZn2HeSS2yamyM95HMrXXwj5Xwm5aa3izZcJI=;
	25:CEA+5Pp6uBsVqCQFw67Hh0adHQ7sZI40l+IobJtxve48VB8ljKYkVgQJTl3qdJhVE3Odvko0mxuRwfvN47UeygszxcYPdz2c9n8SVztB8mtejgY0blw0zGkiC5rxjvvV/u0shjUKBIP4B4qFNN8+YJ1XlSdEF2W/vdbe/Whm3nHk62ZMhb5JxSrM1j/dUYIigwtAjD11406kOX2+QI63DRsmyTQGmJba/mHjnZ9VtaeOHpLOJpxKvp/LalwZDdj5DeH+C5BR296fX1ohET/KXRtQyUmz8kZC7ifcgPf1XZdlSrNRuZ59lF6dvZYGvfVG0K06vKnGTgBkW2AMN+/iSA==
X-MS-TrafficTypeDiagnostic: ME1SPR8EMB03:
X-Microsoft-Exchange-Diagnostics: 1; ME1SPR8EMB03;
	31:PCU02yihhoRA5WG5A+8iuGoMNu5xpqyZrdzP7wKnkFqzph8ReQniZzgIMNQ4SdSXyX7jYuvDVBxAfo9oVr2X2hMix7dj6JTIKWDyc8uyfot7zGELqLSSbIQ/roL3S09BVXkYwsk2B2Bq/Vw6ZRyD8yJsh3NGpgGxwYPYWn7sOByUyTeQXm4OF10KGIfjr93W1YN0+PuToYaUbksdfDxyyeNrYHwrWjprXBUyRk4DEas=;
	4:rI29n/zSvx22mVJzsvDovOphSRTOLDMqxK+eUAVv+oCTd0RdgXCtqpTq5Jl0+n6crnaBmeSfcpl9lKIgRDxtZ3x8Urq/SDt5EbFJ/2ox3tIwigcVDc7sG4NmrzbNuxB9ZQo1JFdGkRPtpQdL3de62K9IFtqMhtoKHUelWLpbRRa0p2Q14lvHqLy9VI7bLZxyL8un8sq7SBrhm0laF02AToBN1unZdoUqpVyVAb9WOKYeWKA883kV9ACJ1GOl9E9U+IO2UdLHaXrCyeMJvLiPMucogAVFoOMfDurW7vGNM57LCTPRExak5o/JWu5Y1W+C6q6VhNt7aq0JKRF7AU42H3sp/FpyGBshKkeUGlKgT/QS2FeHZU2ayqQJP45l2ng8
X-Microsoft-Antispam-PRVS: <ME1SPR8EMB0358ECB080D9014A391097DD300@ME1SPR8EMB03.ausprd01.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(223705240517415)(21748063052155); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231311)(944501410)(52105095)(10201501046)(93006095)(93004095)(3002001)(149027)(150027)(6041310)(20161123560045)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(201708071742011)(7699016);
	SRVR:ME1SPR8EMB03; BCL:0; PCL:0; RULEID:; SRVR:ME1SPR8EMB03; 
X-Forefront-PRVS: 0772E5DAD5
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; ME1SPR8EMB03;
	23:dAPeSDKv1mxMfUosXvqiZVUpyzhnQotYA/Nk8LOWTY?=
	=?us-ascii?Q?UCZ6Yh7qa9iKA+Z58XIZR6zK9we/g1AtuhuQRWUrWuYRlgatHhBZ4Q1bVhvT?=
	=?us-ascii?Q?A/8fQZoewVdYQcN1BKKRa7whhdnXfKBAyVO8scKBrCji4b9B4BE85z3fRRWZ?=
	=?us-ascii?Q?woqVsl6jCZZiXwdXvJQa9iwiLpl5ua9jOOXHmfQGUte0oEzAxi3xYdoR4mI0?=
	=?us-ascii?Q?G1IBVSoonJNxMw6ZLIGpOwnFDXSTrGWaBp4X44uZU6N6dNydFDyNNTH6BHct?=
	=?us-ascii?Q?pYa6sV7bwOhsBxcuKmvxBJ/oFrO6sgYNKT0AuD4lPKYmtrlCUncZgVv6rDPS?=
	=?us-ascii?Q?ZRRb2AwCVUsp8VE96ucX3T7aHn3KoihMDNlAKTANIi2zW9NdQUH1ujJsbK5t?=
	=?us-ascii?Q?KPJa+6402wQzwn/bqFmr/EwQLk5ZpOSc6Q4DPDTib6eygB1zZuZaVHOUmfwe?=
	=?us-ascii?Q?Ix72gWdIYwxq8nJEHEa3Dsh9Rk9o8Ty5z6q3WYkDMYTMRCyxqpGuQmG2Ffmb?=
	=?us-ascii?Q?4I2WZrL1yNYqekYtnkK83sRnI2TbbWwdtRweRkC1k9F/v9YeoODd4XxR0Zzj?=
	=?us-ascii?Q?hDNp2FcIzBskfjlkxR3qM48zAXJXv6RTKWbO1N3VQ3oJIFcArcchbTAd5nX6?=
	=?us-ascii?Q?suehYrEvwPTkB/nEGSAWLxfCLdzAjgfMMd3fAsx6DhzfnKN++zLi2gQViokz?=
	=?us-ascii?Q?ZTfwFL0+t6qec9XugJ5Iktaqq7dmxvy6YgkHlZVsdK3kYWEDr6UNP8qfT+7Z?=
	=?us-ascii?Q?f2NTdCdpwgoJZPH+Fmo73c9Eru76jyxZqslp1BbbMJijsxtONhJrX7fRzvZ3?=
	=?us-ascii?Q?b5Cm9YKYZV991zLC0UX/SOC3YHc6Ncbt8ENWWB5unZPusSuhIyQHtH4l+azQ?=
	=?us-ascii?Q?7f8WLWmxKh/WFlkwyWK3QFJAR4mGw6dHeIkgwtp5UfOaEd9lFR8SLPG//1BM?=
	=?us-ascii?Q?XJn8kf1diEiBRZjZq0Cz393BSB+5Mo6Q0kxdTMXk63H9NWlEr9WkkfwxrS5l?=
	=?us-ascii?Q?YSiXs3Crb4a//X62SRSAzziQUnR7YAW0yTj8j0TJSYpO48MpwTPAQ++JjjeK?=
	=?us-ascii?Q?wYd1xcSaDpPBbrapCOZUlnNbq25s44e8Xzs5N76H2HI9DwQi5He27/R83Rr1?=
	=?us-ascii?Q?bipMSUXQm7mz9vwVbSJRGpUWuEE3WzwYGd7YS+hwOGr/oeRLg2uTQLNpdGTA?=
	=?us-ascii?Q?2meAcmao1IfpmpTmxksorU+r7QVJhIrxfxvYpNR02kPVDNoZQXMZ81Yhhf7f?=
	=?us-ascii?Q?O8MyIR8U3CPFl4u8xCDGr/AEZ3i1nZCSO69dggqR7ovQ7gcSCiSQCEUlZIEa?=
	=?us-ascii?Q?UPtTfkRtpXZ34wpGh0FGLfvk0XN0GQtbKe6w8kJrsN0MXuno/uDjufR2pYiq?=
	=?us-ascii?Q?dkro6cGRSQFPRj0UHf4wbHUck=3D?=
X-Microsoft-Antispam-Message-Info: gebHThWgKdz5vQ/11XR+m4p37ZVlGs09jnfYNVV4wg5rNNKhYKF1+iWGY6+UAG7+CELS6HX46j553KR0URSPhwJhTxmgokTw42DHLtYbRbU8nclcGyONMAhIDOHWUZtpYLkNe/wmXcKucqecEhQhyK7jY4bM0uXehuToEHAsiE73qc8CLfVmZ/hj0h6j/8JO2SksPyKqjf6a6BkUiaqzde6IWQsqi040dK/2NbFi14ahsE68rXxQnexut4kbUDYZrQShDVkUQ+8XyTp2CcivElyw9nhANyaHDFiL6QMsBl7Qkeq9iMhJxgO5Gd/YMKlxfrNV8W+eswnrNiVG5YcyFMcDzKPlsDHrIq3hbhxkXxs=
X-Microsoft-Exchange-Diagnostics: 1; ME1SPR8EMB03;
	6:0M6o8H0atHgpKSYfqekztduJWKLuD7AAXtpLfntTmR+h2kZygZNDrHevjZCxloC62++taurZF+P1aTGr9KOM6IObujWatTRx+l+2SJusqrp7/MnGy6KLeCdKkRYrjKPOC0K6k0MWalt5sphgzz2eWsCGgDD9NG1a3XDLuhWQhRKcdZ5Nxg+MbwTiIEcAxEn0CT4JHA3oy/PTDE+44bfKMzteCJEk3mH4grcCtD/Vr0sC1uDN/w6ULrROKYjswC715jFgYfhPz+xehvY8IP5UjbUbAvXxDzi0KcLs1EHu0L98w3NOohQtsWm9ueX3TOdMipMI/cIYhTz3V+uABcUU6jmLqHD8wIzckdhN/YQWUB/raDWAXqlIQDFB6UYtgyHwhSZKYxV821Bds/Iaj5+NaBRJKpXLHZEnifQYioDJGyKKtu37mwya96k+mxgkNarKVfExov+Lgg8n/ExM7O47pQ==;
	5:Zpiy6Lb2FNZz1BHbGFOaHN5vMLXK7x2AunQxf1oNlJbJ7UGS1ygfnKOpSAsWLx62AlaArObAD8ig2GkVcyikn6rfa0HnFcJlRhB8d90L3hSTooDIaGO6uk2h29Ht1e/oazgw4Iw0bVJZ6++jBah5rcOEruB96OxoMdPshPlW1AI=;
	7:e3jCp1Ye22ZYp2WIcn2gqipZJXt71rp07XANMVgqoJhghJ8P5zb/tO4GApiPggVzyGPi3dOTj3kfXnke5wtMVoxC5oB5kTarDRQSOewc1eDdSPQxEOW2L8GPdAgV342O0h7rHDQcLBjD1P+5zi9jwRtX63eFlbB/USHSLsJKP3ZPZ+O0rrd/VmFQhJc9lZsG6/0De+JeVql/guODOLF10YgmbflGKChvvDHPXbQ0IL/rcQUlUcB3mkRYK2WUZ1PA
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2018 14:46:54.4660 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d63c11-5828-4309-e8ca-08d6083e1ac0
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME1SPR8EMB03
Subject: Recipe re-build when variable in local.conf changes
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
X-List-Received-Date: Wed, 22 Aug 2018 15:19:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4b0fd208e0cf4fb3a1d1518047a473594rfnzexchangelocal4rfco_"

--_000_4b0fd208e0cf4fb3a1d1518047a473594rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there a way to re-build a recipe if I change a variable in local.conf?

I've defined a variable - BUILDVERSION =3D "1.0.0" in local.conf. There is =
a recipe which uses this variable, creates a version file and populates it =
in the root file system. Now if I change this variable to say "2.0.0" then =
how can I cause my recipe to re-build so it can pick up new value?

Thanks for your help.
Amol
________________________________
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information or any part thereof is strictly prohibited =
and that the author accepts no liability for the consequences of any action=
 taken on the basis of the information provided. If you have received this =
email in error, please notify the sender immediately by return email and th=
en delete all instances of this email from your system. 4RF Limited will no=
t accept responsibility for any consequences associated with the use of thi=
s email (including, but not limited to, damages sustained as a result of an=
y viruses and/or any action or lack of action taken in reliance on it).

--_000_4b0fd208e0cf4fb3a1d1518047a473594rfnzexchangelocal4rfco_
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-NZ" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to re-build a recipe if I change a va=
riable in local.conf?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve defined a variable &#8211; BUILDVERSION =
=3D &#8220;1.0.0&#8221; in local.conf. There is a recipe which uses this va=
riable, creates a version file and populates it in the root file system. No=
w if I change this variable to say &#8220;2.0.0&#8221; then how can I cause
 my recipe to re-build so it can pick up new value?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for your help.<o:p></o:p></p>
<p class=3D"MsoNormal">Amol<o:p></o:p></p>
</div>
<font color=3D"#9a9a9a"><font style=3D"FONT-SIZE: 8pt" face=3D"Arial">
<hr style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Arial">
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information
 or any part thereof is strictly prohibited and that the author accepts no =
liability for the consequences of any action taken on the basis of the info=
rmation provided. If you have received this email in error, please notify t=
he sender immediately by return
 email and then delete all instances of this email from your system. 4RF Li=
mited will not accept responsibility for any consequences associated with t=
he use of this email (including, but not limited to, damages sustained as a=
 result of any viruses and/or any
 action or lack of action taken in reliance on it).</font> </font>
</body>
</html>

--_000_4b0fd208e0cf4fb3a1d1518047a473594rfnzexchangelocal4rfco_--
