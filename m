Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB1FE00C09; Thu, 20 Sep 2018 06:38:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.2.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 25059 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Sep 2018 06:38:35 PDT
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20048.outbound.protection.outlook.com [40.107.2.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA9BE006AF
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 06:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=WVN8cmaBNjrafFW9uKxIQF+JHQe08Bu31xEZxuKv4Dw=;
	b=gDSLy3i8Dq1oTS3b8nutoXQRJlFdULEfIEZKs/TKvjVYNeMANU3VaxoutXbvxMEUtsmILzBEYQ5a+g/GeoKGn7V+gNM8hJ4Q7BK/qA3oTpXBdn+K31AT9XlVgud/xQtKUYYmrprOu4q57CV10boUJD6ENbCRp+WQOFqUyebolzw=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [192.168.178.122] (212.51.137.245) by
	AM0P192MB0257.EURP192.PROD.OUTLOOK.COM (2603:10a6:208:4e::21) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1143.18; Wed, 19 Sep 2018 09:05:35 +0000
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
Date: Wed, 19 Sep 2018 11:05:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
X-Originating-IP: [212.51.137.245]
X-ClientProxiedBy: VI1PR0901CA0105.eurprd09.prod.outlook.com
	(2603:10a6:800:7e::31) To AM0P192MB0257.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:208:4e::21)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: efc57cea-eda5-43cd-f527-08d61e0f0fc8
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM0P192MB0257; 
X-Microsoft-Exchange-Diagnostics: 1; AM0P192MB0257;
	3:SQjmLXtzlrJClDId6ZsLLRluBiuPR8TMfdjWCuK+hLWso8von1CtTabOiLoQZPxeNFjIC3FJt+zbhGq6y3R/FaFtJaf5pqj0ASl38GsVPeHmbuNydzOQnRn2WucI0AM83pdxB3ywZ+/HWNiy+ai7W5SzKo1O/2BQChaG0YCqo0wIEseacPvFeIuvIWDURlQMyFzaVyozXLLlY7hFsrCjZ2+TSD7CJ7e6PpMCEn4kIn3P7OeCJ74yTpSTMJNN+zfu;
	25:yA9rjmdje7RS5waa+2n5IXJ2OEvSlmsPzSQSLHxnxF704v6adjSOKAFSK9VIlW754zOHQmrOjw19GLhrToVLuKS+Cr8MzgVamR/bdCKryHQiDKf2sKdiSWpiYHhxZxIzk9bZMXNkKgMcceQ10dAooVxc1tmtRWf88ShLzykGUwAtgVyr/+eIp9lNXr+SXXCIDQ2kQwq/orOcNjyiaMiM332tZ57YjwcERxZ+3Zv6NQ6axBwAvKy9rMGeOfIOmx+gpSjvL5zcGaVxksh+EerAafkX9WgZg8N03kBIu1VeEuexgidq2iXJINLtv18mise6NMsF/y2xgI3c96C0N0rngg==;
	31:YkqlWd5c9suZbmVb7EmtdN0p7wxxdzHBdTUBNbMa9sRdHquEArJsR/+ePyXIoO9uYns7aHq90HANcxOESbxH+Ge44kK7DccWAQV1HpaUINr3tO+ZIV/KH6YFeRIYfZ8KQU4t3Zn4w3AOfh6G/2UJyQaiL95qE7GLWZ5ZCwd/ayyEOlqThNHMRQuRAT8UZ9D6iL1b8u6JlfA+NB8q1nac56v+9La5Po9syQ8WEfQHyw0=
X-MS-TrafficTypeDiagnostic: AM0P192MB0257:
X-Microsoft-Antispam-PRVS: <AM0P192MB0257B58EDB28569A9947D352841C0@AM0P192MB0257.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(209352067349851)(163750095850)(5213294742642)(217918111141313)(17755550239193);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231355)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(2016111802025)(20161123564045)(6043046)(201708071742011)(7699050);
	SRVR:AM0P192MB0257; BCL:0; PCL:0; RULEID:; SRVR:AM0P192MB0257; 
X-Microsoft-Exchange-Diagnostics: 1; AM0P192MB0257;
	4:GL0NluLFz70kCZtT8KS6g1uZOCVVoL8D8MEOZrBUeSeuqXM86ojO0Uw20476JloQMrqevR87lZL3cy3J1dQl2FJtXCb2Cy5+DRQ/9WgiN4rF13KZ3FGZ8Qyf87cC5s0b+50FBSptoicX0mA3lVVQV5rUwxUYEUG3FTMgP4x7nOSM8EnIdHO9qq1h6CmN5mz9/SXtMQCP/NdRjp4dhIu4QsZdzp6jva1i79PhDNVM0sV4zAK0k+E/M+Zqq8XHTUpkjAWwwmgGQpOnmSBRy8exSo98JcHQHtHWr/JlMZIdz9/ZOPmsUwWvAUQOZi6NAcKvEacy0kx7nfYm/70ekS75Gvy007zqlz+eC7Z3TCa7SYDXcghese4KtWtnY77WOkj/rpxwWXA3mV398Gx0iDiE53BYPZEwWMgSVOIInpnSjNubMsey7sOh6RDJGvjq7JTX
X-Forefront-PRVS: 0800C0C167
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(39830400003)(366004)(136003)(376002)(396003)(346002)(199004)(189003)(31686004)(16576012)(6116002)(16586007)(53386004)(15974865002)(65826007)(5660300001)(2906002)(606006)(6666003)(65806001)(65956001)(81166006)(81156014)(6916009)(26005)(77096007)(478600001)(58126008)(52116002)(316002)(105586002)(64126003)(37036004)(16526019)(386003)(117156002)(68736007)(8676002)(66066001)(6486002)(486006)(2616005)(53936002)(84326002)(4326008)(33964004)(3846002)(8936002)(476003)(956004)(106356001)(44832011)(97736004)(6306002)(54896002)(25786009)(31696002)(236005)(14444005)(7736002)(107886003)(36756003)(86362001)(47583001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0P192MB0257;
	H:[192.168.178.122]; FPR:; SPF:None; LANG:en; PTR:InfoNoRecords;
	A:1; MX:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM0P192MB0257;
	23:yWDEsktedEl/JCq2tUv79DJCZQUHEJy2NNgAF6rEc?=
	=?us-ascii?Q?16EQKcJ9elL5OwPVpdp1F3HmE8x0Q/rMpwIFi/ejUWj1JUdmo/e7Q/RCcKyZ?=
	=?us-ascii?Q?ROq9KBamf27ELKitdNz9qNp/2wQWwMfTAP60Gh/DF1Uq8IufoGDG3LhDkEbw?=
	=?us-ascii?Q?P/02Mz9mtL8kU8B3FtTbCfG5LQHBgcOhKaFjIYfFY5sK0Buq8IDoXicgnn3W?=
	=?us-ascii?Q?t0McGkTapIHIaBvBlgwv6/bRR6CVtdSb3TFXZYZ3w/00eS2L4scfMKe5MHw+?=
	=?us-ascii?Q?f9SOo5rLn7VyS6C71/2E308f5eAR2zjkq/363khNsZgOxMbIT96PEhqsVlfl?=
	=?us-ascii?Q?fq7rxErYPnS0ZyL/vQXX5WyxoywH5uHBtlajSlgNzTj8qO0qk0bzBvvpVr4Y?=
	=?us-ascii?Q?23lkMrt8TAnDak1uojRo8oUr82h5TRItod179Nt2yYGTjhvoUR7ZiHoKxgx3?=
	=?us-ascii?Q?Claa1Z0xADFRlOcfaMBlSqoqnIWmST6VvFacca2f9GKP9ZQyMhLUaAfm6WKI?=
	=?us-ascii?Q?/u8ApcRvvs4aQDG8tljTvFIpn7mVe1wWJkiT2ii0+xy+qJ8KIQX/lfz9cS1P?=
	=?us-ascii?Q?Wie9CQeRJe2TGQ4kQJ2/S9RZihoojAJbunvmRcAn/7VSc4VqX+3mChgRsqzi?=
	=?us-ascii?Q?MjQXzZ4ntFvxktPLkRCt/UYPwo7oFWwpY6nIysbqXHaBemUlfZYAkrlJZQ6J?=
	=?us-ascii?Q?ikLHl4kDsQICAcs0oVZ0c6J9X6lXeCwuZkYfsrHrmALyQMr6VVaK5j0gaVUi?=
	=?us-ascii?Q?48RJTAH+tpG1mrkXOCWAvU4ZWHteYwxc/3l2XdhYRj9/MYnQyOVv0fIdL/WQ?=
	=?us-ascii?Q?pQlfxf2QRtUYfN0eMFhZiAtI2muMGVKqW/y18og7af76L84ebFIm49VFMAX8?=
	=?us-ascii?Q?Fy9OgthGp2BUWQ127fGlGSri5To98OALs1KGteg4mXBIkgTgExV2lj8MtM79?=
	=?us-ascii?Q?z9hFvweWg7jtPK9G1Rxmqq4EjnPC+F/LnvS8afXcriaEfEZgjg8XZMBJcdV3?=
	=?us-ascii?Q?uJZ3b2TWic/SDKGz/h7sLtyBMl4KWhsD/4UXIuGQGgH6aUp+oMRFOWThATfN?=
	=?us-ascii?Q?pdMsjyI0c1olKmw2LnNF6d5QdXPPAav05sJHrQmiKzkhXwCl/JDoP4UVWJsp?=
	=?us-ascii?Q?bLe0rEThdbEFYPfU8man5wEqDosiwDqFXmCYQjZJWFWpoBxpNWlB3uO83eLF?=
	=?us-ascii?Q?yteQZAgSpLpmYndOeriVW7pfP316ToALVHfoV8Q1kJPKr4usdTlbVmNnVeeR?=
	=?us-ascii?Q?uD/lC+JlgX8czQs9+J88YgRhr7ls+npE2bl3Suq5f8aJlx2PvRhYrXfVwRP3?=
	=?us-ascii?Q?3NqCKaxgZF5FVB/4HTBUcENY38KWiUISAG2Qs4S+kcfEbM18s3EHiO2Kek7n?=
	=?us-ascii?Q?4iAoXGudmLsz8hTINFEOnWVK//9WuFnTCWZNy/ES1g4mbJX2mEfbWfnWr7P8?=
	=?us-ascii?Q?PJaGXRmeACoE94CelKGQuILKlTRs+M=3D?=
X-Microsoft-Antispam-Message-Info: hmqL5DnPRTCt3G7wiq27xSRR/G3dLPBMxVMTUAVPU9u4C4p6tCBlx6E3Q6Qu43fNm/iid2l9O1Umz/F8K2LMkw/0wqrUlqADwaLfValpygFFAQdP9ooYeeF4mFBQ/Hb6uQfas0MwJVntQjj4JTg3dm5pt3z7vlBkzrdNVRa3rHaST15kXQOQIgygbLysygy6O39NX57zFK2iyPR87G8LT+1mtCPjEUMG0keV950pBUMz8Gm0UXh5KtPyJ/YNV7DdIJTgaOZ6F2UuM6NmyPKHQKWS0OT9Jx58l7PugQ8W9cqhcSToXKslsNu5+XQonc1f2H1IZtyTEO64fkWfUp3nVBbJnaadh5Cy/f+b1CofbHg=
X-Microsoft-Exchange-Diagnostics: 1; AM0P192MB0257;
	6:PgIzPLoy3DzfapKsxUSRe1QeA1H4qaPG878AxZQ9uoBqZ03XVV3fdWWJA0jPnucXbWjvBtsJVdDq1g3acT9AdfK4AJtyElvzblmd2UTlkAnp66uRdE01SRCpaoc4DIuZ9FcRtXVBt1RWGpcgavV78HUk2vUmMutdXe+cN/rXpgL9je25w57wo+majEfYsjK743F2HPzSW8cF8pNrSdp20ycbFJ93HGoRYP7U9BMhJoSN6soNS2ieluHrNgpNxLWTcJXmHPDmYDuUjLablVLkKnn+ywBBSRnQLm2I0GT+lyVE1Y2pVH/OfSalOzOOiojUaIXhZWOwAuBvKtiN8pg9jyS7MShRe78tnh8uWiDc33xriXqNWIK4L8xrT4b6Daz8gAaNPuNe7pIeKg1RIexC6wal9n3tuBbBCDVTcUJKwEKJv/NRtIezcfDTMQ/zo23qnS8zniyTNwnqklZWKfGwGw==;
	5:yQS/lOVOpsBWWIc+zqLFcAW6DznhmLL6gCOHNvbYVuPpq9SCLmMlakxw+FG9JCK1xu5Mxy/gZmtZu39mT99M0qEMoHrxeB2mGmeoF0w6nshcumMC4i1JqWWEYlCFBMH68EY+TxN8GctbNHsF3UgsudAjbpcR537HlHjdQZEeTgU=;
	7:C6dknk0WAkC+0Oo9DIvDh+6agVIbYDdKrzQXZR0LyEcYtHbaO3jSFATINtKGpSZtam6MV+IP1EuGAKGj8zwD9gyAQfcYzfmbI/C/zLYehmNdsNVCXT6IGbBu2vrdUkUhRCd+cvQ9t+BgzK9LJXRqKJ2H3jiWq4a9DoWD3/a5siCyvXvNjRPJCJihqdsGB5ZE+GFfhH4uLUIDHbXwN4rHSuCRJXXzvLjyfwsSspsa4nYbP6d0KTQYg2EtIsKR/QZG
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2018 09:05:35.2901 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: efc57cea-eda5-43cd-f527-08d61e0f0fc8
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P192MB0257
Cc: Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: git works standalone, but not within yocto for weird Azure Devops ssh uri
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
X-List-Received-Date: Thu, 20 Sep 2018 13:38:38 -0000
Content-Type: multipart/alternative;
	boundary="------------1D9226708BA7C38FC84B7681"
Content-Language: de-DE

--------------1D9226708BA7C38FC84B7681
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I have several projects hosted in Azure DepOs (former Visual Studio online).
When I glone them with git inside my host machine or the Ubuntu 16.04 
container, everything works fine. When I use bitbake to build the recipe 
with the same ssh uri, it fails (yocto inside Ubuntu 16.04 container).

The SCR_URI in my recipe looks like this:

SRC_URI = "gitsm://XXX@vs-ssh.visualstudio.com:v3/XXX-app"

What strikes me is the weird "v3" in the app uri, with the other ssh 
uris not containing this but the ssh port (22) instead, I didn't have 
any problem so far.
I also upgraded git to version 2.17 or 2.19 or so already.

Does anyone have a solution for this?
The actual recipe looks like this:

    DESCRIPTION = "My app"
    LICENSE = "CLOSED"
    SECTION = "app"

    # util-linux is for some uuid headers
    DEPENDS = "openssl curl u-boot-fw-utils restart-me util-linux"

    SRC_URI =
    "gitsm://my-company@vs-ssh.visualstudio.com:v3/my-company/IoTSolutions/my-app"
    SRC_URI_append = "file://start_my-app.sh"

    SRCREV_pn-my-app = "356dfb095d4b162120f43769cd5b23c7f5a15bd0"
    #SRCREV_pn-swisscom-app = "${AUTOREV}"
    S = "${WORKDIR}/git"

    inherit cmake update-rc.d

    INITSCRIPT_NAME = "start_my-app.sh"
    INITSCRIPT_PARAMS = "start 23 3 5 ."

    EXTRA_OECMAKE = ""

    do_install() {
         install -d ${D}${bindir}
         install -m 0755 ${S}/bin/my-app ${D}${bindir}/my-app
         chrpath -d ${D}${bindir}/my-app

         install -d ${D}${sysconfdir}/init.d

         install -c -m 755 ${WORKDIR}/${INITSCRIPT_NAME}
    ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
    }


All the Best
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@qiio.ch
T: +41 44 552 02 66

Qiio GmbH
www.qiio.com


--------------1D9226708BA7C38FC84B7681
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello, <br>
    <br>
    I have several projects hosted in Azure DepOs (former Visual Studio
    online).<br>
    When I glone them with git inside my host machine or the Ubuntu
    16.04 container, everything works fine. When I use bitbake to build
    the recipe with the same ssh uri, it fails (yocto inside Ubuntu
    16.04 container).<br>
    <br>
    The SCR_URI in my recipe looks like this:<br>
    <br>
    SRC_URI = <a class="moz-txt-link-rfc2396E" href="mailto:gitsm://XXX@vs-ssh.visualstudio.com:v3/XXX-app">"gitsm://XXX@vs-ssh.visualstudio.com:v3/XXX-app"</a><br>
    <br>
    What strikes me is the weird "v3" in the app uri, with the other ssh
    uris not containing this but the ssh port (22) instead, I didn't
    have any problem so far.<br>
    I also upgraded git to version 2.17 or 2.19 or so already.<br>
    <br>
    Does anyone have a solution for this?<br>
    The actual recipe looks like this:<br>
    <br>
    <blockquote>DESCRIPTION = "My app"<br>
      LICENSE = "CLOSED"<br>
      SECTION = "app"<br>
      <br>
      # util-linux is for some uuid headers<br>
      DEPENDS = "openssl curl u-boot-fw-utils restart-me util-linux"<br>
      <br>
      SRC_URI =
<a class="moz-txt-link-rfc2396E" href="mailto:gitsm://my-company@vs-ssh.visualstudio.com:v3/my-company/IoTSolutions/my-app">"gitsm://my-company@vs-ssh.visualstudio.com:v3/my-company/IoTSolutions/my-app"</a><br>
      SRC_URI_append = <a class="moz-txt-link-rfc2396E" href="file://start_my-app.sh">"file://start_my-app.sh"</a><br>
      <br>
      SRCREV_pn-my-app = "356dfb095d4b162120f43769cd5b23c7f5a15bd0"<br>
      #SRCREV_pn-swisscom-app = "${AUTOREV}"<br>
      S = "${WORKDIR}/git"<br>
      <br>
      inherit cmake update-rc.d<br>
      <br>
      INITSCRIPT_NAME = "start_my-app.sh"<br>
      INITSCRIPT_PARAMS = "start 23 3 5 ."<br>
      <br>
      EXTRA_OECMAKE = ""<br>
      <br>
      do_install() {<br>
          install -d ${D}${bindir}<br>
          install -m 0755 ${S}/bin/my-app ${D}${bindir}/my-app<br>
          chrpath -d ${D}${bindir}/my-app<br>
      <br>
          install -d ${D}${sysconfdir}/init.d<br>
      <br>
          install -c -m 755 ${WORKDIR}/${INITSCRIPT_NAME}
      ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}<br>
      }<br>
    </blockquote>
    <br>
    All the Best<br>
    Jakob<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@qiio.ch">jakob.hasse@qiio.ch</a>
T: +41 44 552 02 66 

Qiio GmbH
<a class="moz-txt-link-abbreviated" href="http://www.qiio.com">www.qiio.com</a></pre>
  </body>
</html>

--------------1D9226708BA7C38FC84B7681--
