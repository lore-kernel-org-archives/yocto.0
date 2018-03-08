Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D76F1E00EDA; Thu,  8 Mar 2018 14:25:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.44.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5093 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 14:25:52 PST
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE7DE00DC2
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 14:25:52 -0800 (PST)
Received: from G4W9119.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.210.20.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id A4C56B0;
	Thu,  8 Mar 2018 22:25:51 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (2002:10d8:a104::10d8:a104) by
	G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 8 Mar 2018 22:25:51 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.241.52.13) by
	G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 8 Mar 2018 22:25:51 +0000
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=marcelo.magallon@hpe.com; 
Received: from localhost (181.194.90.116) by
	AT5PR8401MB0321.NAMPRD84.PROD.OUTLOOK.COM (2a01:111:e400:741d::7) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.567.12;
	Thu, 8 Mar 2018 22:25:49 +0000
Date: Thu, 8 Mar 2018 16:25:44 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: <robert_joslyn@selinc.com>
Message-ID: <20180308222544.y6ge3eunv6xan6z5@nyx.americas.hpqcorp.net>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
	<OF7B9AFEBD.04DA35BC-ON8825824A.0074D3B0-8825824A.00762561@selinc.com>
MIME-Version: 1.0
In-Reply-To: <OF7B9AFEBD.04DA35BC-ON8825824A.0074D3B0-8825824A.00762561@selinc.com>
User-Agent: NeoMutt/20171215
X-Originating-IP: [181.194.90.116]
X-ClientProxiedBy: BN6PR1401CA0010.namprd14.prod.outlook.com
	(2603:10b6:405:4b::20) To AT5PR8401MB0321.NAMPRD84.PROD.OUTLOOK.COM
	(2a01:111:e400:741d::7)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e27d0728-ef90-435c-5c0d-08d585438b9f
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989060)(48565401081)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(2017052603328)(7153060)(7193020);
	SRVR:AT5PR8401MB0321; 
X-Microsoft-Exchange-Diagnostics: 1; AT5PR8401MB0321;
	3:cUyP/nigQ9AdIF1bwXErgvTEk/a2H/QF2ATfwRv7CZ0GA+mi/6UmSxrGGZkKJyOTvnEyfO4DoiLOxmqJpNSXIm+qO2Vw9xPwn7nhMwZ6pMtn2933dG69KMBvuNLBa9TvbcWEgvuqdRMgKDDIa4kkU3qdE01Wn7xQe1bNvp9+uUBN/NtfhHd93+raWVJe03tWBNNhZvxJ+NOvcwOw+Ww+pfWdW4GpScKsYJcGYNdaSiOcIzXv8doUsafkR9aXv7my;
	25:695kLd4FF1kZalfLN3jYjMvEVCrz/QSNoIVByEDiVRz2vHqpuI1Zi+uJF0OGy4VnLADbFRN2c2J0ePkQIUWQVCVQlpuz88B3coLa0u9Z6v08/FV7kMTl3pGEN2Jga6vsdP127Rmf22SPJzXDyZ2Ddlzapp5z9I4auAvdu4D5i+bYtMp/fZBpP4TS1SexYNuX7/0/urlPYujQj4cidZV/tsE6BnxJMYTg33LKT/HbGC1PXe9kuGypXW2VR6G4D4LyxIEXRo3fGdzptlz0Zco3hwNYrKGoU7jk2YaVPcEiuRJuzj9G9ZzhJgfL/5gwDDARRUxbUwf2WxriYvZGAfUyGA==;
	31:WJfB7tHC/7xOlLXXRfPFGlBuQPoONic6lbz2IVaGGe3XS7D/KJo9MYEtmBBXYLMKouR3TweGhFbcdGLH6RMF1pM1Kx76BwUOr6E7lr25lGf++eVuY3ohejWnkdgwqBREs36WfdW8YbdGVK6c/7oTMjyhotd7vfV0aHCehhwvzNnbqAAc1EH7Sodmh0lMDprq0s15elnISHl8DRJQbhvOMQzh1ntvKOFa49HW44YLWXc=
X-MS-TrafficTypeDiagnostic: AT5PR8401MB0321:
X-Microsoft-Exchange-Diagnostics: 1; AT5PR8401MB0321;
	20:NAcnULpIQl1vh0RZOyGm4/7Wnmycp4/OoW1u9Gqep8v+oRF/3ab9usGyNZDKYlodiGC1mfZLEfDnKZ5gM0mIFmYjwDTJwI8NAJG7lwrnW3u0Rm0dxvL925x1IgGK/yYoGprS6ZQnseBqRAnLuQoHRxXDafcuDe7pzZY4AvLSo9M8JB91zjc9RlgC81SJ6CfNv0RVYPfI5qOFHSyuvJq1VLG9+6MGE2C1J9h2/wDOyjziaAdGIQDvWiL6h9/UbeBTp6376Kpnc71RbyJlWgMk2cuE4nsiuA9ko5YxfFOngVknfi50l8ZnN66pfOEEokjWvubW3Dg+6LpfR1ItHjqvM5RJ3HCLkAxPShnsQ11xKIofDytILlsdm+8mTk1/ItapgfyglyiYuZCmEKoDdK/zp52kJzzLwk76ydTXkqg1sIZ6vojNRcU2ksmpAxlQ242acWSm2EmV3/hBKiVYPgQFQXO/Vj8Fk9TwtwVzBk/oRAh+4l8p2pQJVeCpaWGTA8OP;
	4:2uJEwsepaGpPVaqzp4NBGQbMYaDebBFew0mSBwpg8OjyNu12aoaGZzJ3fTtRvVGGvXRI91yxExN98TW7kQx3UlHPt4tUj0XlTj0/em2S4UEPGNikFm+DAX+UZ/GEuWw3492LHDYbv6X9VUVohTjrD1y+pcR+sfVkFVbm89FgDbPX3kAF9RVLJYVcJT+2Xk+TGO9s/chhmZk2DZPa3xowcpoxg1NXqdpoE5UrTeCsLcmE8wQqRwm10EMQMfXKgffqu0gk0NzqBOjrt5rz6BvI/A==
X-Microsoft-Antispam-PRVS: <AT5PR8401MB03217926EC1DA9DE7E80F7D696DF0@AT5PR8401MB0321.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231220)(944501244)(52105095)(93006095)(93001095)(6055026)(6041288)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:AT5PR8401MB0321; BCL:0; PCL:0; RULEID:;
	SRVR:AT5PR8401MB0321; 
X-Forefront-PRVS: 060503E79B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6069001)(366004)(376002)(396003)(346002)(39380400002)(39860400002)(199004)(189003)(5660300001)(106356001)(93886005)(25786009)(305945005)(7736002)(186003)(316002)(16526019)(16586007)(50466002)(6496006)(76176011)(67846002)(58126008)(52116002)(86362001)(6246003)(76506005)(33896004)(26005)(6486002)(386003)(81166006)(478600001)(81156014)(6916009)(66066001)(23726003)(1076002)(53936002)(8676002)(97736004)(9686003)(47776003)(2351001)(2361001)(6666003)(2950100002)(68736007)(6116002)(3846002)(2906002)(229853002)(8936002)(105586002)(4326008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AT5PR8401MB0321; H:localhost;
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AT5PR8401MB0321;
	23:pJmEXg0wQNbAHnmp29TlSj105HnrI6+A0eLnVgs?=
	=?us-ascii?Q?0OQkqVKFoUxSZghDChyEEm5EbqjCrAfE48kK8I+yPERYibka1l/GHZjgQP/O?=
	=?us-ascii?Q?oBO0SKXRh0tVupJGGDb9zX/cimW85IuRshamoZxJhmnR0RvqvlDBi0GUC7Fx?=
	=?us-ascii?Q?Au0uz00mEY3Z09gN6WCT4xQSf3F94CDBJ4GhaqymjPgMRjEhfZMgqDxPp9pT?=
	=?us-ascii?Q?3hrr8xouaWzWifzxZA+qbqvEO8jBiQDSjugSB97qzPrf6lYs+XZGaWnUJcdf?=
	=?us-ascii?Q?4Y5sLtdsbfxvQHG5Kvc9uFA4oKFnYDtgXYuUB04nJREZOjR+x+1Jdq+OKG1x?=
	=?us-ascii?Q?4S0vS77V+xB1hSPjubSxJjPak4teia31HKT5++Se+X3ziJeLgPMmOzuESMQ6?=
	=?us-ascii?Q?a9SmM68lAf8jkBJETQxlZQr9B9taWRLV8F+18GyJ2MndcmwFs9C9feQEwMTI?=
	=?us-ascii?Q?eAxOKOjEjCLqwbpqAgH4GNz50t4J34ytYXevkDivrrLFYUoMHQPSFGnb1Bmp?=
	=?us-ascii?Q?sbkaV8skl89a5R5fOq1hs8r59VKppfzGO7ag/5RCRFa46ZsUVZkXX2fe3mrk?=
	=?us-ascii?Q?W4alfWFs+h935f5L3oNbBsfck+8TnY5Gkw6lEAup0cK2Dx+DvXkAhWPRXuB2?=
	=?us-ascii?Q?KdCRsDa0ZpbJxq0VXjUY9Ng+ycXXmW25qrY43Jwo/UK7P/MNWNWXt2lpjRFu?=
	=?us-ascii?Q?n1OZkfeKDkguapTsNbw4XqWbRxkDcel/919J/Hkqz2VhxJA2exjUY3kT/zd8?=
	=?us-ascii?Q?eL/C5TLwBHNHB+W+sJ+HJA2aJ+/BRH3NDl/ALzR3ptqIqAAjph6N9AmWZRi5?=
	=?us-ascii?Q?fKH1UplvG+ijrK5Xei2rdfaPUe5L0n6fIS5GDIX1YqgV3hvHdqDEtf93hwLX?=
	=?us-ascii?Q?KLr4Y+6a3NgPmhvIWCDNYM9qxopvKSFLZluaNB8boHPfWhTcGbxfUFVKFYvS?=
	=?us-ascii?Q?rO58g+7uhnuqKqsoTa0O0FIJ6yACRtNiq7aViKB7AHWL4NYJCHjOiX/NeH27?=
	=?us-ascii?Q?m0c3chKT6J8fCW2tFWDRD4VJHToCru1jyhn26614J+tYo61ARxA2TWmuGcZr?=
	=?us-ascii?Q?y34XjrpKTQIMRGDFXD+GuOfKyRGURoxMjQQWekceFFlpA1H54BSHbZkCdIKE?=
	=?us-ascii?Q?ENHqIni/pXPrXbhPSzMt8V/f1xajZgHhvkdEbzI2XiaOYXYN5LB/uWVg9EG/?=
	=?us-ascii?Q?PaDGAgpZHyO36+cvPDDO3V/sxGu1qG09yRte464rPAK8073Jm36RPjzoayqv?=
	=?us-ascii?Q?IiYYaRugPMz7+IEm9Ji4=3D?=
X-Microsoft-Antispam-Message-Info: hXhzXEArb8IISUKnMYlzNHXCXTiEdEqSR0zFiFqQkaEX9Bgg37BnE/qSQsjnjDLTquC93ITlG9JplpEZ4mbh99GWD87NxKritqEDrlLUZ2CCOpuTGc4udhc6FOA6wKlqcbGeDHKvuaFab9gJ8bS8+/iI9H+6etZTyWrq3RldVMvOXdThoEcVlIXvOXpd59ON
X-Microsoft-Exchange-Diagnostics: 1; AT5PR8401MB0321;
	6:CGwW7kQamdHVklmrbLWDZSXKdjCX5KhMsmvpK5J+9+eHu82UdwRC2omHADMzvtv9g9LlFrHFPJfNwK30gFiwvcAOPeiWgvU4qnHJRCEyECLZe769uJJJwwmflFzQL/EREDxGLrKt8Ben1BsIk/JmDBxU/hS7gjbQ8L9XcXJ2QP4vINMkjbfOgWQu/7cwGUTEuaEtv+60FPv/OmcTs0KmgCVoLPfjfsHvBzW/IeU+/n845TzJLwYweH4c6X3bebjPnI2MC7bTT58Y4iqQXJS/ZIe5g/Uu45Og6zaCV8wNiECXc6s1S8DCI1Gnz9LG8rQtvbk4vn9W2Wnl2ga6HKBv8Q/n9NVyvtmByfTkHmmw3WE=;
	5:X867EraR7lbpb7+W5n6WdOEWG9IKs4B1/7+X0p1d03NNy4VeIZRuEgj2MFxPYYEi+GluDiCOPDAY4dJHllY5pwmqOlBfVuMJZnpK0Fc/xAgIIg9AOBeCZvhdetwZlpcEGEiSMb0Wrh0yBjbwPRtPNUpithVx4gRlHfZGlcOjjsM=;
	24:ZVCxrVQyAy+QRD+ONiaxpiOCb6T1VCBSgYnPl1B+CI4e518fDEk8zDo8xRupM2tsXGcyuhmU85ItrgD1fxiY3D+yb5LLwAEweVv/pbL4KVk=;
	7:QOuCOvcrCyc4SFfaDEERC5Qw/1btIwVxXa6Xt5N4S+BGBpBJwVKps1SpSobmqFsELFB+Tkjw5hfy+LV/d9BO3N8PKlnqEDZYC+vpcDKk+W0Q714vVBjvdAA9NUp4/5cqEuotKna2xSNur2KULZgjreJ+gvxqIMucRCKmEoUi/1YzxBdvtKzs1bFPNJCmurc0vwUavN0IxgaF/7yRfdfFz9FKHDkZBKCeT1vFE7uBfoGqneXJE79MgRmfbxLdOgEh
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2018 22:25:49.2171 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e27d0728-ef90-435c-5c0d-08d585438b9f
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AT5PR8401MB0321
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Thu, 08 Mar 2018 22:25:53 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On Thu, Mar 08, 2018 at 01:30:28PM -0800, robert_joslyn@selinc.com wrote:

>In the case of btrfs-tools, it was simply that it needed libgcc_s.so.1 at
>runtime on the target, which my patch fixed. For me, the image I was
>building normally worked fine because some other package would pull in
>libgcc, but when testing on a minimal image, I would get that error. I'm
>not sure about your specific case. If you do have libgcc on the target, an
>application that needs it doesn't really care what package pulled it into
>the image, all that matters is that it's installed.

Ah, that makes sense in your case. Thanks for clarifying!

Marcelo

