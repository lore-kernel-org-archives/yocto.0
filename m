Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5964E00BF8; Wed,  5 Oct 2016 19:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5583 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Oct 2016 19:48:06 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0086.outbound.protection.outlook.com [104.47.33.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378D6E009F8
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 19:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JKfpB4zzsE5A3XQqnW9yxR7qrkdyps2VZ95+NODz4PQ=;
	b=J1nhIRR/x5MFgm9Wkp5WJJI7duGpK/tgBaEBvRQmgEDhmZWxbvmhY3JzFV/frTc5j/vkR4WQ+ZSGugGa+6dA6z2Vh3qO7+DtqiiNBvibZZZw0EQO5aFVoW/fpG1HdromNWmLaAxJMnUAmdGJyPxYpw2vccqK03YF4Kx6ujb+PpU=
Received: from BY2PR02CA0018.namprd02.prod.outlook.com (10.242.32.18) by
	BLUPR02MB051.namprd02.prod.outlook.com (10.242.187.16) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.639.5; Thu, 6 Oct 2016 01:15:01 +0000
Received: from BL2FFO11FD024.protection.gbl (2a01:111:f400:7c09::119) by
	BY2PR02CA0018.outlook.office365.com (2a01:111:e400:2c2a::18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.649.16 via
	Frontend Transport; Thu, 6 Oct 2016 01:15:00 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; stratagemsystems.com;
	dkim=none (message
	not signed) header.d=none;stratagemsystems.com; dmarc=bestguesspass
	action=none header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BL2FFO11FD024.mail.protection.outlook.com (10.173.161.103) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.629.5 via Frontend Transport; Thu, 6 Oct 2016 01:14:59 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Wed, 5 Oct 2016
	18:14:58 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Oct 2016 18:14:58 -0700
Thread-Topic: [yocto] openjdk build fails due to checksum mismatches from
	icedtea-native
Thread-Index: AdIfbw3sBjSJqOv5QuWRVsI47lx+JQ==
Message-ID: <C0308C46-B222-46A6-BF18-90D853C7B627@sierrawireless.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
	<0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
In-Reply-To: <0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(24454002)(51914003)(377454003)(189002)(199003)(356003)(7846002)(8936002)(7636002)(102836003)(16601075003)(50986999)(54356999)(19580405001)(76176999)(586003)(305945005)(246002)(93886004)(15975445007)(2900100001)(33656002)(19580395003)(77096005)(46406003)(104016004)(106466001)(8676002)(47776003)(97756001)(8746002)(86362001)(110136003)(2906002)(23726003)(2950100002)(36756003)(87936001)(626004)(4326007)(5660300001)(82746002)(189998001)(92566002)(50466002)(83716003)(6916009)(7099028)(5001870100001)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB051;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; MX:1;
	A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD024;
	1:3PoScNOtWysrJAFREu2owQ30O5ZIEzpwnuEUOxeJb3bPQVnuQNs43Bo0/0i2/3lfAStWpnW0YSxJK/cTkBvZ0BO40EfDSXnZrp4Od9ZD5utrqt0yWA2hLHUjKRKVbAyAIFWo3GBG5FWUwKzJ7LGF+JD/uHQJ0P7vVJ2Qdu/B6b9mkBY4SvDJAI/HpWsj5GJpULz/moQYH+kJlPPzAYr+GKqEDgEdAOX36mV/eurwTU00KGcNQQ+8+GON92hRtEun/9xOXYTeODqQaJw9ENxMf3YTwGNHYiziAD7vsngT+28+wgU88S3ILLcOhjhGbfxm6mnnDgC01ome63rh+GWXVjMV7eRRFlTdBeZK4tVI2Fa/hPDgWpr02shDbcchxKRimXsLJYFHObqlrbWTyCZ3V2nr2ghvf77s0Dr+FvKU4y/t8j5EQyuFfmvWfb6PFX+EYH1x6n/GIqgDnVZAyLl5bqn0mo+PiQPYVS2ua++JuauzCdLolGQq9lbkj9q3zpyvi8j3IDMBNeX3A/WlIeeseYJbPoedue/GuGidE/NFQZ45xBlo3Y9SQX0CXE/fp8DlCvY0uOeRADQzonvYtI3utZQl6Y8i1rVoSvLZFwu+AFI=
X-MS-Office365-Filtering-Correlation-Id: f6fc5b72-3ed2-4f03-dbf0-08d3ed86317b
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB051;
	2:8Jy+6EDA8KfWdjEhQ65cvsqKvtBQAaARq5rX42buf8hJbgtmMyADahvf+rk9rcjkE0XNrhMAI9gva94I0TP4LfCLvOD0OBj9cxq0jcfJwqcuhGC+x08XnSbu/SEbofdOYHcOTH7rT5eqwh2oT8g2Y9ebBaly8156yB5y0+rpvF4KSc5wa1varB3H8jWXgtbJ;
	3:pTOurmhXC0rUYxY/9HnVgtXdDRD6eOLgpvLZZNgr3mFqVX9n2K6Pafnvcdit7/1BJQtbC0/ZpOH22cZupF/N/i6nMUjBVdAW3Qh4EY0ZDqzifaGVjCT+DeWft6xDe2fsdby//Oklf62TmmIZO4jIS9+9Pbjbfu5HeDgi8YEfeYSYPa7rfgX3o8OWx2vpS/jqPTVz2r1oEUYWOSKvF7YPIVli0vkEzmIp7dAwV9211Z2oACjFiCmokNAHooSkZ3j4WYTUO0w3R+nx/+QF+3JUEg==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BLUPR02MB051; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB051;
	25:olJZKD+mailKG+zcFi7GXA8xFOyQ+YqphxBpIxRjGSX7SgFeuqF1YLiKTF2bR1XnWEaE6wNRP4Y95Ood2hzoYcMRPKenUF26W+KiN+ZT7CYT9+YDqkVoCeSZCgPnXl/4q35fZIdhHwaQ2mHcSYkNvC52BIcGNWc3WOIfNTSNF/Zc+hctErOdPAvnrebMf1wlqX0EOtZGNgaC1wwQBI+sB5EXSMjbTifDuAE51bQ8ghVaxSq3nDg63kZAcPsbP+nVDjOcdJwoo3QyKmUHqO/Yu8h4OLwz1EGAIa1Q/oBYpqyEj+9kbj43LrXuQPjLhRh/NE9VW+2hd9kKHMl95dF9yhD/m47fZ9EyodQGLqcM2ytcxrk4hJBMHD0eupJ16P5l3eAM4DE6r/UJjkrvwIGQTw3FOlgLfezlfau14rmOleTQuK2qTEzCI9YtFWf4WJJErdCmnMfxaRo/PZA9ngMQlqGmnFhraQKdlKRAWy80ttjordQW0i1tcMQsxdK7X4fjE5NqYChnozK2YQ3nMQepYYAo13OquFUcsX5Fil089kq7+hvyjpOPnvmdAirD4o+K9RtcqWBU+3uSzOYEkJ6dVtpUcU7i5JTI7rtc58eYW+S4Vy2UQbiZM0+DuRey0bUX/rZJzZxo+8WnCNQFbjd8aFJpVBBJM/CHNbOQD4kEWUTtQ8tNZliL/Tt2TKtdt3hwPzMDUp54V00UMVqtc8QVd0aWoi7lAWl/oG3+atlnlMeL/XGBi/A8DMcQhL1rWEbXVcsdepVJu4nTCM8mKOWlIa2Q/hnDpRJuP+fWy4NfvJhlrPEkZzq975lGYg4YbyjpwAQR3xOvHuM3xUrbS3OHfQ==
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB051;
	31:eRxnn8hFjDMK5ao7sT/RSd/5TACuGCnqe7nvdxBGisGRLInXlwX2ox7uKuRP+thKK0ol4bSDEwqdG/xuz7i6CuObeGaQZTJO3SMp0pUblkEPYwU7GcWYrwzMA8ufxAjQYukd8hQ4xA3vmBQcxarrL6WfxpeGzadDngB4b0nXb+FmdK3TpXMBQ7wi6LULu5ZjLhLeL7+SyKo6hksZNlK9WWOpu81VtlohBxu5LIaNnUk=;
	20:GPl/gI4+c9VTtJrIL0OXToyFV0yy+tmFFoYfBJ1xul5Fitu2pAC294Z643ALgXjVUi+B/EvSIfK9MspCeaxfcCiqT0i/SDbPk/kJdQIUB0CHlMJRiQ4mRmCgkENlW0ZiqHDtdCrQJ6yyAlL1f/i70kq9z3+SaM47YuXovtfRS3e0l3TttF8P8vz0QIQPRfm6otPYje00ZTv1TM+Xu0aB0w05fqCNwWB49y7wWtSoNSkpzxH5lChnemXb8QdiVQcl9RiPSZ4sqUANgBV7Abi6JsoHDN8+OA+0wQo5uLrINDHYLd0O0LooSTWqyk3+JKRADqWL87pBCdhLsphhTlI0LxrvX7ymQYVo8bRJy7gDuVFkCqHNjqAik1ITbDuOWtSz5KhBLWEQQUP3Oa3aRnsJ6RiW93n5vpcDLhEriUS/hgSM++ZUAoKb+kRonaI+yLuiyoa07dU48GFhQdX8MXk99iiYpHR4rYhLCFElWqRO4iONSJKPOthXprln9OqaiHtx
X-Microsoft-Antispam-PRVS: <BLUPR02MB051A4670821F8AF570A65D5B2C70@BLUPR02MB051.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863)(192374486261705);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(13015025)(13024025)(13023025)(5005006)(13018025)(8121501046)(13017025)(10201501046)(3002001)(6055026);
	SRVR:BLUPR02MB051; BCL:0; PCL:0; RULEID:; SRVR:BLUPR02MB051; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB051;
	4:RU0rAXUp7BR8hGzF7TNwY9PLrWA3cgvtSDV79ZICd2WNOnSpdSJHgsZLVddLt+/QbhhTOxmfkvlk9fOMNWJCAQM0oUcjoxPj0DzxDowW88tBxrvivy6j4nTtl/5zYlt5MnQyZgAopT1QAT3rQNwJ5cXkOayyVa+QGQ7BAabmhJlQCwb5bUHU+YYNigb6QT8frCAks0dCGate+ZIHBoGAKQOYC/R+R+fr+Q33mifY5U6zG1OlW3RUdUbj3pwDNrl2uWQpgmkKVWe9Ei6wEXlraoXueTJe9NN8eN52NbVUUnvlg6z67EyM62gBg6cS0pWi99j3rM8Zom84fOKEBJ2rOPJDEGBDpGmkR67GmklQdvpNh4qWCkLgOJ8JNFyVcRMEuiqgsYekXuRBJLjQsoy7uZl9ljjKwO42WiE4myiZPkSPLZgemOhkAy8Ssis4NFscDhQxirf3+jD9YwWQw3NpfL0hh45cH4tegc1K509deXUaSzSsq5NRK0DR34vHV0kjaiqATQTBYId7Mtw9o1zH2bUw1hiksWZOdgrbidLl9a01wZgRve0a9opvZgcRLlRMif5J1C/tyuz8osBfqsct8g==
X-Forefront-PRVS: 00872B689F
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR02MB051;
	23:hSPIbxk9dnaZGk8HDytUxdyjbKRRO52fkCmGsS2G2h?=
	=?us-ascii?Q?s4Tq+EoM4krtvd1A7G6GSoK9rNPZK6DBfCDquqy1DX+nfu2CaoyyzcBBkIpq?=
	=?us-ascii?Q?vYHXplKuyG0Ef9iPwGCLAp+dJrb+KwEyIpnxfLoAnQLSko5RLFInBtf24aHc?=
	=?us-ascii?Q?P77gn38AP/ZZvmss6sLav9AI9LuVzRqVpSOENf8jAYnIen/RJyf792ZhusMB?=
	=?us-ascii?Q?0pJr++ZajdTABS/Y+cbyM1/LobYDzwFK4wXwPDFLQoM0yC+UJlaxJdDEDhSi?=
	=?us-ascii?Q?Qjb2Gk6PSCZVnTyZBlRxWRJfI3VomxbIEPDUDx7Z0p+fgZRFgY3hSz62uoIv?=
	=?us-ascii?Q?+go9YF+UafgS5N0HsTYlaIdVkH1k/cwUkJxLQcrpC8NN4eK4aqxQjiKY7/UX?=
	=?us-ascii?Q?k2qY35XLJl2jZUOI4RXoCc5g8TTiqul5oW+64XbZy9F9gfyeYsDBHrGtyeYV?=
	=?us-ascii?Q?0IQZ6ztcBR/cBZOjMEduRPpxS8c1hffrnt4o/AlT9jjA/Mm68O+jQNYVa/fc?=
	=?us-ascii?Q?5jrczH68ryb5HJU7Ta2XmlAIiRYvqTD808DwwZ5JiH7MsDdkqLPCAYEdQcE5?=
	=?us-ascii?Q?yNyrZrFyzquErQBL52VURpTkIY4ydmA6Q/rjTOMYipf6kkzo+E+xxjvT8IoG?=
	=?us-ascii?Q?R4jhXLvndejDxQ+x5ZlhDf8qUfMr6sKz+95Xotr2YYQlLYfY2YTlfrk5Fh1S?=
	=?us-ascii?Q?MiDWyxTxM5VGvI6obPQ26KlMvGF/Z/F9DSHpyRYSfbpLn1UjAUOvnLFW1puO?=
	=?us-ascii?Q?x/YVCd0LzL7thFNg465+ui6Mq/elkft5+Jvsw5QgKKZe1i2U6X218RepR09A?=
	=?us-ascii?Q?op6K48ANkvGh/dlfKOwBmbQY0jP2Zk0lrpqbwAdqJdIxuUVlgUauSvMBsWso?=
	=?us-ascii?Q?rnbgc1LAUsrRR0/XVVX0PX5mvBYD/Cod5iMHAnjv2/LI83lMZ5nxh5T9ISb/?=
	=?us-ascii?Q?5R1QhbK/8fOrfkMJSPfKDUTq5v/TyAluxIIUAlE/7AfkT9QulEZqwtXysJzk?=
	=?us-ascii?Q?ADAJghLJYZHKwqF8ZxyU+25bVmMIrSK501TJ1RDpffgVJsTbla/4Vh4pH3IP?=
	=?us-ascii?Q?wyK+CUUQua8Sc472clU44YiQfJCHWTQGyY5MFvUSJpKk9MONo43HN1TGmyqI?=
	=?us-ascii?Q?8/cOtctUxBB91PgbreNTWH5hW9dmCtbg3S/88ZAYFdoNFXNFpwA1Xxwpuh8M?=
	=?us-ascii?Q?EI5TEi6AoFa5bgk2SKPdULRZdKMM3Md/jQx+O6nwLAGIYYpWANfupvkzYd3N?=
	=?us-ascii?Q?SoubUgaJl4KFWZ5eIm/scriWNODvrzpinZaz9BhPyNkJjmiZSnmHViiPUgJg?=
	=?us-ascii?Q?=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB051;
	6:pFttsOzqmbiE4kESWSmVkUCyzNiizXzREMU5AsY/mC0b1A9sx80Cro6EXMqeQYRtox41Ix+dkjD9ezl8+lrDkLf4bw2uZobVSTPF7wTXKMyPTdVVZN0ZY9gVrW814M2LHEzgDWl14u4LyIlZcRlyPEMWh82n3XdSzXKzdYUUWrr3D0zEPI7cH4y49TuVeq7+cwIB+cGsKV0jujwHbWNL3LEur8jlWI8/Jo5N92fmeonIMBjyzPhOjsE9M56pSTmT9IujIQm0hFGDnjHJUWA0io89KlAd9LUqLIIsmP9i0XN02wS1f8PhBZqWBjQoNIQhnpCSTLDCSOHI+Wo1YGm4bg==;
	5:hEQ/93K0Eq4Tsu/iXx/+jJu/R4X/2+Lypmig+/yQNJylg7+eoBgVqAxcsCjDvExzC7HNt8NJpHE9Tah5PT4gVsGsV66j5b8dVgvGBhmLAaiCpwJuQaQlXXdf9Dvgm5qlKPXI+AGh4Sk+5iINiN5YIw==;
	24:E73PCpqhpao0Rz7Orw5AKp1bS+TwXgYcpNMzHaFXiqujgvdX5CIoO2e8wj2gtZo4JEUz9kZ038VVKaKG9JSVlqsvZQM84oGlyjdhcjLygF4=;
	7:U3VBch+/cJnG9hJJk5QgWxfCHLp3cDngcQfiurnWl1mFvKvKO5hOPxDPvGpNOBXWtWCy1UvEPsw8vIsgJFGKn5Trc3xk0HTlXg2b0FbwdlICLVeGPthdNk48os4uaDEcOSqcHt+NiLPoXmCY+CV15UUldwBaRI2tGOvd+izdP3PnAJBnZ/GZAsnbbIFXb7dz5huJ0/6Vu5Z0EXdOGGIllv5ufV3W9gXkXXvxODILP1yYTcnJYOdH1dvp2pjQP3ET2FgLxY5NsPr1oXwcoS/koQY4efgBdB08gSm0+rFNv1IhW0qs9uZpRAxOb/Vn4IwI
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2016 01:14:59.7385 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB051
Cc: Randy Mortensen <randy.mort@gmail.com>,
	Randy Mortensen <randym@stratagemsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Thu, 06 Oct 2016 02:48:09 -0000
Content-Language: en-CA
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> On Oct 5, 2016, at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Oct 5, 2016, at 4:45 PM, Randy Mortensen <randym@stratagemsystems.com=
> wrote:
>>> On Oct 5, 2016, at 5:04 PM, Darcy Watkins <dwatkins@sierrawireless.com>=
 wrote:
>>>=20
>>> From what I gleaned from recent discussions of fetcher errors, this is =
somehow connected with rollout of Python related security fixes to various =
Linux distributions and/or some ...-native recipes.
>>>=20
>>> It was a bunch of tar balls that are named as mercurial hashes from wit=
hin iced tea rather than the yocto fetch. I worked around it by grabbing th=
e tarballs from a different checkout since I didn't have time to dig into i=
t.
>>>=20
>>> It affected a fresh checkout I was building from scratch.
>>>=20
>> Thanks for the response. This also happened to me when trying to build f=
rom scratch.
>> For my clarification, did you already have the tar balls downloaded or w=
ere you able to download them from a previous (icedtea) commit somehow?

I had the tar balls in a different build that I had around for some time.  =
The reason I never cached these ones in a shared location on our server was=
 I felt that tar balls with small hashes as filenames was too prone to coll=
isions, especially without a package name as a prefix.  I don't know if tha=
t is a convention of iced tea, or how the fetcher handles mercurial.

> Can you check if the tarballs have been rebuilt upstream ? if so we shoul=
d try to find out what changed.
> It could also be an oversight that a recipe update forgot or updated the =
checksums wrongly. but we should try to root cause it

I agree here.  We should root cause it.

---

Regards,

Darcy

Darcy Watkins
Staff Engineer, Firmware
Sierra Wireless
http://sierrawireless.com
[M4]


