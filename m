Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44B5E00D20; Wed, 30 Jan 2019 22:50:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.69.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 39671 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Jan 2019 22:49:56 PST
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr690052.outbound.protection.outlook.com [40.107.69.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97522E00D17
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 22:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=MmMyMTWFVX2z0e4IXvnRBiZTNX/yS1ZRx2H2Xk9iTjU=;
	b=uc/ROIH4/G9vkTuqKLL1ys4V8lRvngSFLbZvvzNxF2ep1/i78K++DHT0RamMwKTQ2hdYc9OW9R9939BvjrpZLV3Ez3KSir4mP0LGSdzJi8yaNvGPFsKWNxb9miccCqk+UiUwfSOC7r/ZdLQODym9fUsrJqeRYgV3VM7zosy+E+M=
Received: from BN6PR02CA0045.namprd02.prod.outlook.com (2603:10b6:404:5f::31)
	by DM6PR02MB4633.namprd02.prod.outlook.com (2603:10b6:5:21::26) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1580.16;
	Wed, 30 Jan 2019 17:15:30 +0000
Received: from TO1CAN01FT006.eop-CAN01.prod.protection.outlook.com
	(2a01:111:f400:7e5d::209) by BN6PR02CA0045.outlook.office365.com
	(2603:10b6:404:5f::31) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1558.16 via
	Frontend Transport; Wed, 30 Jan 2019 17:15:30 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	TO1CAN01FT006.mail.protection.outlook.com (10.152.122.103) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
	15.20.1580.10 via Frontend Transport; Wed, 30 Jan 2019 17:15:29 +0000
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Wed, 30 Jan 2019 09:15:29 -0800
Message-ID: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 30 Jan 2019 09:15:28 -0800
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(136003)(39860400002)(346002)(396003)(376002)(2980300002)(199004)(189003)(26005)(336012)(23676004)(8676002)(8936002)(47776003)(50226002)(478600001)(77096007)(7636002)(305945005)(50466002)(36756003)(246002)(4744005)(5820100001)(230700001)(476003)(86362001)(14444005)(104016004)(316002)(106466001)(106002)(2616005)(15974865002)(486006)(6916009)(126002)(7116003)(2906002)(118296001)(186003)(356004)(99106002)(5001870100001)(18886075002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4633;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; LANG:en;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; A:1;
	MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; TO1CAN01FT006;
	1:+TrIFLdXO7ohNkeQui5pzCDqINim1DTy6LjoNRJmAeQ+VNjzY0m/pZx9C9PeVKauv67jLV3qthOZTf7zFa9QPP2J7RPVKsDHAfugX6Pz+K8/tMuaM6zHePLW3cWxxGnAo7Mxb0xQkW+/fmjUbJH64p91BiaC19ajn39p+CfeVK8=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a581b7ab-72ba-490b-802c-08d686d68938
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(4608076)(4709027)(2017052603328)(7153060);
	SRVR:DM6PR02MB4633; 
X-Microsoft-Exchange-Diagnostics: 1; DM6PR02MB4633;
	3:KG3QwKj/kx1QIzPgK2ZqNBYtMwOfY1gwzgVF6AnArwNUqNwEyG/6F4+rR4N6qoIApn3Hx5jN/9ZZwnfbubaU0BxOLrk7j8B5d+Kfec8wiULumDK2/ODr4Tdh7VBjMC/9kdUWW02BdEeKdEZ4cEuE0cc1m6kVt6BQcNNGqGjqeZzG+A6rrREo2ZyPj1JTxap6xf3xR+OMqb+LBNdeoGb/Can11HJ3nI1SVUST8hCTjttqgok7pzK2W1PuGChKf2vaC+rxRNPEr09Floq7LFQW6rglwXyKt/+e0oLQ5shwHfsdozmS05VWJoWSn0vzkBfqPyZcVTMtUQiH/yn+baK4WdI6cYx5nMt2DaKdCQvoV+k+JPOG2BUwz0MTQthJ55Af;
	25:XSxLQ8aOra/xtwB42NjLYPZJpbvWReTxBr4NE1IjcioeSPtVSdMEkbC0xZiYNupv2B1jrI/h2orLhVsYDumE1ac4BeLA7YZZAXss0Yi9A7dLC2KpHG6kJBZVTsd91GL+f6LyWaBbbQvJ+OndykdYYQbhyEaBa5zOIQe2PK1K2B+mJ8rcRNZjjdSTryPwkaRr+KZlXwpWgEldPPdrBQ6FzaZdiPhvEJPNIgJmZ7Nq9yjinktMo3MxUYwDwYe4gQFf4Ic7KA5gLkDj2EKpimalad4sR2EQGeQ+dMGKcEiwPqPbAzhaT7In75EwbWg4R9ttb62e9J2rDhygBBFfj0Qe3w==
X-MS-TrafficTypeDiagnostic: DM6PR02MB4633:
X-Microsoft-Exchange-Diagnostics: 1; DM6PR02MB4633;
	31:t/xRfshbRlyiZd+sQ2uR4NSAa52z1X+6wfXRbnC1O1ialROHTzseauLNaFA3hMFYyxBiV8fezx7gAy8J1oLwqzUjLNZ3+YAj1TbS9udhSFLfDIxF0iloXQqaluyXbtfDmIhZnDbTXzOcGrm0NcnLb6MvfSkBuu39Eeteg4TFLSBWwiAJzfqkp5qm1l8MlNVqo+OARf/S9y8JMq9KBvfN8pClWYqAyw0il+Pwxhv59JE=;
	20:W22hBes0nTH0yNecouGBPb4YquP+57qNFkBJs32dlBeOVdXAE5V7WPx4wkDw5LJvaa00+2uAf8QH0TxaZcWtm1L3tDkkyJQbff2hLUKgU9CKg93OXSJIVgRzze7hRoUKDuNAjvKbHG7uvi6skR0De0uWcUnOZl+vE32+RTTnUuJRjlJ58UdpYFiRfjCzrvfeG/qpKR026Y3T/uwk1hS98LT9B3mJFL5oKt9Q4+4Md/GccXXOkLg9DdVa/V0eeNfuJwHAb1eJBbrjRoakcLOmk/b2NW8yOOlNrNux1uNrmOnWeF0sZpCcAhxzmwKM9CdKlJYfLRHJ5shbJyXTego73adPrtyrRTiAM1N0hEqzYUClLqGooslKheqMxewAoQNDgCwoMVQBIt311Evu8P2pTjbXXsf49vgyscsiGaOyhYvMf5vZNE1+ShzKczdTk8FcAEX8qBiP93SvPKhZLnV0H7Il9f9BoqWZwdmwvZGBVacijoLFl+/wzVbjHT1Fh/+y
X-Microsoft-Antispam-PRVS: <DM6PR02MB463308779807A98CA41394D5B2900@DM6PR02MB4633.namprd02.prod.outlook.com>
X-Microsoft-Exchange-Diagnostics: 1; DM6PR02MB4633;
	4:KfF749UIc4GHKGYAIlIyRu4J993jlr4HfzyiE4Jb09wQBs8JS31hZjduFJfCGNbQFALczdNE3nuWgikAbzLuJeWFYyohQ/b73aptf+/MurW+wzJplV6Gn2BR790pTnNt/YHCH4FUVilmco/0Du6qxGSF4s9/DEN6pLtWPFuD62yC2VSbb+inP6PPrG5+uBikdis5dXmWyfqQTwkSX7qaj25IqfLAxQ4qpI9sIC8Sa55LK+XKNPz8IKfcPy/X7EWIhB2Ye3fwAh+BZjE03khG+w0cxAEZThDp5IPzKmw/vscZcXnq0zzcVoKjJzAxBZVS
X-Forefront-PRVS: 0933E9FD8D
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTZQUjAyTUI0NjMzOzIzOk1pUUxTTnF0M1l1MjRpbUFuYU5pY0JhOVRE?=
	=?utf-8?B?RGdaeGxtUE91NjZZOGFvNzVSUmpKd3JtVWdxSFgycHI1Vk9zblErOEE3QlJK?=
	=?utf-8?B?UGNOWm9ZRVkwMERYNW9tY1dQamFENWltazljcitTL3NBUnY1YXdUQytUTzFB?=
	=?utf-8?B?bHFHT3EvVjl3QVc1TWlCbVhQM1dkTllFNDRTUU5TZm9Rc0tvYjZoVjgvV1VC?=
	=?utf-8?B?RHhJQ0RzcSt5cVk0RExnU3R4WGVGSXVsMDh5V1FaTHpSdUJWb3JlbmVFZDZa?=
	=?utf-8?B?bW9kd2FJV3Frc3J2R2dBMEtlRk1BKy9CYnlvZDlxa3BZVkRuYVF1S2NoWWlH?=
	=?utf-8?B?Q255dVppbHhjRGJyelZwOVZnZ0FFc3hOUGt5UXdDbExoWVJFelBvd21KeG15?=
	=?utf-8?B?WVFKRVc1MVZyNHRIMHlGNzNEbUZSUjAzcElIMktYZVFKdFFlZ0hYQThvcE9a?=
	=?utf-8?B?Q1U2dnhlbFVuelJ3c3ZCcDVySHQwK3VmUS9FVVZzWjdKblNBOGhwdjFwM2wy?=
	=?utf-8?B?RGpQWE9OV0tYa0tTMkJuc0g2Q1V6UWxlZGJqQ3FNdHlJMFJBTWY3YzJpK3Ar?=
	=?utf-8?B?ZzY3OXAxcHRma1pzV2VoNVNhdDQrOC9jQmNqUTFmU3ZpMCtDS1U4V1hLQ2xH?=
	=?utf-8?B?SmhSSGNUb0U0WlliWklDTjl5VUlpUXY3WGg3Wmk0UWplajl2L3RHSDdzUU04?=
	=?utf-8?B?THI2bnpXZi9sbGNPWGdzTUZLKzB0TmNBMjRHbzNDWVBYR2czZE8vbVFpYTRt?=
	=?utf-8?B?N2NoSk5mcFlDU2ZWN3M3MVFVcElHUjNvRVVKaExMS1ByNnFnNE9rdXR1ZXZ5?=
	=?utf-8?B?SUViMjM2OWwzYkdIandGRXZqRWt5N0V4L0M1azVRS1FiTjk0Q2plSnFGMXI3?=
	=?utf-8?B?NWNibXhLbmJzR2pqK0dPeEcydjhZTDF3bnFWbm9yZFhBUUVYdzdib2xjT0Fw?=
	=?utf-8?B?K2c3MTU2eDZvWW4xSlBlV3l5Nnl3SHFXTVRJZ2dVMGFoSm5ocnJWSTk5eDUx?=
	=?utf-8?B?ZThkV3FOSHllQjhKczROUjBLd0p4cjlkMzAxeFV1a1F5NEdiOTNweTZyNzJO?=
	=?utf-8?B?em9rNWVXUk5HYmdYR0MrWUZlSWM5emdCT3VvRVhnNUJCUkZwTG54LzcrdjhD?=
	=?utf-8?B?UkJ4N1JjNHN6ZkdzVWIyOGxJalVPQ2FwQVF6OVFlZjA0bkVyOG56UUVwbmM4?=
	=?utf-8?B?akFCcjRSVXhXMmsvcGZWcnh6bVdyeGRHbThYNnJxQS84Q1NUOWZlQnRBSlh5?=
	=?utf-8?B?ajl1UTdCdUVmSnhnOVdkelZpZnVFVFJrVldCOWJiVmdwcXdrVyt1akpGQm0r?=
	=?utf-8?B?L3l0TTV4UGk3Wmlsc1lGZjFPSE1FRDhGY3dhMDZRM3NuT042V1h0cXdQWUV5?=
	=?utf-8?B?eEMzWlRDRXhxZUk4VkdiVGpaZ3h6SStNWXUzL2JnPT0=?=
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: TAAsJf7O1zjiSUjetCZEeI26/p867W25IldfYVYvwF0ENqba84WCY/QzZ4UoZy6fwD2rFx1ue9uXSYR51QuPLN+MOTM9fXpyLfKJ1j/cXyvQFEYyXQwqYEhanKv84zjoa+bWL0sn0XQouMgeEAVLNyh6qr+SUuQZfYlodM/jafPQP+CtC112cvgaJZ2jLFkkx8YUM9c7zv/Tb53dCYmTcHWcoG4cT01Pupg5xouMi/vU69XIjl4D5MD+L2tMZcVVZmjbE/rN7iJ0Ft+TTWeEX9VDGb8KMPCiyoY5Hnu08mrGYs5EnGtU0lZFRQiwaiVlgqscHHHQpjkwFr4mFioCmxWunNiBd0Q2l35iuKZK+f46BcQ0Ll02C9DH0ffdTTLLkK4hMuVBiXrhyoLj2dekfhWRwCetbD6C8CdHdIaks7Q=
X-Microsoft-Exchange-Diagnostics: 1; DM6PR02MB4633;
	6:Cy8/7YFW89LfbT1Wc55BwCSxKG29UkIBJZ9knxfDQ7LH3nRLPGIe8W/wloNIIhqrYG/oBBf1oA8nnz2zmnxtuDkdNPF+CZ/uENrEZYTfnr2J1b7bJ8HImkQcO1IXCFV1Td4WH3yOoSnw5vhsP6fKkAmKiWRdrCYf/6Ivk49KPZ3TXrGPi9/D9dswDdDBvBwHLQw2+vywexeEO+GSutSzUigPxuMNijONrfBNyySpu2905+mccKGzUwZmDMpHG/T4wxOCtJA1w9t03ecXoTeEKtzBpzAqiOI8oAAQeey47Eee/TOm0zgr9b+9kww3p+p0Okg8pm3K2OXrkvjptFTKHZzuaA2ESrr4kFPsC4B+ZStPoFWkXsmtiBABiAkB3tofAo+3+ELiGuyJJv+HexPjorw+/ITAHP2sPL9cypLj6k9ss+hX0D1OBzQxQhZ+DTg3nbyuX34W+RceXVHP+tz1qA==;
	5:JStLUmaKNhydGjFUcJ2NIxu+NI1EN4Rb6/E1vwp7SgXxWgeSFrQV+H3cYYnmzhQu9UVc4EhPlbIqnH0n5TNocJnmr4U3eGreSgNNHjMlQU+RGgYwcQF8XfpqPF1fG+ZK94NJeNzuJNRuftEnu7R40faul54yyDyYcOd8ms5oO5sMnzOe3kcP6nmn36oqCAuTEmWk2WZcn7JlTvZUsHuNMQ==;
	7:NlikqI42BdMxVwvBbfVdIz5oaA2SoLi5v6R12KLK0q5hY/Z3kgsvPTeS1TvPGhWwy4QJe3gxhyH0w7/CMpLi1Kh50MMpqGQOzb23KCB334F0jp4n26h6U9n8uNwQQZH3ewGuLJkuJTr1Fpd6758lAQ==
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2019 17:15:29.9475 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a581b7ab-72ba-490b-802c-08d686d68938
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4633
Subject: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 06:50:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

Can someone knowledgeable with the inner workings of the build system
please confirm...

IF package B has RDEPENDS on package A

THEN during do_rootfs task, package A will always be installed into
rootfs first AND the post-inst scripts of package A will always be run
prior to those for package B.

Also, if that can be confirmed for 'daisy' branch, that would really be
helpful.  If not, then please mention as far back the branch that you
know for sure.  Thanks!



-- 


Regards,
 
Darcy
 
Darcy Watkins ::  Senior Staff Engineer, Firmware
 
SIERRA
WIRELESS
Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
1 604 231 1100
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[P1]

dwatkins@sierrawireless.com :: www.sierrawireless.com




