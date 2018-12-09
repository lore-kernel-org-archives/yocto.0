Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8E00E00C4D; Sun,  9 Dec 2018 17:38:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.136.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 35980 seconds by postgrey-1.32 at yocto-www;
	Sun, 09 Dec 2018 17:38:33 PST
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-eopbgr1360111.outbound.protection.outlook.com [40.107.136.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98D88E00C45
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2018 17:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LtwvQEiD/0lksX6fAKdprkkw+a5o/Ad2KPbiRqXBtic=;
	b=jeFQxrEyvFODmukhg8WfdCnJaG8+W2tjrJCoqG932AaZxi2q7ZwAUm6GJEANnmV8mDFUf9ZGCW2nOn0uP/O+29A4d/qSPqa/t280TDzgJbsxgj861auX2p+KeEjHQuROIBZL+DIg6G79Dkq+vrl/2u2igLUTVrwGLp7Z02zxZpc=
Received: from SYBPR01CA0092.ausprd01.prod.outlook.com (2603:10c6:10:3::32) by
	SY3PR01MB2026.ausprd01.prod.outlook.com (2603:10c6:0:22::11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1404.19; Sun, 9 Dec 2018 11:00:21 +0000
Received: from HK2APC01FT025.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebc::207) by SYBPR01CA0092.outlook.office365.com
	(2603:10c6:10:3::32) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1404.20 via
	Frontend Transport; Sun, 9 Dec 2018 11:00:21 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	HK2APC01FT025.mail.protection.outlook.com (10.152.248.170) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1404.13 via Frontend Transport; Sun, 9 Dec 2018 11:00:20 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1395.4; Mon, 10 Dec 2018 00:00:17 +1300
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1395.000; Mon, 10 Dec 2018 00:00:17 +1300
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build failure when including usrmerge in DISTRO_FEATURES
Thread-Index: AdSPrNiI0NlDcivQR8KoTNoHiLZoag==
Date: Sun, 9 Dec 2018 11:00:17 +0000
Message-ID: <559c2637783c47b7910c34f68688114a@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.30.102]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:NLI; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(346002)(376002)(136003)(396003)(39830400003)(199004)(189003)(5640700003)(26005)(66066001)(260700001)(426003)(108616005)(102836004)(14454004)(24736004)(7696005)(71190400001)(186003)(356004)(4744004)(790700001)(3846002)(6116002)(7736002)(68736007)(78486014)(5024004)(14444005)(5660300001)(8936002)(316002)(72206003)(478600001)(54896002)(55016002)(6306002)(8676002)(6916009)(86362001)(53936002)(84326002)(53946003)(476003)(1730700003)(97736004)(16586007)(2351001)(2501003)(126002)(486006)(81166006)(81156014)(336012)(9456002)(9326002)(106002)(106466001)(98436002)(2906002)(579004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SY3PR01MB2026; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; HK2APC01FT025;
	1:NDgDyB71XFU5S5mZn9pS6XTNNLJdUl6jCRjVm0BfgYOWwOmqmTTzPGAILwDowtToL6cktrd8OyVIkf2IpApOfo+364HYpGzjH8HmydPArMZqHbof/zV54qe7LE8nJWf2
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a193df49-c0d7-4033-856d-08d65dc582ef
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4608076)(2017052603328)(7153060)(7193020);
	SRVR:SY3PR01MB2026; 
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2026;
	3:G5vx5Pqz1/NudFFD8sDxQniAz4sUe851Ilf7paIElmLPhaKjThpHy2o1vYVrZTBoNXEyadTMEb1xNlv2SU9D4TWWzuTjnTXLcKcKViIR7qFrM3NdQPSqgPjTJHRYoiJgxuTsJOZ7ki8oQCmvQRuGk7zMnya+xYs0ntLUm8xboCNLtF9MT/+/DGZzWmlRd5IwOV9b0gCnRdc1V/bMoU6kLSKNiRnfpg4i5ywKZ+5MnKkEyBjqVit1MJ16wbdpGqWzNjvmw/AYo+kdVKZG/V0awt44jgKS3UmBx74WRNvMqc/2DVwvUrRebu5E8w7Q+Bo36VAXSxQJ75xmpVaWcyqI+Y46aJYk+alj+AHGV7S7kak=;
	25:AXWMwF5pvpqsHnDFwyRoXj2fju4/dD0zohBeosf97jIdw5r553MEXh0Dq6FM8zesRmJcLJLa2hv5YGAlUIdDv3ATWA/DJkct1MqvCnq4exNf+uxkbz/92YZWuIvkBwnvc4ccuYMRxYONkQINzbVwNG+G4wh8ZuK+VJNLsOdlHwk2AqgPJFxI4QIvWP8UmaLQ13/KbdZqip1S2AG/7KRwPpKGf+f4gkYKgpN+b7tY8LHO9ouPjlp/n/1SX5eYbhPXHcGTA6ZNrG8YELTrVL6TCyxPq7EgHvLoz3c9EtvdP5tQgNf35wsyeheqREaNrJ+ZldeqbMc0bCvqIIBJos1EUg==
X-MS-TrafficTypeDiagnostic: SY3PR01MB2026:|SY3PR01MB2026:
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2026;
	31:xgIY8lm8bf+zYAV/J/rNvjka6jyC8taYtBsUWSKS1yDBv5iM+Z2dsjeFtP/JRmMVmCugxPOB80Xn+rpjWZumqKQQsnX+XYeF7xwAys58lImhm6X2z4zcXciFvROhkm5dvk3Bsm+wGkixpRYeybvRSo6FZFFCoNHt7g9kYcDf4v94OKKv6MsrWEJFUjRrnYDqP1Cmx5Kquv1t3rHNKL4o0roZsngyJizj0sdYpq55/DQ=;
	4:heOGMF4GMTNj+6A04Ni/cXcmS3D8qCt6O85YIBMTeO7fhnF2HqK4V14J4+AegnQPFbLRtuk0AU/04j9bw+Gj05JvuKuvvpGD+q10UCnbYusAj0BbX88HRzlyIYG4f7rpTbK899/Rd5dYbx9G4nqXcXwsMCdAALka/HiRBwwIRoRidFoalOhfoLfoAZcYAwmjYVXmHIUAJrRgDuqgCQ1Ss/vA4KJC+QbpXnnAMVH3ymCeLHJHOzM2kjVs6LUnEbpgSq/3CCl7m+oNCCrCArRNQQ==
X-Microsoft-Antispam-PRVS: <SY3PR01MB202623EC828F8F01CA3D1F73DDA40@SY3PR01MB2026.ausprd01.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231455)(999002)(944501520)(4982022)(52105112)(93006095)(93004095)(148016)(149066)(150057)(6041310)(20161123560045)(20161123562045)(20161123564045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:SY3PR01MB2026; BCL:0; PCL:0; RULEID:; SRVR:SY3PR01MB2026; 
X-Forefront-PRVS: 0881A7A935
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SY3PR01MB2026;
	23:FpvaJcprl0fGCU0AQH6jCE9IDHqZPFWs82hzyN2k+?=
	=?us-ascii?Q?xGcKxOnyQnJqEt7tzGrp0HUEyVxruym25/lDOBSsdQ9bUrCtcdxDrcsFj5yl?=
	=?us-ascii?Q?I1y9DAxaMl4kAtKuJPCAMZpz5yN+6vsiT93dXhQv6iHrEJOJikEhnlefhtsj?=
	=?us-ascii?Q?Cg+9uKqcxE/UyD6ufyf0mCBPtXrqlqAw+MqVNFLO9w2cBhfK4gDfCvX4CJ+i?=
	=?us-ascii?Q?FsbxCbLUiXHZCQwbghnHLhOiWKinL5bs8+ctsBxMV/a2eOtzgcWhXbqdqZ7L?=
	=?us-ascii?Q?2qtXrlMFB3mpo+kCK9rpJ5otk/r+3fzf8Upck5PoqDSq1XKeN7V77qYgnO13?=
	=?us-ascii?Q?m/Zi4wqDoz0PDgevNpJWrQWz54xE60SQkjDlJ1NiV5w0t2hoYdzLLJQSA4yX?=
	=?us-ascii?Q?ixQfUelaj6jtwOIG1XLhSnwLhnGXWhC8vAJlm2kAL9E1C8qpMyKrB44w/PlN?=
	=?us-ascii?Q?r5cDcVZi5Fv96J6tNWR4rhhNSfbqVDLzTOgek77+/dhuPAZNvSQ3fc87mBcX?=
	=?us-ascii?Q?10CsoCCyMSZo4fZTBPlUrnh4oF1fjeigPMHsUNMUbypFyPsevlJCXuhNganB?=
	=?us-ascii?Q?QFm38MEKbXOKfD/5OltMTsaM4SLg4XmPrl9IXo+a+pBlXVtXXTtWzuBoaO5J?=
	=?us-ascii?Q?e7Qx5H+AnlLz18zpsgjxZ787YQ9BsWT9yqm6TXl1rMzvpE87eBit1RCfNJkG?=
	=?us-ascii?Q?nWn7Tu+ccG0XqEVQo6uevK4akXFfUvWpGcucBQ7S4v8tkOM11doQpH0lFqOM?=
	=?us-ascii?Q?7iG2S/w5b/eJhRELqaEehBZ/J4il4k+CQyuOCm1sWTzi7RjWQ7vl6IS3oDMt?=
	=?us-ascii?Q?orLu/eCCsEIphjGRhqbdMtb+2hOwupZO38r6679pcqRay5MbAEJ9NXlmE9HF?=
	=?us-ascii?Q?6IpIw1JZFQWWEqGSX+1rytIOixIqP5apRTXShZ/ocCGRx7uDxFSDMCcS7Nba?=
	=?us-ascii?Q?3Hq84oVNk/oTkPNk2/OQ3FYQrfmaVmNl6uL/Jq6aGvrBTtE+TH1MQR2ZbeF5?=
	=?us-ascii?Q?ZTUBlI4j5SKiDsEDUWavYJQeLXH/IAwOUoT1AOAO75xWK1+Ea8aewOMSmOLT?=
	=?us-ascii?Q?N8beamJqD4xlDnm1/mJJ6kev7RyvmusMTIS6KyLMAsikGZ3KrLgJYSZBD+fo?=
	=?us-ascii?Q?pkZ/3+h67h1jf2jtjMItbz301RSAfZirY5wytoxvEzrDdbA44ugmbDoPLAHB?=
	=?us-ascii?Q?RnbPSI8nLUrCxzufidUEsf7tkLXcw+3Sdoj1akK7zKpOXue3GMlLTRupZsz5?=
	=?us-ascii?Q?RMcI1jBx3mBSR1WRU3nzXWdXpu7z2HITLLwF9W0Bv/YCrNklq3tcDBb7v568?=
	=?us-ascii?Q?/fbO3v355+72IvS9ywmf5b6WvNzcEl0E05ojHShccM2?=
X-Microsoft-Antispam-Message-Info: pv3deJ4JExOWgcQhvOaQxaLAjHXq6jVZ5bQIv0DL5T9YWbJxnZWa4CH9KqE9TyRNPpNIdlPLJZXO6cPX4wHL88CYs/WyuN/s3qQXK5fzRjryuxZSBhy7Vtt3ufRb5Qh1rIXb1NK8RAYnXJRElgHkRV2syLHrRp0bkxw/9a0ov3FaBaf2DBr66GUsCAh+zIcvCf3dNuW2xKf3b6xrBm7ktOrluwvOKlj0K54OXNoQ3JuM0oT5wjxenZyWlUWxdVusLOk1vEUiqk7/3N08fr3KW1q6cusCDcd85kOiHdxP+AKapw0EnTyG6Y5c05FETyILtpAYVrX3FNDc/prUZQZgoxEzOsSBdiK0h2Y4+vv34/4=
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2026;
	6:4Hjnn3h8JQ7DKYCZ9F4zyEC3I2KePp0+mCOycA/McEbpf+iUb3mMsAYawFgFLIOeaLZD+suZVLCi5MPPNpmbtX+kw1mPjVwYkGGOLeOl3Vn9VE8iOSWD61/63wU3oWwy3BljtEalsCbLRgxUeXt5M0ksVNl7++7v7iyrMGxyDz361G5fI4XfLHdfVzrVHUxwDG72lYr00PIrL6QVB1vRfcaH8jVfFXBYyYF/g5QizWGTTABDAlB69sX0WifISlragkvDWwtSyn5gc35J3oGAMxl4rq+wtoA6VLCWE7zbzlVcBwIl+zrxj8CpG4/99GCqgpmbHb48g+jM4QywRGM7PUCd7U71jxxUso9dsvBVajENeuhsGu9+o+2hoMKCrxgP+xUOXLWZ1oFeTxQigVm5Z/ynaPUNXLoUT77sehnb4otYOI69IiwIi2OkGL7/R0aqF3caNmaoLoSYGdtVO1VgvA==;
	5:zznrt8r53K/b6k9Uzxqgsf9KqOctpeZSQdjJ7u9p7hv6ogShn17ACKiNpjM+Rnj7HH4bAXRZAt8VcUMJz4NGz7K/jCgbgj9B5iUVaFXPdOn/DZZul8KedXnatLvSgE4Lohm9sqC63m688lVjI0fsvmE4+rstBKrOTKzrr71cF5Q=;
	7:V5YFHIDZ6PKxnB0G3GHMScdIEG1IhEZS5HpFySf1JQh63CqSCr3ODYF5nHu0rvZ4vufEXiDFQV4teGxF532hWl441/7TX2wzuuJjWF0/p7ToxjUpSH5aK3hoCt8c5trwQF/LNer+woLC1ygbO34VCQ==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2018 11:00:20.1023 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a193df49-c0d7-4033-856d-08d65dc582ef
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY3PR01MB2026
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB2026;
	23:/u9OVRXp3d1tzQdU0v4fIXIHkqYmtI2SGtHsFphrE/JZaqByVSC2juVEgS6dat54lfIfjIEuAEGIbkWQjW5ud0E+vk9iMAdeTSAaxptQa85QmtDFhd1EPKlWNLwFmbx4dn6Chloo7T9fumWVBo/VYg==
X-OriginatorOrg: 4rf.com
Subject: Build failure when including usrmerge in DISTRO_FEATURES
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
X-List-Received-Date: Mon, 10 Dec 2018 01:38:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_559c2637783c47b7910c34f68688114a4rfnzexchangelocal4rfco_"

--_000_559c2637783c47b7910c34f68688114a4rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I've included usrmerge in DISTRO_FEATURES and I get below error during buil=
d. I'm not able to figure out if it's problem with the recipe or package_qa=
_check_usrmerge function in poky/meta/classes/insane.bbclass.

ERROR: modemmanager-1.6.4-r0 do_package_qa: QA Issue: modemmanager package =
is not obeying usrmerge distro feature. /lib should be relocated to /usr. [=
usrmerge]
ERROR: modemmanager-1.6.4-r0 do_package_qa: QA run found fatal errors. Plea=
se consider fixing them.
ERROR: modemmanager-1.6.4-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/alad/yocto2.5/poky/build/tmp/wor=
k/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/temp/log.do_packag=
e_qa.122313
ERROR: Task (/home/alad/yocto2.5/meta-openembedded/meta-oe/recipes-connecti=
vity/modemmanager/modemmanager_1.6.4.bb:do_package_qa) failed with exit cod=
e '1'

I'm including log.do_package_qa.122313 and ModemManager recipe below. Pleas=
e advise.

DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function extend_recipe_sysroot
NOTE: Direct dependencies are ['/home/alad/yocto2.5/poky/meta/recipes-devto=
ols/binutils/binutils-cross_2.30.bb:do_populate_sysroot', 'virtual:native:/=
home/alad/yocto2.5/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_popul=
ate_sysroot']
NOTE: Installed into sysroot: []
NOTE: Skipping as already exists in sysroot: ['binutils-cross-arm', 'pseudo=
-native', 'bison-native', 'gnu-config-native', 'quilt-native', 'flex-native=
', 'texinfo-dummy-native', 'autoconf-native', 'zlib-native', 'automake-nati=
ve', 'gettext-minimal-native', 'xz-native', 'libtool-native', 'm4-native']
DEBUG: Python function extend_recipe_sysroot finished
DEBUG: Executing python function do_package_qa
NOTE: DO PACKAGE QA
DEBUG: Executing python function read_subpackage_metadata
DEBUG: Python function read_subpackage_metadata finished
NOTE: Checking Package: modemmanager-bash-completion
NOTE: Checking Package: modemmanager-staticdev
NOTE: Checking Package: modemmanager
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/sbin/ModemManager
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/bin/mmcli
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/libmm-glib.so.0.3.0
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-nokia-icera.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-wavecom.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-sierra.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-generic.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-telit.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-pantech.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-longcheer.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-motorola.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-nokia.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-mtk.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-cinterion.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-dell.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-simtech.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-via.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-x22x.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-haier.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-zte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-huawei.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-novatel.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-sierra-legacy.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-ericsson-mbm.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-thuraya.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-novatel_lte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-samsung.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-altair-lte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-linktop.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-option-hso.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-iridium.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-option.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager/usr/lib/ModemManager/libmm-plugin-anydata.so
ERROR: QA Issue: modemmanager package is not obeying usrmerge distro featur=
e. /lib should be relocated to /usr. [usrmerge]
NOTE: Checking Package: modemmanager-doc
NOTE: Checking Package: modemmanager-locale-uk
NOTE: Checking Package: modemmanager-dev
NOTE: Checking Package: modemmanager-locale-de
NOTE: Checking Package: modemmanager-dbg

NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/sbin/.debug/ModemManager
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/bin/.debug/mmcli
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/.debug/libmm-glib.so.0.3.0
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-nokia-icera.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-wavecom.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-sierra.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-generic.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-telit.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-pantech.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-longcheer.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-motorola.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-nokia.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-mtk.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-cinterion.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-dell.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-simtech.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-via.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-x22x.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-haier.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-zte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-huawei.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-novatel.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-sierra-legacy.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-ericsson-mbm.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-thuraya.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-novatel_lte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-samsung.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-altair-lte.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-linktop.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-option-hso.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-iridium.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-option.so
NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/yocto2.5/poky/build/tmp/=
work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.4-r0/packages-split/=
modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-plugin-anydata.so
ERROR: QA run found fatal errors. Please consider fixing them.
DEBUG: Python function do_package_qa finished
ERROR: Function failed: do_package_qa
=3D=3D=3D=3D
Recipe

SUMMARY =3D "ModemManager is a daemon controlling broadband devices/connect=
ions"
DESCRIPTION =3D "ModemManager is a DBus-activated daemon which controls mob=
ile broadband (2G/3G/4G) devices and connections"
HOMEPAGE =3D "http://www.freedesktop.org/wiki/Software/ModemManager/"
LICENSE =3D "GPL-2.0 & LGPL-2.1"
LIC_FILES_CHKSUM =3D " \
    file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4263 \
    file://COPYING.LIB;md5=3D4fbd65380cdd255951079008b364516c \
"

inherit gnomebase gettext systemd vala gobject-introspection bash-completio=
n

DEPENDS =3D "glib-2.0 libgudev dbus-glib intltool-native"

SRC_URI =3D "http://www.freedesktop.org/software/ModemManager/ModemManager-=
${PV}.tar.xz \
           file://enum-conversion.patch \
"
SRC_URI[md5sum] =3D "06488186c7dd53f8104183b86f7a1568"
SRC_URI[sha256sum] =3D "cdd5b4cb1e4d7643643a28ccbfc4bb354bfa9cb89a77ea160eb=
df7926171c668"

S =3D "${WORKDIR}/ModemManager-${PV}"

PACKAGECONFIG ??=3D "mbim qmi polkit \
    ${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)} \
"

PACKAGECONFIG[systemd] =3D "--with-systemdsystemunitdir=3D${systemd_unitdir=
}/system/,,"
PACKAGECONFIG[polkit] =3D "--with-polkit=3Dyes,--with-polkit=3Dno,polkit"
# Support WWAN modems and devices which speak the Mobile Interface Broadban=
d Model (MBIM) protocol.
PACKAGECONFIG[mbim] =3D "--with-mbim,--enable-mbim=3Dno,libmbim"
# Support WWAN modems and devices which speak the Qualcomm MSM Interface (Q=
MI) protocol.
PACKAGECONFIG[qmi] =3D "--with-qmi,--without-qmi,libqmi"

FILES_${PN} +=3D " \
    ${datadir}/icons \
    ${datadir}/polkit-1 \
    ${datadir}/dbus-1 \
    ${libdir}/ModemManager \
    ${systemd_unitdir}/system \
"

FILES_${PN}-dev +=3D " \
    ${libdir}/ModemManager/*.la \
"

FILES_${PN}-staticdev +=3D " \
    ${libdir}/ModemManager/*.a \
"

FILES_${PN}-dbg +=3D "${libdir}/ModemManager/.debug"

SYSTEMD_SERVICE_${PN} =3D "ModemManager.service"
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

--_000_559c2637783c47b7910c34f68688114a4rfnzexchangelocal4rfco_
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
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">I&#8217;ve included usrmerge in DISTRO_FEATURES and =
I get below error during build. I&#8217;m not able to figure out if it&#821=
7;s problem with the recipe or package_qa_check_usrmerge function in poky/m=
eta/classes/insane.bbclass.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: modemmanager-1.6.4-r0 do_package_qa: QA Issue=
: modemmanager package is not obeying usrmerge distro feature. /lib should =
be relocated to /usr. [usrmerge]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: modemmanager-1.6.4-r0 do_package_qa: QA run f=
ound fatal errors. Please consider fixing them.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: modemmanager-1.6.4-r0 do_package_qa: Function=
 failed: do_package_qa<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/alad/yoct=
o2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1.6.=
4-r0/temp/log.do_package_qa.122313<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/home/alad/yocto2.5/meta-openembedded/m=
eta-oe/recipes-connectivity/modemmanager/modemmanager_1.6.4.bb:do_package_q=
a) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m including log.do_package_qa.122313 and Mod=
emManager recipe below. Please advise.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function sstate_task_prefunc=
<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function sstate_task_prefunc finished<=
o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function extend_recipe_sysro=
ot<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Direct dependencies are ['/home/alad/yocto2.5/=
poky/meta/recipes-devtools/binutils/binutils-cross_2.30.bb:do_populate_sysr=
oot', 'virtual:native:/home/alad/yocto2.5/poky/meta/recipes-devtools/pseudo=
/pseudo_git.bb:do_populate_sysroot']<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Installed into sysroot: []<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Skipping as already exists in sysroot: ['binut=
ils-cross-arm', 'pseudo-native', 'bison-native', 'gnu-config-native', 'quil=
t-native', 'flex-native', 'texinfo-dummy-native', 'autoconf-native', 'zlib-=
native', 'automake-native', 'gettext-minimal-native',
 'xz-native', 'libtool-native', 'm4-native']<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function extend_recipe_sysroot finishe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function do_package_qa<o:p><=
/o:p></p>
<p class=3D"MsoNormal">NOTE: DO PACKAGE QA<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Executing python function read_subpackage_met=
adata<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function read_subpackage_metadata fini=
shed<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-bash-completion=
<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-staticdev<o:p><=
/o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/sbin/ModemManager<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/bin/mmcli<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/libmm-glib.so.0.3.0<o:p></o:p><=
/p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-nokia=
-icera.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-wavec=
om.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-sierr=
a.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-gener=
ic.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-telit=
.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-pante=
ch.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-longc=
heer.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-motor=
ola.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-nokia=
.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-mtk.s=
o<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-cinte=
rion.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-dell.=
so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-simte=
ch.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-via.s=
o<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-x22x.=
so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-haier=
.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-zte.s=
o<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-huawe=
i.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-novat=
el.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-sierr=
a-legacy.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-erics=
son-mbm.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-thura=
ya.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-novat=
el_lte.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-samsu=
ng.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-altai=
r-lte.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-linkt=
op.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-optio=
n-hso.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-iridi=
um.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-optio=
n.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager/usr/lib/ModemManager/libmm-plugin-anyda=
ta.so<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: QA Issue: modemmanager package is not obeying=
 usrmerge distro feature. /lib should be relocated to /usr. [usrmerge]<o:p>=
</o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-doc<o:p></o:p><=
/p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-locale-uk<o:p><=
/o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-dev<o:p></o:p><=
/p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-locale-de<o:p><=
/o:p></p>
<p class=3D"MsoNormal">NOTE: Checking Package: modemmanager-dbg<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/sbin/.debug/ModemManager<o:p></=
o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/bin/.debug/mmcli<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/.debug/libmm-glib.so.0.3.0<=
o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-nokia-icera.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-wavecom.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-sierra.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-generic.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-telit.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-pantech.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-longcheer.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-motorola.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-nokia.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-mtk.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-cinterion.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-dell.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-simtech.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-via.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-x22x.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-haier.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-zte.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-huawei.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-novatel.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-sierra-legacy.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-ericsson-mbm.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-thuraya.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-novatel_lte.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-samsung.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-altair-lte.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-linktop.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-option-hso.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-iridium.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-option.so<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: arm-next-linux-gnueabi-objdump -p /home/alad/y=
octo2.5/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/modemmanager/1=
.6.4-r0/packages-split/modemmanager-dbg/usr/lib/ModemManager/.debug/libmm-p=
lugin-anydata.so<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: QA run found fatal errors. Please consider fi=
xing them.<o:p></o:p></p>
<p class=3D"MsoNormal">DEBUG: Python function do_package_qa finished<o:p></=
o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_package_qa<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">Recipe<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;ModemManager is a daemon controlli=
ng broadband devices/connections&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;ModemManager is a DBus-activat=
ed daemon which controls mobile broadband (2G/3G/4G) devices and connection=
s&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">HOMEPAGE =3D &quot;http://www.freedesktop.org/wiki/S=
oftware/ModemManager/&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;GPL-2.0 &amp; LGPL-2.1&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; file://COPYING;md5=3Db234ee4d69f5=
fce4486a80fdaf4a4263 \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; file://COPYING.LIB;md5=3D4fbd6538=
0cdd255951079008b364516c \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">inherit gnomebase gettext systemd vala gobject-intro=
spection bash-completion<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DEPENDS =3D &quot;glib-2.0 libgudev dbus-glib intlto=
ol-native&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;http://www.freedesktop.org/softwar=
e/ModemManager/ModemManager-${PV}.tar.xz \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://enum-conversion.patch \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[md5sum] =3D &quot;06488186c7dd53f8104183b86f=
7a1568&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI[sha256sum] =3D &quot;cdd5b4cb1e4d7643643a28c=
cbfc4bb354bfa9cb89a77ea160ebdf7926171c668&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}/ModemManager-${PV}&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG ??=3D &quot;mbim qmi polkit \<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${@bb.utils.filter('DISTRO_FEATUR=
ES', 'systemd', d)} \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG[systemd] =3D &quot;--with-systemdsyste=
munitdir=3D${systemd_unitdir}/system/,,&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG[polkit] =3D &quot;--with-polkit=3Dyes,=
--with-polkit=3Dno,polkit&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># Support WWAN modems and devices which speak the Mo=
bile Interface Broadband Model (MBIM) protocol.<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG[mbim] =3D &quot;--with-mbim,--enable-m=
bim=3Dno,libmbim&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"># Support WWAN modems and devices which speak the Qu=
alcomm MSM Interface (QMI) protocol.<o:p></o:p></p>
<p class=3D"MsoNormal">PACKAGECONFIG[qmi] =3D &quot;--with-qmi,--without-qm=
i,libqmi&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${datadir}/icons \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${datadir}/polkit-1 \<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${datadir}/dbus-1 \<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${libdir}/ModemManager \<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${systemd_unitdir}/system \<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN}-dev &#43;=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${libdir}/ModemManager/*.la \<o:p=
></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN}-staticdev &#43;=3D &quot; \<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; ${libdir}/ModemManager/*.a \<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN}-dbg &#43;=3D &quot;${libdir}/ModemManage=
r/.debug&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SYSTEMD_SERVICE_${PN} =3D &quot;ModemManager.service=
&quot;<o:p></o:p></p>
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

--_000_559c2637783c47b7910c34f68688114a4rfnzexchangelocal4rfco_--
