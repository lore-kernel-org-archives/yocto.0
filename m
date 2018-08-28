Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5796CE0053F; Tue, 28 Aug 2018 10:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.3.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3579 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Aug 2018 10:16:04 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr30099.outbound.protection.outlook.com [40.107.3.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DE4EE0043F
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 10:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=N4ifI9NOD51taVUenryb5qFFNmM6WdkME95dsFV45l8=;
	b=HI/qPsFmgxUGaJ8grY4ZCMi/m2XYNJOXtGpXCyLZluyttLnqP+r4DZjpQeYhbroaDOpIPU5JtoNKC6c212md19UFXyGp+0yskPRzkoLYj4xu6jz1CyX8/nC8g8Nfop+NAD/Dz2JRMmjjhDvF+zHwHdlidcTdONOLTxgafQd9EVg=
Received: from DB7PR04CA0026.eurprd04.prod.outlook.com (2603:10a6:10:12::39)
	by VI1PR04MB1133.eurprd04.prod.outlook.com (2a01:111:e400:5094::11)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1080.15;
	Tue, 28 Aug 2018 08:44:53 +0000
Received: from HE1EUR01FT009.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::200) by DB7PR04CA0026.outlook.office365.com
	(2603:10a6:10:12::39) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1080.15 via
	Frontend Transport; Tue, 28 Aug 2018 08:44:52 +0000
Authentication-Results: spf=fail (sender IP is 79.171.149.172)
	smtp.mailfrom=gomspace.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=gomspace.com;
Received-SPF: Fail (protection.outlook.com: domain of gomspace.com does not
	designate 79.171.149.172 as permitted sender)
	receiver=protection.outlook.com; client-ip=79.171.149.172;
	helo=Ex01.gomspace.lan;
Received: from Ex01.gomspace.lan (79.171.149.172) by
	HE1EUR01FT009.mail.protection.outlook.com (10.152.0.77) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1101.10 via Frontend Transport; Tue, 28 Aug 2018 08:44:52 +0000
Received: from Ex01.gomspace.lan (10.0.1.60) by Ex01.gomspace.lan (10.0.1.60)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3;
	Tue, 28 Aug 2018 10:44:51 +0200
Received: from Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20]) by
	Ex01.gomspace.lan ([fe80::21fc:471c:6190:5f20%4]) with mapi id
	15.01.1466.003; Tue, 28 Aug 2018 10:44:51 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sequential generation of eSDK from with the same workspace fails
	for similar machines
Thread-Index: AQHUPqtiqAj6d2afsEinVUVggVpq2A==
Date: Tue, 28 Aug 2018 08:44:51 +0000
Message-ID: <8261c343c1a643e2a3079b5d8fc458fc@gomspace.com>
Accept-Language: en-US, da-DK
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.8.43]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:79.171.149.172; IPV:CAL; CTRY:DK; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(346002)(376002)(39840400004)(396003)(136003)(2980300002)(1110001)(1109001)(339900001)(189003)(199004)(1730700003)(81156014)(478600001)(126002)(8936002)(2906002)(86362001)(53416004)(50466002)(23756003)(26826003)(106466001)(2351001)(8746002)(105606002)(97736004)(81166006)(47776003)(6116002)(3846002)(356003)(7736002)(2501003)(5640700003)(6916009)(305945005)(316002)(5250100002)(8676002)(2900100001)(53936002)(36756003)(102836004)(5660300001)(14444005)(69596002)(336012)(186003)(26005)(476003)(2616005)(486006)(85426001)(24736004)(68736007)(108616005)(14454004)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR04MB1133;
	H:Ex01.gomspace.lan; FPR:; SPF:Fail; LANG:en;
	PTR:InfoDomainNonexistent; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT009;
	1:cVKMraFa5gITia68z6bNhpUQN/DTMIcoxSAW6QY01VKC8VnJtxo9eg+OJlGbu45B21Sk0jpNOvybgeJdatK7hbV6FalEwx46IGRuNoTwE48QIxuqPQsf80SxhF0gRAv0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f144217-54b2-4ddf-4b53-08d60cc2857d
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR04MB1133; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB1133;
	3:SCaEcIjNYSYfcdoo2KzA3fCViShObrJ8gW3JZqK0GpgI6J7dozdddwvTIkGiVcfwp8o3OTDkZKzqiscEhlzHhIpvdKxV6d9Onu+EqUyNq5CI7fVi8IKA3im63TVxzdhIIJZsP45lLls4mqtknaInlI34QNEkK6UTk9OYXyBP+Ff6eym8c/7ZKPWrpKl5g7gKXuJhfc9RXlX1XnN41WeLFDpjUQJpbhPQF1Tw/JondPY6fbmKXPAGTjkW6iGlwArwGKf6GP0ZyOBEnNtaKiHDBJJHlm2t8J70x0uEx6uRyMw1Zm+Ly31sP/pV1Mqq38zg+E50yNcP3N0cTOVWWNcSrM3B4nKG87qlZDezaamwtfE=;
	25:uRNTiLmjq8nttt7o0tlWZbnN/DvSt5EbZO6DJh/4Dy9szRQSfLQBFQQ4vDQqwOOQkbs1VttZVsJjXey57P9kpOMVrOuDyTZqen6bvzhNrHNs5PtGOY7wAaY2HVq0kyvV/FmXd9Lf4bc16Z74HyHGT/xdtzq+ynWTwvgjolim/a7pFzOa4IU6mo84jyXFET/tIiGxjQkviCsGLlkDudfUOusCthoDE84UmuCuKEculKdRAq3qWOBxxHXQQl4n7plevV2EvMPAFdhXfJ7iaaq5SScC0R+KF7o1pO5J1zlP1ZjGowFxgVyBOd/i0S0Hj/zDqqAyDuAFXFGfLsDHUlJ/WQ==
X-MS-TrafficTypeDiagnostic: VI1PR04MB1133:
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB1133;
	31:G6/+5F5sc50btSs4/MmO2czgQSzKFzIUQqW+MR8inkPI9F9yFedJPy4ws5DHCpxLvP9XTj4YWoNzxKZrsH57p+2CoZ7L62+vxWTVIort57cAvmvLyf7YUU2phVePIs+T12jyCoDr0sH3mc49EdwiudnuEGl0adbxVSmMHU3SwGlWd5393W4B5+O6Oc9jwFEARaHw2Z5zeOqVuUWIH70g+dLTscJJZ7FEj6jCKg13Ysc=;
	20:GuRdtpULfmmQgmDRW2ZvpafzaZSLZLR7B7T224CXWAUHJsaXAgo3S5J8Ysk7SdzBuAi2KrnwngOwXqI5d1IxRBJ9kMCd9Zy0Xz/WEtW503zPmm7jNLytFpqCxFirqI8juM4X+BThFer3rjEuNGE/col4bPnY4EhOxjHNAZwYYR6diF7m4TpPCLpiEn5+VJxM0q+KutcwFDWtk5MXdM91l4gmCyuC7Eo3vyuBEAT/BK15j8BqgMGU22EZifFtg+FFWK4HtQZtpmo1rrIpr+IJoBYn9ICezwTupJD7R0UB/FtVJg71oH0FBHI36V0Vw26SV2d7qqqavIVtU42pP6zgmQv1MbGy+9FKTE/Cei2aOXE1FG+6Kwhjh7kD4x92StNJWUmnP82EkWxhUzV2aeI0vFx6qaWZg92BP8wLxIEmR7QMoQ5QEFqPVoRoQg9G0t80
X-Microsoft-Antispam-PRVS: <VI1PR04MB1133078A163A46C2F6B67F82C40A0@VI1PR04MB1133.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123558120)(20161123560045)(201708071742011)(7699016);
	SRVR:VI1PR04MB1133; BCL:0; PCL:0; RULEID:; SRVR:VI1PR04MB1133; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB1133;
	4:NwVOd+Evw4xojLHbSm17plEStI2g9oEK4CEdyPQoukB+25vHieR0EHAR3bQs9px9rr62yk6B9X42gvOyrqGAt0rG/2qGT5FrPMQTSjTG71JiAvl1fACgh12rg3oqm8wyZVtg+i6P7yUKxB5KcMwbRRIi5tKbCneAQpOoBQKXkDKMqC/dMZoGwlA/otg5LfZbxQVGXv0vzOBjtmu30Av52DGd3SEMh4yi9bbJ6xm/zqblEQ9qQhFDL2a+R/fzT/iGMEiqp74xteOSsDH+5qIe+g==
X-Forefront-PRVS: 077884B8B5
X-Microsoft-Exchange-Diagnostics: =?iso-8859-1?Q?1; VI1PR04MB1133;
	23:qzYY9GO+EuJViBxfPXWyFdeSQyUd/ba29nqU1sk?=
	=?iso-8859-1?Q?0oxhKj8P41WuTgO2R6NtDBZHbBcJr+bvTt474KMEuGxk8KkZwDgJHwdpQM?=
	=?iso-8859-1?Q?8xxMPzRoCHx8ndslKRMDBB1+bw9QaRXvm3mhJEUskEIg7N7M8j5IRIHr2h?=
	=?iso-8859-1?Q?fT99uiGO64NjclOtJm1L0jDLnumzz+HbyzO0J6xNSAGy0cOO3tGW6mRxC5?=
	=?iso-8859-1?Q?w/2WKHv2hsujTXB0pJdK99SkB532YfAWp+46WJ/Wv/musQcHHDbQiqpFmf?=
	=?iso-8859-1?Q?qoiIuTar0gGGcUqpkRzztms0qgTITPdlBznu+7oBVxHRyCitq0mGQRoyYR?=
	=?iso-8859-1?Q?cf2Rh0wyMgxBxfQzH9yvFAmK04sBuRoDK0Ad8+iO6dromxip1Bk/73DCQf?=
	=?iso-8859-1?Q?3YNLIClkrlfMKLHdk4Uqkezn1m44wHHSEJtkKKpDbYrmPkVptwIkiKACiq?=
	=?iso-8859-1?Q?4Xi3f9qrcS3wfhoEhiTtXTyKOMafD6DT9mqUGBUBvHW8nQDULk+Keq9Y0a?=
	=?iso-8859-1?Q?D69IyY703ZrlSdCI67Gjm1Ysk9SLIjqjW4kUgpq7T9eBX21Sg2N/8rGbVx?=
	=?iso-8859-1?Q?poE9u0lQLYkNWZoEp0l7CTRlomgHIYqOI4mgd+5g/XDB9nYV/QfkNlVa8q?=
	=?iso-8859-1?Q?QvBvXYooQISy9Zrgz6iD7A9VuIsBocz4I4S5xdJAPO9wtI1RY0DYw3586c?=
	=?iso-8859-1?Q?DUZmXi2RCJcbdot666Vh9QZaXLfkbWWMd0q6E069tGeZjd5wUN8cEPB2Dd?=
	=?iso-8859-1?Q?hX/h7OPWicooeMdQCad8KJHSL668Uw+V2uXh6Z7gER1r5aswEND1uuWgcW?=
	=?iso-8859-1?Q?f1sDxGyvR67rZKmiIqD98o6ctNrC1pgG4qqT6nuvG5nfPEyq6NJ6LBqA6a?=
	=?iso-8859-1?Q?+L0rhYRNBNZvyGvl6pNuF/og7YgS2df92hXyMiy9Pj6rM94wlf5RNl71g6?=
	=?iso-8859-1?Q?JAI4oo3VoLuG1B41TQd5Sz0G55aN7W7CpuZavNHvp3W2MCfThanm9Elz5B?=
	=?iso-8859-1?Q?ICeMTZcjdmrZtjSWADqUEh3T3feLVetEGXe8LHiE6CAEj7eWMEHppbSOEi?=
	=?iso-8859-1?Q?13dgT5D5eFLNR0gRrWykArQvk8gPYb/VUDjrVBuWljOwj9nRb+/bSVLSav?=
	=?iso-8859-1?Q?bTGhLLRmylFFio8oO4TEA/rJQDWavtQyj9+A8yiFDYHsL7OOfoF10ajKMh?=
	=?iso-8859-1?Q?lfJ82fzF7rXitkmnmaUXMqvQ5dDbnnShtHmQLXmnjMfI/ERVRfrlyGH02b?=
	=?iso-8859-1?Q?sFwFcvgLCDoSbmvJziXoFKkLxJQ5S3yd/OnJYUNr8IhrQV1QEQ3C/Swwhj?=
	=?iso-8859-1?Q?E906ECtWErMcRB2Tx34zctVhJs5dxofzFPiBe6PKDPs9O3G1xsdIq3pOAU?=
	=?iso-8859-1?Q?TEVkEGHf29tHu14U/NpOobGnJI3my?=
X-Microsoft-Antispam-Message-Info: JhU98U3WVHZ3k0TXXWu+gUIB8zarusC1DFNUFS8+N2WcR+anCzExj0ARAb0k2h0e3sNq3p379Yz3NpaDiIpCwNhvPcCBG3hexNeMOPlqmqi/h1LTO8C6jsgoX+7d0jbAtLrMD4cGrmfXVq5gexPKOMfDcNx0/hTquKqA3VwFzVlJEHaEZbEn1irvGqQbnZsMLNK4D42f9VZcWdFWw/GPbXIYm+XZBgIxnKcKzS+U4BfAwL293TWQrkkp+tOPVkOg0Hqdz8YkbZGvY4zIQ7iawMGowMF5YDvZYEni5rpL4S32t7ws+dsUr0o3aDEeAD7DiTKxkhllLZgRpP5gOb/lh29ro/SAsvd1HZ2+5hqiBW0=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB1133;
	6:ouYkndYsk3AtnHwXH4XJeQqC9UuFpuDus82tTfhAfqi3WpIy6DbAM619HkuLn9iG3INEM72gl6oIjl7w8EhMdycvraxn1tYW+KbEGqXhMHD8Szg5SK8qMVuT2qfWbZf+YSNvfkJtKcG+FUiImkhw2XcxXp1x8e4pHXuhjzN3+O35/1mkHte9sfzoUiuNha2YPAtznU3/PLXij4FE4n3TYETffrMoxAfgvE7u+y+M7KSbL0P9rJhj0fL2gw3e1weSO98jvs5RyeVZSiVGSEtMzvKXQbKcsh1a04EOCGt/pwUT2j3onuDzVei42LhukiW+8yXEPlPP1kLjQvTOCZ7j/4EzzbrH1p8Gp/KTUJpZZv5MrVUim7rQFEqjopfou1dCQXkR0cpz7p5a3ewILLGtptKHTrHfTzkO+VQCFqzF29bzdL/P9g0/Lll8nuR6o8Bu/CLuOYgaZOy2zoDzmhiG/w==;
	5:123DQra2cOXmyBnyyFKdttfBXqyDdx387YzfdTGX8c7cO2QPF4DelI0kWmEHRM/2x5ePf5syRS5YdXcZUgpAvR2nDct+lpDi7/OiBLBS22h4+aAXxsWIBOGe4PH+Xn5cZJVXPOELHw8yVszqKCGMkgYn4hX/690TLPL0ALqLCho=;
	7:LzRVVw2s0tGQ2rUteN3a3u654BEWxCfEHgD94v6glLwIOLKiTAKW5zERvh/oKRuBNB5XcHXLYpu037j6CRZhJu3IslFQqzLve/zP56RY5vJQkAjj65k+4PV+KiAZkFehc0tEp77JJX1PXewAfThtw52LjDU2MGwzHeB89hdK93JPcyzp2wXgrGS9JK0WKxMeyCsOd8C/7zh1dMsJ6A64+erO1iyt+xv/hWarfq21cRIjckkyS5Ejd8n+4NVxZMKp
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2018 08:44:52.1648 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f144217-54b2-4ddf-4b53-08d60cc2857d
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;
	Ip=[79.171.149.172]; Helo=[Ex01.gomspace.lan]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB1133
Subject: Sequential generation of eSDK from with the same workspace fails for similar machines
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
X-List-Received-Date: Tue, 28 Aug 2018 17:16:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am subsequently trying to render eSDKs for two different machines from wi=
thin the same workspace.

The first (succeeding) is built according to 'MACHINE=3D"zcu102-zynqmp" bit=
bake core-image-minimal -c populate_sdk_ext' whereas the second (MACHINE=3D=
"zcu104-zynqmp" bitbake core-image-minimal -c populate_sdk_ext) fails provi=
ding:

ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: The recipe core-image=
-minimal is trying to install files into a shared area when those files alr=
eady exist. Those files and their manifest location are:
  /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_64-cor=
e-image-minimal-aarch64-toolchain-ext-2.5.1.testdata.json
    (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk_ext)
  /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_64-cor=
e-image-minimal-aarch64-toolchain-ext-2.5.1.sh
    (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk_ext)
Please verify which recipe should provide the above files.

The build has stopped, as continuing in this scenario WILL break things - i=
f not now, possibly in the future (we've seen builds fail several months la=
ter). If the system knew how to recover from this automatically it would, h=
owever there are several different scenarios which can result in this and w=
e don't know which one this is. It may be you have switched providers of so=
mething like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in =
that case you need to execute the clean task for both recipes and it will r=
esolve this error. It may be you changed DISTRO_FEATURES from systemd to ud=
ev or vice versa. Cleaning those recipes should again resolve this error, h=
owever switching DISTRO_FEATURES on an existing build directory is not supp=
orted - you should really clean out tmp and rebuild (reusing sstate should =
be safe). It could be the overlapping files detected are harmless in which =
case adding them to SSTATE_DUPWHITELIST may be the correct solution. It cou=
ld also be your build is including two different conflicting versions of th=
ings (e.g. bluez 4 and bluez 5 and the correct solution for that would be t=
o resolve the conflict. If in doubt, please ask on the mailing list, sharin=
g the error and filelist above.
ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: If the above message =
is too much, the simpler version is you're advised to wipe out tmp and rebu=
ild (reusing sstate is fine). That will likely fix things in most (but not =
all) cases.
ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: ssta=
te_task_postfunc
ERROR: Logfile of failure stored in: /home/martin/work/z7000-distro/build/t=
mp/work/zcu104_zynqmp-poky-linux/core-image-minimal/1.0-r0/temp/log.do_popu=
late_sdk_ext.14111
ERROR: Task (/home/martin/work/z7000-distro/poky/meta/recipes-core/images/c=
ore-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'


Since the machines are of the same CPU architecture and and the image being=
 the same, the previously built artifacts are about to be overwritten. AFAI=
CS images are neatly populated in subdirectories according to the machine n=
ame, however since the SDKs are not populated according to the machine the =
above issue is encountered.

Is this not a supported use case, or am I missing a configuration?

Thanks,
Martin=

