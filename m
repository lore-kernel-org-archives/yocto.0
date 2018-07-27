Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3CA7E00CED; Fri, 27 Jul 2018 00:36:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.116.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 847 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Jul 2018 00:36:54 PDT
Received: from AUS01-ME1-obe.outbound.protection.outlook.com
	(mail-me1aus01on0135.outbound.protection.outlook.com
	[104.47.116.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04082E00CE0
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 00:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=1KZEIYbFn4IWXTvKBOpc7bCdgCXVaOnCAUbSY/Ssl6U=;
	b=S0H76VJ9upn1u7umF3HVr9wlvNGdLO3KxLMHKhYnm9tTBUSinYZTpdb1DZccuGWvhp+DUSNmFlQ6zwzVUe4hrXW4C8407KJVFFxN7zqkSHlk3pKfNYUlC1SWa9UQxThD6E9394ZCh3KKbzJJde4AgdDTzdudncfEekd1GtAS0RA=
Received: from MEXPR01CA0141.ausprd01.prod.outlook.com (2603:10c6:200:2e::26)
	by SY3PR01MB0105.ausprd01.prod.outlook.com (2a01:111:e400:5c03::17)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.973.21;
	Fri, 27 Jul 2018 07:22:44 +0000
Received: from HK2APC01FT024.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebc::201) by MEXPR01CA0141.outlook.office365.com
	(2603:10c6:200:2e::26) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.995.16 via
	Frontend Transport; Fri, 27 Jul 2018 07:22:44 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	HK2APC01FT024.mail.protection.outlook.com (10.152.248.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.995.12 via
	Frontend Transport; Fri, 27 Jul 2018 07:22:42 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1365.1; Fri, 27 Jul 2018 19:22:39 +1200
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1365.000; Fri, 27 Jul 2018 19:22:39 +1200
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-ide-support broken in Sumo 2.5
Thread-Index: AdQleJw0BylyfDzcRZK1kkSDcCUg6w==
Date: Fri, 27 Jul 2018 07:22:39 +0000
Message-ID: <761050c95f6e4be2a74984d9096f12cf@4rf-nz-exchange.local.4rf.com>
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
	SFS:(10019020)(346002)(396003)(376002)(39840400004)(136003)(2990300002)(438002)(199004)(189003)(2351001)(9326002)(98436002)(9456002)(106466001)(68736007)(7736002)(84326002)(6916009)(356003)(81166006)(1730700003)(8676002)(81156014)(97736004)(8936002)(790700001)(6116002)(3846002)(476003)(5660300001)(2501003)(5250100002)(126002)(486006)(260700001)(66066001)(54896002)(55016002)(6306002)(426003)(5640700003)(24736004)(7696005)(108616005)(16586007)(316002)(106002)(336012)(26005)(102836004)(236005)(186003)(53936002)(72206003)(5024004)(14454004)(2900100001)(26826003)(478600001)(14444005)(86362001)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SY3PR01MB0105; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; HK2APC01FT024;
	1:F8Awi78q3AgfDrVKDq6V15EjmgfbO4pwg7gvqfd5kxZcrHorDzDCTnWvIkNk89kA8Ry7OO+KLbm6R6q6LTXPmgRsqrHkiGgYuxStAtDuEC4Ed/ZfrtxVT2BsGbvUYY4x
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 643d47b7-3728-4c13-aa31-08d5f391be3d
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600074)(711020)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(2017052603328)(7153060)(7193020);
	SRVR:SY3PR01MB0105; 
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB0105;
	3:LYceu3Vi3g1yty8/bW6veRv7O0ANWP6c2ujtjYzzCCqkZzLCq1w9oVlPeo+Zy3B78sNrhuiCaOFYMg/yHKIO5IZAkZg/YPsQ5+oKPAKAVZMHynZlD9SViXB7nhu7jk5NIY6NCliM1hQ5HaWUpS+DQ1VmfKOXzONeJsfXMtD5Hxd0OpTwa7XdNb5FpBsgcr4Qo4R0fQMHqML61z+8KtpJOMZus856HF2Tw3352MHrw7DEa9n8pM80kemAw2yn9hatGG0/14b9XMkL4P38NrZEwwhp/0kW858tJrxjNmseOln5Cb+3icLsbDNJi23zo3RvH12YxLTNzviuWf94rRfnzwgyjU+6MjNC3JdpN8SgmM0=;
	25:1KPisVTuWTstmma4TzF7SBM4qxS+nvsdV0zSNGch2URWcmtJ2eXlfyGCNDjWaYCw9xVHGK5LdVzHffnlSG+K/4T8Oe7loTyOW/TOEup6hWOHm6odVogN7J5gCT2gQNMyp4cwSH5GJM/B4IykiyMFrAGwIv4yjBV3ZLes3E721r+AOoA1q59zgTo/dBNgLI8+s1jV+VknkaaJRTquzacVk4F2vJJv6XFwcEruAUTkPqshOOx7n1m2LpSU2aWXeVFLdzdhvg/l5ayQTC9+cYSD5vjt+PQMBHvi58slJaQYxWNia/y+ikSo/XEmb3QsANgwNE+Nb66LcMc+OAxJNPgPOA==
X-MS-TrafficTypeDiagnostic: SY3PR01MB0105:
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB0105;
	31:KIOyT0oKYPBAbMjpPYrz0MlGeiOrKtXif75rzIT6IWOtPuDo9/ZnKZYSb+IvJbV1dOU/e+iane22XCCElEdezUJI5HqFghR574z11Gs+0ZYSioxvXfG9EolXYVhWxthOdqXUOZ35VK0A3nYqEJUG394DOFrG2brG4FUPQm+C6c5fbJsau3t2ql0QK5WafiMtOHEPgp08r6yIf99+Jz/YTP4qw3Fd7hLP2hqPDet2r3k=;
	4:JOsqQvU50KqDPUGBMsQdJJ+DygHwIU/UmLsKIo+TpH9Br7oJ/mzegb+afnTd5fzwkq5vzIXRY8Q1zaR/WkraycWKJG1yvS9HvvwUuO1Y/FpE+UhonRlDtwH80qAe2qDsD8D9IV6Lc/iELLAoNuR7mVaBZhlncl69fUqWl2m1HcWxitdyGIU04XD5Puxb+1tWX6ip0lmfsbW+2uJa3b6yLTTvVjod01enaF/H+fQIk1sXFzIYXIe9pkAF7Bz/bKFT3NL8WwbUNjEhcoZU+wY5w9GAv47Cc7BQxzGgICyFep9siNYhB2KK2F3o8r2AV7axkBN7PW0UjpSY89uJ6HNeibQQad/N3WzMhzYbL3cB00mleHrQVJcRQGoK2z+oFCoB5ZIa3eD+Nw6FXDpxu6aOBF22RLmVxwvAbBKKgDCOY0k=
X-Microsoft-Antispam-PRVS: <SY3PR01MB0105326B3A37FCE101598845DD2A0@SY3PR01MB0105.ausprd01.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(223705240517415)(21748063052155)(5213294742642);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231311)(944501410)(52105095)(93006095)(93004095)(10201501046)(3002001)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(20161123560045)(20161123562045)(6072148)(201708071742011)(7699016);
	SRVR:SY3PR01MB0105; BCL:0; PCL:0; RULEID:; SRVR:SY3PR01MB0105; 
X-Forefront-PRVS: 07467C4D33
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SY3PR01MB0105;
	23:JWqbX5AUgNYXuj92NkJ/oDKS26ianbNqAYXVxqzjo?=
	=?us-ascii?Q?Gz2sic7Eslyj6UXh1KMDRitUKFGz0AT27oNPAQDL2G+0hdpM/cBxgq1hL9s7?=
	=?us-ascii?Q?TZR+nCpc8FZcaqGawqIDQvIa/5zNWlHjpnqC41K6F8RSV4Pge/zmgbONnJDW?=
	=?us-ascii?Q?O8uaAcP8PPR/91W9Q/ZjFJX3+aRA0gN73HK+T88o3SI78u43lKZhB1aLMyIV?=
	=?us-ascii?Q?HlpHF8/tDJIZQkW+/GGc6fJe/DyJUrMfkSx3+7RcA3DvghXVI236UfcrUkRp?=
	=?us-ascii?Q?dfzFBiuS7jlu45AQKVpjCy0dO81vUGcQXu40+s39g+ZlsZO6E1clXqeeGMA7?=
	=?us-ascii?Q?DIvmWgJK4m9AhtpDEebiIAfyFxVPq+QoBl/aC48VmA+MOWR+RlUbRC+kyAjc?=
	=?us-ascii?Q?oEg0HqYCZH5yh6pfHI1+Wpl8/kyYQGnQeZZ8XlbZYHPb+hKtuhn5Q+IRcAUj?=
	=?us-ascii?Q?qeoq0snH1M3R+R0m+kMIqKbNHuZhM5hD3Ixe3v3RzEFPR2PCQHc60YZCNH+r?=
	=?us-ascii?Q?ceAcfsmLRYo/7daYPZKmtq9Qg2pp2haGmOi7mWhyK0XbMk7szsZLy3nvVw88?=
	=?us-ascii?Q?qLstB/7xUgDTDjw+GPFmOodoDGcFAmGgMjBpoLR54E/BckgOWovviV7pj595?=
	=?us-ascii?Q?9D5ZX/skFshH6hxy76LT8gNLA4vZw7v/7cmF2gqRuq+cLqZ7tBAbmU9HpEf3?=
	=?us-ascii?Q?9w6Rg+FHGZxwFN6Sw7gIsFf2TH6pik9l18l5UzupJVc0bRzWha1TlPb18Iwi?=
	=?us-ascii?Q?nGnhycDAsiCDnHZBslr6oszQRSO/N13PTBt0NQqB3qDsjtZETrKzYlADGmw+?=
	=?us-ascii?Q?HWmxWKYhZtWoO9dXd6kveTBuyyvYRWkryereRwvM8nZfiZUdHQMC3Z+8YlGi?=
	=?us-ascii?Q?uqK9EV/C4agjHD0r2TgM+xlUrs/zeCgDEGiEkyLn1mPwcDErG+qphmdbh9zJ?=
	=?us-ascii?Q?v+2MFR6hfrU5bkDF85k+WZYuu/GS0Nja8csIaaAhnYaR3p6OefKcQ//u4pAQ?=
	=?us-ascii?Q?5gDPvh7LlUXbXH3sdphR+AyUGyGwA11HZDt0JnLfTROxEzg1PTAeW+Kloalc?=
	=?us-ascii?Q?ueIRGMkKpWAo74gdFE0Q48maFZEluGJJhjfluST0SzhqgtuzbmeYmPtLr6kF?=
	=?us-ascii?Q?iTVVyR22LFPxx1BCUNBIvkhFOocZr0yFUb8qx/VSi5cyvu2x3UdqYPAYsACm?=
	=?us-ascii?Q?XTToG0d8m/p1F7APYXBGbHFNyfINI6PdkmW5OBK4PMGdvJd7YL+lfrrK8M5C?=
	=?us-ascii?Q?Tvf8D3GdcJOL2REo8PFaUjisBd9Q4BdbRpgJn1T58Sewy2AYYJWY6/3M332n?=
	=?us-ascii?Q?kKbn3KV2e51eQvx9zqOeMLxCQx+vKk9Cg0UcZYNzJaadZV58TdcabGA27GZg?=
	=?us-ascii?Q?C1E0Q=3D=3D?=
X-Microsoft-Antispam-Message-Info: XhAXnYiuSXDqOdXoSkOn4CZeDu98lWbkZQmbUAw5Muf6DT8fgKsA8vU1bv/T7t7y6/3s3ezgVO1uiemH8P3QFzIUJDC+rCnwzYLhvUi6V/7GgGO/hLhDLdIwzwwvux+UajgQ04KB4plZGEWenzrCL6H1CLV+Cxf7CrY80AVuBFj2MnwhP/LVjlK9Ua8okeUp0ZqevZHOPu+1DMzVM6xuQ51SpQ9ZR/hXBiDYgXxl2Er/3u801VTZxkrgksvkujuSBDH9U2ostHyJqCiTAdkYy+DsprkYcZWte4b9jtFDhsytW+vSq36WSQRtS+g/I6gdQkHR8bon0Vaa/qfBfS8ncub/M/TozyPz1V+jzjhwOJk=
X-Microsoft-Exchange-Diagnostics: 1; SY3PR01MB0105;
	6:POzjEl62bEY3LS+qHUXhL1PhXaIZhr0Nucj5Mbtl/Xa6iouT5D/HAW2rtfeKhG5aq0vK1riGgOyn6K9uepyhu+9yxmkJoUdUYEOha5bSQXUl6D77XwSSe1mH0rZAndzD5lLq8VCo+QkD0ChU0CmSxRmrTst9hA6JnwH/QVZwX9R7Jl8V1umg46ODKXhKEZLUi9YijJDffYpWJYb6q+QZNXjqlOFfXCfhA0HKMOOAra3XR1u4QuB7RRW3f6g9QB8u+59ZP/Yta8lLV/zcTUwvz05iXm8sOyqbD3dzvaGmSefft7TI+tjov3gUtLHKAD4Fy4PpmMzVej32KytJ21yim8qGsV7mkXQPYqcM7l/YGG/bRS+2o2Xdv5p3qqoVBtl///juwbEJDuQaR9nPFx0JF47grhrbO0cCP5GDMue7hXl7T1vKZdp3em0cvkKDMxLWGk1tLwFiS9DUpB23u9n/wA==;
	5:RwtUYAihCbIOUoTnMWnAV/p87CWtUQPNmrhQcoCYlRVfvhRXSfocKfahx0qJH+Fy8/WWoXSvJSdF+tLE15tcpHP8IcmqBbRdbP0Cs/CmedUgFhipvKTmJA+4IENWYYYZLxmK10uuFBaxWdsadWL+srF2GlHIXZpOSf+G0RyUGJY=;
	7:bQGg2UJZdHxLnUNL9bH2hydeWoJ8xEKyzI2BD2xCp5rE9YumbyD2GWtJuUyRrKBVAC6b24w7wkd+dP8XlHR2k0F+A9M1aaDSS+LLwYJ/qXXhp99n2Gw0QPALRnmIeiJ+XP4t/oPn+mdZogftRWr0ZKAgwil5yFULigpzv+kmV5Gcu8zOirrXj431AegGjh+RwZIwGAQEe1hUdbz4LDSnBwjJNu7CgsqZuSVmqxQtilUOerEERmk+ntrQGvjNIaC7
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2018 07:22:42.6719 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 643d47b7-3728-4c13-aa31-08d5f391be3d
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY3PR01MB0105
Subject: meta-ide-support broken in Sumo 2.5
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
X-List-Received-Date: Fri, 27 Jul 2018 07:36:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_761050c95f6e4be2a74984d9096f12cf4rfnzexchangelocal4rfco_"

--_000_761050c95f6e4be2a74984d9096f12cf4rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Sysroot which is generated by meta-ide-support for use in eclipse is missin=
g header files. For example, expat.h is missing in recipe-sysroot folder an=
d only present in recipe-sysroot-native folder.

alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/clearfog-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0$ find . -iname expat.h
./recipe-sysroot-native/usr/include/expat.h
alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/clearfog-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0$<mailto:alad@4rf-ind-yocto:~/yocto2.5/poky/bui=
ld/tmp/work/clearfog-poky-linux-gnueabi/core-image-minimal/1.0-r0$>

alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/armv7ahf-neon-poky-linux-=
gnueabi/meta-ide-support/1.0-r3$ find . -iname expat.h
./recipe-sysroot-native/usr/include/expat.h
alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/armv7ahf-neon-poky-linux-=
gnueabi/meta-ide-support/1.0-r3$<mailto:alad@4rf-ind-yocto:~/yocto2.5/poky/=
build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3$>

As a result our eclipse projects are not compiling. This problem is not in =
krogoth and expat.h is present in target system.

Please advise if I'm looking at wrong place for sysroot generated by meta-i=
de-support. SDK is always an option but this was quite neat as we did not h=
ad to build SDK.

Thanks
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

--_000_761050c95f6e4be2a74984d9096f12cf4rfnzexchangelocal4rfco_
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
<p class=3D"MsoNormal">Sysroot which is generated by meta-ide-support for u=
se in eclipse is missing header files. For example, expat.h is missing in r=
ecipe-sysroot folder and only present in recipe-sysroot-native folder.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/cl=
earfog-poky-linux-gnueabi/core-image-minimal/1.0-r0$ find . -iname expat.h<=
o:p></o:p></p>
<p class=3D"MsoNormal">./recipe-sysroot-native/usr/include/expat.h<o:p></o:=
p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:alad@4rf-ind-yocto:~/yocto2.5/poky=
/build/tmp/work/clearfog-poky-linux-gnueabi/core-image-minimal/1.0-r0$">ala=
d@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/clearfog-poky-linux-gnueabi/=
core-image-minimal/1.0-r0$</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/ar=
mv7ahf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3$ find . -iname expat=
.h<o:p></o:p></p>
<p class=3D"MsoNormal">./recipe-sysroot-native/usr/include/expat.h<o:p></o:=
p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:alad@4rf-ind-yocto:~/yocto2.5/poky=
/build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/meta-ide-support/1.0-r3$">=
alad@4rf-ind-yocto:~/yocto2.5/poky/build/tmp/work/armv7ahf-neon-poky-linux-=
gnueabi/meta-ide-support/1.0-r3$</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As a result our eclipse projects are not compiling. =
This problem is not in krogoth and expat.h is present in target system.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please advise if I&#8217;m looking at wrong place fo=
r sysroot generated by meta-ide-support. SDK is always an option but this w=
as quite neat as we did not had to build SDK.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Amol<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_761050c95f6e4be2a74984d9096f12cf4rfnzexchangelocal4rfco_--
