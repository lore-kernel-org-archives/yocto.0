Return-Path: <DEVARSHT@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA69AE00E47; Wed, 14 Mar 2018 08:21:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.66 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2026 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Mar 2018 08:21:45 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0066.outbound.protection.outlook.com [104.47.33.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0825E00823
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 08:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+YqNUIv8Pj5IPncjUWcELOSD4t8EuzobnvNCX/HzEYc=;
	b=yQkyjKiJvi1Hq1agGZM3Dfuik4T45nvIMG8Xa3J3a3t07hNpiShYRl+qnKW/BTXZeKZgZYloziSMabXMxhtmuDRleAUJiXUr7Iecv/Puu3qMiiIPCyvspAkKrr//zNTuIzAjhZDr+Ts26VFFvL/nmo5fTt3+6/6nwi+Tz/Vf1tw=
Received: from SN4PR0201CA0055.namprd02.prod.outlook.com
	(2603:10b6:803:20::17) by CY1PR02MB1303.namprd02.prod.outlook.com
	(2a01:111:e400:50f0::18) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.548.13;
	Wed, 14 Mar 2018 14:47:57 +0000
Received: from BL2NAM02FT029.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e46::200) by SN4PR0201CA0055.outlook.office365.com
	(2603:10b6:803:20::17) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.588.14 via
	Frontend Transport; Wed, 14 Mar 2018 14:47:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	BL2NAM02FT029.mail.protection.outlook.com (10.152.77.100) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.567.18
	via Frontend Transport; Wed, 14 Mar 2018 14:47:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:54232
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <devarsh.thakkar@xilinx.com>) id 1ew7h6-0005tI-Hq
	for yocto@yoctoproject.org; Wed, 14 Mar 2018 07:47:56 -0700
Received: from [127.0.0.1] (helo=localhost)
	by xsj-pvapsmtp01 with smtp (Exim 4.63)
	(envelope-from <devarsh.thakkar@xilinx.com>) id 1ew7h1-00072X-Ed
	for yocto@yoctoproject.org; Wed, 14 Mar 2018 07:47:51 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	w2EElf5M023610; Wed, 14 Mar 2018 07:47:41 -0700
Received: from [172.19.2.208] (helo=xsjvarunkum50.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <devarsht@xilinx.com>)
	id 1ew7gr-000711-Hh; Wed, 14 Mar 2018 07:47:41 -0700
From: Devarsh Thakkar <devarsh.thakkar@xilinx.com>
To: <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2018 07:47:39 -0700
Message-ID: <1521038859-32429-1-git-send-email-devarsht@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39380400002)(39860400002)(376002)(396003)(346002)(2980300002)(438002)(189003)(199004)(51416003)(7696005)(316002)(54906003)(106002)(26005)(77096007)(336012)(59450400001)(36386004)(106466001)(2351001)(186003)(1857600001)(47776003)(48376002)(50466002)(63266004)(478600001)(72206003)(6916009)(5660300001)(81166006)(8746002)(107886003)(8676002)(356003)(5890100001)(50226002)(81156014)(8936002)(305945005)(9786002)(4326008)(2906002)(36756003)(107986001)(5001870100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR02MB1303; H:xsj-pvapsmtpgw02;
	FPR:; SPF:Pass; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com;
	MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02FT029;
	1:pYffGCKhcg1qV2t6jvWHGg0eSKsM68qhADG9GWC+cVNk+jkxzc/NLK890bzTEVLhZ6ineT7F2I1phOE+PsKQrRBLbI8CxmB3r7Cwy8714BHUIPxOPs/RLxD4wtEPVDi6
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7234975-178b-4a7e-5692-08d589ba9368
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060);
	SRVR:CY1PR02MB1303; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1303;
	3:tMGwcM4n3UszuONufSOu0u+gFLZUxNL0FdAludYeRhA3xdbrk1urZKwpFD2cuwST9hmFnVolM1d2c0jPnDfronEgFdbePzZL1+uug6Khk2bFH2eJ1Leqcf5R8CQldGEt7ryzntjCGbHpJPEtsnNqKu3YRVHnVIbLiTh4fMnW48U+j7nOuHwcmc+qkHdSuPJ9RKKp0Et+DnHmGDKWsyGm4U9Vc6tEEYrP+GxGzSKaCeEdNBQEZr6Y/O6NCbOVE4n4tin6emt8gxk1JCnnMdr8NFZm7EIoPQejgDKjugvBlIfT+SBQmRXbq+MiCJETYl/jh5jsgDTDRw8YJ8wXGcLybmgDmrOjd5JVpc3eikhnp8E=;
	25:TQIBeLsjxIwAWl8Y1c0D+ygtFYIZRKzQBJRGFJafvzYSFHH6eVIR6pfGMjSal/2m1z6OX5TthChQb6dscITBsGB1Ntv81Yl+AcAlOM1egDqrVUpXUaKKg/tpx+pcsjtXFHES9dxVs8j42dJgsEtva1N9gX+73Dyz16b8LfO+Jot8JiZN0YPTprz3orrrFDiU3dsBEKYpgkofMwvXt5eS7ijDdV4IITGTZ8oceSJOBX0WPSS/bwN5evUoQpZ0I1LIATIGe8BEKjNKeQ7QONsVRsQ+qTjZp9atdl348xjbKl5wjdJineDHx6ePAejfuMYeIoYzeA5vxiyilRqAAJehZg==
X-MS-TrafficTypeDiagnostic: CY1PR02MB1303:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1303;
	31:+ZmbPvhncR3Rt4q2FZY7IL3rWtPW4oVyVs8yPs1jgt2C1npa4FKX3K8EUIWNdNkkPl39XWDVfTLXwEFD1U1w61CbsGePbI4OOAythGIdLSMhHi69nguYJ64MJGwCuF/1JKFFfNyNR0fjMfzryuHD1sfAmLgtjkvW7ZZhSP5vXWxpz/c2ncdLhZq/CG5GVI6CFX7xS+c3zalN2OUO+GIJNd7ZZZPb24kg1auNZtMPP1c=;
	20:2cUt7dvo49gQTZrEZ6rYz2Vsanis8eCIaoh5Qo2/xZWjw0wFy4+9j3/eLkbz6iyhDn+qSWJz2EtsRnS0UFmwosaSs9E06Wrw/5BO6rNHCWkntnMC3Amt+cHZl6CjL2lKfx+TXIrBY7ATIdoPX6wGd+E0YUSrmKj/FSl5VkPSK9jCeGco6bV8PCjcgUhX/UAkWo/vL7UJmy96HiN5qcr8daSjMuWAvLjqXVqgEUrVlXNx69QKYXyKjE0XKMz06Zc1H5MHp5CCknVxYTlaP2e+Cl+MrL+aLS2XofLXmfkQMzo7rzwiqyICyW0H3in3Uk8Yjr92lyMDq87p3I3tptPW/jRbzyyp/HYTITtECQReZSt3n4g0GWlD9HJno5vTlg8bNkRmr9DioJn7d4m7CU27HjcKHLwZLpbDWdv5z08jkbgymNcDFI3PdnO4jXrkxYL3W7YT6Xf26ULMtJrwx2ZN+KIgfwOG8bcctMOkRmDB3l/cwJalzRnyG9BKCePPgQts
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CY1PR02MB1303EF1990B4913197B75FC3BCD10@CY1PR02MB1303.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192813158149592)(17755550239193);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93004095)(3002001)(3231221)(944501244)(52105095)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(6072148)(201708071742011);
	SRVR:CY1PR02MB1303; BCL:0; PCL:0; RULEID:; SRVR:CY1PR02MB1303; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1303;
	4:VUd3lr6Fgff7Ud1Thq6wLcBh6L1TfEdbJ0iWy7N/DIbtjQN4fq2R6Xxlogne+qixVlxQaTtCW2gfJZFhWrQvlIlJ+Dg+fdCkhgRSkYtz5MvTrgzf6U3oddfDi+e7WDFdkgpsNbPn3cZxYt1sxgjcfXAG020mpN6mxnXCm3AK6i+QGKjCeSmpbWf2V+P4xk6JrrEV0e7Xb4rHjeh+Kenumyk1f/iwE7fB7YJz6kTHVyHRIBx/2FUMDZ+VVMv0Zykj9ybMdtL2LnbtYi66AghqJXeIWIenme4LzJeyFYlglT9N5uvBn4/HPTtAAQk+RkATT5SZmsARD3YJk3gwhg0++YTobR44O513OCeRARKN14I=
X-Forefront-PRVS: 0611A21987
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR02MB1303;
	23:/9PJ+lc3aEABdetTRyYR16N/OvZPlMP8gXKCXZnPS?=
	=?us-ascii?Q?ru0C6o+ZB6TKMH0S2BrmeqP4+acJnBzLdtefe90FnyBXQ2qfiD9gk8CZbLUz?=
	=?us-ascii?Q?p3hDkie/0UwR3ZYmPPnZlsNeoPPkOoP4ZLVqyWzx9kNFgHlA92094sSHhjWG?=
	=?us-ascii?Q?tPdrMO3PugmM53uH8S8kiFxNuE6jqtEnlzxqKXZzE2T/I0tVpz5fLihGnWXn?=
	=?us-ascii?Q?OgJjrM9f2cSEyE2GaLISxmLSa7UMIMBkPoTIXJh5Z9kumG2Ej+NNmiOgieh8?=
	=?us-ascii?Q?hssnDgEUlcXspNDf+c599wzGLc7wR3AnukwsQNYFooWP39FtRqdHbvAU9rpQ?=
	=?us-ascii?Q?GrwuICpr9NHDWwyQ5rahInoI9rn0e4O784YiNTSnJHq1HAmAYWohBxDlRjhW?=
	=?us-ascii?Q?X4zWRsqRDpMst1Q3CaW2Gbbg8biiHSkWk7e3Wm44piYpNk+cRz3L3nCiZssR?=
	=?us-ascii?Q?JIHWyiuKM4cCJAZZptv+DM6V3YUBSgt19uJkVSXC6woW3D7qeDbP4XxjnWOi?=
	=?us-ascii?Q?oKIT2mBccbEpK3xP3sQOCydG3MN23QDD9x9zYuiT8tqQvOV4yqcSn73ti56B?=
	=?us-ascii?Q?wm64fpLbFp931Jmbs32xuJE7uxI5C+bz60OpEnRVkvfA8cIWZtfcQiJzEKqv?=
	=?us-ascii?Q?Zk5R1rVy1WzKbzj+terSVyW90Jo1lzvahzjCxU7YqpA8XGK8GJ3QcEUppSVI?=
	=?us-ascii?Q?PDB1Byw4c6np2gKlRhRwZCRD1W4gGBum+L+m7nFEVa0BbJilJEZPhQon0Bsg?=
	=?us-ascii?Q?yv86CpRMp248j/+FiLJR5RJVlSsqn7gA8XgtgYQan1iqZZtt8352btXoHEs9?=
	=?us-ascii?Q?lVIpUiBjzRGkfUHGA500GEz/kIfj+qu5NZZu4QVmQBwjBQGK72zBlsmx/DXP?=
	=?us-ascii?Q?q76J82gPbT5QQWz6xdd4i8PbALB/X2YlhszqqZ3Xx5J+xI/OvotbHY7iGW74?=
	=?us-ascii?Q?56jw3oZe2KMsbFA4XAUDwDT2JTP+MhOpUDva7b22ixjbBklz8b/lLvU7kGFY?=
	=?us-ascii?Q?8HtFKGl589l304bnIrMNekXYgLY/dHqw5PiwIxnBRfTWuwcww99G09ffgaIK?=
	=?us-ascii?Q?vvQ3hQt8wNSHxba1sxfBRVqn8jHjBHumbJTxKVYE7b6nB2CoA=3D=3D?=
X-Microsoft-Antispam-Message-Info: xv7zgvd2jYhWWubJPcD4bar/d0NfsAa2f9qTyhzR5qL1fTJskPtzCpDj3Yf2Ln8FrGx7HU2F+Ocs24KQc5fiCz/OKDkMz8HGSmC84p3D4TXq7jqZJinhAQCj4huBFW1oJVqonxON2lJ81raLIW0ml7Yn/aIrxggSImfYPJQdGJJrOdThHst1PRHpE6eZOuQz
X-Microsoft-Exchange-Diagnostics: 1; CY1PR02MB1303;
	6:dTPeZnnrw38pz2xVAv+fmFTc7ZIMXfPNKWoSxFiI/WW5eSK0+guxHSxm9iGL7pfQjtH53rUJOggIkVOvbgGKkLZF23pt4eg6t9flCzAkqhtWSYsBIMMHWE7JQbqNyDGyoWmHEGp9vJ4Kg9nxP5OZxht9efnfLiBR8tIDLmzYPan2Y9WcYwmHoPg4WmwplHIlz+pz7QA1gf2ttPpy4aY1gR7ZHn+QRScRMQ439MtqlsM+ZKKhUXJoAE+GF8+fOxfr9P80UpJYQZKlMqz0+l/6EeDtx/DNUbQmA1eT0tJCiOGtWcsof6uPfkZ8v0FFiEKPbyaFaOvLVMxEYdA2JClvU0Y3U/uH/N9lvXMZmqzXXkI=;
	5:d34qm0VvqqxfOL4PyhKhsyWMuGhDEs5hD0mvvrNogIsizU/vZTQoCP9rWOIwYwo7EmW2Zu4IkjX4ARLkxA+N4WvA3owgZBwAKVONWmIca7HKq7KUTku50DyvcPmy/o2jSZKb9v3EhyisG78pHbg7+QM/rP2IsyixlMP2N3XabhU=;
	24:POYMJIlVTzFBnCvM7pASAvch8o2AC0CbdtoqbvaT9YkKToNI1dzZpA7XwPhPT5vmftKjfH1p4kHA6KAzm7JqJbe6ylF8KgUEWCP8VwaPMZA=;
	7:gEOw7xYUWO/8vb3SBJiuvLNE+zOjyeiTQL68ymCd8awZWLhY5WNQPy9FQuPCpoIcRnybMqOM3VPChRPAoPjROD3VwIkUHosewZlRH7db8W/wVgBGgqS2wPlOFbDlpIPZnvl7WEGIxHQdRyNOuh18t/MXbbQkbV2Zcpy0gmmV7zX3uhrLJZphZV+HABiZ39f24J5S0sfhJy9EXr7AWuQw3CYCvm254cdZ4B6A+VwFQEdRhT6CCHtoyYM7yrL3saJ+
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2018 14:47:57.0929 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7234975-178b-4a7e-5692-08d589ba9368
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR02MB1303
X-Mailman-Approved-At: Wed, 14 Mar 2018 08:49:55 -0700
Cc: manjukum@xilinx.com, vcu-team@xilinx.com,
	Devarsh Thakkar <devarsht@xilinx.com>
Subject: [matchbox-terminal] main.c: Add support to run user command inside the terminal
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
X-List-Received-Date: Wed, 14 Mar 2018 15:21:47 -0000
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Add support for commandline options (--command or -e)
using which one can provide commands to run inside the terminal
as shown in below command :

 $matchbox-terminal -e <command>
 $matchbox-terminal --command <command>

Add standard command line options for gtk programs.

NOTE : The command line options -e and --command
are chosen to mimic gnome-terminal and xterm which
provide same options to run commands inside the terminals.

Signed-off-by: Devarsh Thakkar <devarsht@xilinx.com>
---
 main.c | 37 +++++++++++++++++++++++++++++++------
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/main.c b/main.c
index 0d4597c..c0672df 100644
--- a/main.c
+++ b/main.c
@@ -42,9 +42,32 @@ main (int argc, char **argv)
 {
   GtkWidget *window, *terminal, *scrolled_win;
   GError *err =3D NULL;
-  char *cmd;
+  char *cmd =3D NULL;
   char **cmd_argv =3D NULL;
   int cmd_argc;
+  GOptionContext *context =3D NULL;
+
+  const GOptionEntry options[] =3D {
+    {
+          "command", 'e', 0,
+          G_OPTION_ARG_STRING, &cmd,
+        "Execute a command in the terminal", NULL},
+    {NULL}
+  };
+
+  context =3D
+      g_option_context_new
+      ("Open matchbox terminal and parser the command line args");
+  g_option_context_add_main_entries (context, options, NULL);
+  g_option_context_add_group (context, gtk_get_option_group (TRUE));
+  g_option_context_parse (context, &argc, &argv, &err);
+  g_option_context_free (context);
+
+  if (err !=3D NULL) {
+    g_printerr ("Failed to parse command line arguments: %s\n", err->messa=
ge);
+    g_error_free (err);
+    return -1;
+  }

   gtk_init (&argc, &argv);

@@ -67,11 +90,13 @@ main (int argc, char **argv)
      NULL);
   gtk_container_add (GTK_CONTAINER (scrolled_win), terminal);

-  cmd =3D vte_get_user_shell ();
-  if (!cmd)
-    cmd =3D g_strdup (g_getenv ("SHELL"));
-  if (!cmd)
-    cmd =3D g_strdup ("/bin/sh");
+  if (cmd =3D=3D NULL) {
+    cmd =3D vte_get_user_shell ();
+    if (!cmd)
+      cmd =3D g_strdup (g_getenv ("SHELL"));
+    if (!cmd)
+      cmd =3D g_strdup ("/bin/sh");
+  }

   if (!g_shell_parse_argv(cmd, &cmd_argc, &cmd_argv, &err)) {
     g_printerr ("Failed to parse shell command line '%s'\n", cmd);
--
2.7.4

This email and any attachments are intended for the sole use of the named r=
ecipient(s) and contain(s) confidential information that may be proprietary=
, privileged or copyrighted under applicable law. If you are not the intend=
ed recipient, do not read, copy, or forward this email message or any attac=
hments. Delete this email message and any attachments immediately.

