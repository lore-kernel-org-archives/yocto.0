Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500E7E00AB9; Mon,  1 Oct 2018 19:58:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.0.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 25182 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Oct 2018 19:58:25 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0049.outbound.protection.outlook.com [104.47.0.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC963E0097C
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2018 19:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kIyUjjXdPJOzvEVUxTUlhZ/oYRzoH9QmO/TAtEWuLmM=;
	b=fvDHDJ8aT1DzFuLNbDgtSIK8uCyLDQAHsIjHwX9yywuRFyRfxJ7PetZWY52sZovwROO5SE+0wFy5q5sH0/KlplPOCL406WDDQXa/N3KmuUvZfuUUtg80Iv+efRfzSW8LaiKWv9TbvnfLcbpIKjwSW6usb5UeDn6AeczX8vEjncs=
Received: from AM6PR0202CA0038.eurprd02.prod.outlook.com
	(2603:10a6:20b:3a::15) by AM0PR02MB3778.eurprd02.prod.outlook.com
	(2603:10a6:208:41::11) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1185.22;
	Mon, 1 Oct 2018 09:21:24 +0000
Received: from VE1EUR01FT048.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e01::208) by AM6PR0202CA0038.outlook.office365.com
	(2603:10a6:20b:3a::15) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1185.22 via
	Frontend Transport; Mon, 1 Oct 2018 09:21:23 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=fail (signature did
	not verify) header.d=topicbv.onmicrosoft.com; yoctoproject.org;
	dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu2-emailsignatures-cloud.codetwo.com;
Received: from westeu2-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	VE1EUR01FT048.mail.protection.outlook.com (10.152.3.69) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.20.1185.13 via Frontend Transport; Mon, 1 Oct 2018 09:21:23 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (94.245.120.80)
	by westeu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Mon, 01 Oct 2018 09:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kIyUjjXdPJOzvEVUxTUlhZ/oYRzoH9QmO/TAtEWuLmM=;
	b=l7OIK4mzD8BSS7MID+vK7MuoXBQwF4h4TGGafyOXD69Lt1R/scrAXfI4Jh3sHA/Ahq2Bb2awjGHcgesab2kDLnzZcJGvyRSXx+t7c0mWBYeKuFgy7O2oozmNrd5U7yAkFMu1XNeGaTE0/cSK321gqdk+SIXZabWWP+cDlPEA4Rk=
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from [192.168.80.121] (81.173.50.109) by
	AM6PR02MB4088.eurprd02.prod.outlook.com (2603:10a6:20b:43::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.25; Mon, 1 Oct 2018 09:21:18 +0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Hussin, Mohamad Noor Alim"
	<mohamad.noor.alim.hussin@intel.com>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
	<3065402.BQHNVuqeqy@localhost.localdomain>
	<A05DCA0C0293664FB237A9C4B0E55E46015C01B1@PGSMSX107.gar.corp.intel.com>
	<2748401.7VLvW5X585@localhost.localdomain>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <cc0c8935-e1b4-4605-6188-b8e718683c7e@topic.nl>
Date: Mon, 1 Oct 2018 11:21:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2748401.7VLvW5X585@localhost.localdomain>
X-Originating-IP: [81.173.50.109]
X-ClientProxiedBy: HE1P189CA0026.EURP189.PROD.OUTLOOK.COM (2603:10a6:7:53::39)
	To AM6PR02MB4088.eurprd02.prod.outlook.com
	(2603:10a6:20b:43::13)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e15841f0-a440-4a51-5c10-08d6277f41b5
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4534165)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB4088; 
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4088;
	3:rg+elKgwABmtuDvQfg1n92imXFo2o7r6P+oT7gamV+1nZJ+eA5S4mBjoOzy4Ij6Lvq0e7sf2sB75/XP1mOoEE5Z0LnSaNi/qgeuNymsGnjB6BIeCOdyOHT/uWs7Jpe7nsRCG+PBtNJ19dWhudNh+pDPxgm883OrYm30vaKj4jhSq4OLjsPhkmQ2tQz0wpIiPx5NHHV1JBtrNUDj19Blti0R0G+qjmB33BKANmjI+6NE7nbL0OuyzXg2I0JSm1PW0;
	25:6u8kDEgMP6CiYsFw5dYFyYL0Z3EUNbrX9/19icFH4BCl24GjSwhakOR2R64N5js3MlBQrJY5bucSPneShB1qXOz++KeMbLlOryaMOU6N+nzbWfsnH4PKhF3046hnI9RWcsalNSvZL+HQZND4CiK1EZpPlXvnfnV8YxgFJBi/8AQnfrYKI6L16FG7rIg2jx/sCKthrIIrVaJLyKnLxG0/b77OXERTPmAlpxczcqmaSXCuewCYi3TMYVBeBQUIAILDFml3BXdYNtvtveUnAw7JU6aoIKgOBkM6IkPPBOtsi2CR85R7VHTmaOuhoAMsLLh1ekzXzfs7qECbV61jvoaG+g==;
	31:tJK+AJj3fF7BZhgYadltUM3jiqHZu/zdfukCSv6YUHy/tLmSMQR42i56QWw45c/qurcdlG4BTOXJ3QIVJmKP3+d4FTwGBLT33ikzMoZp+ztcBa2pZQqJZZu4UYKjhLG0lHErMUWuxtVvrXK98g6IuccVqqaHn0EYMBNeBOmosxXFBnbSPHBUsW3HHGTHNc+83jzY1hy97d7vHsPPGHY4y4BdHSpXkdY834aGareidZA=
X-MS-TrafficTypeDiagnostic: AM6PR02MB4088:|AM0PR02MB3778:
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4088;
	20:BDV4e5Ng4k8WDhppL+cHWb7SjujG+D9sEXTxlGdHcXl1QkmDqb2N9hkSyR0fx5EJYXQdkwEJG5tXRXYQkpZ88yB2gzMDNgWdSZqk2S6RI09RyWtZSXJX9yzAzszRQ58rUg6YbEIFx6HYUoXXZfWtsX658+7R3lCqD0SjX7pzCYI=;
	4:gzQRiRbVmWWycOAQ1/pkydy3HE9yB6SCIxaemu0/vHEq/FObfvXhj7doF+3Lm8lHq30+sZr3vbbDUqW47DK9NnKLmmWQ7b47HwiszEheFr7tSjsKI6e4N2vdM8tINikMDkUvTiUsitX6+QjLyi0R21FWsOMlor3Zo1wiLLJxwmysy8y7YjJfuG+StElQQBlCz2e9KMvAFxF49riiZ1GlkoACZBuC8tgQJvziloysY5230r1EPUI/y22F8Zl8bonK5yyRO1NZe+ctZbsHq+4GHg==
X-Microsoft-Antispam-PRVS: <AM0PR02MB377869E6D1E8E13EBF5A888396EF0@AM0PR02MB3778.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231355)(944501410)(52105095)(10201501046)(3002001)(93006095)(149066)(150057)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(201708071742011)(7699051);
	SRVR:AM6PR02MB4088; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB4088;
	BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93004095)(10201501046)(3002001)(3231355)(944501410)(52105095)(149066)(150057)(6041310)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(201708071742011)(7699051);
	SRVR:AM0PR02MB3778; BCL:0; PCL:0; RULEID:; SRVR:AM0PR02MB3778; 
X-Forefront-PRVS: 0812095267
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(6049001)(396003)(136003)(346002)(376002)(366004)(39830400003)(189003)(199004)(67846002)(105586002)(8936002)(446003)(14444005)(93886005)(65826007)(386003)(5660300001)(53546011)(117156002)(6246003)(106356001)(4326008)(478600001)(16576012)(110136005)(34290500001)(36756003)(305945005)(68736007)(58126008)(25786009)(316002)(50466002)(6486002)(47776003)(66066001)(65956001)(65806001)(486006)(2486003)(23676004)(36916002)(52146003)(52116002)(64126003)(476003)(2616005)(956004)(6666003)(81156014)(8676002)(31686004)(7736002)(76176011)(230700001)(2906002)(42882007)(229853002)(11346002)(3846002)(6116002)(26005)(16526019)(186003)(81166006)(77096007)(31696002)(53936002)(74482002)(44832011)(97736004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB4088; H:[192.168.80.121];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics-untrusted: =?utf-8?B?MTtBTTZQUjAyTUI0MDg4OzIzOkt2ZGl6OEVhVmJQN3hYOEZObkdVWC9FdEEw?=
	=?utf-8?B?bFByekpqS1RYdjl4Y04zVi9rckVBbm1BdSs1SkFhMmljMngyY052ZWNpUTl5?=
	=?utf-8?B?L0F3WGhzS0hmV1BWU3BxcDhmc2FEM1JrSlhRYU5ObmpjVHJvTkQ5WUZxdGQ5?=
	=?utf-8?B?NXlkK0Y4N0V6cXp5dEErOFZhd3haYXBCbTlnQUdzQ0x5N1IvK3M4aHZoSE9M?=
	=?utf-8?B?aGJ1N0JzdGFuQkE1T2FqNXA3dFNLZlo4TUMzOEdVZ0JNRTQ0ejBjRlFNaUZr?=
	=?utf-8?B?MHBvWUNibk9wNkhHRmpPWUFFdnRTTUdlZVRwbmFicU5TL1ZxT2JGWnUvdFVa?=
	=?utf-8?B?ODA4Y09rUzd3N1pqTVB3bzQ4amMxSXgxYVBqWi9FSHI0enJINkRoYzdQRko0?=
	=?utf-8?B?UzZqeVhEV3BNdEtYVGtuS2Y3MXFDNis3MzYvSDBaclFFOEhpMzU1d21Sb0Nx?=
	=?utf-8?B?L1ljOVArSjBVamJtNFBFOWpNRDg3eW40ZmxoamhodmUwRWYyQlIxZ0JFVTdx?=
	=?utf-8?B?ajIxaHFkdTFoN2VsRGthNml3Ri8rZ0ZKUGZXTnN6Y1FJMVAwWEFINGNhOFB3?=
	=?utf-8?B?RG1XWllVcytJSThCMGgvRmZMbnRJL3gwRlRDcDMvMnFEcE9pRjV4NHBPSi9F?=
	=?utf-8?B?d0pDWThMQ2ZqdkVXcEQzSS9QMWNQZWU3VG4zMWVKbFRIaFp1YlRBQUg1eHM5?=
	=?utf-8?B?OWIyNE83eFdHNDZ1QmdLMGlwMW9DNThZUDluTGdqQlNScDh2aXpBcHhDNVB5?=
	=?utf-8?B?RVZLaTNhdjdWejg5Mk1yQys3cEdqQnNXWUk0TldLczBFWEQ5U3d4dktLL2pJ?=
	=?utf-8?B?ajlGNHEzTERrOERQaGZ2TUJ2NnlYcUtvVW56VXZlU1dlQkVmakk3NFlKbUlv?=
	=?utf-8?B?Q1A5eHlsL1VZb3JJU0pkNXIwM2ZiNnB0VGk2MldHNkZxMUJMWXcwbkQzS3E4?=
	=?utf-8?B?ZHRlRTBMWkdGc3hwY0FHV1lIdTRPOXQ4RVBZVGNqNTdYSXRUekxGb20yTkQ4?=
	=?utf-8?B?MWV6M1AvRjZ6dVpDWDhHNGYwdWZwQlo1ckdmNS9xQ21lbEl5S1RTbktOWngr?=
	=?utf-8?B?ZHlZbWJOc1pZWDdpU3ZNTE9hYzlLM2kzSUR6Tmh3ZE53OTlTMTQzSFdleVFq?=
	=?utf-8?B?SjUyVFJhRHRrRmc3MzlQcU5CZExiL0tZeU9UWEo3dW5UblIzREJyT2xoNkN0?=
	=?utf-8?B?bGNWTVcxbWJCR2dlSEtpZktXMXhBNHFRUE5pYUVoU1M5SDd0bzVNc1Y1VDZ0?=
	=?utf-8?B?YU92OWhvU3dscXdHRzdnY3dQQVIvM2t0U1pITUhnaVpWYUt0OEtPcVlMMWhC?=
	=?utf-8?B?WnE2UW8vU2R5T0p6dytCRGhoSVRJL0NIV255Ym8zTllFWGxGQWJFRmpwRTBG?=
	=?utf-8?B?VTFKanJ2QmJucWF3Wituek54MUJLWVhqQmpzbmJoaVFxa1R5WlJndnNlNnRK?=
	=?utf-8?B?Ykt4MHBiUjczcERLb053Y3M1YVR4bmRnWnNWdmVWQkpOK2tUVmhMMUJkWUhi?=
	=?utf-8?B?NXZESzhCaVNMS0g2MVRmSEpEQnVLOTlpU3QrWGpaT2FTMXNadDUzaXB4cUJ4?=
	=?utf-8?B?RkFUTjRQTHByUlJqbklJNlBDNHZBRnJKZzFhdERhUktnaU5za1lKZzBKS3RK?=
	=?utf-8?B?cVRUS3Jwc3BpRFVUemsxTHE4OHNnVkZSbVZXdlNtQnZGT05aS05HNzE4Ylhk?=
	=?utf-8?B?NXI1K0wyTFJrOXNnRWl5TEFvWmNENVMyeVZudGQ1S1hTK0h0OS84Sktiejlo?=
	=?utf-8?B?V2pzOVdmQlpRZ1JmZlRKWG10dzJpdDd3MHVSTGZUKzlXcWdSU2Q2QW5ETkRM?=
	=?utf-8?B?aVBHb2VHeUJVVjlNUlIrVG9wbjRDOGR4R2hydFJkdy9aQ3BvSzFja0psUGZk?=
	=?utf-8?B?VnBiUXYyUFZmQkp6cFBnLzZGNVU5ZGM0bkdkRUg1SUVWVGNLbHdBRXFZelhk?=
	=?utf-8?B?dmxmSEl4RmZiMzRaZ1NMcWVQTEozVnFtQURoL004QTBhd2JybU1sR2dPME1J?=
	=?utf-8?B?NnlnbzdHYmJIOFluL0RLMFV3Z09UOEpsS3lRY2FrdVo2c1MvRkY3eUtTbFg5?=
	=?utf-8?B?b01GZ2pkdmsxZDBidnRoWVJLUXhoNTJGUmh6cWJJN25kV3BKUHduOGgxb0tm?=
	=?utf-8?Q?MGuBQy8s+WSTSLalbQ4Tx5A=3D?=
X-Microsoft-Antispam-Message-Info-Original: zFhcNwTtcZt88suc8U5xsSWzdZqyolAXmJjjKJnVUuTW+Y5P1AajbtP9AGLWwuN6RAkltUKqRSeayP9SRIwYJ1e7jqJ9/Cpsy/Zrwj3N8aUNFrUQ5EVUCrhuyPMQ9zjHOVAz23BIESe3dL4FOxMsuEfBuCIthOpP0aK9/JPwd24OVAd9UyuddtnokIfwBXan17vOzmho5QPkb89clC5yWagZnbuJw+ELk1VcVzyZa1p6aY10Ib7w8aLbRkuuHamMR89XsFhlgCWeJ8wkencDsdlofnghuZ95qyRF/N+BSIAdmS18av9k+iQS3gTJRlQ3L1ksdIuRmFaG2wQoUntf+4YfWTk7LxO0/MTBWPkkslQ=
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR02MB4088;
	6:fPznkeLbLjhUDvPDh2URtVNYyerXgo48frkAPZUggMtkcEz39cBgezmQtVx0q3Z6le9Abd3curA8OWkWVbhLe7a/Un+6Rjuqsj5RMAHRMRUg/z7+9eMWqXdMLQo7DTzWy191FkQX0IFhQplF+a/no+mhbySXOX6H8AWbosYfQpkWL7xBJa3nR3VlJq2Lcdx9JBXWmvTQR4xLs9cGD0ZwaeF2NC3a9F8qyXl+umlYRgquFIaGCII2y0fF/tcdBiEl3UWaDrk8CKQAiol+4WJj1kmPCzALmcMsUMXxHBD+nu+pfVSw5Cy4U/aMeL3OAXHNPkzvord6oGG95QLwWtmz49Wpe2rXWe7604g+5ygkJWlW8VjzpSUsQk6p9mXkewo+hYQNmluW1jkV0HlNjJWf0WFMMwi7Ee0WHGnSMM7RCB1RxuQNlM4/s+s56XY7BJr8MrR2lLbzBts6H6kOqK6/yA==;
	5:91/HSQC3FAJd06XnsRdmi9by0UWX8O04XPYkacsZk8Qs9rfiNJQLzzYFQ7KlVjhxaTVSnXO4P3R/q8qtTvNDbIxeSg33AP4emvFOMRiT4LdR5Ur8e5oQ5P4tSr2dhJDgiIMlYdoT8BuvhGnJSxQ+FpHF0pUTu6Nqft0F3B1s1tU=;
	7:mmOrsN1aABr3DfdBtxR38n3UM3nJbxPx8sf3Zvz+EYhk04sc4tuADz3X1hSALk+te+EZcLEZyDu0bLO7LTvH2FXvp3mXH7Vv4XB9uqdOePdf/6/fF5F1sj/7Q55IamzV4JlcmWDKjeyQ3Tl9w3Xz94+NWfXMelliRW6ZF0tAzARSqxDxa9RY2jDeS7saai1Cohva/PNn0QkYHI20mzIqmSSLFl0PdDwitt/LYJsFz5zWevzPJ1ByEs/j45DJ6/V+
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB4088
X-CodeTwo-MessageID: 20181001092120.c88b815c-d1ff-4290-b5a7-03eef10d4733@westeu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR01FT048.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39830400003)(346002)(376002)(136003)(396003)(2980300002)(438002)(199004)(189003)(316002)(16576012)(106466001)(31696002)(246002)(66066001)(65806001)(65956001)(58126008)(110136005)(2616005)(106002)(486006)(25786009)(93886005)(230700001)(47776003)(956004)(117156002)(44832011)(446003)(4326008)(11346002)(50466002)(53546011)(386003)(76176011)(2486003)(36916002)(23676004)(126002)(31686004)(6246003)(67846002)(476003)(42882007)(3846002)(336012)(6116002)(16526019)(186003)(64126003)(77096007)(36756003)(5660300001)(26005)(65826007)(2906002)(34290500001)(305945005)(478600001)(7736002)(7636002)(6666003)(6486002)(229853002)(74482002)(8936002)(14444005)(8676002)(356003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR02MB3778;
	H:westeu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu1-emailsignatures-cloud.codetwo.com; A:1;
	MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; VE1EUR01FT048;
	1:dYAAbiXWWTCt/JkCBu0GhW/GDPWjlgJMpn3we3QhmSVO7tFSGjpZUPWMXEXsS2YbtwSS1/Q41hquTQXBbIC28EOUPKCL0E5vGfScgqQwcno9amSNLmdvtyH4qNLx5E3R
X-MS-Office365-Filtering-Correlation-Id-Prvs: d7a4810f-630f-4e22-678f-08d6277f3f02
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534165)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(710020)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR02MB3778; 
X-Microsoft-Exchange-Diagnostics: 1; AM0PR02MB3778;
	3:0eL7yGR8ZrrTJdiCNZYoRUqzq0jSggE/nindBEOdmABFhrDKbdMQJgAFayfkRMToqkjv2ED9cMuGJjLX9N3ZB3HQn8NtZ2mLTUvSjdQix6uPUU2ssl76Z3B0HFFo2W5HwItOe0klRXXrp4/gUaeAIQmgH9bHgD2CII1iPgaRPhrqfHWFS+z46kHkqDZItEai+98mIN06i8OAxgGxR1BYYxv6gZeRBXDEA27KI+UTxcU3IshBtqvKzWCyfaZL1B1s6OJIBqjz6WsZIh5gi4KeNY1qYbMvA/Ooth4/X5xWWsTrVMMhxMnDDawJIe8Cx7OlbcB7R5rpLPf5Fb8dXI6O2+/wTwTChegmPMUlJs39VKI=;
	25:fseYfFnv8qLy6PpIfGE5GM7dg5hR3/ycgKLc47fBSP7VL9W883kLYJaKojuxV5jSw/t1KluFjCX00vrWDDzi0Ez14NvHzAAVu/5bdW6Q7bjmJ/iD0uDD5lvLuAd1yeZmZM37d3lSa3NtOLX/jK4syYwFT3QMrFGZ2L4OUMCGeBIePdjlP4d6Balal0Md9IsGNP+RabFDa6xPJ06AVWFI9slSgyRJf3PGqn5LMgmC53lTjq0m0wVvzMMyFXoKLlmp8OfYR3PjgatUFvQamZgGFUn4CyAojx6eR4rsi8B7+cPXIoOKPpN+/JhnTKxx6UIUUYXED2M5QHBdW+bdkU74Cg==
X-Microsoft-Exchange-Diagnostics: 1; AM0PR02MB3778;
	31:hzpE0qKaqRPuCUNQ6PcIjeypiTgEVVe8rKjhgEmngd5429nj5Vrap+7Al+HN1KQW1JyxCAX2dqtqKCzCK5GrItF9QpwT4ZdDXH8p/T3VdFkUA16sztSb3waG2MK+YTjO1+t77k/1ZfK0eFzEVJRJf8UAF3nGLn7AnVyvbObpmxMejeKiXAtEt968Qx/YKkv0XfBP/lYmySoONoNdActkEQw0NT2+IytNv2wF1MDukIs=;
	20:hShoi7wzXSBngKcVq6FTBPg/7Qqykl32+zrrgo3UQAq31SxvSrzRIe/9DmZX8PfBIPVX05mCOsZEHHZUVWOUJmPAJs6LRSjAKArteg9ApSAdmBp6zdm9aXE/90KAzhKtDjwEOQAWqIGmJX1NZtlzIRU/XFuF/wJEA3kPlV+5WTM=;
	4:NnQL0zj5w8BzDtpbkmEHitLvez7ZCH7DWe34aeFlcnC1evfmrTynGo8Ve0/t+CeSXkj8EDqMms5UnZB2fa19Qj23hmiVu5fwL3N4A/cxe0YLK02wwc6AfTc0slbYtlnUAYB7LZDP7XAk2ZSzM0YSoKzU94ev4URivq4GJXpG39lMHuo90K/5lV6wlWmGQsaFUQdVhYBvexGYULJQ1xIbEggeSVTL8uB24y+nR0E5MIBfsXSiGIkWUIumtarjOWRFh0pKbJ5Ud9apMdOFqoNbgA==
X-Forefront-PRVS: 0812095267
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTBQUjAyTUIzNzc4OzIzOkplcmJZTW5nR3dLQ2RMOEtIdTdwUExkZS9q?=
	=?utf-8?B?ZmR3eEk5ejE5eFVYSE9iNEF5L3orMHFERTVoSkJMbkkrZEQrRURuVzA3bm9m?=
	=?utf-8?B?QTVJL24wc1JiKzhXcXVBeXF1R3gwQ0ppVUtBdGZHM1dlbzhjU0haK2U3ZVFZ?=
	=?utf-8?B?Nk5Bbk15Vk11Sm95QzBvRXpIVFZEMWxuSzU1c0V0eUtuYlZVb1c1VDhaQmZ6?=
	=?utf-8?B?TzdoK09mSVVhRlhEMUZlS1ZGdGM3cjhPSDc5Z1d1dUpIWis2bHR6cU9ITmNX?=
	=?utf-8?B?bzRMZ09FREpDMU9nMjlzcCt5WUdsekxOOVRCVW0za2ZYOTZWUTNUN1FqeVEw?=
	=?utf-8?B?SW5XZFFkR1ZGNE4zRThoZmZuTHBiUXNkUmZURG9PamFtYVBZL1czUGJzcjIy?=
	=?utf-8?B?Z0VVQmNCcmtTYWVDL3g5RmM3RU5oOHArNlhQNE5XZHRVTzZKQ20yanoxbjU0?=
	=?utf-8?B?M3dndzFWcHpvbzBLaUN2RUo3UERTZWxtc1dhR0JhdmJZSldpOUtZdFAxRnpE?=
	=?utf-8?B?bmNEb2pQaVd1bUlhOER4b240T0hTYUNOZkpyRll1bUttcFBVL3FpUStxNlNZ?=
	=?utf-8?B?V1MvbGx0UGJBeWVobnJNMWx2QTB6N0U4NUdtVkYrVFE2WVFlaGNrMW5YZ2c4?=
	=?utf-8?B?dmpPd0MxRzVOR3NHa0JMQ0tlajBzbHk4Wm9xV3cydXVLZGwzZlAxTFNJVXhE?=
	=?utf-8?B?UEFOeTVNUWN6MTJ2M1Jla2EwZUFRY0dlSk9sSStvR25rRFBQM1h3cnVGSU9T?=
	=?utf-8?B?aFVEaHo1RmlzWmZEZWh4VGxWNmVITjEvMXlGaWg1VVNiMTFGRlczajJZektv?=
	=?utf-8?B?bjh6TnFkWFFrWHhGTFM4NzhrZTVRYWlWMEZSbGJlZ2xzdHlTRkdwUWZuczZj?=
	=?utf-8?B?MkF5Y1BlQksySzQ1cGpISVJWbFlSNklsZjBoSHd6aEJOL1ZFMVJodXhsaGJ2?=
	=?utf-8?B?QURxL0JCWm94NVBhdFNlT2FhU3pwZ0MzaUphVlk3R0NZSldPeHpCUWlYbXpJ?=
	=?utf-8?B?ZXhXVXV2L01TVkJZMkVoNHZkdHdlblZEbmtaL0JRenlZSVBzSU9pd1ZhUXkw?=
	=?utf-8?B?d1ZKcFQ3V3pQSmJLUkliVEtYVVEwSHBHK3BEU0tvMjZLVUVMWjc1R093eWdi?=
	=?utf-8?B?MG43Mm5BVTFhZWJIMFBra21LdjlCNjNXUUh0TkVUZVBMYnpXdWExRmNpNnNY?=
	=?utf-8?B?VWdDdEkvVm43SmhJeU1qUkZRaHNSOU5reDVCWGRDaXUxR3RHVHdVSkdJb1Qr?=
	=?utf-8?B?TWxTN0tpNHYrckt2TmJ6eFg3ZE9Hb3pCY0xsL2RJZlB1UXNzNDBZbHd6aUJv?=
	=?utf-8?B?M01VWTlINjVRMGpNN0FmWldYZEFFMjFkRWtmWG5yTFZmVTNiZkFnbk5GeGJs?=
	=?utf-8?B?M1dKSE9rVzFvU0FEdlZzUDNEcmRjVmhDbGlQZ1hRTFhEeVlXVVJjVVhraEk5?=
	=?utf-8?B?N2l6L1hQZXRTZzc5djZuaHRaL1dDRDd5K01wK2FyaEZDWktDSVora2dzZE9E?=
	=?utf-8?B?M1NuYTFFcW1ldkNUSXhMTXJFNnpPNlFTNWtLdGpEZEgwamlURXBlWWk1U0xV?=
	=?utf-8?B?bVlmRlVQRHQwWmYwb3dKcVkzK21DMzVwMzZYYVY5RzVuZTlVa2lCbUQvbnp3?=
	=?utf-8?B?VnVadnc1YnRFY1QvVGUwMG9TUDNpUUJHQUZ4YjNCZHZoa0FrSnJjM0tQTlVO?=
	=?utf-8?B?Vzg5aGh4ek0xRlFwcXlWbHR6bnNPUU1UZUhkNHBORnh4WlVrVzZQa0x2Sm5k?=
	=?utf-8?B?cmlINjU0UUlleHdIQ2RkOThNNG9oQ3VSN0h3TGozWTYyN1FlTGowODlWZUZS?=
	=?utf-8?B?OTNUbmg3Y0JRcWdkZzBNdXp0T2VKMlJaWGg0YmNBSkw1SXdVZXVTQzNpekdT?=
	=?utf-8?B?NGg2c1dKNWpqM1dvSDJxVXRYTStHTDdOemRzeGFiMDM4Qk10bE1hTGJhdWNz?=
	=?utf-8?B?bjM2ZzJIOWR3bkw0UzNSSGd3bXZWOUt5VUhiWkJEL1hNaU5OL3RWVXBHc25X?=
	=?utf-8?B?bHAvdDZBUHRUUDZ3aUV5Z1IzSmtHNTRMbXlndkZ0S1pEZCtUZ2h1K01IRENs?=
	=?utf-8?Q?88AA=3D?=
X-Microsoft-Antispam-Message-Info: XMzgIZi6lO84LxG9AhdIDUAuFwhL1ZkGNUHVdK2j/QjE2OJhenaZ5ug17FrSMLIyFdlLMA7FoEC3YVsTjT/dapYBdOPUIuxOBFWqRiF4s0zhdph/SB5A2m92N4z4zK+zjfV96dM0By1+/fvqUIiOq0IEkh1hUN0nRbDvkJmULIFQ5AchV+0P2B1FIJ326qCnd7KbSs9212BkmGCM44t40fGSyIh8/thHAn+L3vg//z+AuHl3E6ijSC4/DpA8f2zi8L9n3lh0AV5im8ED8ykHpOidzB9enYhoQnhe0ES1KT9ingRVD2RvtqXYhGVnHXCcC7JY3AzZDwQg3kJa19fEOMCFIApLYueryfGZQuMTqzQ=
X-Microsoft-Exchange-Diagnostics: 1; AM0PR02MB3778;
	6:2EuylNluJmRD0CLwQoezzq49ydrof0o6mcLrhBiNnjatpm8phGq48BBiEl8qTI1ExhzvvatXm/L8gpcPbi7ZjCO/dSZl119ydV74tO59BiOJEDMR5f2H6P/f/P83OR0KDHeg9H+xdcWZayfWeYZoexUX0oaUnr/B+JE2473mJ0k5MW7e+sITzmZl+PXDdG9XRcqwBmWygo+hXap7TcXYPu8gMzHW4G5LAKeX/vq0EcTB8sCaptttlTMP9rDRiu1hKQtwdHE5AMB/WnonZiudgJTRQhFxUSYxp/xtIVdFcOMLB4FuZu0cXWvmGe8MSJ6orHXqxbhzH+EimipRn8hruSsn0VtmLDceHgUJE+KahaI731KmcdFC3E+Yhcm4s3UbRszI1CmY+sMyIjGX8OO7jNk5c8AF16gVDRZjKyivsD4v/hOajjaMaNqkAw6Qmv89QPDRTsEsUzw4OfX6GQXy+g==;
	5:XOnLQOQTR9uL8CN3yZdBE3+KL4Ynade9zEgH99lxlbPShO/GSxumueiIxYcYgFC6/XV4Qsm9flyZnqMo0yl+GTphRNHhpU6zBHWPFnbpDMN0VmC6v3EWiQ4bHPJYrmGaXuLsUzvJIDcme1QCMb2h66+0mdfAIIUvR3Y/wC9y1BA=;
	7:RXO8dTBGLy3NNZeTBUTna/NcjCH0yfiId6wgKJrUs3gVNBDyBD9ig0njbPJ/3IrLqYjWKP/cTCR9p7LgFMKUqWnVWVUR0ESwQkGXEKKJDeqMKX1Cb8ny337MlEUEIcP/HU3l4duvgfCx30p+psmZV0QTd9Nj0/AP4xu2ay2D51F4NzYL45qzxUZy6iMyOFv5RRQHQD3NdzouxwCovvjB8UgdzCk89hJfptwOM/vQc78laswENfRFOOE9unNQvJ3N
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2018 09:21:23.0925 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e15841f0-a440-4a51-5c10-08d6277f41b5
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB3778
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Tue, 02 Oct 2018 02:58:28 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: 7bit

On 24-09-18 23:01, Paul Eggleton wrote:
> On Monday, 24 September 2018 3:02:28 PM NZST Hussin, Mohamad Noor Alim wrote:
...
>>> Otherwise I agree with Mike's reply, we should avoid writing to the storage device as part of the test.
>>
>> It is mean that just do test like mount and unmount only? To read something in storage device we need to write at first place?
> 
> That's true - but you can still do a read test if you make it a precondition of the test
> that you write some known file to the storage device before running the test
> (as part of setup, just as you need to set up the board/device before
> running any tests - you just need to ensure this gets documented somewhere).

You're not testing the USB device, you're testing the USB stack. To do that, 
just reading some data from "/dev/sda" is sufficient. You don't even need to 
mount it. If this works, the stack is okay. If there are transfer errors or 
problems, the USB stack will tell you about it.

