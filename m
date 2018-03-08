Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02B3E00DF3; Thu,  8 Mar 2018 13:06:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 344 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 13:06:44 PST
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABB6AE00DC2
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 13:06:44 -0800 (PST)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 151406099A
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 21:01:00 +0000 (UTC)
Received: from G4W9120.americas.hpqcorp.net (g4w9120.houston.hp.com
	[16.210.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id DF68CD2;
	Thu,  8 Mar 2018 21:00:58 +0000 (UTC)
Received: from G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) by
	G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 8 Mar 2018 21:00:35 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.241.52.13) by
	G4W9122.americas.hpqcorp.net (16.210.21.17) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 8 Mar 2018 21:00:35 +0000
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=marcelo.magallon@hpe.com; 
Received: from localhost (181.194.90.116) by
	TU4PR8401MB0333.NAMPRD84.PROD.OUTLOOK.COM (2a01:111:e400:7709::7) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.548.13;
	Thu, 8 Mar 2018 21:00:33 +0000
Date: Thu, 8 Mar 2018 15:00:28 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: <robert_joslyn@selinc.com>
Message-ID: <20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
MIME-Version: 1.0
In-Reply-To: <OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
User-Agent: NeoMutt/20171215
X-Originating-IP: [181.194.90.116]
X-ClientProxiedBy: BN4PR12CA0002.namprd12.prod.outlook.com
	(2603:10b6:403:2::12) To TU4PR8401MB0333.NAMPRD84.PROD.OUTLOOK.COM
	(2a01:111:e400:7709::7)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04345a6c-cd93-41e3-c56e-08d58537a25c
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989060)(48565401081)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(2017052603328)(7153060)(7193020);
	SRVR:TU4PR8401MB0333; 
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0333;
	3:nyvfXJoyLpfAbq1+tgkRVKZBPOc/5GQCtmqfriqur/GFjpw1LjNrqm/qUCoI8nmRszB3DGzsj5UmVmOzo63zu40JR/6NRkenycfZZNRjYiK3ava/gXqkZcPhsYJXmzkKUxrriw3hpXu1jEwCiMeAm7uqoCpRSs+hf9dNLB7TmI1h2omRO3deVeNXXzt8d+Y22I347h2xaM9atWyJEdqcDvmjbnPz0+eUsqKUvx1hmWVe7QqV1V64zZQYhN7iYrXx;
	25:hMqAsW6vE27P27s9QzuOzqEVLKsHrbezbDQ/4CK6D20a/nrtDYo90x/ZtjB8RJWAxDwHVTT6k9is6QIeP+RxR92OhbpDQnqvjyIAMtNgli7FI9okhJ4ZcOE3203dlRYE2boT7o6DbqAPskzi1FChj7HdlpulqiWQjCt/OQYyOh/Y8IUiN0kP0X+7ZwP7m48g0slpSGgGomHbGc6R5qTei3WwrFEenGWPzQwLOsWswQfQgKJHuPVlmXJ+orO0/ZrUB8e/frYPQyH1hsX9gUAA/M7tl/QFlZY7R1+QwxR+fIViVpzojpLCxHey+GB7HzMDsRHaLsql4qN1mhL9okLXjQ==;
	31:LvTKcXRwv2tTPf2GHc2bp7oJVgDGsB8aU43dSPfIS33z5IfE4H3zlhq22xep/8s6So+d1SAsk+YmjuD9ONsWZFsNcc1G/Gf8IyK6oOXLgb8cSzUAS5o09oEKWwn0lMMGZ/DCP//3iZbJ/X5LI6V8fchEQszshK0LZlsSLEGKEbRwJlrcLmaqT4yU6v+dMVTnrZHVIiK/8CDRg5ZgmY9lfsNQwdEAyJnjj79PjHiz+yY=
X-MS-TrafficTypeDiagnostic: TU4PR8401MB0333:
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0333;
	20:vI8WHUvmFH3pnEhKTAsJECN1JSJDcar1kMX7Gco/fZjrxwqWSiZqxGw6UBN0dvv7hnhb66TduNr7ls8effxY/8LkOCjsqjiSBXRruxrQ/DJoWGBJrE8Fa5bGyV7FqRrmZYZqmDyqYeP7HpU6beG1Wg2GIjSjQT4RmF+u0sujdOMKWE6eZBUHkgjCMK2ntH8eOLK64R2e47yfd+0qCiBWm+oWuSDH1Y1ib5UrKlJuqvocnjLS4v/JNeqkUtm40F5lE1CluWjGlThswT9GGIq9/ywtBQQN1PwFvcu5TRuDJiUoUOxwSJ5S1B8U1FHp+1ioTDdr842V+05FT7y3ldd4yIJw4rvxb3/LXH8Ud/iFeMdkBPjGRFRFCRD4QlNmjorPsDpi+Ov3UtBS/ZMcfyoU4kxzMxgADfSCobBlBvgKbpg44LW7t5cp1nou8y5Fwx0G6yOnQ5plt1e779FltwoZejYN2CE59TyN7JrqpEBv39IJZfoqEhwO84ShI9J/tNom;
	4:zaL7jxVOmekjmRgMKCfeYpeKb2I5VZql8G4gQCUxqAFxU9pmK4VVbuRiTx1nRFaNvxfC+mcaQ4Y5pOatRwabzwOQAbVJe+2t8WA0Yh5K1INGsOPAblmQX4/ThxskD377vvcGl+IYwSF87YS/zUKoDfb9gFxKBzVZ4ceE5m23BZYao6VRIyT/72faqzdekJW31Oo9ouuEx3BAOHQCxBscncM77JOVVWAGJsfpRmv/kMMotdytFkOpSnN4Zzxjo4EeNmVfUqwzuxWHMy45MPITAw==
X-Microsoft-Antispam-PRVS: <TU4PR8401MB0333703E02794341C591CBF396DF0@TU4PR8401MB0333.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(8121501046)(5005006)(3002001)(3231220)(944501244)(52105095)(93006095)(93001095)(10201501046)(6055026)(6041288)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:TU4PR8401MB0333; BCL:0; PCL:0; RULEID:;
	SRVR:TU4PR8401MB0333; 
X-Forefront-PRVS: 060503E79B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6069001)(366004)(376002)(396003)(39380400002)(346002)(39860400002)(199004)(189003)(6246003)(47776003)(6116002)(3846002)(305945005)(53936002)(9686003)(76506005)(50466002)(478600001)(66066001)(25786009)(68736007)(316002)(86362001)(8676002)(6486002)(7736002)(23726003)(4326008)(575784001)(8936002)(81166006)(81156014)(1076002)(76176011)(6496006)(2906002)(52116002)(16526019)(186003)(58126008)(26005)(33896004)(2361001)(106356001)(229853002)(6666003)(2950100002)(5660300001)(97736004)(67846002)(2351001)(386003)(6916009)(105586002)(16586007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB0333; H:localhost;
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; TU4PR8401MB0333;
	23:6TXX5nioEKJhCi3rQwuMvEBF+4qeIOFIwQQnz2+?=
	=?us-ascii?Q?TCm144BVKxR28Z1czCnsao7rc1H5vpdUzQfraL6WDJVyyWb+A9FjNw0XKHEq?=
	=?us-ascii?Q?g725R8naTFRtoLfz3tZeLma7TeVQtHypG9C0Rm4/FLTOlG7CMBv5mJAtcgu9?=
	=?us-ascii?Q?jgVzaxOSH3mXC06NQGCtUaESd/96oApZlOK5G5AUJMKEFXJXWUoefVR+vua0?=
	=?us-ascii?Q?yXBg4qGEg7k/FSKk4eYmJ5LIM+zfZQZaeEucaV/+oCN8kqNyPzJQ1XICca21?=
	=?us-ascii?Q?D+xva5WlWRCWa/VRxx2mhdf3uQTAX0uvEFz0LF5K7mcdzWfIaPBI5G7vF7Ef?=
	=?us-ascii?Q?vcNDhCR52MpCm3tJjAt/bJ7+GI/yE5+UlbWjzZuSBaGu9c3NDUW7SDm/Wv5R?=
	=?us-ascii?Q?kb9leRrE2oJIFtc5doX6x1DH5mG33LPq0rnm/BbJjUA+BSNf+kuKsFjlS9rh?=
	=?us-ascii?Q?e/tWUBOlnDcDCmI+5ntWjbzs41jPLYO7vCYEe2tZ1x8FlryhJEfCBustwPqO?=
	=?us-ascii?Q?W0nX8ZqhYreziKVVQ+Wy0xoEKlupzGR5fz+cAdOQoeUvVS0UcHTd3WeJccau?=
	=?us-ascii?Q?JBMPlujC9TeDfmcZWPgQY/kKCtstyKydmIeZiekCelA5yHqq/v7DyOrMRwep?=
	=?us-ascii?Q?hFYOwsbpfSKV/yKzIvrsikG8C0VClBH+Bq6tky/K4ljKFFEVGL0TEfuiDKCV?=
	=?us-ascii?Q?VjDy5fy0yRBuPY8JBySPTPvYs4aK4YvLavp55EwYFIvURweZJX3g/GFzw44r?=
	=?us-ascii?Q?RNr5EswxOWWQoUIvdM/wxUeQ0lZJCPa9/bSvYS4G647ymvNCly+X4/fLjfm4?=
	=?us-ascii?Q?rSsMdbYkFUnm7o3ybs0KIvKjixISQ8kOob6kmcFhPPuid+J1dSaaam2UAjFe?=
	=?us-ascii?Q?jzJdvxvAcARPDJfNveV0CKkZFapHB5y2M2+aFpVWW0bFGnAoh8dnc06rxG5R?=
	=?us-ascii?Q?wOKARMcjr2C8ScSrm8HbKgoFo5kKH0slPsC2sU1dZ2kS1XPWrXOOeABBW3Uj?=
	=?us-ascii?Q?8RO3DXYRPJNxWOkbvRyyOWovdzVL7us0qqhF6OmpHAWbwMe0fvF7yPHD/213?=
	=?us-ascii?Q?jP18OxXpYY/zzfTS4nQRYlqHAnQgrAzhF1FEQsKKe1h8LcNZFwSxYNck9H0E?=
	=?us-ascii?Q?BGu8rpBam3UvskUSl5/l8tZXDQIfEFRTIrT7hq/S8B8cIkXsZd1esDSTUPIl?=
	=?us-ascii?Q?LpJWF4i3XODSh5a8+ZCipavLTSZrjeMjNAIjnz4Yy6IT7OpOAFnB0mLsCpq8?=
	=?us-ascii?Q?v1AI2mb/2pY30wOEyAunHbBEZPZ33v8D2PhmOdebg?=
X-Microsoft-Antispam-Message-Info: 6IErzzJgFn9eauUNdxM9Ejv8MnYyEP7wzrx09hi7pSx9eq65/rpRW5tSfXcRiES6VCZBfbp0EVfQUbxLg3c4x7r/4dqFXJojKOVfP0Z12ytjp8QH5GOTRFAlFOr7QPpqvWGv6oW6vCNiF0d54e/bUJA/VgvZmqAcKtAqgd5lSzgBMFdt4Ic1OYHhmVK6OBZV
X-Microsoft-Exchange-Diagnostics: 1; TU4PR8401MB0333;
	6:jP+CWyHHc+H/A7ub9UJgoGiCwPgTSvBTRhfwvrLz+UP3U6oFeV9bYyHvvE+XutgLFQWexZm0V5PoISJ/zI7Z4uJq5ENheNE6y/TlVeePM5JKwjcIbBrs91BUnUGyH6rYEBwCJON2q6FejHN5QCVyB/kLEj8c6metE6+dFl3zpSBQNofjw5wCBma3sOPvrDBjEPKFPfrm9LR0Y36vKdrwa7mBuSeTY3A6yRy5Z2PqpcvSHPc5WtJQSkLKQvY0EETRw7EdVsLkaA49IG8DDeK8ew+z+skTYHh6vDVJqoTORCKhBVtC4kIKjnRS01ry7COFS6VGdD7JLKiQRLO18HYAmpxtrCrclaAfn4RAubqa5dg=;
	5:VmRmhFzLq+AhHyYQbJWULfS8N8EU5H2YeBK66H9EApng9GiM0jLUjlnacIPKP8nYIVllyXn1j7L2b1xQ+Y8zUWu9Y9NQQuCbhGPZWY2Us7lH07cRgWg4flDciw+GeIJydohMaJxjr0zHydBlhdsXAA33TEWtr5ktWWPpjBskTUs=;
	24:/nuTnEqu9GxsEz+yAUjoCJKw50eI+7AxXUKFpiWg9B74hYE4OaMacreQVea674BUZjEBKK29ti4u36No6H8GLYsO+BExx9ue+NuFsD9/5EI=;
	7:jSFi87ZyAypPOLm27QOSqKbalGqPQ8AqmRfb54li/uzp8gQYsrzxAONt6r8r3wVFrGvMTYm6ArSyy4vVquR9JfArCsfUqgAObFDcF+Jb2+Jx6nrFGJzJYXXFBf14/xO9CJwvCXVhMFIVE1VKO6fwmucNgSk6/+nS0SXN8+boCCAoq41g6nuwwwtuWxWEBG3MdgaCIy/6xP76vRBnk281Fs2Ah0wgRPkELktlrSXRdqeMWjbazXZGnxfCH8etVlBo
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2018 21:00:33.4290 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04345a6c-cd93-41e3-c56e-08d58537a25c
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0333
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
X-List-Received-Date: Thu, 08 Mar 2018 21:06:46 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Sorry to go off on a tangent:

On Fri, Mar 04, 2016 at 04:12:54PM -0800, robert_joslyn@selinc.com wrote:

>> > root@test:~# btrfs scrub start /
>> > scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd
>(pid=333)
>> > libgcc_s.so.1 must be installed for pthread_cancel to work
>> >
>> > I can solve this by adding libgcc to RDEPENDS for btrfs-tools.

I ran into the same thing with my device, different package. I 
don't understand the fix:

>Signed-off-by: Robert Joslyn <robert_joslyn@selinc.com>
>---
>diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>index 37c622b..cc2ccfc 100644
>--- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
>@@ -11,6 +11,7 @@ LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=fcb02dc552a041dee27e4b85c7396067"
> SECTION = "base"
> DEPENDS = "util-linux attr e2fsprogs lzo acl"
>+RDEPENDS_${PN} = "libgcc"

What is this doing?

My understanding until a couple of days ago is that this will 
simply pull the "libgcc" package into the image, add a dependency 
in the binary package and NOTHING more. It won't change the way 
binaries are linked, it won't change flags passed to the 
compiler, etc.

I'm confused because in my case libgcc_s.so.1 is already in the 
image, before this change, but this change seems to be fixing the 
issue, and I don't understand why.

Any clues?

Thanks!

Marcelo

